use LWP::UserAgent;
use MIME::Base64::Perl;
$authstring ="phnowicki:somepassword";
$encodedauth = encode_base64($authstring);
$url = "https://api.github.com/repos/phnowicki/serviceabilitytools/issues";		

open(ACT,$ARGV[0]);

	while (<ACT>) {
	chomp;
	@data=split("\t",$_);
	$issue = "$data[1]: $data[0] - Activate/Deactivate feature";
	$body = "Add ability for application to activate and deactivate service $data[0] on Cisco $data[1] server";
	$label = "$data[1]";

	$jsondata = "{
	  \"title\": \"$issue\",
	  \"body\": \"$body\",
	  \"assignee\": \"phnowicki\",
	  \"labels\": [
		\"$label\"
	  ]
	}";
	$ua = new LWP::UserAgent;
	$request = new HTTP::Request('POST', $url );
	$request->header( Authorization => "Basic $encodedauth",'Content-Type' => 'text/xml; charset=utf-8' );
	$request->content( $jsondata );
	$response = $ua->request($request);
	$$response_text = $response->content;
	if ($$response_text=~/^{"url"/) {
		print "$issue created successfully\n";
	} else {
		print "$issue failed to be created. Response was:\n$$response_text";
		die;
	}
}

close(ACT);

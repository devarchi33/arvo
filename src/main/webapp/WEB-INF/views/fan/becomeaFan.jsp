<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Become A Fan!!</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:400,300,500,600,700|Just+Another+Hand"
	rel='stylesheet' type='text/css' />
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">

<style type="text/css">
body {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
}

label {
	display: block;
	width: 400px;
}

label:hover {
	display: block;
	width: 404px;
	border-radius: 5px;
	background-color: white;
}

html, h2, body {
	margin: 0;
	padding: 0;
}
</style>
</head>
<body>

	<!--Main Middle Panel-->
	<div id="mainmiddlePan"
		style="width: 820px; margin: 0 auto; background-color: #F2F1EF;">
		<div class="center fixed short">

			<div id="mainbg" class="mainbg">

				<div id="spotName"
					style="margin-bottom: 28px; margin-top: 10px; text-align: center;">
					<h2
						style="font-size: 32px; font-weight: bold; color: #404040;">
						Be a <span class="headorange"
							style="color: #FF5900; font-weight: bold;">Patron</span> for
						Applied Science.
					</h2>
				</div>
				<div class="clearfix"></div>

				<div id="alert-error" style="display: none;"
					class="alert-message block-message error fade in alert-signup"
					data-alert="alert">
					<a class="close" href="#">&times;</a>

					<p class="clean"></p>
				</div>

				<!-- float left -->
				<div style="float: left; position: relative;">
					<form id="formCreator" class="well"
						style="width: 400px; hight: 800px; margin-left: 15px; padding-left: 30px; background-color: #F6F6F6;"
						action="https://www.patreon.com/bePatronConfirm" method="get">
						<input type="hidden" name="u" value="434440" /> <input
							type="hidden" name="edit" value="10" />

						<div class="inputBg">
							<div class="askText" style="font-weight: 500; font-size: 20px;">
								How much are you giving per <span class="headorange"
									style="color: #FF5900;">A cappella music video</span>?
							</div>
							<div id="requiredInfo">
								<span class="glyphicon glyphicon-usd"
									style="position: abolute; left: 33px; top: 5px; z-index: 10; color: #CDD8EC; font-size: 25px;"></span>
								<input
									style="width: 290px; hight: 50px; border: 2px solid #CDD8EC; border-radius: 5px; padding: 9px 10px 10px 35px; font-size: 24px; font-weight: bold; color: #444;"
									class="inputText" type="text" id="amt" name="amt" value="1" />
								<span style="font-size: 16px; margin-left: 4px;">Any
									amount is appreciated</span>
							</div>
							<div>
								<strong>All payments can be cancelled at any time.</strong> If
								the creator initiates any charges, you are only charged at the
								beginning of the next month, so you can review, edit, and even
								cancel all pledges before then. <a target="_blank"
									href="http://support.patreon.com">See payments FAQ</a>
							</div>

							<div style="height: 38px;">
								<div
									style="border-top: 1px solid #CFCFCF; border-bottom: 1px solid #fff; width: 100%; top: 18px; position: relative;"></div>
							</div>
							<h2 class="askText" style="font-weight: bold;">Select
								your reward</h2>
							<label class="reqReward checkButton radio" amount="0"><input
								type="radio" value="0" name="selectReward"><span
								class="rewardHead" style="font-weight: bold;">No Reward</span><span
								class="rewardTail"><p style="font-weight: 50">No
										thanks, I just want to support.</p></span></label> <label id="r718"
								class="reqReward checkButton radio" available="1" amount="100"><input
								type="radio" value="718" name="selectReward"><span
								class="rewardHead">$1 +</span><span class="rewardTail">Thank
									you! Every bit helps, I will follow you on twitter and you will
									have access to my Patreon only stream that I will check and
									interact with all the time. (Remember to leave twitter name) <br />
									<br />
							</span></label> <label id="r717" class="reqReward checkButton radio"
								available="1" amount="300"><input type="radio"
								value="717" name="selectReward"><span class="rewardHead">$3
									+</span><span class="rewardTail">Everything in lower packages
									plus: I will announce new songs, any online performances (stage
									it etc) or local performances in my Patreon stream, before
									publicly posting them anywhere else. I will follow you on My
									personal (click see more) page on Facebook & Twitter I will be
									using my Patreon stream to figure out song choices, help vote
									on future collaborations, getting input from you on adding new
									reward ideas and who to reach out to next to make acappella
									music with! (Remember to leave info for Facebook & Twitter so I
									can add you!)<br /> <br />
									<div class="checkLimited">Limited 25 remaining out of 275</div>
							</span></label> <label id="r719" class="reqReward checkButton radio"
								available="1" amount="500"><input type="radio"
								value="719" name="selectReward"><span class="rewardHead">$5
									+</span><span class="rewardTail">Everything in lower packages
									plus: I will release a karaoke track of each song I release in
									every video moving forward. Some songs will be released to the
									public at a later date, and some will be exclusively JUST for
									you guys! - If a song won't allow me to release it due to
									copyright / fair use i will release one of my older karaoke
									tracks! <br /> <br />
									<div class="checkLimited">Limited 3 remaining out of 215</div>
							</span></label> <label id="r720" class="reqReward checkButton radio"
								available="1" amount="1000"><input type="radio"
								value="720" name="selectReward"><span class="rewardHead">$10
									+</span><span class="rewardTail">Everything in lower packages
									plus: Every 2-3 videos I release we will do an hour google
									hangout with only myself, my doggie Rainy and the $10+ patrons.
									(This will be exclusively for YOU guys. Invite ONLY!) I'll
									answer any of your questions live, we'll chat (click see more)
									and I'll even sing some requested songs. Also I will give you a
									public twitter shoutout thanking you for your support being
									part of this awesome new community!!<br /> <br />
									<div class="checkLimited">Limited 5 remaining out of 120</div>
							</span></label> <label id="r753" class="reqReward checkButton radio"
								available="1" amount="1500"><input type="radio"
								value="753" name="selectReward"><span class="rewardHead">$15
									+</span><span class="rewardTail">Everything in lower packages
									plus: a Personalised audio/video message from myself once a
									year upon request. Recording can be anything you want, happy
									birthday song, surprise shout out to relative/friend/family
									anything! Let me know! - Needs to stay under 45 seconds to keep
									the file size down ;) I'll email this to you! (Please don't ask
									me to sing a song I haven't sang...no time.)<br /> <br />
									<div class="checkLimited">Limited 3 remaining out of 85</div>
							</span></label> <label id="r722" class="reqReward checkButton radio disabled"
								available="" amount="12500"><input disabled type="radio"
								value="722" name="selectReward"><span class="rewardHead">$125
									+</span><span class="rewardTail"><br />Call to personally
									thank you on the phone (Send me your phone # via message if you
									choose this reward)Priority access via my personal business
									email Include you in my creative process via email (first draft
									mixes & ask for your feedback/thoughts) Send you rough video
									mixes, and ask for your feedback on videos (if I have time but
									i usually do!)EVERYTHING OFFERED IN LOWER REWARDS! (karaoke
									track, twitter follow, facebook add, patreon feed, just message
									me!<br /> <br />
									<div class="checkLimited headorange">All 10 sold out!</div></span></label>
						</div>
						<div class="clearfix bottomSpace"></div>
					</form>
				</div>

				<div id="inputButtons" class="create">
					<input id="nextSave"
						style="padding: 14px; font-size: 16px; margin-left: 95px;"
						type="submit" class="btn btn-primary"
						value="Continue to Confirmation">
				</div>

				<!-- float left close -->
				<div style="float: right; width: 395px;">
					<h1
						style="font-weight: 300; text-align: center; border-bottom: solid 2px #efefef; width: 260px; font-size: 24px; margin-left: auto; margin-right: auto;">
						Who You'll Support</h1>

					<h2 id="creatorTitlePreview"
						style="text-align: center; margin-bottom: 0; margin-top: 10px; font-size: 30px; line-height: normal; font-family: 'LeagueGothicRegular', 'Impact', Charcoal, Arial Black, Gadget, Sans serif; text-transform: uppercase;">
						<span id="prName">Applied Science</span> is creating <span
							id="prCreate" class="headorange">Awesome science and tech
							videos</span>
					</h2>

					<p id="prLine" style="text-align: center; font-size: 16px;">Mechanics,
						Electronics, Chemistry, Optics</p>

					<div
						style="width: 280px; border: solid 10px #F4F4F4; margin-left: auto; margin-right: auto;">
						<img id="prImg" style="width: 280px;"
							src="img/561c171f74cb9160ed20dacef924604c.jpg" />
					</div>
				</div>
			</div>
			<!--mainbg Close-->
			<div class="clearfix" style="margin-bottom: 10px;"></div>



		</div>
	</div>
	<!--Main Middle Panel Close-->
</body>
</html>
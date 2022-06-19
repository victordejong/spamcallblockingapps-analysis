package p193e.p194a.p773g.p774a.p775a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Space;
import android.widget.TextView;
import android.widget.Toast;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.constraintlayout.widget.Guideline;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager;
import com.airbnb.lottie.LottieAnimationView;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.android.gms.ads.RequestConfiguration;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.tenor.android.core.util.AbstractLocaleUtils;
import com.truecaller.acs.C2778R;
import com.truecaller.acs.analytics.AnalyticsContext;
import com.truecaller.acs.analytics.ClickEvent;
import com.truecaller.acs.analytics.DismissReason;
import com.truecaller.acs.data.AfterCallHistoryEvent;
import com.truecaller.acs.p131ui.AcsSpamPremiumPromoView;
import com.truecaller.acs.p131ui.ActionButtonType;
import com.truecaller.acs.p131ui.ActionButtonsView;
import com.truecaller.acs.util.AcsReferralHelper;
import com.truecaller.acs.util.VideoCallerIdAcsMoreOption;
import com.truecaller.ads.campaigns.AdCampaign;
import com.truecaller.ads.p134ui.AdsSwitchView;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.callMeBack.mvp.CallMeBackPopUpView;
import com.truecaller.bizmon.callReason.ModularCallReasonView;
import com.truecaller.bizmon.verifiedFeedback.FeedbackQuestion;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.common.p156ui.tag.TagXView;
import com.truecaller.contactfeedback.analytics.ContactFeedbackAnalyticsAction;
import com.truecaller.contactfeedback.presentation.ContactFeedbackActivity;
import com.truecaller.contextcall.p160ui.reasonpicker.ondemand.OnDemandMessageSource;
import com.truecaller.contextcall.utils.view.ondemandreasonpicker.OnDemandCallReasonPickerView;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.SpamCategoryModel;
import com.truecaller.p183ui.view.TintedImageView;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.referral.ReferralManager;
import com.truecaller.referrals.analytics.ReferralAnalytics$Source;
import com.truecaller.spamcategories.SpamCategoryRequest;
import com.truecaller.spamcategories.SpamCategoryResult;
import com.truecaller.spamcategories.p178ui.SpamCategoriesActivity;
import com.truecaller.tagger.NameSuggestionActivity;
import com.truecaller.timezone.AddressTimezoneView;
import com.truecaller.truecontext.TrueContext;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import com.truecaller.videocallerid.p187ui.fullscreenpopupvideo.FullScreenPopupVideoActivity;
import com.truecaller.videocallerid.p187ui.fullscreenpopupvideo.VideoExpansionType;
import com.truecaller.videocallerid.p187ui.onboarding.VideoCallerIdBottomSheetOnboardingData;
import com.truecaller.videocallerid.p187ui.onboarding.VideoIdOnboardingBottomSheetActivity;
import com.truecaller.videocallerid.p187ui.videoplayer.AvatarVideoPlayerView;
import com.truecaller.videocallerid.p187ui.videoplayer.FullScreenRatioVideoPlayerView;
import com.truecaller.videocallerid.utils.analytics.VideoPlayerAnalyticsInfo;
import com.truecaller.videocallerid.utils.analytics.VideoPlayerContext;
import e.m.d.y.n;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1859r.p1860a.AbstractC26914b0;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1460o.C22387r;
import p193e.p1451f.p1452a.p1476r.AbstractC22590g;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1017d.p1018a.C16833a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1064m5.AbstractC18240c;
import p193e.p194a.p1080o.p1097b.AbstractC18742m;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1138q.p1141e.C19391a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1334w.p1335a.C21167a;
import p193e.p194a.p1357x3.p1358h.AbstractC21409g;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p294b.p336i.AbstractC7924f;
import p193e.p194a.p294b.p336i.p343k.C7945b;
import p193e.p194a.p372b0.p373a.C8289d;
import p193e.p194a.p372b0.p373a.C8311g;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p702e0.AbstractC13343b;
import p193e.p194a.p773g.p774a.AbstractC14183d;
import p193e.p194a.p773g.p774a.AbstractC14198h;
import p193e.p194a.p773g.p774a.AbstractC14205m;
import p193e.p194a.p773g.p774a.C14187f;
import p193e.p194a.p773g.p774a.C14224s;
import p193e.p194a.p773g.p774a.C14225t;
import p193e.p194a.p773g.p774a.C14226u;
import p193e.p194a.p773g.p774a.C14227v;
import p193e.p194a.p773g.p774a.C14231y;
import p193e.p194a.p773g.p774a.C14232z;
import p193e.p194a.p773g.p774a.p776b.AbstractC14167s;
import p193e.p194a.p773g.p774a.p777c.C14170a;
import p193e.p194a.p773g.p774a.p778f0.p779a.AbstractC14189b;
import p193e.p194a.p773g.p774a.p778f0.p779a.AbstractC14192e;
import p193e.p194a.p773g.p774a.p778f0.p779a.C14196i;
import p193e.p194a.p773g.p783h.C14257b;
import p193e.p194a.p773g.p783h.C14259d;
import p193e.p194a.p773g.p783h.C14261f;
import p193e.p194a.p773g.p783h.C14262g;
import p193e.p194a.p773g.p783h.C14263h;
import p193e.p194a.p773g.p785j.AbstractC14294m;
import p193e.p194a.p773g.p785j.AbstractC14307r;
import p193e.p194a.p773g.p785j.AbstractC14313t;
import p193e.p194a.p773g.p785j.C14288j;
import p193e.p194a.p773g.p785j.C14290k;
import p193e.p194a.p773g.p785j.C14292l;
import p193e.p194a.p773g.p785j.C14300p;
import p193e.p194a.p773g.p785j.C14303q0;
import p193e.p194a.p773g.p785j.C14309s;
import p193e.p194a.p773g.p785j.C14314u;
import p193e.p194a.p773g.p785j.C14317x;
import p193e.p194a.p852i.AbstractC15191g;
import p193e.p194a.p852i.p862c.p863a.AbstractC15003c;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
import p193e.p194a.p918j.p919a.p928e.C15419b;
import p193e.p194a.p918j.p919a.p929f.C15431a;
import p193e.p194a.p947k.p948a.p949a.C15597b;
import p193e.p194a.p947k.p948a.p964k.AbstractC15816a;
import p193e.p194a.p947k.p948a.p964k.AbstractC15836l;
import p193e.p194a.p947k.p948a.p964k.AbstractC15863y;
import p193e.p194a.p947k.p948a.p964k.C15850r;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15864a;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15868b;
import q3.a.j0;
import q3.a.x2.i1;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.g;
import s1.s;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��¶\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n*\u0004Ã\u0002ß\u0002\b\u0007\u0018�� «\u00032\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0002\u0099\u0003B\b¢\u0006\u0005\bª\u0003\u0010\u0018J+\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0019\u0010\u0018J)\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0019\u0010\"\u001a\u00020\u00102\b\b\u0001\u0010!\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0010H\u0016¢\u0006\u0004\b$\u0010\u0018J\u0019\u0010%\u001a\u00020\u00102\b\b\u0001\u0010!\u001a\u00020\u001aH\u0016¢\u0006\u0004\b%\u0010#J\u000f\u0010&\u001a\u00020\u0010H\u0016¢\u0006\u0004\b&\u0010\u0018J\u0017\u0010'\u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u001aH\u0016¢\u0006\u0004\b'\u0010#J\u000f\u0010(\u001a\u00020\u0010H\u0016¢\u0006\u0004\b(\u0010\u0018J#\u0010,\u001a\u00020\u00102\b\u0010*\u001a\u0004\u0018\u00010)2\b\b\u0001\u0010+\u001a\u00020\u001aH\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u0010H\u0016¢\u0006\u0004\b.\u0010\u0018J#\u00101\u001a\u00020\u00102\u0006\u0010/\u001a\u00020)2\n\b\u0001\u00100\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b1\u00102J\u0019\u00104\u001a\u00020\u00102\b\b\u0001\u00103\u001a\u00020\u001aH\u0016¢\u0006\u0004\b4\u0010#J\u001f\u00107\u001a\u00020\u00102\u0006\u00103\u001a\u00020)2\u0006\u00106\u001a\u000205H\u0016¢\u0006\u0004\b7\u00108J\u001f\u0010<\u001a\u00020\u00102\u0006\u0010:\u001a\u0002092\u0006\u0010;\u001a\u00020)H\u0016¢\u0006\u0004\b<\u0010=J\u001f\u0010?\u001a\u00020\u00102\u0006\u0010:\u001a\u0002092\u0006\u0010;\u001a\u00020>H\u0016¢\u0006\u0004\b?\u0010@J\u001f\u0010C\u001a\u00020\u00102\u0006\u0010B\u001a\u00020A2\u0006\u0010;\u001a\u00020)H\u0016¢\u0006\u0004\bC\u0010DJ\u0017\u0010F\u001a\u00020\u00102\u0006\u0010E\u001a\u000205H\u0016¢\u0006\u0004\bF\u0010GJ\u000f\u0010I\u001a\u00020HH\u0016¢\u0006\u0004\bI\u0010JJ\u0015\u0010M\u001a\b\u0012\u0004\u0012\u00020L0KH\u0016¢\u0006\u0004\bM\u0010NJ\u0017\u0010P\u001a\u00020\u00102\u0006\u0010O\u001a\u000205H\u0016¢\u0006\u0004\bP\u0010GJ\u0019\u0010R\u001a\u00020\u00102\b\b\u0001\u0010Q\u001a\u00020\u001aH\u0016¢\u0006\u0004\bR\u0010#J\u0017\u0010S\u001a\u00020\u00102\u0006\u0010Q\u001a\u00020)H\u0016¢\u0006\u0004\bS\u0010TJ\u000f\u0010U\u001a\u00020\u0010H\u0016¢\u0006\u0004\bU\u0010\u0018J\u000f\u0010V\u001a\u00020\u0010H\u0016¢\u0006\u0004\bV\u0010\u0018J\u000f\u0010W\u001a\u00020\u0010H\u0016¢\u0006\u0004\bW\u0010\u0018J\u000f\u0010X\u001a\u00020\u0010H\u0016¢\u0006\u0004\bX\u0010\u0018J\u0017\u0010Z\u001a\u00020\u00102\u0006\u0010Y\u001a\u00020)H\u0016¢\u0006\u0004\bZ\u0010TJ\u000f\u0010[\u001a\u00020\u0010H\u0016¢\u0006\u0004\b[\u0010\u0018J\u001f\u0010^\u001a\u00020\u00102\u0006\u0010\\\u001a\u00020)2\u0006\u0010]\u001a\u00020)H\u0016¢\u0006\u0004\b^\u0010_J\u000f\u0010`\u001a\u00020\u0010H\u0016¢\u0006\u0004\b`\u0010\u0018J\u001f\u0010d\u001a\u00020\u00102\u0006\u0010b\u001a\u00020a2\u0006\u0010c\u001a\u00020\u001aH\u0016¢\u0006\u0004\bd\u0010eJ\u000f\u0010f\u001a\u00020\u0010H\u0016¢\u0006\u0004\bf\u0010\u0018J)\u0010j\u001a\u00020\u00102\b\u0010g\u001a\u0004\u0018\u00010)2\u0006\u0010h\u001a\u00020)2\u0006\u0010i\u001a\u000205H\u0016¢\u0006\u0004\bj\u0010kJ\u000f\u0010l\u001a\u00020\u0010H\u0016¢\u0006\u0004\bl\u0010\u0018J#\u0010o\u001a\u00020\u00102\b\b\u0001\u0010m\u001a\u00020\u001a2\b\b\u0001\u0010n\u001a\u00020\u001aH\u0016¢\u0006\u0004\bo\u0010pJ\u001f\u0010q\u001a\u00020\u00102\u0006\u0010m\u001a\u00020\u001a2\u0006\u0010n\u001a\u00020\u001aH\u0016¢\u0006\u0004\bq\u0010pJ)\u0010r\u001a\u00020\u00102\b\u0010g\u001a\u0004\u0018\u00010)2\u0006\u0010h\u001a\u00020)2\u0006\u0010i\u001a\u000205H\u0016¢\u0006\u0004\br\u0010kJ\u000f\u0010s\u001a\u00020\u0010H\u0016¢\u0006\u0004\bs\u0010\u0018J\u0019\u0010u\u001a\u00020\u00102\b\b\u0001\u0010t\u001a\u00020\u001aH\u0016¢\u0006\u0004\bu\u0010#J\u000f\u0010v\u001a\u00020\u0010H\u0016¢\u0006\u0004\bv\u0010\u0018J\u000f\u0010w\u001a\u00020\u0010H\u0016¢\u0006\u0004\bw\u0010\u0018J\u0019\u0010y\u001a\u00020\u00102\b\b\u0001\u0010x\u001a\u00020\u001aH\u0016¢\u0006\u0004\by\u0010#J\u0019\u0010z\u001a\u00020\u00102\b\b\u0001\u0010x\u001a\u00020\u001aH\u0016¢\u0006\u0004\bz\u0010#J\u0019\u0010|\u001a\u00020\u00102\b\b\u0001\u0010{\u001a\u00020\u001aH\u0016¢\u0006\u0004\b|\u0010#J\u0019\u0010~\u001a\u00020\u00102\b\b\u0001\u0010}\u001a\u00020\u001aH\u0016¢\u0006\u0004\b~\u0010#J\"\u0010\u0082\u0001\u001a\u00020\u00102\u000e\u0010\u0081\u0001\u001a\t\u0012\u0005\u0012\u00030\u0080\u00010\u007fH\u0016¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001J\u0011\u0010\u0084\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b\u0084\u0001\u0010\u0018J\u0011\u0010\u0085\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b\u0085\u0001\u0010\u0018J\u0011\u0010\u0086\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b\u0086\u0001\u0010\u0018J\u001b\u0010\u0088\u0001\u001a\u00020\u00102\u0007\u0010\u001e\u001a\u00030\u0087\u0001H\u0016¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001J\u0011\u0010\u008a\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b\u008a\u0001\u0010\u0018J\u001c\u0010\u008d\u0001\u001a\u00020\u00102\b\u0010\u008c\u0001\u001a\u00030\u008b\u0001H\u0016¢\u0006\u0006\b\u008d\u0001\u0010\u008e\u0001J&\u0010\u0093\u0001\u001a\u00020\u00102\b\u0010\u0090\u0001\u001a\u00030\u008f\u00012\b\u0010\u0092\u0001\u001a\u00030\u0091\u0001H\u0016¢\u0006\u0006\b\u0093\u0001\u0010\u0094\u0001J&\u0010\u0096\u0001\u001a\u00020\u00102\b\u0010\u0090\u0001\u001a\u00030\u0095\u00012\b\u0010\u0092\u0001\u001a\u00030\u0091\u0001H\u0016¢\u0006\u0006\b\u0096\u0001\u0010\u0097\u0001J\u0011\u0010\u0098\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b\u0098\u0001\u0010\u0018J\u001c\u0010\u009b\u0001\u001a\u00020\u00102\b\u0010\u009a\u0001\u001a\u00030\u0099\u0001H\u0016¢\u0006\u0006\b\u009b\u0001\u0010\u009c\u0001J\u0011\u0010\u009d\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b\u009d\u0001\u0010\u0018J\u0011\u0010\u009e\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b\u009e\u0001\u0010\u0018J\u001c\u0010 \u0001\u001a\u00020\u00102\t\b\u0001\u0010\u009f\u0001\u001a\u00020\u001aH\u0016¢\u0006\u0005\b \u0001\u0010#J\u001c\u0010£\u0001\u001a\u00020\u00102\b\u0010¢\u0001\u001a\u00030¡\u0001H\u0016¢\u0006\u0006\b£\u0001\u0010¤\u0001J\u0011\u0010¥\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b¥\u0001\u0010\u0018J\u0011\u0010¦\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b¦\u0001\u0010\u0018J\u0011\u0010§\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b§\u0001\u0010\u0018J\u0011\u0010¨\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b¨\u0001\u0010\u0018J\u0011\u0010©\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b©\u0001\u0010\u0018J\u0011\u0010ª\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bª\u0001\u0010\u0018J\u0011\u0010«\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b«\u0001\u0010\u0018J\u0011\u0010¬\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b¬\u0001\u0010\u0018J\u0012\u0010\u00ad\u0001\u001a\u000205H\u0016¢\u0006\u0006\b\u00ad\u0001\u0010®\u0001J\u001c\u0010±\u0001\u001a\u00020\u00102\b\u0010°\u0001\u001a\u00030¯\u0001H\u0016¢\u0006\u0006\b±\u0001\u0010²\u0001J\u001a\u0010³\u0001\u001a\u00020\u00102\u0006\u0010b\u001a\u00020aH\u0016¢\u0006\u0006\b³\u0001\u0010´\u0001J\u001b\u0010¶\u0001\u001a\u00020\u00102\u0007\u0010µ\u0001\u001a\u00020\u001dH\u0016¢\u0006\u0006\b¶\u0001\u0010·\u0001J\u001a\u0010¸\u0001\u001a\u00020\u00102\u0006\u0010b\u001a\u00020aH\u0016¢\u0006\u0006\b¸\u0001\u0010´\u0001J3\u0010¼\u0001\u001a\u00020\u00102\t\u0010¹\u0001\u001a\u0004\u0018\u00010)2\t\u0010º\u0001\u001a\u0004\u0018\u00010)2\t\u0010»\u0001\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0006\b¼\u0001\u0010½\u0001J\u001a\u0010¿\u0001\u001a\u00020\u00102\u0007\u0010¾\u0001\u001a\u000205H\u0016¢\u0006\u0005\b¿\u0001\u0010GJ#\u0010À\u0001\u001a\u00020\u00102\u0007\u0010º\u0001\u001a\u00020)2\u0006\u0010;\u001a\u00020>H\u0016¢\u0006\u0006\bÀ\u0001\u0010Á\u0001J\u001b\u0010Â\u0001\u001a\u00020\u00102\b\b\u0001\u0010m\u001a\u00020\u001aH\u0016¢\u0006\u0005\bÂ\u0001\u0010#J\u0011\u0010Ã\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bÃ\u0001\u0010\u0018J\u0011\u0010Ä\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bÄ\u0001\u0010\u0018J\u001a\u0010Å\u0001\u001a\u00020\u00102\u0006\u0010b\u001a\u00020aH\u0016¢\u0006\u0006\bÅ\u0001\u0010´\u0001J\u0011\u0010Æ\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bÆ\u0001\u0010\u0018J\u0011\u0010Ç\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bÇ\u0001\u0010\u0018J%\u0010É\u0001\u001a\u00020\u00102\b\b\u0001\u0010/\u001a\u00020\u001a2\u0007\u0010È\u0001\u001a\u000205H\u0016¢\u0006\u0006\bÉ\u0001\u0010Ê\u0001J\u0011\u0010Ë\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bË\u0001\u0010\u0018J\u0011\u0010Ì\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bÌ\u0001\u0010\u0018J\u0011\u0010Í\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bÍ\u0001\u0010\u0018J\u001c\u0010Ð\u0001\u001a\u00020\u00102\b\u0010Ï\u0001\u001a\u00030Î\u0001H\u0016¢\u0006\u0006\bÐ\u0001\u0010Ñ\u0001J\u0011\u0010Ò\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bÒ\u0001\u0010\u0018J\u0011\u0010Ó\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bÓ\u0001\u0010\u0018J\u0011\u0010Ô\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bÔ\u0001\u0010\u0018J\u0011\u0010Õ\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bÕ\u0001\u0010\u0018J\u0011\u0010Ö\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bÖ\u0001\u0010\u0018J\u0011\u0010×\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b×\u0001\u0010\u0018J\u0011\u0010Ø\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bØ\u0001\u0010\u0018J\u001a\u0010Ú\u0001\u001a\u00020\u00102\u0007\u0010Ù\u0001\u001a\u000205H\u0016¢\u0006\u0005\bÚ\u0001\u0010GJ\u001a\u0010Ü\u0001\u001a\u00020\u00102\u0007\u0010Û\u0001\u001a\u00020)H\u0016¢\u0006\u0005\bÜ\u0001\u0010TJ\u001e\u0010ß\u0001\u001a\u00020\u00102\n\u0010Þ\u0001\u001a\u0005\u0018\u00010Ý\u0001H\u0016¢\u0006\u0006\bß\u0001\u0010à\u0001J\u0011\u0010á\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bá\u0001\u0010\u0018J\u0011\u0010â\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bâ\u0001\u0010\u0018J\u0011\u0010ã\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bã\u0001\u0010\u0018J\u0011\u0010ä\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bä\u0001\u0010\u0018J!\u0010å\u0001\u001a\u00020\u00102\u0006\u0010m\u001a\u00020\u001a2\u0006\u0010n\u001a\u00020\u001aH\u0016¢\u0006\u0005\bå\u0001\u0010pJ\u001c\u0010è\u0001\u001a\u00020\u00102\b\u0010ç\u0001\u001a\u00030æ\u0001H\u0016¢\u0006\u0006\bè\u0001\u0010é\u0001J\u0011\u0010ê\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bê\u0001\u0010\u0018J\u0011\u0010ë\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bë\u0001\u0010\u0018J\u0011\u0010ì\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bì\u0001\u0010\u0018J\u0011\u0010í\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bí\u0001\u0010\u0018J\u0011\u0010î\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bî\u0001\u0010\u0018J\u0011\u0010ï\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bï\u0001\u0010\u0018J\u001c\u0010ò\u0001\u001a\u00020\u00102\b\u0010ñ\u0001\u001a\u00030ð\u0001H\u0016¢\u0006\u0006\bò\u0001\u0010ó\u0001J%\u0010ö\u0001\u001a\u00020\u00102\t\u0010ô\u0001\u001a\u0004\u0018\u00010)2\u0007\u0010õ\u0001\u001a\u00020)H\u0016¢\u0006\u0005\bö\u0001\u0010_J\u0011\u0010÷\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b÷\u0001\u0010\u0018J;\u0010ý\u0001\u001a\u00020\u00102\b\u0010ù\u0001\u001a\u00030ø\u00012\t\u0010ú\u0001\u001a\u0004\u0018\u00010)2\t\u0010û\u0001\u001a\u0004\u0018\u00010)2\u0007\u0010ü\u0001\u001a\u000205H\u0016¢\u0006\u0006\bý\u0001\u0010þ\u0001J\u001c\u0010\u0081\u0002\u001a\u00020\u00102\b\u0010\u0080\u0002\u001a\u00030ÿ\u0001H\u0016¢\u0006\u0006\b\u0081\u0002\u0010\u0082\u0002J\u0011\u0010\u0083\u0002\u001a\u00020\u0010H\u0016¢\u0006\u0005\b\u0083\u0002\u0010\u0018J\u001c\u0010\u0084\u0002\u001a\u00020\u00102\b\u0010\u0080\u0002\u001a\u00030ÿ\u0001H\u0016¢\u0006\u0006\b\u0084\u0002\u0010\u0082\u0002J\u0011\u0010\u0085\u0002\u001a\u00020\u0010H\u0016¢\u0006\u0005\b\u0085\u0002\u0010\u0018J\u0011\u0010\u0086\u0002\u001a\u00020\u0010H\u0016¢\u0006\u0005\b\u0086\u0002\u0010\u0018J\u0012\u0010\u0087\u0002\u001a\u000205H\u0016¢\u0006\u0006\b\u0087\u0002\u0010®\u0001J\u0011\u0010\u0088\u0002\u001a\u00020\u0010H\u0016¢\u0006\u0005\b\u0088\u0002\u0010\u0018J\u001a\u0010\u008a\u0002\u001a\u00020\u00102\u0007\u0010\u0089\u0002\u001a\u000205H\u0016¢\u0006\u0005\b\u008a\u0002\u0010GJ\u0011\u0010\u008b\u0002\u001a\u00020\u0010H\u0016¢\u0006\u0005\b\u008b\u0002\u0010\u0018J\u001c\u0010\u008e\u0002\u001a\u0002052\b\u0010\u008d\u0002\u001a\u00030\u008c\u0002H\u0016¢\u0006\u0006\b\u008e\u0002\u0010\u008f\u0002J$\u0010\u0090\u0002\u001a\u00020\u00102\b\u0010\u008d\u0002\u001a\u00030\u008c\u00022\u0006\u0010b\u001a\u00020aH\u0016¢\u0006\u0006\b\u0090\u0002\u0010\u0091\u0002J\u0011\u0010\u0092\u0002\u001a\u00020\u0010H\u0016¢\u0006\u0005\b\u0092\u0002\u0010\u0018J*\u0010\u0095\u0002\u001a\u00020\u00102\u0007\u0010\u0093\u0002\u001a\u00020)2\r\u0010\u0094\u0002\u001a\b\u0012\u0004\u0012\u00020)0\u007fH\u0016¢\u0006\u0006\b\u0095\u0002\u0010\u0096\u0002J\u001c\u0010\u0099\u0002\u001a\u00020\u00102\b\u0010\u0098\u0002\u001a\u00030\u0097\u0002H\u0016¢\u0006\u0006\b\u0099\u0002\u0010\u009a\u0002J\u001a\u0010\u009b\u0002\u001a\u00020\u00102\u0006\u0010b\u001a\u00020aH\u0016¢\u0006\u0006\b\u009b\u0002\u0010´\u0001J\u001a\u0010\u009c\u0002\u001a\u00020\u00102\u0006\u0010b\u001a\u00020aH\u0016¢\u0006\u0006\b\u009c\u0002\u0010´\u0001J\u0011\u0010\u009d\u0002\u001a\u00020\u0010H\u0016¢\u0006\u0005\b\u009d\u0002\u0010\u0018J\u0011\u0010\u009e\u0002\u001a\u00020\u0010H\u0016¢\u0006\u0005\b\u009e\u0002\u0010\u0018J\u0011\u0010\u009f\u0002\u001a\u00020\u0010H\u0016¢\u0006\u0005\b\u009f\u0002\u0010\u0018J\u0011\u0010 \u0002\u001a\u00020\u0010H\u0016¢\u0006\u0005\b \u0002\u0010\u0018J\u001c\u0010£\u0002\u001a\u00020\u00102\b\u0010¢\u0002\u001a\u00030¡\u0002H\u0016¢\u0006\u0006\b£\u0002\u0010¤\u0002J\u001a\u0010¦\u0002\u001a\u00020\u00102\u0007\u0010¥\u0002\u001a\u000205H\u0016¢\u0006\u0005\b¦\u0002\u0010GJ.\u0010¨\u0002\u001a\u00020\u00102\u0006\u0010b\u001a\u00020a2\u0007\u0010º\u0001\u001a\u00020)2\t\u0010§\u0002\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0006\b¨\u0002\u0010©\u0002J\u0011\u0010ª\u0002\u001a\u00020\u0010H\u0016¢\u0006\u0005\bª\u0002\u0010\u0018J\u0011\u0010«\u0002\u001a\u00020\u0010H\u0016¢\u0006\u0005\b«\u0002\u0010\u0018J1\u0010®\u0002\u001a\u00020\u00102\b\u0010\u00ad\u0002\u001a\u00030¬\u00022\b\u0010¢\u0002\u001a\u00030¡\u00022\t\u0010\u009f\u0001\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0006\b®\u0002\u0010¯\u0002J\u0011\u0010°\u0002\u001a\u00020\u0010H\u0016¢\u0006\u0005\b°\u0002\u0010\u0018J\u0011\u0010±\u0002\u001a\u00020\u0010H\u0016¢\u0006\u0005\b±\u0002\u0010\u0018J\u001a\u0010²\u0002\u001a\u00020\u00102\u0006\u0010b\u001a\u00020aH\u0016¢\u0006\u0006\b²\u0002\u0010´\u0001R*\u0010º\u0002\u001a\u00030³\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b´\u0002\u0010µ\u0002\u001a\u0006\b¶\u0002\u0010·\u0002\"\u0006\b¸\u0002\u0010¹\u0002R*\u0010Â\u0002\u001a\u00030»\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b¼\u0002\u0010½\u0002\u001a\u0006\b¾\u0002\u0010¿\u0002\"\u0006\bÀ\u0002\u0010Á\u0002R\u001a\u0010Æ\u0002\u001a\u00030Ã\u00028\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÄ\u0002\u0010Å\u0002R#\u0010Ì\u0002\u001a\u00030Ç\u00028B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÈ\u0002\u0010É\u0002\u001a\u0006\bÊ\u0002\u0010Ë\u0002R(\u0010Ð\u0002\u001a\b\u0012\u0004\u0012\u00020\f0\u007f8B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÍ\u0002\u0010É\u0002\u001a\u0006\bÎ\u0002\u0010Ï\u0002R%\u0010Õ\u0002\u001a\u0005\u0018\u00010Ñ\u00028B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÒ\u0002\u0010É\u0002\u001a\u0006\bÓ\u0002\u0010Ô\u0002R(\u0010Ø\u0002\u001a\b\u0012\u0004\u0012\u00020\f0\u007f8B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÖ\u0002\u0010É\u0002\u001a\u0006\b×\u0002\u0010Ï\u0002R#\u0010Þ\u0002\u001a\u00030Ù\u00028B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÚ\u0002\u0010Û\u0002\u001a\u0006\bÜ\u0002\u0010Ý\u0002R\u001a\u0010â\u0002\u001a\u00030ß\u00028\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\bà\u0002\u0010á\u0002R'\u0010ä\u0002\u001a\b\u0012\u0004\u0012\u00020\f0\u007f8B@\u0002X\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\"\u0010É\u0002\u001a\u0006\bã\u0002\u0010Ï\u0002R*\u0010ì\u0002\u001a\u00030å\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bæ\u0002\u0010ç\u0002\u001a\u0006\bè\u0002\u0010é\u0002\"\u0006\bê\u0002\u0010ë\u0002R-\u0010ò\u0002\u001a\r î\u0002*\u0005\u0018\u00010í\u00020í\u00028B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bï\u0002\u0010É\u0002\u001a\u0006\bð\u0002\u0010ñ\u0002R*\u0010ú\u0002\u001a\u00030ó\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bô\u0002\u0010õ\u0002\u001a\u0006\bö\u0002\u0010÷\u0002\"\u0006\bø\u0002\u0010ù\u0002R-\u0010ÿ\u0002\u001a\r î\u0002*\u0005\u0018\u00010û\u00020û\u00028B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bü\u0002\u0010É\u0002\u001a\u0006\bý\u0002\u0010þ\u0002R*\u0010\u0087\u0003\u001a\u00030\u0080\u00038\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u0081\u0003\u0010\u0082\u0003\u001a\u0006\b\u0083\u0003\u0010\u0084\u0003\"\u0006\b\u0085\u0003\u0010\u0086\u0003R%\u0010\u008c\u0003\u001a\u0005\u0018\u00010\u0088\u00038B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0089\u0003\u0010É\u0002\u001a\u0006\b\u008a\u0003\u0010\u008b\u0003R\u001a\u0010\u0090\u0003\u001a\u00030\u008d\u00038\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u008e\u0003\u0010\u008f\u0003R\u001a\u0010\u0094\u0003\u001a\u00030\u0091\u00038\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0092\u0003\u0010\u0093\u0003R(\u0010\u0097\u0003\u001a\b\u0012\u0004\u0012\u00020\f0\u007f8B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0095\u0003\u0010É\u0002\u001a\u0006\b\u0096\u0003\u0010Ï\u0002R*\u0010\u0080\u0002\u001a\u00030\u0098\u00038\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u0099\u0003\u0010\u009a\u0003\u001a\u0006\b\u009b\u0003\u0010\u009c\u0003\"\u0006\b\u009d\u0003\u0010\u009e\u0003R(\u0010¡\u0003\u001a\b\u0012\u0004\u0012\u00020\f0\u007f8B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u009f\u0003\u0010É\u0002\u001a\u0006\b \u0003\u0010Ï\u0002R-\u0010¦\u0003\u001a\r î\u0002*\u0005\u0018\u00010¢\u00030¢\u00038B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b£\u0003\u0010É\u0002\u001a\u0006\b¤\u0003\u0010¥\u0003R(\u0010©\u0003\u001a\b\u0012\u0004\u0012\u00020\f0\u007f8B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b§\u0003\u0010É\u0002\u001a\u0006\b¨\u0003\u0010Ï\u0002¨\u0006¬\u0003"}, d2 = {"Le/a/g/a/a/a;", "Landroidx/fragment/app/Fragment;", "Le/a/g/a/a/h;", "Le/a/g/j/t;", "Le/a/x3/h/g;", "Le/a/g/a/d;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType;", "videoExpansionType", "pe", "(Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType;)V", "onResume", "()V", "onPause", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "logo", "w", "(I)V", "G0", "y2", "O1", "X0", "v0", "", "carrierName", "simIcon", "Ea", "(Ljava/lang/String;I)V", "Dk", UpdateKey.STATUS, "iconRes", "bk", "(Ljava/lang/String;Ljava/lang/Integer;)V", "number", "q3", "", "isPhonebookContact", "Y7", "(Ljava/lang/String;Z)V", "Le/a/k/a/k/y;", "videoXConfig", "analyticsContext", "tu", "(Le/a/k/a/k/y;Ljava/lang/String;)V", "Lcom/truecaller/acs/analytics/AnalyticsContext;", "Vz", "(Le/a/k/a/k/y;Lcom/truecaller/acs/analytics/AnalyticsContext;)V", "Le/a/k/a/k/l;", DTBMetricsConfiguration.CONFIG_DIR, "V1", "(Le/a/k/a/k/l;Ljava/lang/String;)V", RemoteMessageConst.Notification.VISIBILITY, "aA", "(Z)V", "Le/a/k/a/k/z/a;", "Bh", "()Le/a/k/a/k/z/a;", "Lq3/a/x2/i1;", "Le/a/k/a/k/z/b;", "at", "()Lq3/a/x2/i1;", "mute", "sk", "profileName", "Aq", "setName", "(Ljava/lang/String;)V", "Fd", "Rq", "dd", "Si", "altName", "setAltName", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "jobTitle", "company", "Pj", "(Ljava/lang/String;Ljava/lang/String;)V", "w5", "Lcom/truecaller/data/entity/Contact;", AnalyticsConstants.CONTACT, "searchType", "r8", "(Lcom/truecaller/data/entity/Contact;I)V", "tv", "iconUrl", "title", "clickable", "Hz", "(Ljava/lang/String;Ljava/lang/String;Z)V", "P0", "foregroundColor", "backgroundRes", "N9", "(II)V", "xi", "gb", "b5", "backgroundColor", "Za", "fd", "Se", "textColor", "dr", "Gs", "iconColor", "Jy", "dividerColor", "ll", "", "Le/a/g/a/f;", "actionButtons", "Ds", "(Ljava/util/List;)V", "Wc", "z8", "finish", "Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;", "oc", "(Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;)V", "k6", "Le/a/k/a/k/a;", "avatarVideoConfig", "fm", "(Le/a/k/a/k/a;)V", "Le/a/i/f0/m/d;", "ad", "Le/a/i/g;", "layout", "i6", "(Le/a/i/f0/m/d;Le/a/i/g;)V", "Le/a/i/c/a/c;", "I3", "(Le/a/i/c/a/c;Le/a/i/g;)V", "S1", "Lcom/truecaller/spamcategories/SpamCategoryRequest;", "spamCategoryRequest", "lz", "(Lcom/truecaller/spamcategories/SpamCategoryRequest;)V", "cr", "Mp", "message", "a", "Lcom/truecaller/ads/campaigns/AdCampaign$Style;", "style", "Bg", "(Lcom/truecaller/ads/campaigns/AdCampaign$Style;)V", "Vk", "p6", "fn", "Ah", "Ra", "onDestroyView", "ct", "zy", "R0", "()Z", "Le/a/g/a/b/s;", "listener", "m8", "(Le/a/g/a/b/s;)V", "K8", "(Lcom/truecaller/data/entity/Contact;)V", "intent", "Ig", "(Landroid/content/Intent;)V", AbstractLocaleUtils.ISO_US, "displayName", "normalizedNumber", "rawNumber", "rh", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", AnalyticsConstants.SHOW, "Ey", "pl", "(Ljava/lang/String;Lcom/truecaller/acs/analytics/AnalyticsContext;)V", "Dw", "tl", "ky", "e1", "tb", "Qn", "isAllCaps", "Wu", "(IZ)V", "Ej", "Us", "cu", "Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;", "feedbackQuestion", "En", "(Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;)V", "yw", "ck", "rx", "ta", "l7", "De", "tm", "isCredPrivilege", "qk", "label", "Ag", "Lcom/truecaller/data/entity/SpamCategoryModel;", "category", "setSpamCategoryIcon", "(Lcom/truecaller/data/entity/SpamCategoryModel;)V", "Zt", "By", "pa", "Lx", "c5", "", "aggregatedContactId", "ik", "(J)V", "Vw", "ax", "tg", "Cv", "pi", "Bs", "Le/a/g/a/f0/a/e;", "rateAppPromo", "Oa", "(Le/a/g/a/f0/a/e;)V", AnalyticsConstants.TIMEZONE, "address", "h2", "oy", "Le/a/e0/b;", "afterBlockPromo", "spammerName", "spammerAddress", "isTopSpammer", "op", "(Le/a/e0/b;Ljava/lang/String;Ljava/lang/String;Z)V", "Le/a/m5/c;", "presenter", "P", "(Le/a/m5/c;)V", "n", "W5", "a4", "C0", "wa", "Th", "hasFocus", "d8", "qw", "Lcom/truecaller/acs/util/AcsReferralHelper$ReferralLaunchContext;", AnalyticsConstants.CONTEXT, "bq", "(Lcom/truecaller/acs/util/AcsReferralHelper$ReferralLaunchContext;)Z", "Oi", "(Lcom/truecaller/acs/util/AcsReferralHelper$ReferralLaunchContext;Lcom/truecaller/data/entity/Contact;)V", "dy", "displayNameOrNumber", "numbers", "Mr", "(Ljava/lang/String;Ljava/util/List;)V", "Lcom/truecaller/acs/ui/ActionButtonType;", "actionButtonType", "ir", "(Lcom/truecaller/acs/ui/ActionButtonType;)V", "Hu", "hd", "rz", "wg", "gm", "Nr", "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;", "source", "Yc", "(Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;)V", "visible", "CA", "countryCode", "ag", "(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ljava/lang/String;)V", "Fw", "ot", "Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;", "callOptions", "Gx", "(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;Ljava/lang/String;)V", "Kn", "tq", "Pn", "Le/a/g/j/m;", "j", "Le/a/g/j/m;", "getInCallUIHelper", "()Le/a/g/j/m;", "setInCallUIHelper", "(Le/a/g/j/m;)V", "inCallUIHelper", "Le/a/u3/g;", "m", "Le/a/u3/g;", "getFeaturesRegistry", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "featuresRegistry", "e/a/g/a/a/a$g", "s", "Le/a/g/a/a/a$g;", "eventReceiver", "Le/a/b0/a/g;", "t", "Ls1/g;", "getGoldBackground", "()Le/a/b0/a/g;", "goldBackground", "B", "SA", "()Ljava/util/List;", "contactDetailsGroup", "Lcom/truecaller/ads/ui/AdsSwitchView;", "D", "QA", "()Lcom/truecaller/ads/ui/AdsSwitchView;", "adContainer", "C", "getSpamPremiumPromoOverlappedViews", "spamPremiumPromoOverlappedViews", "Le/a/g/h/b;", "p", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "RA", "()Le/a/g/h/b;", "binding", "e/a/g/a/a/a$m", "J", "Le/a/g/a/a/a$m;", "rateAppListener", "TA", "feedbackQuestionGroup", "Lcom/truecaller/acs/util/AcsReferralHelper;", "l", "Lcom/truecaller/acs/util/AcsReferralHelper;", "getReferralHelper", "()Lcom/truecaller/acs/util/AcsReferralHelper;", "setReferralHelper", "(Lcom/truecaller/acs/util/AcsReferralHelper;)V", "referralHelper", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "z", "XA", "()Landroid/widget/TextView;", "spamLabel", "Le/a/g/j/r;", "f", "Le/a/g/j/r;", "getPhonebookHelper", "()Le/a/g/j/r;", "setPhonebookHelper", "(Le/a/g/j/r;)V", "phonebookHelper", "Landroid/view/animation/Animation;", "u", "getFadeInAnim", "()Landroid/view/animation/Animation;", "fadeInAnim", "Le/a/o/b/m;", "o", "Le/a/o/b/m;", "getContextCallRouter", "()Le/a/o/b/m;", "setContextCallRouter", "(Le/a/o/b/m;)V", "contextCallRouter", "", "E", "YA", "()Ljava/lang/Float;", "tagViewTitleSize", "Le/a/p5/h0;", "r", "Le/a/p5/h0;", "resourceProvider", "Le/a/b0/a/d;", "q", "Le/a/b0/a/d;", "avatarPresenter", "x", "UA", "feedbackThanksGroup", "Le/a/g/a/a/g;", "e", "Le/a/g/a/a/g;", "VA", "()Le/a/g/a/a/g;", "setPresenter", "(Le/a/g/a/a/g;)V", "A", "getFeedbackContactDetailsGroup", "feedbackContactDetailsGroup", "Landroid/widget/ImageView;", "y", "WA", "()Landroid/widget/ImageView;", "spamIcon", "v", "getFeedbackContainerGroup", "feedbackContainerGroup", "<init>", "M", "acs_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.g.a.a.a */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a.class */
public final class C14074a extends AbstractC14116m implements AbstractC14104h, AbstractC14313t, AbstractC21409g, AbstractC14183d {
    @Inject

    /* renamed from: e */
    public AbstractC14103g f40704e;
    @Inject

    /* renamed from: f */
    public AbstractC14307r f40705f;
    @Inject

    /* renamed from: g */
    public C14290k f40706g;
    @Inject

    /* renamed from: h */
    public C14300p f40707h;
    @Inject

    /* renamed from: i */
    public C14314u f40708i;
    @Inject

    /* renamed from: j */
    public AbstractC14294m f40709j;
    @Inject

    /* renamed from: k */
    public C14292l f40710k;
    @Inject

    /* renamed from: l */
    public AcsReferralHelper f40711l;
    @Inject

    /* renamed from: m */
    public C20592g f40712m;
    @Inject

    /* renamed from: n */
    public C14303q0 f40713n;
    @Inject

    /* renamed from: o */
    public AbstractC18742m f40714o;

    /* renamed from: q */
    public C8289d f40716q;

    /* renamed from: r */
    public AbstractC19233h0 f40717r;

    /* renamed from: K */
    public static final /* synthetic */ l[] f40695K = {C22128a.m8621g0(C14074a.class, "binding", "getBinding()Lcom/truecaller/acs/databinding/FragmentAcsPopupBinding;", 0)};

    /* renamed from: M */
    public static final C14078e f40697M = new C14078e(null);

    /* renamed from: L */
    public static final String[] f40696L = {"com.truecaller.EVENT_AFTER_CALL_START"};

    /* renamed from: p */
    public final ViewBindingProperty f40715p = new C19350a(new C14077d());

    /* renamed from: s */
    public final C14080g f40718s = new C14080g();

    /* renamed from: t */
    public final g f40719t = C25225a.m3978P1(new C14082i());

    /* renamed from: u */
    public final g f40720u = C25225a.m3978P1(new C14081h());

    /* renamed from: v */
    public final g f40721v = C25225a.m3978P1(new c(2, this));

    /* renamed from: w */
    public final g f40722w = C25225a.m3978P1(new c(3, this));

    /* renamed from: x */
    public final g f40723x = C25225a.m3978P1(new c(4, this));

    /* renamed from: y */
    public final g f40724y = C25225a.m3978P1(new C14095v());

    /* renamed from: z */
    public final g f40725z = C25225a.m3978P1(new C14096w());

    /* renamed from: A */
    public final g f40698A = C25225a.m3978P1(new c(1, this));

    /* renamed from: B */
    public final g f40699B = C25225a.m3978P1(new c(0, this));

    /* renamed from: C */
    public final g f40700C = C25225a.m3978P1(new c(5, this));

    /* renamed from: D */
    public final g f40701D = C25225a.m3978P1(new C14079f());

    /* renamed from: E */
    public final g f40702E = C25225a.m3978P1(new C14097x());

    /* renamed from: J */
    public final C14086m f40703J = new C14086m();

    /* renamed from: e.a.g.a.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/g/a/a/a$a.class */
    public static final class View$OnClickListenerC14075a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f40726a;

        /* renamed from: b */
        public final /* synthetic */ Object f40727b;

        public View$OnClickListenerC14075a(int i, Object obj) {
            this.f40726a = i;
            this.f40727b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            switch (this.f40726a) {
                case 0:
                    C14105i c14105i = (C14105i) ((C14074a) this.f40727b).m20786VA();
                    c14105i.m20452Nk(c14105i.m20451Oj());
                    return;
                case 1:
                    C14314u c14314u = ((C14105i) ((C14074a) this.f40727b).m20786VA()).f40760J0;
                    c14314u.f41403b.mo17168a(c14314u.f41402a, PremiumLaunchContext.GOLD_HINT_AFTER_CALL, "gold");
                    return;
                case 2:
                    ((AbstractC14205m) ((C14074a) this.f40727b).m20786VA()).mo20428gk();
                    return;
                case 3:
                    C14105i c14105i2 = (C14105i) ((C14074a) this.f40727b).m20786VA();
                    Objects.requireNonNull(c14105i2);
                    c14105i2.m20461Jj(DismissReason.EMPTY_SPACE);
                    return;
                case 4:
                    AbstractC14205m abstractC14205m = (AbstractC14205m) ((C14074a) this.f40727b).m20786VA();
                    C19391a c19391a = abstractC14205m.f41005k0;
                    String value = abstractC14205m.f40968B.getValue();
                    Objects.requireNonNull(c19391a);
                    s1.z.c.l.e(value, "contactFeedbackContext");
                    c19391a.m13378a(value, ContactFeedbackAnalyticsAction.VOTE_POSITIVE);
                    abstractC14205m.m20418qk(true);
                    d.w2(abstractC14205m, (f) null, (j0) null, new C14231y(abstractC14205m, null), 3, (Object) null);
                    return;
                case 5:
                    AbstractC14205m abstractC14205m2 = (AbstractC14205m) ((C14074a) this.f40727b).m20786VA();
                    C19391a c19391a2 = abstractC14205m2.f41005k0;
                    String value2 = abstractC14205m2.f40968B.getValue();
                    Objects.requireNonNull(c19391a2);
                    s1.z.c.l.e(value2, "contactFeedbackContext");
                    c19391a2.m13378a(value2, ContactFeedbackAnalyticsAction.VOTE_NEGATIVE);
                    Contact contact = abstractC14205m2.m20451Oj().f11539f;
                    if (contact == null) {
                        return;
                    }
                    C14288j c14288j = abstractC14205m2.f40990X;
                    s1.z.c.l.d(contact, "it");
                    Long m20288a = c14288j.m20288a(contact);
                    if (m20288a == null) {
                        return;
                    }
                    long longValue = m20288a.longValue();
                    AbstractC14198h abstractC14198h = (AbstractC14198h) abstractC14205m2.f57683a;
                    if (abstractC14198h == null) {
                        return;
                    }
                    abstractC14198h.mo20518ik(longValue);
                    return;
                case 6:
                    ((AbstractC14205m) ((C14074a) this.f40727b).m20786VA()).m20431dk();
                    return;
                case 7:
                    ((AbstractC14205m) ((C14074a) this.f40727b).m20786VA()).m20431dk();
                    return;
                case 8:
                    AbstractC14205m abstractC14205m3 = (AbstractC14205m) ((C14074a) this.f40727b).m20786VA();
                    Contact contact2 = abstractC14205m3.m20451Oj().f11539f;
                    if (contact2 == null) {
                        return;
                    }
                    abstractC14205m3.f40998h.offer(ClickEvent.SUGGEST_NAME);
                    AbstractC14198h abstractC14198h2 = (AbstractC14198h) abstractC14205m3.f57683a;
                    if (abstractC14198h2 == null) {
                        return;
                    }
                    s1.z.c.l.d(contact2, "it");
                    abstractC14198h2.mo20524e1(contact2);
                    return;
                case 9:
                    ((AbstractC14205m) ((C14074a) this.f40727b).m20786VA()).m20421nk();
                    return;
                default:
                    throw null;
            }
        }
    }

    /* renamed from: e.a.g.a.a.a$b */
    /* loaded from: classes3-dex2jar.jar:e/a/g/a/a/a$b.class */
    public static final class View$OnClickListenerC14076b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f40728a;

        /* renamed from: b */
        public final /* synthetic */ Object f40729b;

        /* renamed from: c */
        public final /* synthetic */ Object f40730c;

        public View$OnClickListenerC14076b(int i, Object obj, Object obj2) {
            this.f40728a = i;
            this.f40729b = obj;
            this.f40730c = obj2;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f40728a;
            if (i == 0) {
                AbstractC14103g m20786VA = ((C14074a) this.f40729b).m20786VA();
                FeedbackQuestion feedbackQuestion = (FeedbackQuestion) this.f40730c;
                AbstractC14205m abstractC14205m = (AbstractC14205m) m20786VA;
                Objects.requireNonNull(abstractC14205m);
                s1.z.c.l.e(feedbackQuestion, "feedbackQuestion");
                if (abstractC14205m.m20451Oj().f11539f != null) {
                    abstractC14205m.f41003j0.mo28774a(abstractC14205m.f40968B.getValue(), feedbackQuestion, abstractC14205m.m20451Oj());
                }
                d.w2(abstractC14205m, (f) null, (j0) null, new C14232z(abstractC14205m, null), 3, (Object) null);
            } else if (i != 1) {
                throw null;
            } else {
                AbstractC14103g m20786VA2 = ((C14074a) this.f40729b).m20786VA();
                FeedbackQuestion feedbackQuestion2 = (FeedbackQuestion) this.f40730c;
                AbstractC14205m abstractC14205m2 = (AbstractC14205m) m20786VA2;
                Objects.requireNonNull(abstractC14205m2);
                s1.z.c.l.e(feedbackQuestion2, "feedbackQuestion");
                if (abstractC14205m2.m20451Oj().f11539f != null) {
                    abstractC14205m2.f41003j0.mo28773b(abstractC14205m2.f40968B.getValue(), feedbackQuestion2, abstractC14205m2.m20451Oj());
                }
                d.w2(abstractC14205m2, (f) null, (j0) null, new C14232z(abstractC14205m2, null), 3, (Object) null);
            }
        }
    }

    /* renamed from: e.a.g.a.a.a$d */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$d.class */
    public static final class C14077d extends m implements s1.z.b.l<C14074a, C14257b> {
        public C14077d() {
            super(1);
        }

        /* renamed from: d */
        public Object m20782d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C2778R.C2780id.acsAdsContainer;
            View findViewById = requireView.findViewById(i);
            if (findViewById != null) {
                C14259d m20311a = C14259d.m20311a(findViewById);
                i = C2778R.C2780id.acsBizmonContainer;
                View findViewById2 = requireView.findViewById(i);
                if (findViewById2 != null) {
                    int i2 = C2778R.C2780id.bizSurveyContainerCardView;
                    View findViewById3 = findViewById2.findViewById(i2);
                    if (findViewById3 != null) {
                        int i3 = C2778R.C2780id.bizSurveyContainer;
                        FragmentContainerView fragmentContainerView = (FragmentContainerView) findViewById3.findViewById(i3);
                        if (fragmentContainerView == null) {
                            throw new NullPointerException("Missing required view with ID: ".concat(findViewById3.getResources().getResourceName(i3)));
                        }
                        C14261f c14261f = new C14261f((CardView) findViewById3, fragmentContainerView);
                        i2 = C2778R.C2780id.callMeBackContainer;
                        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById2.findViewById(i2);
                        if (constraintLayout != null) {
                            i2 = C2778R.C2780id.callMeBackView;
                            CallMeBackPopUpView callMeBackPopUpView = (CallMeBackPopUpView) findViewById2.findViewById(i2);
                            if (callMeBackPopUpView != null) {
                                i2 = C2778R.C2780id.dividerSpace;
                                Space space = (Space) findViewById2.findViewById(i2);
                                if (space != null) {
                                    i2 = C2778R.C2780id.modularCallReason;
                                    ModularCallReasonView modularCallReasonView = (ModularCallReasonView) findViewById2.findViewById(i2);
                                    if (modularCallReasonView != null) {
                                        i2 = C2778R.C2780id.videoPlayerLandscape;
                                        FullScreenRatioVideoPlayerView fullScreenRatioVideoPlayerView = (FullScreenRatioVideoPlayerView) findViewById2.findViewById(i2);
                                        if (fullScreenRatioVideoPlayerView != null) {
                                            C14263h c14263h = new C14263h((ConstraintLayout) findViewById2, c14261f, constraintLayout, callMeBackPopUpView, space, modularCallReasonView, fullScreenRatioVideoPlayerView);
                                            i = C2778R.C2780id.acsContainer;
                                            RelativeLayout relativeLayout = (RelativeLayout) requireView.findViewById(i);
                                            if (relativeLayout != null) {
                                                i = C2778R.C2780id.action_container;
                                                ActionButtonsView actionButtonsView = (ActionButtonsView) requireView.findViewById(i);
                                                if (actionButtonsView != null) {
                                                    i = C2778R.C2780id.addressTimezoneView;
                                                    AddressTimezoneView addressTimezoneView = (AddressTimezoneView) requireView.findViewById(i);
                                                    if (addressTimezoneView != null) {
                                                        i = C2778R.C2780id.ads_placeholder;
                                                        View findViewById4 = requireView.findViewById(i);
                                                        if (findViewById4 != null) {
                                                            i = C2778R.C2780id.ads_view_video_frame;
                                                            FrameLayout frameLayout = (FrameLayout) requireView.findViewById(i);
                                                            if (frameLayout != null) {
                                                                i = C2778R.C2780id.avatarGuideline;
                                                                Guideline guideline = (Guideline) requireView.findViewById(i);
                                                                if (guideline != null) {
                                                                    i = C2778R.C2780id.businessStatus;
                                                                    TextView textView = (TextView) requireView.findViewById(i);
                                                                    if (textView != null) {
                                                                        i = C2778R.C2780id.callTypeAndTime;
                                                                        TextView textView2 = (TextView) requireView.findViewById(i);
                                                                        if (textView2 != null) {
                                                                            i = C2778R.C2780id.closeIcon;
                                                                            ImageView imageView = (ImageView) requireView.findViewById(i);
                                                                            if (imageView != null) {
                                                                                i = C2778R.C2780id.contactDetails;
                                                                                TextView textView3 = (TextView) requireView.findViewById(i);
                                                                                if (textView3 != null) {
                                                                                    i = C2778R.C2780id.credBackground;
                                                                                    ImageView imageView2 = (ImageView) requireView.findViewById(i);
                                                                                    if (imageView2 != null) {
                                                                                        i = C2778R.C2780id.credBackgroundCard;
                                                                                        CardView cardView = (CardView) requireView.findViewById(i);
                                                                                        if (cardView != null) {
                                                                                            i = C2778R.C2780id.detailDividerLine;
                                                                                            View findViewById5 = requireView.findViewById(i);
                                                                                            if (findViewById5 != null) {
                                                                                                i = C2778R.C2780id.detailsBackground;
                                                                                                View findViewById6 = requireView.findViewById(i);
                                                                                                if (findViewById6 != null) {
                                                                                                    int i4 = C2778R.C2780id.feedbackBackground;
                                                                                                    View findViewById7 = requireView.findViewById(i4);
                                                                                                    i = i4;
                                                                                                    if (findViewById7 != null) {
                                                                                                        int i5 = C2778R.C2780id.feedbackDividerLine;
                                                                                                        View findViewById8 = requireView.findViewById(i5);
                                                                                                        if (findViewById8 != null) {
                                                                                                            int i6 = C2778R.C2780id.feedbackDownVote;
                                                                                                            ImageView imageView3 = (ImageView) requireView.findViewById(i6);
                                                                                                            if (imageView3 != null) {
                                                                                                                i = C2778R.C2780id.feedbackFooterSpace;
                                                                                                                Space space2 = (Space) requireView.findViewById(i);
                                                                                                                if (space2 != null) {
                                                                                                                    i = C2778R.C2780id.feedbackNumber;
                                                                                                                    TextView textView4 = (TextView) requireView.findViewById(i);
                                                                                                                    if (textView4 != null) {
                                                                                                                        int i7 = C2778R.C2780id.feedbackQuestion;
                                                                                                                        TextView textView5 = (TextView) requireView.findViewById(i7);
                                                                                                                        i = i7;
                                                                                                                        if (textView5 != null) {
                                                                                                                            int i8 = C2778R.C2780id.feedbackThanks;
                                                                                                                            TextView textView6 = (TextView) requireView.findViewById(i8);
                                                                                                                            if (textView6 != null) {
                                                                                                                                int i9 = C2778R.C2780id.feedbackThanksAnimation;
                                                                                                                                LottieAnimationView lottieAnimationView = (LottieAnimationView) requireView.findViewById(i9);
                                                                                                                                if (lottieAnimationView != null) {
                                                                                                                                    int i10 = C2778R.C2780id.feedbackTitle;
                                                                                                                                    TextView textView7 = (TextView) requireView.findViewById(i10);
                                                                                                                                    if (textView7 != null) {
                                                                                                                                        int i11 = C2778R.C2780id.feedbackUpVote;
                                                                                                                                        ImageView imageView4 = (ImageView) requireView.findViewById(i11);
                                                                                                                                        if (imageView4 != null) {
                                                                                                                                            i = C2778R.C2780id.headerBackground;
                                                                                                                                            View findViewById9 = requireView.findViewById(i);
                                                                                                                                            if (findViewById9 != null) {
                                                                                                                                                i = C2778R.C2780id.headerDividerLine;
                                                                                                                                                View findViewById10 = requireView.findViewById(i);
                                                                                                                                                if (findViewById10 != null) {
                                                                                                                                                    i = C2778R.C2780id.infoLineSpam;
                                                                                                                                                    View findViewById11 = requireView.findViewById(i);
                                                                                                                                                    if (findViewById11 != null) {
                                                                                                                                                        i = C2778R.C2780id.layoutVerifiedBizFeedback;
                                                                                                                                                        View findViewById12 = requireView.findViewById(i);
                                                                                                                                                        if (findViewById12 != null) {
                                                                                                                                                            View findViewById13 = findViewById12.findViewById(i4);
                                                                                                                                                            int i12 = i4;
                                                                                                                                                            if (findViewById13 != null) {
                                                                                                                                                                View findViewById14 = findViewById12.findViewById(i5);
                                                                                                                                                                if (findViewById14 != null) {
                                                                                                                                                                    ImageView imageView5 = (ImageView) findViewById12.findViewById(i6);
                                                                                                                                                                    if (imageView5 != null) {
                                                                                                                                                                        TextView textView8 = (TextView) findViewById12.findViewById(i7);
                                                                                                                                                                        if (textView8 != null) {
                                                                                                                                                                            TextView textView9 = (TextView) findViewById12.findViewById(i8);
                                                                                                                                                                            if (textView9 != null) {
                                                                                                                                                                                LottieAnimationView lottieAnimationView2 = (LottieAnimationView) findViewById12.findViewById(i9);
                                                                                                                                                                                if (lottieAnimationView2 != null) {
                                                                                                                                                                                    i12 = C2778R.C2780id.feedbackThanksGroup;
                                                                                                                                                                                    Group group = (Group) findViewById12.findViewById(i12);
                                                                                                                                                                                    if (group != null) {
                                                                                                                                                                                        TextView textView10 = (TextView) findViewById12.findViewById(i10);
                                                                                                                                                                                        if (textView10 != null) {
                                                                                                                                                                                            ImageView imageView6 = (ImageView) findViewById12.findViewById(i11);
                                                                                                                                                                                            if (imageView6 != null) {
                                                                                                                                                                                                i12 = C2778R.C2780id.questionGroup;
                                                                                                                                                                                                Group group2 = (Group) findViewById12.findViewById(i12);
                                                                                                                                                                                                if (group2 != null) {
                                                                                                                                                                                                    C14262g c14262g = new C14262g((ConstraintLayout) findViewById12, findViewById13, findViewById14, imageView5, textView8, textView9, lottieAnimationView2, group, textView10, imageView6, group2);
                                                                                                                                                                                                    i = C2778R.C2780id.logoDivider;
                                                                                                                                                                                                    View findViewById15 = requireView.findViewById(i);
                                                                                                                                                                                                    if (findViewById15 != null) {
                                                                                                                                                                                                        i = C2778R.C2780id.mainContainer;
                                                                                                                                                                                                        ConstraintLayout constraintLayout2 = (ConstraintLayout) requireView.findViewById(i);
                                                                                                                                                                                                        if (constraintLayout2 != null) {
                                                                                                                                                                                                            i = C2778R.C2780id.nameOrNumber;
                                                                                                                                                                                                            TextView textView11 = (TextView) requireView.findViewById(i);
                                                                                                                                                                                                            if (textView11 != null) {
                                                                                                                                                                                                                i = C2778R.C2780id.onDemandReasonPickerView;
                                                                                                                                                                                                                OnDemandCallReasonPickerView onDemandCallReasonPickerView = (OnDemandCallReasonPickerView) requireView.findViewById(i);
                                                                                                                                                                                                                if (onDemandCallReasonPickerView != null) {
                                                                                                                                                                                                                    i = C2778R.C2780id.partner_container;
                                                                                                                                                                                                                    LinearLayout linearLayout = (LinearLayout) requireView.findViewById(i);
                                                                                                                                                                                                                    if (linearLayout != null) {
                                                                                                                                                                                                                        i = C2778R.C2780id.partnerLogo;
                                                                                                                                                                                                                        ImageView imageView7 = (ImageView) requireView.findViewById(i);
                                                                                                                                                                                                                        if (imageView7 != null) {
                                                                                                                                                                                                                            i = C2778R.C2780id.phoneNumber;
                                                                                                                                                                                                                            TextView textView12 = (TextView) requireView.findViewById(i);
                                                                                                                                                                                                                            if (textView12 != null) {
                                                                                                                                                                                                                                i = C2778R.C2780id.placeholder_acs_reply;
                                                                                                                                                                                                                                FrameLayout frameLayout2 = (FrameLayout) requireView.findViewById(i);
                                                                                                                                                                                                                                if (frameLayout2 != null) {
                                                                                                                                                                                                                                    i = C2778R.C2780id.priority;
                                                                                                                                                                                                                                    TextView textView13 = (TextView) requireView.findViewById(i);
                                                                                                                                                                                                                                    if (textView13 != null) {
                                                                                                                                                                                                                                        i = C2778R.C2780id.priorityGroup;
                                                                                                                                                                                                                                        Group group3 = (Group) requireView.findViewById(i);
                                                                                                                                                                                                                                        if (group3 != null) {
                                                                                                                                                                                                                                            i = C2778R.C2780id.priorityIcon;
                                                                                                                                                                                                                                            ImageView imageView8 = (ImageView) requireView.findViewById(i);
                                                                                                                                                                                                                                            if (imageView8 != null) {
                                                                                                                                                                                                                                                i = C2778R.C2780id.simIndicator;
                                                                                                                                                                                                                                                ImageView imageView9 = (ImageView) requireView.findViewById(i);
                                                                                                                                                                                                                                                if (imageView9 != null) {
                                                                                                                                                                                                                                                    i = C2778R.C2780id.spamPremiumPromoView;
                                                                                                                                                                                                                                                    AcsSpamPremiumPromoView acsSpamPremiumPromoView = (AcsSpamPremiumPromoView) requireView.findViewById(i);
                                                                                                                                                                                                                                                    if (acsSpamPremiumPromoView != null) {
                                                                                                                                                                                                                                                        i = C2778R.C2780id.sponsored_by_container;
                                                                                                                                                                                                                                                        LinearLayout linearLayout2 = (LinearLayout) requireView.findViewById(i);
                                                                                                                                                                                                                                                        if (linearLayout2 != null) {
                                                                                                                                                                                                                                                            i = C2778R.C2780id.sponsored_by_logo;
                                                                                                                                                                                                                                                            TintedImageView tintedImageView = (TintedImageView) requireView.findViewById(i);
                                                                                                                                                                                                                                                            if (tintedImageView != null) {
                                                                                                                                                                                                                                                                i = C2778R.C2780id.sponsored_by_text;
                                                                                                                                                                                                                                                                TextView textView14 = (TextView) requireView.findViewById(i);
                                                                                                                                                                                                                                                                if (textView14 != null) {
                                                                                                                                                                                                                                                                    i = C2778R.C2780id.suggestName;
                                                                                                                                                                                                                                                                    ImageView imageView10 = (ImageView) requireView.findViewById(i);
                                                                                                                                                                                                                                                                    if (imageView10 != null) {
                                                                                                                                                                                                                                                                        i = C2778R.C2780id.suggestNameDivider;
                                                                                                                                                                                                                                                                        View findViewById16 = requireView.findViewById(i);
                                                                                                                                                                                                                                                                        if (findViewById16 != null) {
                                                                                                                                                                                                                                                                            i = C2778R.C2780id.survey_container;
                                                                                                                                                                                                                                                                            FragmentContainerView fragmentContainerView2 = (FragmentContainerView) requireView.findViewById(i);
                                                                                                                                                                                                                                                                            if (fragmentContainerView2 != null) {
                                                                                                                                                                                                                                                                                i = C2778R.C2780id.tagView;
                                                                                                                                                                                                                                                                                TagXView tagXView = (TagXView) requireView.findViewById(i);
                                                                                                                                                                                                                                                                                if (tagXView != null) {
                                                                                                                                                                                                                                                                                    i = C2778R.C2780id.tagViewBusiness;
                                                                                                                                                                                                                                                                                    TagXView tagXView2 = (TagXView) requireView.findViewById(i);
                                                                                                                                                                                                                                                                                    if (tagXView2 != null) {
                                                                                                                                                                                                                                                                                        i = C2778R.C2780id.truecallerLogo;
                                                                                                                                                                                                                                                                                        ImageView imageView11 = (ImageView) requireView.findViewById(i);
                                                                                                                                                                                                                                                                                        if (imageView11 != null) {
                                                                                                                                                                                                                                                                                            i = C2778R.C2780id.truecallerLogoQuestionMark;
                                                                                                                                                                                                                                                                                            ImageView imageView12 = (ImageView) requireView.findViewById(i);
                                                                                                                                                                                                                                                                                            if (imageView12 != null) {
                                                                                                                                                                                                                                                                                                i = C2778R.C2780id.truecontext;
                                                                                                                                                                                                                                                                                                TrueContext trueContext = (TrueContext) requireView.findViewById(i);
                                                                                                                                                                                                                                                                                                if (trueContext != null) {
                                                                                                                                                                                                                                                                                                    i = C2778R.C2780id.verified;
                                                                                                                                                                                                                                                                                                    ImageView imageView13 = (ImageView) requireView.findViewById(i);
                                                                                                                                                                                                                                                                                                    if (imageView13 != null) {
                                                                                                                                                                                                                                                                                                        i = C2778R.C2780id.videoAvatarXView;
                                                                                                                                                                                                                                                                                                        AvatarVideoPlayerView avatarVideoPlayerView = (AvatarVideoPlayerView) requireView.findViewById(i);
                                                                                                                                                                                                                                                                                                        if (avatarVideoPlayerView != null) {
                                                                                                                                                                                                                                                                                                            i = C2778R.C2780id.viewDetails;
                                                                                                                                                                                                                                                                                                            Button button = (Button) requireView.findViewById(i);
                                                                                                                                                                                                                                                                                                            if (button != null) {
                                                                                                                                                                                                                                                                                                                return new C14257b((FrameLayout) requireView, m20311a, c14263h, relativeLayout, actionButtonsView, addressTimezoneView, findViewById4, frameLayout, guideline, textView, textView2, imageView, textView3, imageView2, cardView, findViewById5, findViewById6, findViewById7, findViewById8, imageView3, space2, textView4, textView5, textView6, lottieAnimationView, textView7, imageView4, findViewById9, findViewById10, findViewById11, c14262g, findViewById15, constraintLayout2, textView11, onDemandCallReasonPickerView, linearLayout, imageView7, textView12, frameLayout2, textView13, group3, imageView8, imageView9, acsSpamPremiumPromoView, linearLayout2, tintedImageView, textView14, imageView10, findViewById16, fragmentContainerView2, tagXView, tagXView2, imageView11, imageView12, trueContext, imageView13, avatarVideoPlayerView, button);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                }
                                                                                                                                                                                                            }
                                                                                                                                                                                                        }
                                                                                                                                                                                                    }
                                                                                                                                                                                                }
                                                                                                                                                                                            } else {
                                                                                                                                                                                                i12 = i11;
                                                                                                                                                                                            }
                                                                                                                                                                                        } else {
                                                                                                                                                                                            i12 = i10;
                                                                                                                                                                                        }
                                                                                                                                                                                    }
                                                                                                                                                                                } else {
                                                                                                                                                                                    i12 = i9;
                                                                                                                                                                                }
                                                                                                                                                                            } else {
                                                                                                                                                                                i12 = i8;
                                                                                                                                                                            }
                                                                                                                                                                        } else {
                                                                                                                                                                            i12 = i7;
                                                                                                                                                                        }
                                                                                                                                                                    } else {
                                                                                                                                                                        i12 = i6;
                                                                                                                                                                    }
                                                                                                                                                                } else {
                                                                                                                                                                    i12 = i5;
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                            throw new NullPointerException("Missing required view with ID: ".concat(findViewById12.getResources().getResourceName(i12)));
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        } else {
                                                                                                                                            i = i11;
                                                                                                                                        }
                                                                                                                                    } else {
                                                                                                                                        i = i10;
                                                                                                                                    }
                                                                                                                                } else {
                                                                                                                                    i = i9;
                                                                                                                                }
                                                                                                                            } else {
                                                                                                                                i = i8;
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            } else {
                                                                                                                i = i6;
                                                                                                            }
                                                                                                        } else {
                                                                                                            i = i5;
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    throw new NullPointerException("Missing required view with ID: ".concat(findViewById2.getResources().getResourceName(i2)));
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.g.a.a.a$e */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$e.class */
    public static final class C14078e {
        public C14078e(s1.z.c.f fVar) {
        }
    }

    /* renamed from: e.a.g.a.a.a$f */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$f.class */
    public static final class C14079f extends m implements a<AdsSwitchView> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14079f() {
            super(0);
            C14074a.this = r4;
        }

        public Object invoke() {
            View view = C14074a.this.getView();
            return view != null ? (AdsSwitchView) view.findViewById(C2778R.C2780id.acsAdsContainer) : null;
        }
    }

    /* renamed from: e.a.g.a.a.a$g */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$g.class */
    public static final class C14080g extends BroadcastReceiver {
        public C14080g() {
            C14074a.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            AbstractC14104h abstractC14104h;
            String action = intent != null ? intent.getAction() : null;
            if (action != null && action.hashCode() == -367510927 && action.equals("com.truecaller.EVENT_AFTER_CALL_START") && (abstractC14104h = (AbstractC14104h) ((C14105i) C14074a.this.m20786VA()).f57683a) != null) {
                abstractC14104h.finish();
            }
        }
    }

    /* renamed from: e.a.g.a.a.a$h */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$h.class */
    public static final class C14081h extends m implements a<Animation> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14081h() {
            super(0);
            C14074a.this = r4;
        }

        public Object invoke() {
            return AnimationUtils.loadAnimation(C14074a.this.getContext(), C2778R.anim.fade_in_400);
        }
    }

    /* renamed from: e.a.g.a.a.a$i */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$i.class */
    public static final class C14082i extends m implements a<C8311g> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14082i() {
            super(0);
            C14074a.this = r4;
        }

        public Object invoke() {
            AbstractC19233h0 abstractC19233h0 = C14074a.this.f40717r;
            if (abstractC19233h0 == null) {
                s1.z.c.l.l("resourceProvider");
                throw null;
            }
            C8311g c8311g = new C8311g(abstractC19233h0);
            float mo13770H = c8311g.f25597a.mo13770H(C2778R.dimen.after_call_tcx_corner_radius);
            c8311g.setCornerRadii(new float[]{mo13770H, mo13770H, mo13770H, mo13770H, 0.0f, 0.0f, 0.0f, 0.0f});
            return c8311g;
        }
    }

    /* renamed from: e.a.g.a.a.a$j */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$j.class */
    public static final class View$OnClickListenerC14083j implements View.OnClickListener {
        public View$OnClickListenerC14083j() {
            C14074a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ((C14105i) C14074a.this.m20786VA()).m20750Tk();
        }
    }

    /* renamed from: e.a.g.a.a.a$k */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$k.class */
    public static final class View$OnClickListenerC14084k implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AvatarVideoPlayerView f40736a;

        /* renamed from: b */
        public final /* synthetic */ C14074a f40737b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC15816a f40738c;

        public View$OnClickListenerC14084k(AvatarVideoPlayerView avatarVideoPlayerView, C14074a c14074a, AbstractC15816a abstractC15816a) {
            this.f40736a = avatarVideoPlayerView;
            this.f40737b = c14074a;
            this.f40738c = abstractC15816a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC14103g m20786VA = this.f40737b.m20786VA();
            boolean z = ((C15850r) this.f40736a.getPresenter$video_caller_id_release()).f44712p.mo18199p1().getValue() instanceof AbstractC15868b.C15873e;
            String videoUrl = this.f40736a.getVideoUrl();
            AbstractC15816a abstractC15816a = this.f40738c;
            C14105i c14105i = (C14105i) m20786VA;
            Objects.requireNonNull(c14105i);
            s1.z.c.l.e(abstractC15816a, "avatarVideoConfig");
            if (z && videoUrl != null) {
                VideoPlayerAnalyticsInfo mo18282a = abstractC15816a.mo18282a();
                VideoPlayerAnalyticsInfo videoPlayerAnalyticsInfo = mo18282a != null ? new VideoPlayerAnalyticsInfo(VideoPlayerContext.ExpandingPACS, mo18282a.getCallId(), mo18282a.getVideoId()) : null;
                AbstractC14104h abstractC14104h = (AbstractC14104h) c14105i.f57683a;
                if (abstractC14104h != null) {
                    abstractC14104h.mo20506pe(new VideoExpansionType.P2pVideo(videoUrl, videoPlayerAnalyticsInfo));
                }
                AbstractC14104h abstractC14104h2 = (AbstractC14104h) c14105i.f57683a;
                if (abstractC14104h2 == null) {
                    return;
                }
                abstractC14104h2.finish();
            }
        }
    }

    /* renamed from: e.a.g.a.a.a$l */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$l.class */
    public static final class RunnableC14085l implements Runnable {
        public RunnableC14085l() {
            C14074a.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ((AbstractC14205m) C14074a.this.m20786VA()).m20424kk();
        }
    }

    /* renamed from: e.a.g.a.a.a$m */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$m.class */
    public static final class C14086m implements AbstractC14189b {
        public C14086m() {
            C14074a.this = r4;
        }

        @Override // p193e.p194a.p773g.p774a.p778f0.p779a.AbstractC14189b
        /* renamed from: a */
        public void mo20596a() {
            AbstractC14198h abstractC14198h = (AbstractC14198h) ((AbstractC14205m) C14074a.this.m20786VA()).f57683a;
            if (abstractC14198h != null) {
                abstractC14198h.finish();
            }
        }
    }

    /* renamed from: e.a.g.a.a.a$n */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$n.class */
    public static final class C14087n implements TrueContext.AbstractC4652a {
        public C14087n() {
            C14074a.this = r4;
        }

        @Override // com.truecaller.truecontext.TrueContext.AbstractC4652a
        /* renamed from: a */
        public void mo20717a(boolean z) {
            ((C14105i) C14074a.this.m20786VA()).m20745q7(z);
        }
    }

    /* renamed from: e.a.g.a.a.a$o */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$o.class */
    public static final class C14088o implements AbstractC26914b0 {
        public C14088o() {
            C14074a.this = r4;
        }

        @Override // p1727n3.p1859r.p1860a.AbstractC26914b0
        /* renamed from: a */
        public final void mo1168a(String str, Bundle bundle) {
            s1.z.c.l.e(str, "<anonymous parameter 0>");
            s1.z.c.l.e(bundle, "<anonymous parameter 1>");
            AbstractC14205m abstractC14205m = (AbstractC14205m) C14074a.this.m20786VA();
            AbstractC14198h abstractC14198h = (AbstractC14198h) abstractC14205m.f57683a;
            if (abstractC14198h != null) {
                abstractC14198h.mo20499rz();
            }
            d.w2(abstractC14205m, (f) null, (j0) null, new C14224s(abstractC14205m, null), 3, (Object) null);
        }
    }

    /* renamed from: e.a.g.a.a.a$p */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$p.class */
    public static final class C14089p implements AbstractC22590g<Drawable> {
        public C14089p(AdCampaign.Style style) {
            C14074a.this = r4;
        }

        @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
        public boolean onLoadFailed(C22387r c22387r, Object obj, AbstractC22598k<Drawable> abstractC22598k, boolean z) {
            s1.z.c.l.e(abstractC22598k, "target");
            C14074a c14074a = C14074a.this;
            l[] lVarArr = C14074a.f40695K;
            LinearLayout linearLayout = c14074a.m20790RA().f41230R;
            s1.z.c.l.d(linearLayout, "binding.sponsoredByContainer");
            C19286f.m13689O(linearLayout);
            return false;
        }

        @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
        public boolean onResourceReady(Drawable drawable, Object obj, AbstractC22598k<Drawable> abstractC22598k, EnumC22258a enumC22258a, boolean z) {
            s1.z.c.l.e(obj, "model");
            s1.z.c.l.e(abstractC22598k, "target");
            s1.z.c.l.e(enumC22258a, "dataSource");
            C14074a c14074a = C14074a.this;
            l[] lVarArr = C14074a.f40695K;
            TextView textView = c14074a.m20790RA().f41232T;
            s1.z.c.l.d(textView, "binding.sponsoredByText");
            C19286f.m13684T(textView);
            return false;
        }
    }

    /* renamed from: e.a.g.a.a.a$q */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$q.class */
    public static final class C14090q extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14090q(boolean z) {
            super(0);
            C14074a.this = r4;
        }

        public Object invoke() {
            C14105i c14105i = (C14105i) C14074a.this.m20786VA();
            Boolean bool = c14105i.f41024u;
            if (bool != null) {
                c14105i.m20746Xk(!bool.booleanValue());
            }
            return s.a;
        }
    }

    /* renamed from: e.a.g.a.a.a$r */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$r.class */
    public static final class C14091r implements AbstractC26914b0 {
        public C14091r() {
            C14074a.this = r4;
        }

        @Override // p1727n3.p1859r.p1860a.AbstractC26914b0
        /* renamed from: a */
        public final void mo1168a(String str, Bundle bundle) {
            s1.z.c.l.e(str, "<anonymous parameter 0>");
            s1.z.c.l.e(bundle, "<anonymous parameter 1>");
            AbstractC14205m abstractC14205m = (AbstractC14205m) C14074a.this.m20786VA();
            abstractC14205m.f41022t = false;
            AbstractC14198h abstractC14198h = (AbstractC14198h) abstractC14205m.f57683a;
            if (abstractC14198h != null) {
                abstractC14198h.mo20582De();
            }
            AbstractC14198h abstractC14198h2 = (AbstractC14198h) abstractC14205m.f57683a;
            if (abstractC14198h2 != null) {
                abstractC14198h2.mo20484wg();
            }
            d.w2(abstractC14205m, (f) null, (j0) null, new C14226u(abstractC14205m, null), 3, (Object) null);
        }
    }

    /* renamed from: e.a.g.a.a.a$s */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$s.class */
    public static final class DialogInterface$OnClickListenerC14092s implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC14092s() {
            C14074a.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            AbstractC14205m abstractC14205m = (AbstractC14205m) C14074a.this.m20786VA();
            d.w2(abstractC14205m, abstractC14205m.f41032y, (j0) null, new C14225t(abstractC14205m, null), 2, (Object) null);
        }
    }

    /* renamed from: e.a.g.a.a.a$t */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$t.class */
    public static final class DialogInterface$OnClickListenerC14093t implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC14093t() {
            C14074a.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            AbstractC14205m abstractC14205m = (AbstractC14205m) C14074a.this.m20786VA();
            d.w2(abstractC14205m, abstractC14205m.f41032y, (j0) null, new C14227v(abstractC14205m, null), 2, (Object) null);
        }
    }

    /* renamed from: e.a.g.a.a.a$u */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$u.class */
    public static final class C14094u extends m implements s1.z.b.l<VideoCallerIdAcsMoreOption, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14094u() {
            super(1);
            C14074a.this = r4;
        }

        /* renamed from: d */
        public Object m20781d(Object obj) {
            VideoCallerIdAcsMoreOption videoCallerIdAcsMoreOption = (VideoCallerIdAcsMoreOption) obj;
            s1.z.c.l.e(videoCallerIdAcsMoreOption, "it");
            C14303q0 c14303q0 = C14074a.this.f40713n;
            if (c14303q0 == null) {
                s1.z.c.l.l("videoCallerIdOptionsPopUpManager");
                throw null;
            }
            c14303q0.m20278a();
            ((AbstractC14205m) C14074a.this.m20786VA()).m20422mk(videoCallerIdAcsMoreOption);
            return s.a;
        }
    }

    /* renamed from: e.a.g.a.a.a$v */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$v.class */
    public static final class C14095v extends m implements a<ImageView> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14095v() {
            super(0);
            C14074a.this = r4;
        }

        public Object invoke() {
            C14074a c14074a = C14074a.this;
            l[] lVarArr = C14074a.f40695K;
            return (ImageView) c14074a.m20790RA().f41217A.findViewById(C2778R.C2780id.metaInfoIcon);
        }
    }

    /* renamed from: e.a.g.a.a.a$w */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$w.class */
    public static final class C14096w extends m implements a<TextView> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14096w() {
            super(0);
            C14074a.this = r4;
        }

        public Object invoke() {
            C14074a c14074a = C14074a.this;
            l[] lVarArr = C14074a.f40695K;
            return (TextView) c14074a.m20790RA().f41217A.findViewById(C2778R.C2780id.metaInfoText);
        }
    }

    /* renamed from: e.a.g.a.a.a$x */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/a/a$x.class */
    public static final class C14097x extends m implements a<Float> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14097x() {
            super(0);
            C14074a.this = r4;
        }

        public Object invoke() {
            Resources resources;
            Context context = C14074a.this.getContext();
            return (context == null || (resources = context.getResources()) == null) ? null : Float.valueOf(resources.getDimension(C2778R.dimen.fullscreen_tag_font_size));
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Ag */
    public void mo20589Ag(String str) {
        s1.z.c.l.e(str, "label");
        TextView m20784XA = m20784XA();
        s1.z.c.l.d(m20784XA, "spamLabel");
        m20784XA.setText(str);
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: Ah */
    public void mo20780Ah() {
        Context context = getContext();
        if (context != null) {
            Button button = m20790RA().f41254k0;
            int i = C2778R.color.tcx_backgroundPrimary_dark;
            Object obj = C26467a.f74235a;
            button.setTextColor(C26467a.C26471d.m1787a(context, i));
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Aq */
    public void mo20588Aq(int i) {
        TextView textView = m20790RA().f41220D;
        s1.z.c.l.d(textView, "binding.nameOrNumber");
        textView.setText(getString(i));
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: Bg */
    public void mo20779Bg(AdCampaign.Style style) {
        s1.z.c.l.e(style, "style");
        ColorStateList valueOf = ColorStateList.valueOf(style.f9830b);
        View view = m20790RA().f41268y;
        s1.z.c.l.d(view, "binding.headerBackground");
        view.setBackgroundTintList(valueOf);
        View view2 = m20790RA().f41257n;
        s1.z.c.l.d(view2, "binding.detailsBackground");
        view2.setBackgroundTintList(valueOf);
        Button button = m20790RA().f41254k0;
        s1.z.c.l.d(button, "binding.viewDetails");
        button.setBackgroundTintList(ColorStateList.valueOf(style.f9831c));
        AdsSwitchView m20791QA = m20791QA();
        if (m20791QA != null) {
            m20791QA.setBackgroundTintList(ColorStateList.valueOf(style.f9832d));
        }
        LinearLayout linearLayout = m20790RA().f41230R;
        s1.z.c.l.d(linearLayout, "binding.sponsoredByContainer");
        C19286f.m13684T(linearLayout);
        String str = style.f9833e;
        if (str != null) {
            str.length();
        }
        C21852d<Drawable> m8964B = C17891a1.C17902k.m15658M1(this).m8964B(style.f9833e);
        C14089p c14089p = new C14089p(style);
        m8964B.f61768K = null;
        m8964B.mo8433H(c14089p);
        m8964B.m8427O(m20790RA().f41231S);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Bh */
    public AbstractC15864a mo20587Bh() {
        return m20790RA().f41240b.f41296f.getAudioState();
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: Bs */
    public void mo20778Bs() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.unregisterReceiver(this.f40718s);
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: By */
    public void mo20586By() {
        View view = m20790RA().f41217A;
        s1.z.c.l.d(view, "binding.infoLineSpam");
        C19286f.m13684T(view);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: C0 */
    public void mo20585C0() {
        m20790RA().f41248h0.m34604g1(new C14087n());
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: CA */
    public void mo20584CA(boolean z) {
        OnDemandCallReasonPickerView onDemandCallReasonPickerView = m20790RA().f41221E;
        s1.z.c.l.d(onDemandCallReasonPickerView, "binding.onDemandReasonPickerView");
        C19286f.m13683U(onDemandCallReasonPickerView, z);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Cv */
    public void mo20583Cv() {
        if (this.f40708i == null) {
            s1.z.c.l.l("acsPremiumNavigator");
            throw null;
        }
        FragmentManager parentFragmentManager = getParentFragmentManager();
        s1.z.c.l.d(parentFragmentManager, "parentFragmentManager");
        s1.z.c.l.e(parentFragmentManager, "fragmentManager");
        new C16833a().show(parentFragmentManager, (String) null);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: De */
    public void mo20582De() {
        C19286f.m13682V(m20789SA());
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Dk */
    public void mo20581Dk() {
        ImageView imageView = m20790RA().f41228P;
        s1.z.c.l.d(imageView, "binding.simIndicator");
        C19286f.m13689O(imageView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Ds */
    public void mo20580Ds(List<C14187f> list) {
        s1.z.c.l.e(list, "actionButtons");
        m20790RA().f41241c.setActionButtons(list);
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: Dw */
    public void mo20777Dw(int i) {
        AddressTimezoneView addressTimezoneView = m20790RA().f41242d;
        AbstractC19233h0 abstractC19233h0 = this.f40717r;
        if (abstractC19233h0 != null) {
            addressTimezoneView.m34614g1(abstractC19233h0.mo13758l(i), C2778R.C2779drawable.background_timezone_transparent);
        } else {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Ea */
    public void mo20579Ea(String str, int i) {
        ImageView imageView = m20790RA().f41228P;
        C19286f.m13684T(imageView);
        imageView.setImageResource(i);
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: Ej */
    public void mo20776Ej() {
        TextView textView = m20790RA().f41245g;
        s1.z.c.l.d(textView, "binding.businessStatus");
        C19286f.m13689O(textView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: En */
    public void mo20578En(FeedbackQuestion feedbackQuestion) {
        s1.z.c.l.e(feedbackQuestion, "feedbackQuestion");
        C14262g c14262g = m20790RA().f41218B;
        ActionButtonsView actionButtonsView = m20790RA().f41241c;
        AbstractC19233h0 abstractC19233h0 = this.f40717r;
        if (abstractC19233h0 == null) {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
        actionButtonsView.setBackgroundColor(abstractC19233h0.mo13758l(C2778R.attr.tcx_backgroundPrimary));
        TextView textView = c14262g.f41288i;
        s1.z.c.l.d(textView, "feedbackTitle");
        AbstractC19233h0 abstractC19233h02 = this.f40717r;
        if (abstractC19233h02 == null) {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
        textView.setText(abstractC19233h02.mo13768b(C2778R.string.name_feedback_title, new Object[0]));
        TextView textView2 = c14262g.f41284e;
        s1.z.c.l.d(textView2, "this.feedbackQuestion");
        textView2.setText(feedbackQuestion.getQuestion());
        ConstraintLayout constraintLayout = c14262g.f41280a;
        s1.z.c.l.d(constraintLayout, "root");
        C19286f.m13684T(constraintLayout);
        Group group = c14262g.f41290k;
        s1.z.c.l.d(group, "questionGroup");
        C19286f.m13684T(group);
        Group group2 = c14262g.f41287h;
        s1.z.c.l.d(group2, "feedbackThanksGroup");
        C19286f.m13689O(group2);
        c14262g.f41289j.setOnClickListener(new View$OnClickListenerC14076b(0, this, feedbackQuestion));
        c14262g.f41283d.setOnClickListener(new View$OnClickListenerC14076b(1, this, feedbackQuestion));
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Ey */
    public void mo20577Ey(boolean z) {
        View view = m20790RA().f41256m;
        s1.z.c.l.d(view, "binding.detailDividerLine");
        C19286f.m13683U(view, z);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Fd */
    public void mo20576Fd() {
        ImageView imageView = m20790RA().f41250i0;
        C19286f.m13684T(imageView);
        imageView.setImageResource(C2778R.C2779drawable.ic_tcx_verified_badge);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Fw */
    public void mo20575Fw() {
        CallMeBackPopUpView callMeBackPopUpView = m20790RA().f41240b.f41293c;
        Objects.requireNonNull(callMeBackPopUpView);
        C19286f.m13684T(callMeBackPopUpView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: G */
    public void mo20574G() {
        TextView textView = m20790RA().f41251j;
        s1.z.c.l.d(textView, "binding.contactDetails");
        C19286f.m13689O(textView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: G0 */
    public void mo20573G0() {
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: Gs */
    public void mo20775Gs(int i) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            TextView m20784XA = m20784XA();
            Object obj = C26467a.f74235a;
            m20784XA.setTextColor(C26467a.C26471d.m1787a(context, i));
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Gx */
    public void mo20572Gx(InitiateCallHelper.CallOptions callOptions, OnDemandMessageSource onDemandMessageSource, String str) {
        s1.z.c.l.e(callOptions, "callOptions");
        s1.z.c.l.e(onDemandMessageSource, "source");
        AbstractC18742m abstractC18742m = this.f40714o;
        if (abstractC18742m == null) {
            s1.z.c.l.l("contextCallRouter");
            throw null;
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        abstractC18742m.mo14558e(childFragmentManager, callOptions, onDemandMessageSource, str);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Hu */
    public void mo20571Hu(Contact contact) {
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        FragmentContainerView fragmentContainerView = m20790RA().f41235W;
        s1.z.c.l.d(fragmentContainerView, "binding.surveyContainer");
        C19286f.m13684T(fragmentContainerView);
        C26907a c26907a = new C26907a(getChildFragmentManager());
        int i = C2778R.C2780id.survey_container;
        Objects.requireNonNull(C15419b.f43758j);
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        C15419b c15419b = new C15419b();
        Bundle bundle = new Bundle();
        bundle.putParcelable(AnalyticsConstants.CONTACT, contact);
        c15419b.setArguments(bundle);
        c26907a.m1120m(i, c15419b, "SurveyAdapterFragment");
        c26907a.mo1126g();
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Hz */
    public void mo20570Hz(String str, String str2, boolean z) {
        s1.z.c.l.e(str2, "title");
        TagXView tagXView = m20790RA().f41236X;
        tagXView.setClickable(z);
        tagXView.setIcon(str);
        tagXView.setTitle(str2);
        Float m20783YA = m20783YA();
        if (m20783YA != null) {
            tagXView.m35631b(0, m20783YA.floatValue());
        }
        C19286f.m13684T(tagXView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: I3 */
    public void mo20569I3(AbstractC15003c abstractC15003c, AbstractC15191g abstractC15191g) {
        s1.z.c.l.e(abstractC15003c, "ad");
        s1.z.c.l.e(abstractC15191g, "layout");
        AdsSwitchView m20791QA = m20791QA();
        if (m20791QA != null) {
            m20791QA.setBackgroundResource(C2778R.C2779drawable.background_pacs_ads_border);
            m20791QA.m35949c(abstractC15003c, abstractC15191g);
            m20791QA.post(new RunnableC14100d(this, m20791QA));
        }
    }

    @Override // p193e.p194a.p773g.p785j.AbstractC14313t
    /* renamed from: Ig */
    public void mo20272Ig(Intent intent) {
        s1.z.c.l.e(intent, "intent");
        if (isAdded()) {
            C8613t.m28200l(this, intent, 4);
        }
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: Jy */
    public void mo20774Jy(int i) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            Object obj = C26467a.f74235a;
            ColorStateList valueOf = ColorStateList.valueOf(C26467a.C26471d.m1787a(context, i));
            s1.z.c.l.d(valueOf, "ColorStateList.valueOf(C…olor(context, iconColor))");
            ImageView imageView = m20790RA().f41249i;
            s1.z.c.l.d(imageView, "binding.closeIcon");
            imageView.setImageTintList(valueOf);
            ImageView imageView2 = m20790RA().f41233U;
            s1.z.c.l.d(imageView2, "binding.suggestName");
            imageView2.setImageTintList(valueOf);
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: K8 */
    public void mo20568K8(Contact contact) {
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        AbstractC14307r abstractC14307r = this.f40705f;
        if (abstractC14307r == null) {
            s1.z.c.l.l("phonebookHelper");
            throw null;
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        ((C14309s) abstractC14307r).m20275a(childFragmentManager, contact, this);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Kn */
    public void mo20567Kn() {
        AbstractC18742m abstractC18742m = this.f40714o;
        if (abstractC18742m == null) {
            s1.z.c.l.l("contextCallRouter");
            throw null;
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        abstractC18742m.mo14560c(childFragmentManager);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Lx */
    public void mo20566Lx() {
        ImageView m20785WA = m20785WA();
        s1.z.c.l.d(m20785WA, "spamIcon");
        C19286f.m13689O(m20785WA);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Mp */
    public void mo20565Mp() {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            g$a g_a = new g$a(context);
            g_a.m3664e(C2778R.string.acs_not_spam_confirmation_message);
            g_a.m3660i(C2778R.string.acs_action_button_not_spam, new DialogInterface$OnClickListenerC14092s());
            g_a.m3662g(C2778R.string.str_cancel, null);
            g_a.m3652q();
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Mr */
    public void mo20564Mr(String str, List<String> list) {
        s1.z.c.l.e(str, "displayNameOrNumber");
        s1.z.c.l.e(list, "numbers");
        C14303q0 c14303q0 = this.f40713n;
        if (c14303q0 == null) {
            s1.z.c.l.l("videoCallerIdOptionsPopUpManager");
            throw null;
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        View findViewWithTag = m20790RA().f41241c.findViewWithTag(ActionButtonType.VIDEO_CALLER_ID);
        s1.z.c.l.d(findViewWithTag, "binding.actionContainer.…ttonType.VIDEO_CALLER_ID)");
        c14303q0.m20277b(childFragmentManager, findViewWithTag, list, str, new C14094u());
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: N9 */
    public void mo20773N9(int i, int i2) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            Object obj = C26467a.f74235a;
            int m1787a = C26467a.C26471d.m1787a(context, i);
            TagXView tagXView = m20790RA().f41236X;
            tagXView.setIconTint(m1787a);
            tagXView.setTitleColor(m1787a);
            tagXView.setBackgroundResource(i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Nr */
    public void mo20563Nr() {
        getChildFragmentManager().m42895p0("biz_survey_adapter_request_key", this, new C14088o());
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: O1 */
    public void mo20562O1() {
        ImageView imageView = m20790RA().f41222J;
        s1.z.c.l.d(imageView, "binding.partnerLogo");
        C19286f.m13689O(imageView);
        View view = m20790RA().f41219C;
        s1.z.c.l.d(view, "binding.logoDivider");
        C19286f.m13689O(view);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Oa */
    public void mo20561Oa(AbstractC14192e abstractC14192e) {
        s1.z.c.l.e(abstractC14192e, "rateAppPromo");
        if ((!(!isAdded()) && !isStateSaved()) && getContext() != null) {
            ((C14196i) abstractC14192e).m20590d(AnalyticsContext.PACS, this.f40703J);
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Oi */
    public void mo20560Oi(AcsReferralHelper.ReferralLaunchContext referralLaunchContext, Contact contact) {
        s1.z.c.l.e(referralLaunchContext, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        AcsReferralHelper acsReferralHelper = this.f40711l;
        if (acsReferralHelper == null) {
            s1.z.c.l.l("referralHelper");
            throw null;
        }
        C14317x c14317x = (C14317x) acsReferralHelper;
        s1.z.c.l.e(referralLaunchContext, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        ReferralManager referralManager = c14317x.f41406a;
        if (referralManager == null) {
            return;
        }
        referralManager.mo13049sx(c14317x.m20271a(referralLaunchContext), contact);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: P */
    public void mo20559P(AbstractC18240c abstractC18240c) {
        s1.z.c.l.e(abstractC18240c, "presenter");
        TrueContext trueContext = m20790RA().f41248h0;
        C19286f.m13684T(trueContext);
        trueContext.setPresenter(abstractC18240c);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: P0 */
    public void mo20558P0() {
        TagXView tagXView = m20790RA().f41236X;
        s1.z.c.l.d(tagXView, "binding.tagView");
        C19286f.m13689O(tagXView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Pj */
    public void mo20557Pj(String str, String str2) {
        s1.z.c.l.e(str, "jobTitle");
        s1.z.c.l.e(str2, "company");
        TextView textView = m20790RA().f41251j;
        textView.setText(C19231g0.m13813D(getString(C2778R.string.acs_job_details_delimiter), str, str2));
        C19286f.m13684T(textView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Pn */
    public void mo20556Pn(Contact contact) {
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        C21167a.f59336h.m10178a(contact, ReferralAnalytics$Source.PACS).show(getChildFragmentManager(), C21167a.class.getSimpleName());
    }

    /* renamed from: QA */
    public final AdsSwitchView m20791QA() {
        return (AdsSwitchView) this.f40701D.getValue();
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: Qn */
    public void mo20772Qn() {
        Group group = m20790RA().f41226N;
        s1.z.c.l.d(group, "binding.priorityGroup");
        C19286f.m13689O(group);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: R0 */
    public boolean mo20555R0() {
        return false;
    }

    /* renamed from: RA */
    public final C14257b m20790RA() {
        return (C14257b) this.f40715p.m34468b(this, f40695K[0]);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Ra */
    public void mo20554Ra() {
        AbstractC14294m abstractC14294m = this.f40709j;
        if (abstractC14294m == null) {
            s1.z.c.l.l("inCallUIHelper");
            throw null;
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        abstractC14294m.mo20281i(childFragmentManager, false);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Rq */
    public void mo20553Rq() {
        mo20551Si();
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: S1 */
    public void mo20552S1() {
        AdsSwitchView m20791QA = m20791QA();
        if (m20791QA != null) {
            C19286f.m13687Q(m20791QA);
        }
    }

    /* renamed from: SA */
    public final List<View> m20789SA() {
        return (List) this.f40699B.getValue();
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: Se */
    public void mo20771Se() {
        C14257b m20790RA = m20790RA();
        View view = m20790RA.f41268y;
        s1.z.c.l.d(view, "headerBackground");
        view.setBackground(null);
        View view2 = m20790RA.f41257n;
        s1.z.c.l.d(view2, "detailsBackground");
        view2.setBackground(null);
        ActionButtonsView actionButtonsView = m20790RA.f41241c;
        s1.z.c.l.d(actionButtonsView, "actionContainer");
        actionButtonsView.setBackground(null);
        C17891a1.C17902k.m15658M1(this).m8965A(Integer.valueOf(C2778R.C2779drawable.cred_acs_bkg)).m8427O(m20790RA.f41253k);
        CardView cardView = m20790RA.f41255l;
        s1.z.c.l.d(cardView, "credBackgroundCard");
        C19286f.m13684T(cardView);
        int i = C2778R.color.credPrimaryColor;
        mo20774Jy(i);
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            Button button = m20790RA().f41254k0;
            s1.z.c.l.d(button, "binding.viewDetails");
            Object obj = C26467a.f74235a;
            button.setBackgroundTintList(ColorStateList.valueOf(C26467a.C26471d.m1787a(context, i)));
        }
        Button button2 = m20790RA.f41254k0;
        AbstractC19233h0 abstractC19233h0 = this.f40717r;
        if (abstractC19233h0 == null) {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
        button2.setTextColor(abstractC19233h0.mo13769a(C2778R.color.tcx_textPrimary_light));
        TextView textView = m20790RA.f41245g;
        AbstractC19233h0 abstractC19233h02 = this.f40717r;
        if (abstractC19233h02 == null) {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
        textView.setTextColor(abstractC19233h02.mo13769a(i));
        TextView textView2 = m20790RA.f41223K;
        AbstractC19233h0 abstractC19233h03 = this.f40717r;
        if (abstractC19233h03 == null) {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
        textView2.setTextColor(abstractC19233h03.mo13769a(C2778R.color.tcx_textPrimary_dark));
        AddressTimezoneView addressTimezoneView = m20790RA.f41242d;
        AbstractC19233h0 abstractC19233h04 = this.f40717r;
        if (abstractC19233h04 == null) {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
        int mo13769a = abstractC19233h04.mo13769a(i);
        AbstractC19233h0 abstractC19233h05 = this.f40717r;
        if (abstractC19233h05 == null) {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
        int mo13769a2 = abstractC19233h05.mo13769a(i);
        int i2 = C2778R.C2779drawable.background_timezone_transparent;
        addressTimezoneView.m34613h1(mo13769a, mo13769a2);
        addressTimezoneView.setBackgroundResource(i2);
        View view3 = m20790RA.f41258o;
        s1.z.c.l.d(view3, "feedbackBackground");
        view3.setBackground(null);
        View view4 = m20790RA.f41259p;
        AbstractC19233h0 abstractC19233h06 = this.f40717r;
        if (abstractC19233h06 != null) {
            view4.setBackgroundColor(abstractC19233h06.mo13769a(C2778R.color.tcx_nameFeedback_divider_color_dark));
        } else {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Si */
    public void mo20551Si() {
        ImageView imageView = m20790RA().f41250i0;
        s1.z.c.l.d(imageView, "binding.verified");
        C19286f.m13689O(imageView);
    }

    /* renamed from: TA */
    public final List<View> m20788TA() {
        return (List) this.f40722w.getValue();
    }

    @Override // p193e.p194a.p1357x3.p1358h.AbstractC21409g
    /* renamed from: Th */
    public void mo9759Th() {
        AbstractC14103g abstractC14103g = this.f40704e;
        if (abstractC14103g != null) {
            ((AbstractC14205m) abstractC14103g).m20461Jj(DismissReason.FORCED_UPDATE);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    /* renamed from: UA */
    public final List<View> m20787UA() {
        return (List) this.f40723x.getValue();
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Us */
    public void mo20550Us() {
        TextView textView = m20790RA().f41266w;
        s1.z.c.l.d(textView, "binding.feedbackTitle");
        textView.setText(getString(C2778R.string.name_feedback_title));
        TextView textView2 = m20790RA().f41263t;
        s1.z.c.l.d(textView2, "binding.feedbackQuestion");
        textView2.setText(getString(C2778R.string.name_feedback_question));
        C19286f.m13682V((List) this.f40721v.getValue());
        C19286f.m13682V(m20788TA());
        C19286f.m13688P(m20787UA());
        C19286f.m13688P((List) this.f40698A.getValue());
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: V1 */
    public void mo20549V1(AbstractC15836l abstractC15836l, String str) {
        s1.z.c.l.e(abstractC15836l, DTBMetricsConfiguration.CONFIG_DIR);
        s1.z.c.l.e(str, "analyticsContext");
        FullScreenRatioVideoPlayerView fullScreenRatioVideoPlayerView = m20790RA().f41240b.f41296f;
        C19286f.m13684T(fullScreenRatioVideoPlayerView);
        fullScreenRatioVideoPlayerView.m34442e(abstractC15836l, str);
        FullScreenRatioVideoPlayerView.m34445b(fullScreenRatioVideoPlayerView, false, 1);
    }

    /* renamed from: VA */
    public final AbstractC14103g m20786VA() {
        AbstractC14103g abstractC14103g = this.f40704e;
        if (abstractC14103g != null) {
            return abstractC14103g;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: Vk */
    public void mo20770Vk() {
        Context context = getContext();
        if (context != null) {
            int i = C2778R.color.tcx_textTertiary_dark;
            mo20774Jy(i);
            int i2 = C2778R.color.tcx_textPrimary_dark;
            mo20766dr(i2);
            int i3 = C2778R.color.tcx_textSecondary_dark;
            mo20775Gs(i3);
            mo20761ll(C2778R.color.tcx_fillTertiaryBackground_dark);
            mo20773N9(C2778R.color.popup_acs_header_main_text_default, C2778R.C2779drawable.background_tag_popup_default);
            C14257b m20790RA = m20790RA();
            ImageView imageView = m20790RA.f41228P;
            s1.z.c.l.d(imageView, "simIndicator");
            Object obj = C26467a.f74235a;
            imageView.setImageTintList(ColorStateList.valueOf(C26467a.C26471d.m1787a(context, i)));
            m20790RA.f41245g.setTextColor(C26467a.C26471d.m1787a(context, i2));
            ImageView imageView2 = m20790RA.f41227O;
            s1.z.c.l.d(imageView2, "priorityIcon");
            int i4 = C2778R.color.popup_acs_icon_tint_white;
            imageView2.setImageTintList(ColorStateList.valueOf(C26467a.C26471d.m1787a(context, i4)));
            m20790RA.f41225M.setTextColor(C26467a.C26471d.m1787a(context, i2));
            m20790RA.f41223K.setTextColor(C26467a.C26471d.m1787a(context, i3));
            m20790RA.f41242d.m34614g1(C26467a.C26471d.m1787a(context, i4), C2778R.C2779drawable.background_timezone_transparent);
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Vw */
    public void mo20548Vw() {
        AcsSpamPremiumPromoView acsSpamPremiumPromoView = m20790RA().f41229Q;
        s1.z.c.l.d(acsSpamPremiumPromoView, "binding.spamPremiumPromoView");
        C19286f.m13684T(acsSpamPremiumPromoView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Vz */
    public void mo20547Vz(AbstractC15863y abstractC15863y, AnalyticsContext analyticsContext) {
        s1.z.c.l.e(abstractC15863y, "videoXConfig");
        s1.z.c.l.e(analyticsContext, "analyticsContext");
        m20790RA().f41252j0.m34450f((AbstractC15816a) abstractC15863y, analyticsContext.getValue());
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: W5 */
    public void mo20546W5(AbstractC18240c abstractC18240c) {
        s1.z.c.l.e(abstractC18240c, "presenter");
        ModularCallReasonView modularCallReasonView = m20790RA().f41240b.f41295e;
        C19286f.m13684T(modularCallReasonView);
        modularCallReasonView.setPresenter(abstractC18240c);
    }

    /* renamed from: WA */
    public final ImageView m20785WA() {
        return (ImageView) this.f40724y.getValue();
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Wc */
    public void mo20545Wc() {
        ActionButtonsView actionButtonsView = m20790RA().f41241c;
        AbstractC19233h0 abstractC19233h0 = this.f40717r;
        if (abstractC19233h0 != null) {
            actionButtonsView.setActionButtonColor(abstractC19233h0.mo13758l(C2778R.attr.tcx_textSecondary));
        } else {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: Wu */
    public void mo20769Wu(int i, boolean z) {
        TextView textView = m20790RA().f41245g;
        textView.setText(getString(i));
        s1.z.c.l.d(textView, "this");
        textView.setAllCaps(z);
        C19286f.m13684T(textView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: X0 */
    public void mo20544X0(int i) {
        m20790RA().f41238Z.setImageResource(i);
    }

    /* renamed from: XA */
    public final TextView m20784XA() {
        return (TextView) this.f40725z.getValue();
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Y7 */
    public void mo20543Y7(String str, boolean z) {
        s1.z.c.l.e(str, "number");
        C14257b m20790RA = m20790RA();
        TextView textView = m20790RA.f41223K;
        s1.z.c.l.d(textView, "phoneNumber");
        textView.setText(C8605o.m28239a(str));
        TextView textView2 = m20790RA.f41262s;
        s1.z.c.l.d(textView2, "feedbackNumber");
        textView2.setText(str);
        TextView textView3 = m20790RA.f41223K;
        s1.z.c.l.d(textView3, "phoneNumber");
        C19286f.m13684T(textView3);
        View view = m20790RA.f41257n;
        s1.z.c.l.d(view, "detailsBackground");
        C19286f.m13684T(view);
    }

    /* renamed from: YA */
    public final Float m20783YA() {
        return (Float) this.f40702E.getValue();
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Yc */
    public void mo20542Yc(OnDemandMessageSource onDemandMessageSource) {
        s1.z.c.l.e(onDemandMessageSource, "source");
        m20790RA().f41221E.setSource(onDemandMessageSource);
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: Za */
    public void mo20768Za(int i) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            View view = m20790RA().f41268y;
            s1.z.c.l.d(view, "binding.headerBackground");
            Object obj = C26467a.f74235a;
            view.setBackgroundTintList(ColorStateList.valueOf(C26467a.C26471d.m1787a(context, i)));
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Zt */
    public void mo20541Zt() {
        View view = m20790RA().f41217A;
        s1.z.c.l.d(view, "binding.infoLineSpam");
        C19286f.m13689O(view);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: a */
    public void mo20540a(int i) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            Toast.makeText(context, i, 0).show();
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: a4 */
    public void mo20539a4() {
        ModularCallReasonView modularCallReasonView = m20790RA().f41240b.f41295e;
        s1.z.c.l.d(modularCallReasonView, "binding.acsBizmonContainer.modularCallReason");
        C19286f.m13689O(modularCallReasonView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: aA */
    public void mo20538aA(boolean z) {
        FullScreenRatioVideoPlayerView fullScreenRatioVideoPlayerView = m20790RA().f41240b.f41296f;
        fullScreenRatioVideoPlayerView.m34441f(z);
        fullScreenRatioVideoPlayerView.m34443d(new C14090q(z));
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: ag */
    public void mo20537ag(Contact contact, String str, String str2) {
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        s1.z.c.l.e(str, "normalizedNumber");
        CallMeBackPopUpView callMeBackPopUpView = m20790RA().f41240b.f41293c;
        Objects.requireNonNull(callMeBackPopUpView);
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        s1.z.c.l.e(str, "normalizedNumber");
        ((C7945b) callMeBackPopUpView.getPresenter()).m29089Kj(contact, str, str2, true);
        Space space = m20790RA().f41240b.f41294d;
        s1.z.c.l.d(space, "binding.acsBizmonContainer.dividerSpace");
        C19286f.m13684T(space);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: at */
    public i1<AbstractC15868b> mo20536at() {
        return m20790RA().f41240b.f41296f.getPlayingState();
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: ax */
    public void mo20535ax() {
        C19286f.m13688P((List) this.f40700C.getValue());
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: b5 */
    public void mo20534b5() {
        TagXView tagXView = m20790RA().f41237Y;
        s1.z.c.l.d(tagXView, "binding.tagViewBusiness");
        C19286f.m13689O(tagXView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: bk */
    public void mo20533bk(String str, Integer num) {
        s1.z.c.l.e(str, UpdateKey.STATUS);
        TextView textView = m20790RA().f41247h;
        s1.z.c.l.d(textView, "binding.callTypeAndTime");
        textView.setText(str);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: bq */
    public boolean mo20532bq(AcsReferralHelper.ReferralLaunchContext referralLaunchContext) {
        s1.z.c.l.e(referralLaunchContext, AnalyticsConstants.CONTEXT);
        AcsReferralHelper acsReferralHelper = this.f40711l;
        if (acsReferralHelper == null) {
            s1.z.c.l.l("referralHelper");
            throw null;
        }
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        return ((C14317x) acsReferralHelper).m20270b(requireActivity, referralLaunchContext);
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: c5 */
    public void mo20767c5(int i, int i2) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            ImageView m20785WA = m20785WA();
            Object obj = C26467a.f74235a;
            m20785WA.setColorFilter(C26467a.C26471d.m1787a(context, i));
            m20784XA().setTextColor(C26467a.C26471d.m1787a(context, i));
            m20790RA().f41217A.setBackgroundResource(i2);
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: ck */
    public void mo20530ck() {
        C19286f.m13685S(m20788TA());
        C19286f.m13682V(m20787UA());
        m20790RA().f41265v.m42591g();
        m20790RA().f41264u.startAnimation((Animation) this.f40720u.getValue());
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: cr */
    public void mo20529cr() {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            g$a g_a = new g$a(context);
            g_a.m3664e(C2778R.string.acs_unblock_confirmation_message);
            g_a.m3660i(C2778R.string.acs_action_button_unblock, new DialogInterface$OnClickListenerC14093t());
            g_a.m3662g(C2778R.string.str_cancel, null);
            g_a.m3652q();
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: ct */
    public void mo20528ct() {
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: cu */
    public void mo20527cu() {
        C19286f.m13688P((List) this.f40721v.getValue());
        C19286f.m13688P(m20788TA());
        C19286f.m13688P(m20787UA());
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14183d
    /* renamed from: d8 */
    public void mo20432d8(boolean z) {
        AbstractC14103g abstractC14103g = this.f40704e;
        if (abstractC14103g != null) {
            ((AbstractC14205m) abstractC14103g).mo20432d8(z);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: dd */
    public void mo20526dd() {
        mo20551Si();
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: dr */
    public void mo20766dr(int i) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            Object obj = C26467a.f74235a;
            int m1787a = C26467a.C26471d.m1787a(context, i);
            C14257b m20790RA = m20790RA();
            m20790RA.f41247h.setTextColor(m1787a);
            m20790RA.f41220D.setTextColor(m1787a);
            m20790RA.f41251j.setTextColor(m1787a);
            m20790RA.f41245g.setTextColor(m1787a);
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: dy */
    public void mo20525dy() {
        AcsReferralHelper acsReferralHelper = this.f40711l;
        if (acsReferralHelper == null) {
            s1.z.c.l.l("referralHelper");
            throw null;
        }
        ReferralManager referralManager = ((C14317x) acsReferralHelper).f41406a;
        if (referralManager == null) {
            return;
        }
        referralManager.mo13063Ky(ReferralManager.ReferralLaunchContext.AFTER_CALL_PROMO);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: e1 */
    public void mo20524e1(Contact contact) {
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            startActivityForResult(NameSuggestionActivity.m34625ra(context, contact, "after_call"), 3);
        }
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: fd */
    public void mo20765fd() {
        View view = m20790RA().f41268y;
        view.setBackgroundTintList(null);
        view.setBackground((C8311g) this.f40719t.getValue());
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    public void finish() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: fm */
    public void mo20764fm(AbstractC15816a abstractC15816a) {
        s1.z.c.l.e(abstractC15816a, "avatarVideoConfig");
        AvatarVideoPlayerView avatarVideoPlayerView = m20790RA().f41252j0;
        avatarVideoPlayerView.setOnClickListener(new View$OnClickListenerC14084k(avatarVideoPlayerView, this, abstractC15816a));
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: fn */
    public void mo20763fn() {
        Context context = getContext();
        if (context != null) {
            Button button = m20790RA().f41254k0;
            int i = C2778R.color.tcx_backgroundPrimary_light;
            Object obj = C26467a.f74235a;
            button.setTextColor(C26467a.C26471d.m1787a(context, i));
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: gb */
    public void mo20522gb(String str, String str2, boolean z) {
        s1.z.c.l.e(str2, "title");
        TagXView tagXView = m20790RA().f41237Y;
        tagXView.setClickable(z);
        tagXView.setIcon(str);
        tagXView.setTitle(str2);
        Float m20783YA = m20783YA();
        if (m20783YA != null) {
            tagXView.m35631b(0, m20783YA.floatValue());
        }
        C19286f.m13684T(tagXView);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: gm */
    public void mo20521gm() {
        getChildFragmentManager().m42895p0("survey_adapter_request_key", this, new C14091r());
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: h2 */
    public void mo20762h2(String str, String str2) {
        s1.z.c.l.e(str2, "address");
        AddressTimezoneView addressTimezoneView = m20790RA().f41242d;
        addressTimezoneView.m34615f1(str, str2);
        C19286f.m13684T(addressTimezoneView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: hd */
    public void mo20520hd(Contact contact) {
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        C14261f c14261f = m20790RA().f41240b.f41292b;
        s1.z.c.l.d(c14261f, "binding.acsBizmonContain…izSurveyContainerCardView");
        CardView cardView = c14261f.f41279a;
        s1.z.c.l.d(cardView, "binding.acsBizmonContain…veyContainerCardView.root");
        C19286f.m13684T(cardView);
        Space space = m20790RA().f41240b.f41294d;
        s1.z.c.l.d(space, "binding.acsBizmonContainer.dividerSpace");
        C19286f.m13684T(space);
        C26907a c26907a = new C26907a(getChildFragmentManager());
        int i = C2778R.C2780id.bizSurveyContainer;
        Objects.requireNonNull(C15431a.f43775i);
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        C15431a c15431a = new C15431a();
        Bundle bundle = new Bundle();
        bundle.putParcelable(AnalyticsConstants.CONTACT, contact);
        c15431a.setArguments(bundle);
        c26907a.m1120m(i, c15431a, "BizSurveyAdapterFragment");
        c26907a.mo1126g();
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: i6 */
    public void mo20519i6(AbstractC15183d abstractC15183d, AbstractC15191g abstractC15191g) {
        s1.z.c.l.e(abstractC15183d, "ad");
        s1.z.c.l.e(abstractC15191g, "layout");
        AdsSwitchView m20791QA = m20791QA();
        if (m20791QA != null) {
            m20791QA.setBackgroundResource(C2778R.C2779drawable.background_pacs_ads_border);
            m20791QA.m35948d(abstractC15183d, abstractC15191g);
            m20791QA.post(new RunnableC14100d(this, m20791QA));
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: ik */
    public void mo20518ik(long j) {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        startActivityForResult(ContactFeedbackActivity.m35611pa(requireContext, j, AnalyticsContext.PACS.getValue()), 2);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: ir */
    public void mo20517ir(ActionButtonType actionButtonType) {
        s1.z.c.l.e(actionButtonType, "actionButtonType");
        ActionButtonsView actionButtonsView = m20790RA().f41241c;
        Objects.requireNonNull(actionButtonsView);
        s1.z.c.l.e(actionButtonType, "actionButtonType");
        actionButtonsView.removeView(actionButtonsView.findViewWithTag(actionButtonType));
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: k6 */
    public void mo20516k6() {
        m20790RA().f41252j0.setOnClickListener(new View$OnClickListenerC14083j());
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: ky */
    public void mo20515ky() {
        ImageView imageView = m20790RA().f41233U;
        s1.z.c.l.d(imageView, "binding.suggestName");
        C19286f.m13689O(imageView);
        View view = m20790RA().f41234V;
        s1.z.c.l.d(view, "binding.suggestNameDivider");
        C19286f.m13689O(view);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: l7 */
    public void mo20514l7() {
        C19286f.m13688P(m20789SA());
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: ll */
    public void mo20761ll(int i) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            View view = m20790RA().f41234V;
            Object obj = C26467a.f74235a;
            view.setBackgroundColor(C26467a.C26471d.m1787a(context, i));
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: lz */
    public void mo20513lz(SpamCategoryRequest spamCategoryRequest) {
        s1.z.c.l.e(spamCategoryRequest, "spamCategoryRequest");
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            startActivityForResult(SpamCategoriesActivity.C4511a.m34732a(context, spamCategoryRequest), 1);
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: m8 */
    public void mo20512m8(AbstractC14167s abstractC14167s) {
        s1.z.c.l.e(abstractC14167s, "listener");
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: n */
    public void mo20511n() {
        TrueContext trueContext = m20790RA().f41248h0;
        s1.z.c.l.d(trueContext, "binding.truecontext");
        C19286f.m13689O(trueContext);
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: oc */
    public void mo20760oc(VideoCallerIdBottomSheetOnboardingData videoCallerIdBottomSheetOnboardingData) {
        s1.z.c.l.e(videoCallerIdBottomSheetOnboardingData, RemoteMessageConst.DATA);
        C15597b.C15600c c15600c = C15597b.f44117i;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        Objects.requireNonNull(c15600c);
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(videoCallerIdBottomSheetOnboardingData, "onboardingType");
        Intent intent = new Intent(requireContext, VideoIdOnboardingBottomSheetActivity.class);
        intent.putExtra("ARG_ONBOARDING_DATA", videoCallerIdBottomSheetOnboardingData);
        requireContext.startActivity(intent);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        Uri data;
        Contact contact;
        Contact contact2;
        C14074a.super.onActivityResult(i, i2, intent);
        if (i == 1 && i2 == -1) {
            SpamCategoryResult spamCategoryResult = intent != null ? (SpamCategoryResult) intent.getParcelableExtra("result") : null;
            if (spamCategoryResult != null) {
                AbstractC14103g abstractC14103g = this.f40704e;
                if (abstractC14103g == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                ((AbstractC14205m) abstractC14103g).m20439Y6(spamCategoryResult);
            }
        }
        if (i == 2 && i2 == -1) {
            Contact contact3 = intent != null ? (Contact) intent.getParcelableExtra("result_contact") : null;
            AbstractC14103g abstractC14103g2 = this.f40704e;
            if (abstractC14103g2 == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            ((AbstractC14205m) abstractC14103g2).m20427hk(contact3);
        }
        if (i == 6 && i2 == -1 && intent != null && (contact2 = (Contact) intent.getParcelableExtra(AnalyticsConstants.CONTACT)) != null) {
            AbstractC14103g abstractC14103g3 = this.f40704e;
            if (abstractC14103g3 == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            s1.z.c.l.d(contact2, "it");
            AbstractC14205m abstractC14205m = (AbstractC14205m) abstractC14103g3;
            s1.z.c.l.e(contact2, AnalyticsConstants.CONTACT);
            abstractC14205m.m20451Oj().f11539f = contact2;
            abstractC14205m.m20465Gk(contact2);
        }
        if (i == 3 && i2 == -1 && intent != null && (contact = (Contact) intent.getParcelableExtra(AnalyticsConstants.CONTACT)) != null) {
            AbstractC14103g abstractC14103g4 = this.f40704e;
            if (abstractC14103g4 == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            s1.z.c.l.d(contact, "it");
            AbstractC14205m abstractC14205m2 = (AbstractC14205m) abstractC14103g4;
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            abstractC14205m2.m20451Oj().f11539f = contact;
            abstractC14205m2.mo20410zk(contact);
        }
        if (i == 4 || i == 5) {
            if (i2 != -1) {
                AbstractC14307r abstractC14307r = this.f40705f;
                if (abstractC14307r == null) {
                    s1.z.c.l.l("phonebookHelper");
                    throw null;
                }
                ((C14309s) abstractC14307r).f41392b.mo11854a().mo14072i();
            } else if (intent == null || (data = intent.getData()) == null) {
                return;
            } else {
                s1.z.c.l.d(data, "data?.data ?: return");
                AbstractC14307r abstractC14307r2 = this.f40705f;
                if (abstractC14307r2 == null) {
                    s1.z.c.l.l("phonebookHelper");
                    throw null;
                } else {
                    s1.z.c.l.e(data, "uri");
                    ((C14309s) abstractC14307r2).f41392b.mo11854a().mo14075f(data);
                }
            }
            AbstractC14103g abstractC14103g5 = this.f40704e;
            if (abstractC14103g5 == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            AbstractC14198h abstractC14198h = (AbstractC14198h) ((AbstractC14205m) abstractC14103g5).f57683a;
            if (abstractC14198h == null) {
                return;
            }
            abstractC14198h.finish();
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = C17422k.m16050u0(layoutInflater, true).inflate(C2778R.layout.fragment_acs_popup, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.toThemeInflater…_popup, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        AbstractC14103g abstractC14103g = this.f40704e;
        if (abstractC14103g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C14105i) abstractC14103g).mo9806c();
        C14303q0 c14303q0 = this.f40713n;
        if (c14303q0 == null) {
            s1.z.c.l.l("videoCallerIdOptionsPopUpManager");
            throw null;
        }
        c14303q0.m20278a();
        C14074a.super.onDestroyView();
    }

    public void onPause() {
        C14074a.super.onPause();
        AbstractC14103g abstractC14103g = this.f40704e;
        if (abstractC14103g != null) {
            ((AbstractC14205m) abstractC14103g).onVisibilityChanged(false);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onResume() {
        C14074a.super.onResume();
        AbstractC14103g abstractC14103g = this.f40704e;
        if (abstractC14103g != null) {
            ((AbstractC14205m) abstractC14103g).onVisibilityChanged(true);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        Intent intent;
        s1.z.c.l.e(view, ViewAction.VIEW);
        C14074a.super.onViewCreated(view, bundle);
        Context context = view.getContext();
        s1.z.c.l.d(context, "view.context");
        C19235i0 c19235i0 = new C19235i0(context);
        this.f40717r = c19235i0;
        this.f40716q = new C8289d(c19235i0);
        AvatarVideoPlayerView avatarVideoPlayerView = m20790RA().f41252j0;
        C8289d c8289d = this.f40716q;
        if (c8289d == null) {
            s1.z.c.l.l("avatarPresenter");
            throw null;
        }
        avatarVideoPlayerView.setAvatarXPresenter(c8289d);
        AbstractC14103g abstractC14103g = this.f40704e;
        if (abstractC14103g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C14105i) abstractC14103g).mo9029Y0(this);
        n3.r.a.l activity = getActivity();
        AfterCallHistoryEvent I = (activity == null || (intent = activity.getIntent()) == null) ? null : n.I(intent, "ARG_ACS_HISTORY_EVENT");
        if (I == null) {
            finish();
            return;
        }
        AbstractC14103g abstractC14103g2 = this.f40704e;
        if (abstractC14103g2 == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((AbstractC14205m) abstractC14103g2).m20426ik(I);
        C14257b m20790RA = m20790RA();
        m20790RA.f41249i.setOnClickListener(new View$OnClickListenerC14075a(2, this));
        m20790RA.f41239a.setOnClickListener(new View$OnClickListenerC14075a(3, this));
        m20790RA.f41267x.setOnClickListener(new View$OnClickListenerC14075a(4, this));
        m20790RA.f41260q.setOnClickListener(new View$OnClickListenerC14075a(5, this));
        m20790RA.f41229Q.setOnLearnMoreClickListener(new RunnableC14085l());
        m20790RA.f41236X.setOnClickListener(new View$OnClickListenerC14075a(6, this));
        m20790RA.f41237Y.setOnClickListener(new View$OnClickListenerC14075a(7, this));
        m20790RA.f41233U.setOnClickListener(new View$OnClickListenerC14075a(8, this));
        m20790RA.f41254k0.setOnClickListener(new View$OnClickListenerC14075a(9, this));
        m20790RA.f41268y.setOnClickListener(new View$OnClickListenerC14075a(0, this));
        m20790RA.f41246g0.setOnClickListener(new View$OnClickListenerC14075a(1, this));
        m20790RA().f41221E.setOnDemandReasonPickerCallback(new C14101e(this));
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: op */
    public void mo20510op(AbstractC13343b abstractC13343b, String str, String str2, boolean z) {
        s1.z.c.l.e(abstractC13343b, "afterBlockPromo");
        if ((!isAdded()) || isStateSaved()) {
            return;
        }
        h activity = getActivity();
        h hVar = activity;
        if (!(activity instanceof h)) {
            hVar = null;
        }
        h hVar2 = hVar;
        if (hVar2 == null) {
            return;
        }
        abstractC13343b.m21897a(hVar2, AnalyticsContext.PACS.getValue(), str, str2, z, 7);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: ot */
    public void mo20509ot() {
        C7945b c7945b = (C7945b) m20790RA().f41240b.f41293c.getPresenter();
        AbstractC7924f abstractC7924f = (AbstractC7924f) c7945b.f57683a;
        if (abstractC7924f != null) {
            Contact contact = c7945b.f24580d;
            if (contact == null) {
                s1.z.c.l.l(AnalyticsConstants.CONTACT);
                throw null;
            } else if (contact.m35565G0()) {
                abstractC7924f.mo29109n(c7945b.f24586j.mo13769a(C3478R.color.tcx_verifiedBusinessBadgeGreen), C3478R.C3479drawable.background_call_me_back_verified_business);
                c7945b.m29088Lj();
            } else {
                Contact contact2 = c7945b.f24580d;
                if (contact2 == null) {
                    s1.z.c.l.l(AnalyticsConstants.CONTACT);
                    throw null;
                } else if (!contact2.m35492v0()) {
                } else {
                    abstractC7924f.mo29109n(c7945b.f24586j.mo13769a(C3478R.color.tcx_priority_badge), C3478R.C3479drawable.background_call_me_back_priority);
                    c7945b.m29088Lj();
                }
            }
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: oy */
    public void mo20508oy() {
        AddressTimezoneView addressTimezoneView = m20790RA().f41242d;
        s1.z.c.l.d(addressTimezoneView, "binding.addressTimezoneView");
        C19286f.m13689O(addressTimezoneView);
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: p6 */
    public void mo20759p6() {
        Context context = getContext();
        if (context != null) {
            int i = C2778R.color.tcx_textTertiary_light;
            mo20774Jy(i);
            int i2 = C2778R.color.tcx_textPrimary_light;
            mo20766dr(i2);
            int i3 = C2778R.color.tcx_textSecondary_light;
            mo20775Gs(i3);
            mo20761ll(C2778R.color.tcx_fillTertiaryBackground_light);
            mo20773N9(i2, C2778R.C2779drawable.background_tag_popup_dark);
            C14257b m20790RA = m20790RA();
            ImageView imageView = m20790RA.f41228P;
            s1.z.c.l.d(imageView, "simIndicator");
            Object obj = C26467a.f74235a;
            imageView.setImageTintList(ColorStateList.valueOf(C26467a.C26471d.m1787a(context, i)));
            m20790RA.f41245g.setTextColor(C26467a.C26471d.m1787a(context, i2));
            ImageView imageView2 = m20790RA.f41227O;
            s1.z.c.l.d(imageView2, "priorityIcon");
            imageView2.setImageTintList(ColorStateList.valueOf(C26467a.C26471d.m1787a(context, C2778R.color.popup_acs_icon_tint_black)));
            m20790RA.f41225M.setTextColor(C26467a.C26471d.m1787a(context, i2));
            m20790RA.f41223K.setTextColor(C26467a.C26471d.m1787a(context, i3));
            m20790RA.f41242d.m34614g1(C26467a.C26471d.m1787a(context, C2778R.color.popup_acs_timezone_text_light), C2778R.C2779drawable.background_timezone_transparent);
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: pa */
    public void mo20507pa() {
        ImageView m20785WA = m20785WA();
        s1.z.c.l.d(m20785WA, "spamIcon");
        C19286f.m13684T(m20785WA);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: pe */
    public void mo20506pe(VideoExpansionType videoExpansionType) {
        s1.z.c.l.e(videoExpansionType, "videoExpansionType");
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "it");
            FullScreenPopupVideoActivity.m34461ra(context, videoExpansionType);
        }
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: pi */
    public void mo20758pi() {
        IntentFilter intentFilter = new IntentFilter();
        for (String str : f40696L) {
            intentFilter.addAction(str);
        }
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.registerReceiver(this.f40718s, intentFilter);
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: pl */
    public void mo20505pl(String str, AnalyticsContext analyticsContext) {
        s1.z.c.l.e(str, "normalizedNumber");
        s1.z.c.l.e(analyticsContext, "analyticsContext");
        C14300p c14300p = this.f40707h;
        if (c14300p == null) {
            s1.z.c.l.l("acsMessageHelper");
            throw null;
        }
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        c14300p.m20280a(requireActivity, str, analyticsContext);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: q3 */
    public void mo20504q3(int i) {
        C14257b m20790RA = m20790RA();
        TextView textView = m20790RA.f41223K;
        s1.z.c.l.d(textView, "phoneNumber");
        textView.setText(getString(i));
        TextView textView2 = m20790RA.f41262s;
        s1.z.c.l.d(textView2, "feedbackNumber");
        textView2.setText(getString(i));
        TextView textView3 = m20790RA.f41223K;
        s1.z.c.l.d(textView3, "phoneNumber");
        C19286f.m13684T(textView3);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: qk */
    public void mo20503qk(boolean z) {
        Fragment m20612a = C14170a.f40907j.m20612a(AnalyticsContext.PACS.getValue(), z);
        C26907a c26907a = new C26907a(getChildFragmentManager());
        c26907a.m1120m(C2778R.C2780id.placeholder_acs_reply, m20612a, null);
        c26907a.mo1126g();
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: qw */
    public void mo20757qw() {
        ImageView imageView = m20790RA().f41246g0;
        s1.z.c.l.d(imageView, "binding.truecallerLogoQuestionMark");
        C19286f.m13684T(imageView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: r8 */
    public void mo20502r8(Contact contact, int i) {
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            C20592g c20592g = this.f40712m;
            if (c20592g != null) {
                startActivityForResult(C17422k.m16061p(context, contact, 1, i, c20592g), 6);
            } else {
                s1.z.c.l.l("featuresRegistry");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: rh */
    public void mo20501rh(String str, String str2, String str3) {
        C14290k c14290k = this.f40706g;
        if (c14290k == null) {
            s1.z.c.l.l("detailsViewHelper");
            throw null;
        }
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        c14290k.m20286a(requireActivity, str, str2, str3);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: rx */
    public void mo20500rx() {
        C14262g c14262g = m20790RA().f41218B;
        Group group = c14262g.f41290k;
        s1.z.c.l.d(group, "questionGroup");
        C19286f.m13687Q(group);
        Group group2 = c14262g.f41287h;
        s1.z.c.l.d(group2, "feedbackThanksGroup");
        C19286f.m13684T(group2);
        c14262g.f41286g.m42591g();
        c14262g.f41285f.startAnimation((Animation) this.f40720u.getValue());
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: rz */
    public void mo20499rz() {
        C14261f c14261f = m20790RA().f41240b.f41292b;
        s1.z.c.l.d(c14261f, "binding.acsBizmonContain…izSurveyContainerCardView");
        CardView cardView = c14261f.f41279a;
        s1.z.c.l.d(cardView, "binding.acsBizmonContain…veyContainerCardView.root");
        C19286f.m13689O(cardView);
        Space space = m20790RA().f41240b.f41294d;
        s1.z.c.l.d(space, "binding.acsBizmonContainer.dividerSpace");
        C19286f.m13689O(space);
        FragmentManager childFragmentManager = getChildFragmentManager();
        Fragment m42942K = childFragmentManager.m42942K("BizSurveyAdapterFragment");
        if (m42942K != null) {
            C26907a c26907a = new C26907a(childFragmentManager);
            c26907a.mo1121l(m42942K);
            c26907a.mo1126g();
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    public void setAltName(String str) {
        s1.z.c.l.e(str, "altName");
        TextView textView = m20790RA().f41251j;
        C19286f.m13684T(textView);
        textView.setText(getString(C2778R.string.acs_alt_name, new Object[]{str}));
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    public void setName(String str) {
        s1.z.c.l.e(str, "profileName");
        TextView textView = m20790RA().f41220D;
        textView.setText(C8605o.m28239a(str));
        textView.setSelected(true);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    public void setSpamCategoryIcon(SpamCategoryModel spamCategoryModel) {
        ComponentCallbacks2C22222c.m8445f(m20785WA()).mo8407r(spamCategoryModel != null ? spamCategoryModel.getIconUrl() : null).mo8095m().m8427O(m20785WA());
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: sk */
    public void mo20497sk(boolean z) {
        FullScreenRatioVideoPlayerView fullScreenRatioVideoPlayerView = m20790RA().f41240b.f41296f;
        fullScreenRatioVideoPlayerView.m34444c(z);
        fullScreenRatioVideoPlayerView.m34440g(z);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: ta */
    public void mo20496ta() {
        Button button = m20790RA().f41254k0;
        s1.z.c.l.d(button, "binding.viewDetails");
        C19286f.m13684T(button);
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: tb */
    public void mo20756tb() {
        Group group = m20790RA().f41226N;
        s1.z.c.l.d(group, "binding.priorityGroup");
        C19286f.m13684T(group);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: tg */
    public void mo20495tg() {
        AcsSpamPremiumPromoView acsSpamPremiumPromoView = m20790RA().f41229Q;
        s1.z.c.l.d(acsSpamPremiumPromoView, "binding.spamPremiumPromoView");
        C19286f.m13689O(acsSpamPremiumPromoView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: tl */
    public void mo20494tl() {
        ImageView imageView = m20790RA().f41233U;
        s1.z.c.l.d(imageView, "binding.suggestName");
        C19286f.m13684T(imageView);
        View view = m20790RA().f41234V;
        s1.z.c.l.d(view, "binding.suggestNameDivider");
        C19286f.m13684T(view);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: tm */
    public void mo20493tm() {
        C19286f.m13685S(m20789SA());
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: tq */
    public void mo20492tq() {
        C14263h c14263h = m20790RA().f41240b;
        s1.z.c.l.d(c14263h, "binding.acsBizmonContainer");
        ConstraintLayout constraintLayout = c14263h.f41291a;
        s1.z.c.l.d(constraintLayout, "binding.acsBizmonContainer.root");
        C19286f.m13689O(constraintLayout);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: tu */
    public void mo20491tu(AbstractC15863y abstractC15863y, String str) {
        s1.z.c.l.e(abstractC15863y, "videoXConfig");
        s1.z.c.l.e(str, "analyticsContext");
        m20790RA().f41252j0.m34450f((AbstractC15816a) abstractC15863y, str);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: tv */
    public void mo20490tv() {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            TagXView tagXView = m20790RA().f41236X;
            int i = C2778R.C2779drawable.ic_tcx_action_add_16dp;
            Object obj = C26467a.f74235a;
            Drawable m1789b = C26467a.C26470c.m1789b(context, i);
            if (m1789b != null) {
                s1.z.c.l.d(m1789b, "it");
                tagXView.setIcon(m1789b);
            }
            String string = getString(C2778R.string.acs_add_tag);
            s1.z.c.l.d(string, "getString(R.string.acs_add_tag)");
            tagXView.setTitle(string);
            Float m20783YA = m20783YA();
            if (m20783YA != null) {
                tagXView.m35631b(0, m20783YA.floatValue());
            }
            C19286f.m13684T(tagXView);
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: us */
    public void mo20489us(Contact contact) {
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            AbstractC14307r abstractC14307r = this.f40705f;
            if (abstractC14307r == null) {
                s1.z.c.l.l("phonebookHelper");
                throw null;
            }
            C14309s c14309s = (C14309s) abstractC14307r;
            s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
            s1.z.c.l.e(this, "fragment");
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            C12864a2.m22576R(context, this, contact, true, 5);
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: v0 */
    public void mo20488v0() {
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: w */
    public void mo20487w(int i) {
        m20790RA().f41238Z.setImageResource(i);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: w5 */
    public void mo20486w5() {
        TextView textView = m20790RA().f41251j;
        s1.z.c.l.d(textView, "binding.contactDetails");
        C19286f.m13689O(textView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: wa */
    public boolean mo20485wa() {
        boolean z;
        Context context = getContext();
        if (context != null) {
            C14292l c14292l = this.f40710k;
            if (c14292l == null) {
                s1.z.c.l.l("forceUpdateHelper");
                throw null;
            }
            s1.z.c.l.d(context, "it");
            FragmentManager childFragmentManager = getChildFragmentManager();
            s1.z.c.l.d(childFragmentManager, "childFragmentManager");
            z = c14292l.m20285a(context, childFragmentManager);
        } else {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: wg */
    public void mo20484wg() {
        FragmentContainerView fragmentContainerView = m20790RA().f41235W;
        s1.z.c.l.d(fragmentContainerView, "binding.surveyContainer");
        C19286f.m13689O(fragmentContainerView);
        FragmentManager childFragmentManager = getChildFragmentManager();
        Fragment m42942K = childFragmentManager.m42942K("SurveyAdapterFragment");
        if (m42942K != null) {
            C26907a c26907a = new C26907a(childFragmentManager);
            c26907a.mo1121l(m42942K);
            c26907a.mo1126g();
        }
    }

    @Override // p193e.p194a.p773g.p774a.p775a.AbstractC14104h
    /* renamed from: xi */
    public void mo20755xi(int i, int i2) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            Object obj = C26467a.f74235a;
            int m1787a = C26467a.C26471d.m1787a(context, i);
            TagXView tagXView = m20790RA().f41237Y;
            tagXView.setIconTint(m1787a);
            tagXView.setTitleColor(m1787a);
            tagXView.setBackgroundResource(i2);
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: y2 */
    public void mo20483y2(int i) {
        ImageView imageView = m20790RA().f41222J;
        imageView.setImageResource(i);
        C19286f.m13684T(imageView);
        View view = m20790RA().f41219C;
        s1.z.c.l.d(view, "binding.logoDivider");
        C19286f.m13684T(view);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: yw */
    public void mo20482yw() {
        C14262g c14262g = m20790RA().f41218B;
        s1.z.c.l.d(c14262g, "binding.layoutVerifiedBizFeedback");
        ConstraintLayout constraintLayout = c14262g.f41280a;
        s1.z.c.l.d(constraintLayout, "binding.layoutVerifiedBizFeedback.root");
        C19286f.m13689O(constraintLayout);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: z8 */
    public void mo20481z8() {
        ActionButtonsView actionButtonsView = m20790RA().f41241c;
        AbstractC19233h0 abstractC19233h0 = this.f40717r;
        if (abstractC19233h0 != null) {
            actionButtonsView.setActionButtonColor(abstractC19233h0.mo13769a(C2778R.color.white));
        } else {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: zy */
    public void mo20480zy() {
    }
}

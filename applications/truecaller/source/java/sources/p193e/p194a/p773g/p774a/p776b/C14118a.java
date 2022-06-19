package p193e.p194a.p773g.p774a.p776b;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.app.Activity;
import android.app.KeyguardManager;
import android.app.WallpaperManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.constraintlayout.widget.Guideline;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.android.gms.ads.RequestConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.tenor.android.core.util.AbstractLocaleUtils;
import com.truecaller.acs.C2778R;
import com.truecaller.acs.analytics.AnalyticsContext;
import com.truecaller.acs.analytics.DismissReason;
import com.truecaller.acs.data.AfterCallHistoryEvent;
import com.truecaller.acs.p131ui.AcsSpamPremiumPromoView;
import com.truecaller.acs.p131ui.ActionButtonType;
import com.truecaller.acs.p131ui.ActionButtonsView;
import com.truecaller.acs.p131ui.fullscreen.BackgroundMode;
import com.truecaller.acs.p131ui.fullscreen.CallerGradientView;
import com.truecaller.acs.util.AcsReferralHelper;
import com.truecaller.acs.util.DismissibleConstraintLayout;
import com.truecaller.acs.util.MarginDirection;
import com.truecaller.acs.util.VideoCallerIdAcsMoreOption;
import com.truecaller.ads.p134ui.AdsSwitchView;
import com.truecaller.bizmon.callMeBack.mvp.CallMeBackFACSButtonView;
import com.truecaller.bizmon.verifiedFeedback.FeedbackQuestion;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.common.p156ui.imageview.FullScreenProfilePictureView;
import com.truecaller.common.p156ui.imageview.GoldShineImageView;
import com.truecaller.common.p156ui.tag.TagXView;
import com.truecaller.common.p156ui.textview.GoldShineTextView;
import com.truecaller.contactfeedback.presentation.ContactFeedbackActivity;
import com.truecaller.contextcall.p160ui.reasonpicker.ondemand.OnDemandMessageSource;
import com.truecaller.contextcall.utils.view.ondemandreasonpicker.OnDemandCallReasonPickerView;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.SpamCategoryModel;
import com.truecaller.log.AssertionUtil;
import com.truecaller.p183ui.view.TintedImageView;
import com.truecaller.referral.ReferralManager;
import com.truecaller.referrals.analytics.ReferralAnalytics$Source;
import com.truecaller.spamcategories.SpamCategoryRequest;
import com.truecaller.spamcategories.SpamCategoryResult;
import com.truecaller.spamcategories.p178ui.SpamCategoriesActivity;
import com.truecaller.timezone.AddressTimezoneView;
import com.truecaller.truecontext.TrueContext;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import com.truecaller.videocallerid.p187ui.fullscreenpopupvideo.FullScreenPopupVideoActivity;
import com.truecaller.videocallerid.p187ui.fullscreenpopupvideo.VideoExpansionType;
import com.truecaller.videocallerid.p187ui.onboarding.VideoCallerIdOnboardingActivity;
import com.truecaller.videocallerid.p187ui.videoplayer.AvatarVideoPlayerView;
import com.truecaller.videocallerid.p187ui.videoplayer.FullScreenRatioVideoPlayerView;
import com.truecaller.videocallerid.p187ui.videoplayer.FullScreenVideoPlayerView;
import com.truecaller.videocallerid.utils.OnboardingType;
import e.f.a.r.k.d;
import e.m.d.y.n;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1728a.AbstractC25369b;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.p1457n.p1466q.p1469f.C22530c;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k;
import p193e.p1451f.p1452a.p1476r.p1478l.C22600a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1017d.p1018a.C16833a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1064m5.AbstractC18240c;
import p193e.p194a.p1080o.p1097b.AbstractC18742m;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1334w.p1335a.C21167a;
import p193e.p194a.p1357x3.p1358h.AbstractC21409g;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p1406z3.p1408h.C21868b;
import p193e.p194a.p294b.p336i.p343k.C7945b;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p702e0.AbstractC13343b;
import p193e.p194a.p773g.p774a.AbstractC14183d;
import p193e.p194a.p773g.p774a.AbstractC14198h;
import p193e.p194a.p773g.p774a.AbstractC14205m;
import p193e.p194a.p773g.p774a.C14187f;
import p193e.p194a.p773g.p774a.C14225t;
import p193e.p194a.p773g.p774a.C14227v;
import p193e.p194a.p773g.p774a.p777c.C14170a;
import p193e.p194a.p773g.p774a.p778f0.p779a.AbstractC14189b;
import p193e.p194a.p773g.p774a.p778f0.p779a.AbstractC14192e;
import p193e.p194a.p773g.p774a.p778f0.p779a.C14196i;
import p193e.p194a.p773g.p783h.C14256a;
import p193e.p194a.p773g.p783h.C14259d;
import p193e.p194a.p773g.p785j.AbstractC14269b;
import p193e.p194a.p773g.p785j.AbstractC14294m;
import p193e.p194a.p773g.p785j.AbstractC14307r;
import p193e.p194a.p773g.p785j.AbstractC14313t;
import p193e.p194a.p773g.p785j.C14271c;
import p193e.p194a.p773g.p785j.C14290k;
import p193e.p194a.p773g.p785j.C14292l;
import p193e.p194a.p773g.p785j.C14299o0;
import p193e.p194a.p773g.p785j.C14300p;
import p193e.p194a.p773g.p785j.C14301p0;
import p193e.p194a.p773g.p785j.C14303q0;
import p193e.p194a.p773g.p785j.C14309s;
import p193e.p194a.p773g.p785j.C14314u;
import p193e.p194a.p773g.p785j.C14317x;
import p193e.p194a.p852i.AbstractC15191g;
import p193e.p194a.p852i.p862c.p863a.AbstractC15003c;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
import p193e.p194a.p947k.p948a.p964k.AbstractC15816a;
import p193e.p194a.p947k.p948a.p964k.AbstractC15836l;
import p193e.p194a.p947k.p948a.p964k.AbstractC15863y;
import p193e.p194a.p947k.p948a.p964k.C15832h;
import p193e.p194a.p947k.p948a.p964k.C15833i;
import p193e.p194a.p947k.p948a.p964k.C15835k;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15864a;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15868b;
import q3.a.j0;
import q3.a.x2.i1;
import s1.a.l;
import s1.g;
import s1.s;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0092\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n*\u0002\u009a\u0003\b\u0007\u0018�� º\u00032\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0002»\u0003B\b¢\u0006\u0005\b¹\u0003\u0010\u0016J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0017\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001b\u0010\u0016J\u000f\u0010\u001c\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001c\u0010\u0016J\u000f\u0010\u001d\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001d\u0010\u0016J)\u0010#\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001e2\b\u0010\"\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\b2\u0006\u0010%\u001a\u00020\u0006H\u0016¢\u0006\u0004\b&\u0010\nJ\u000f\u0010'\u001a\u00020\bH\u0016¢\u0006\u0004\b'\u0010\u0016J\u0019\u0010*\u001a\u00020\b2\b\u0010)\u001a\u0004\u0018\u00010(H\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\bH\u0016¢\u0006\u0004\b,\u0010\u0016J\u0019\u0010.\u001a\u00020\b2\b\b\u0001\u0010-\u001a\u00020\u001eH\u0016¢\u0006\u0004\b.\u0010/J\u0019\u00100\u001a\u00020\b2\b\b\u0001\u0010-\u001a\u00020\u001eH\u0016¢\u0006\u0004\b0\u0010/J\u0017\u00102\u001a\u00020\b2\u0006\u00101\u001a\u00020\u001eH\u0016¢\u0006\u0004\b2\u0010/J\u0019\u00104\u001a\u00020\b2\b\b\u0001\u00103\u001a\u00020\u001eH\u0016¢\u0006\u0004\b4\u0010/J\u000f\u00105\u001a\u00020\bH\u0016¢\u0006\u0004\b5\u0010\u0016J\u0019\u00106\u001a\u00020\b2\b\b\u0001\u00103\u001a\u00020\u001eH\u0016¢\u0006\u0004\b6\u0010/J\u000f\u00107\u001a\u00020\bH\u0016¢\u0006\u0004\b7\u0010\u0016J\u0017\u00108\u001a\u00020\b2\u0006\u00103\u001a\u00020\u001eH\u0016¢\u0006\u0004\b8\u0010/J\u000f\u00109\u001a\u00020\bH\u0016¢\u0006\u0004\b9\u0010\u0016J+\u0010=\u001a\u00020\b2\b\b\u0001\u0010:\u001a\u00020\u001e2\b\b\u0001\u0010;\u001a\u00020\u001e2\u0006\u0010<\u001a\u00020\u0006H\u0016¢\u0006\u0004\b=\u0010>J#\u0010B\u001a\u00020\b2\b\u0010@\u001a\u0004\u0018\u00010?2\b\b\u0001\u0010A\u001a\u00020\u001eH\u0016¢\u0006\u0004\bB\u0010CJ\u000f\u0010D\u001a\u00020\bH\u0016¢\u0006\u0004\bD\u0010\u0016J#\u0010G\u001a\u00020\b2\u0006\u0010E\u001a\u00020?2\n\b\u0001\u0010F\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\bG\u0010HJ\u0019\u0010I\u001a\u00020\b2\b\b\u0001\u0010-\u001a\u00020\u001eH\u0016¢\u0006\u0004\bI\u0010/J\u000f\u0010J\u001a\u00020\bH\u0016¢\u0006\u0004\bJ\u0010\u0016J\u0019\u0010K\u001a\u00020\b2\b\b\u0001\u0010-\u001a\u00020\u001eH\u0016¢\u0006\u0004\bK\u0010/J\u000f\u0010L\u001a\u00020\bH\u0016¢\u0006\u0004\bL\u0010\u0016J\u0019\u0010N\u001a\u00020\b2\b\b\u0001\u0010M\u001a\u00020\u001eH\u0016¢\u0006\u0004\bN\u0010/J\u001f\u0010P\u001a\u00020\b2\u0006\u0010M\u001a\u00020?2\u0006\u0010O\u001a\u00020\u0006H\u0016¢\u0006\u0004\bP\u0010QJ\u0019\u0010S\u001a\u00020\b2\b\b\u0001\u0010R\u001a\u00020\u001eH\u0016¢\u0006\u0004\bS\u0010/J\u0019\u0010T\u001a\u00020\b2\b\b\u0001\u0010-\u001a\u00020\u001eH\u0016¢\u0006\u0004\bT\u0010/J\u000f\u0010U\u001a\u00020\bH\u0016¢\u0006\u0004\bU\u0010\u0016J\u001f\u0010Y\u001a\u00020\b2\u0006\u0010W\u001a\u00020V2\u0006\u0010X\u001a\u00020?H\u0016¢\u0006\u0004\bY\u0010ZJ\u001f\u0010\\\u001a\u00020\b2\u0006\u0010W\u001a\u00020V2\u0006\u0010X\u001a\u00020[H\u0016¢\u0006\u0004\b\\\u0010]J\u0017\u0010_\u001a\u00020\b2\u0006\u0010^\u001a\u00020\u0006H\u0016¢\u0006\u0004\b_\u0010\nJ\u000f\u0010a\u001a\u00020`H\u0016¢\u0006\u0004\ba\u0010bJ\u0015\u0010e\u001a\b\u0012\u0004\u0012\u00020d0cH\u0016¢\u0006\u0004\be\u0010fJ\u0017\u0010g\u001a\u00020\b2\u0006\u0010^\u001a\u00020\u0006H\u0016¢\u0006\u0004\bg\u0010\nJ\u0017\u0010h\u001a\u00020\b2\u0006\u00101\u001a\u00020\u001eH\u0016¢\u0006\u0004\bh\u0010/J\u001f\u0010k\u001a\u00020\b2\u0006\u0010j\u001a\u00020i2\u0006\u0010X\u001a\u00020?H\u0016¢\u0006\u0004\bk\u0010lJ\u0017\u0010n\u001a\u00020\b2\u0006\u0010m\u001a\u00020\u0006H\u0016¢\u0006\u0004\bn\u0010\nJ\u000f\u0010o\u001a\u00020`H\u0016¢\u0006\u0004\bo\u0010bJ\u0015\u0010p\u001a\b\u0012\u0004\u0012\u00020d0cH\u0016¢\u0006\u0004\bp\u0010fJ\u0017\u0010q\u001a\u00020\b2\u0006\u0010^\u001a\u00020\u0006H\u0016¢\u0006\u0004\bq\u0010\nJ\u0017\u0010s\u001a\u00020\b2\u0006\u0010r\u001a\u00020\u0006H\u0016¢\u0006\u0004\bs\u0010\nJ\u000f\u0010t\u001a\u00020\bH\u0016¢\u0006\u0004\bt\u0010\u0016J\u000f\u0010u\u001a\u00020\bH\u0016¢\u0006\u0004\bu\u0010\u0016J\u0017\u0010x\u001a\u00020\b2\u0006\u0010w\u001a\u00020vH\u0016¢\u0006\u0004\bx\u0010yJ\u0019\u0010{\u001a\u00020\b2\b\b\u0001\u0010z\u001a\u00020\u001eH\u0016¢\u0006\u0004\b{\u0010/J\u0017\u0010|\u001a\u00020\b2\u0006\u0010z\u001a\u00020?H\u0016¢\u0006\u0004\b|\u0010}J\u0019\u0010\u007f\u001a\u00020\b2\b\b\u0001\u0010~\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u007f\u0010/J\u001b\u0010\u0080\u0001\u001a\u00020\b2\b\b\u0001\u0010R\u001a\u00020\u001eH\u0016¢\u0006\u0005\b\u0080\u0001\u0010/J\u0011\u0010\u0081\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0081\u0001\u0010\u0016J\u0011\u0010\u0082\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0082\u0001\u0010\u0016J\u0011\u0010\u0083\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0083\u0001\u0010\u0016J\u0011\u0010\u0084\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0084\u0001\u0010\u0016J\u0011\u0010\u0085\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0085\u0001\u0010\u0016J\u001a\u0010\u0087\u0001\u001a\u00020\b2\u0007\u0010\u0086\u0001\u001a\u00020?H\u0016¢\u0006\u0005\b\u0087\u0001\u0010}J\u0011\u0010\u0088\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0088\u0001\u0010\u0016J\u001b\u0010\u0089\u0001\u001a\u00020\b2\b\b\u0001\u0010R\u001a\u00020\u001eH\u0016¢\u0006\u0005\b\u0089\u0001\u0010/J\u0011\u0010\u008a\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u008a\u0001\u0010\u0016J2\u0010\u008d\u0001\u001a\u00020\b2\b\b\u0001\u0010R\u001a\u00020\u001e2\t\b\u0001\u0010\u008b\u0001\u001a\u00020\u001e2\t\b\u0001\u0010\u008c\u0001\u001a\u00020\u001eH\u0016¢\u0006\u0006\b\u008d\u0001\u0010\u008e\u0001J\u0011\u0010\u008f\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u008f\u0001\u0010\u0016J$\u0010\u0092\u0001\u001a\u00020\b2\u0007\u0010\u0090\u0001\u001a\u00020?2\u0007\u0010\u0091\u0001\u001a\u00020?H\u0016¢\u0006\u0006\b\u0092\u0001\u0010\u0093\u0001J\u0011\u0010\u0094\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0094\u0001\u0010\u0016J\u001b\u0010\u0095\u0001\u001a\u00020\b2\b\b\u0001\u0010R\u001a\u00020\u001eH\u0016¢\u0006\u0005\b\u0095\u0001\u0010/J\u0011\u0010\u0096\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0096\u0001\u0010\u0016J%\u0010\u009a\u0001\u001a\u00020\b2\b\u0010\u0098\u0001\u001a\u00030\u0097\u00012\u0007\u0010\u0099\u0001\u001a\u00020\u001eH\u0016¢\u0006\u0006\b\u009a\u0001\u0010\u009b\u0001J\u0011\u0010\u009c\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u009c\u0001\u0010\u0016J/\u0010 \u0001\u001a\u00020\b2\t\u0010\u009d\u0001\u001a\u0004\u0018\u00010?2\u0007\u0010\u009e\u0001\u001a\u00020?2\u0007\u0010\u009f\u0001\u001a\u00020\u0006H\u0016¢\u0006\u0006\b \u0001\u0010¡\u0001J\u0011\u0010¢\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b¢\u0001\u0010\u0016J\u001c\u0010¤\u0001\u001a\u00020\b2\t\b\u0001\u0010£\u0001\u001a\u00020\u001eH\u0016¢\u0006\u0005\b¤\u0001\u0010/J\u0011\u0010¥\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b¥\u0001\u0010\u0016J\u001a\u0010¦\u0001\u001a\u00020\b2\u0007\u0010£\u0001\u001a\u00020\u001eH\u0016¢\u0006\u0005\b¦\u0001\u0010/J\u0011\u0010§\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b§\u0001\u0010\u0016J/\u0010¨\u0001\u001a\u00020\b2\t\u0010\u009d\u0001\u001a\u0004\u0018\u00010?2\u0007\u0010\u009e\u0001\u001a\u00020?2\u0007\u0010\u009f\u0001\u001a\u00020\u0006H\u0016¢\u0006\u0006\b¨\u0001\u0010¡\u0001J\u0011\u0010©\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b©\u0001\u0010\u0016J#\u0010\u00ad\u0001\u001a\u00020\b2\u000f\u0010¬\u0001\u001a\n\u0012\u0005\u0012\u00030«\u00010ª\u0001H\u0016¢\u0006\u0006\b\u00ad\u0001\u0010®\u0001J\u0011\u0010¯\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b¯\u0001\u0010\u0016J\u0011\u0010°\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b°\u0001\u0010\u0016J\u0011\u0010±\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b±\u0001\u0010\u0016J&\u0010¶\u0001\u001a\u00020\b2\b\u0010³\u0001\u001a\u00030²\u00012\b\u0010µ\u0001\u001a\u00030´\u0001H\u0016¢\u0006\u0006\b¶\u0001\u0010·\u0001J&\u0010¹\u0001\u001a\u00020\b2\b\u0010³\u0001\u001a\u00030¸\u00012\b\u0010µ\u0001\u001a\u00030´\u0001H\u0016¢\u0006\u0006\b¹\u0001\u0010º\u0001J\u0011\u0010»\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b»\u0001\u0010\u0016J\u001c\u0010¾\u0001\u001a\u00020\b2\b\u0010½\u0001\u001a\u00030¼\u0001H\u0016¢\u0006\u0006\b¾\u0001\u0010¿\u0001J\u0011\u0010À\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\bÀ\u0001\u0010\u0016J\u0011\u0010Á\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\bÁ\u0001\u0010\u0016J\u001c\u0010Ã\u0001\u001a\u00020\b2\t\b\u0001\u0010Â\u0001\u001a\u00020\u001eH\u0016¢\u0006\u0005\bÃ\u0001\u0010/J\u001c\u0010Å\u0001\u001a\u00020\b2\t\b\u0001\u0010Ä\u0001\u001a\u00020\u001eH\u0016¢\u0006\u0005\bÅ\u0001\u0010/J\u001a\u0010Ç\u0001\u001a\u00020\b2\u0007\u0010Æ\u0001\u001a\u00020?H\u0016¢\u0006\u0005\bÇ\u0001\u0010}J\u0011\u0010È\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\bÈ\u0001\u0010\u0016J\u0011\u0010É\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\bÉ\u0001\u0010\u0016J\u0011\u0010Ê\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\bÊ\u0001\u0010\u0016J\u0011\u0010Ë\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\bË\u0001\u0010\u0016J\u0012\u0010Ì\u0001\u001a\u00020\u0006H\u0016¢\u0006\u0006\bÌ\u0001\u0010Í\u0001J\u001c\u0010Ð\u0001\u001a\u00020\b2\b\u0010Ï\u0001\u001a\u00030Î\u0001H\u0016¢\u0006\u0006\bÐ\u0001\u0010Ñ\u0001J\u001c\u0010Ò\u0001\u001a\u00020\b2\b\u0010\u0098\u0001\u001a\u00030\u0097\u0001H\u0016¢\u0006\u0006\bÒ\u0001\u0010Ó\u0001J\u001b\u0010Õ\u0001\u001a\u00020\b2\u0007\u0010Ô\u0001\u001a\u00020!H\u0016¢\u0006\u0006\bÕ\u0001\u0010Ö\u0001J\u001c\u0010×\u0001\u001a\u00020\b2\b\u0010\u0098\u0001\u001a\u00030\u0097\u0001H\u0016¢\u0006\u0006\b×\u0001\u0010Ó\u0001J3\u0010Û\u0001\u001a\u00020\b2\t\u0010Ø\u0001\u001a\u0004\u0018\u00010?2\t\u0010Ù\u0001\u001a\u0004\u0018\u00010?2\t\u0010Ú\u0001\u001a\u0004\u0018\u00010?H\u0016¢\u0006\u0006\bÛ\u0001\u0010Ü\u0001J#\u0010Ý\u0001\u001a\u00020\b2\u0007\u0010Ù\u0001\u001a\u00020?2\u0006\u0010X\u001a\u00020[H\u0016¢\u0006\u0006\bÝ\u0001\u0010Þ\u0001J&\u0010á\u0001\u001a\u00020\b2\t\u0010ß\u0001\u001a\u0004\u0018\u00010?2\u0007\u0010à\u0001\u001a\u00020?H\u0016¢\u0006\u0006\bá\u0001\u0010\u0093\u0001J\u0011\u0010â\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\bâ\u0001\u0010\u0016J$\u0010ä\u0001\u001a\u00020\b2\u0007\u0010£\u0001\u001a\u00020\u001e2\u0007\u0010ã\u0001\u001a\u00020\u001eH\u0016¢\u0006\u0006\bä\u0001\u0010å\u0001J\u0019\u0010æ\u0001\u001a\u00020\b2\u0006\u0010%\u001a\u00020\u0006H\u0016¢\u0006\u0005\bæ\u0001\u0010\nJ%\u0010ê\u0001\u001a\u00020\b2\b\u0010è\u0001\u001a\u00030ç\u00012\u0007\u0010é\u0001\u001a\u00020?H\u0016¢\u0006\u0006\bê\u0001\u0010ë\u0001J\u0014\u0010ì\u0001\u001a\u0004\u0018\u00010?H\u0016¢\u0006\u0006\bì\u0001\u0010í\u0001J\u0017\u0010î\u0001\u001a\b\u0012\u0004\u0012\u00020d0cH\u0016¢\u0006\u0005\bî\u0001\u0010fJ\u0011\u0010ï\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\bï\u0001\u0010\u0016J\u0011\u0010ð\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\bð\u0001\u0010\u0016J\u0011\u0010ñ\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\bñ\u0001\u0010\u0016J\u001c\u0010ô\u0001\u001a\u00020\b2\b\u0010ó\u0001\u001a\u00030ò\u0001H\u0016¢\u0006\u0006\bô\u0001\u0010õ\u0001J\u0011\u0010ö\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\bö\u0001\u0010\u0016J\u0011\u0010÷\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b÷\u0001\u0010\u0016J\u001c\u0010ú\u0001\u001a\u00020\b2\b\u0010ù\u0001\u001a\u00030ø\u0001H\u0016¢\u0006\u0006\bú\u0001\u0010û\u0001J\u0011\u0010ü\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\bü\u0001\u0010\u0016J\u0011\u0010ý\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\bý\u0001\u0010\u0016J\u001a\u0010ÿ\u0001\u001a\u00020\b2\u0007\u0010þ\u0001\u001a\u00020\u0006H\u0016¢\u0006\u0005\bÿ\u0001\u0010\nJ\u0011\u0010\u0080\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0080\u0002\u0010\u0016J\u0011\u0010\u0081\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0081\u0002\u0010\u0016J\u0011\u0010\u0082\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0082\u0002\u0010\u0016J\u0011\u0010\u0083\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0083\u0002\u0010\u0016J\u0011\u0010\u0084\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0084\u0002\u0010\u0016J\u001a\u0010\u0086\u0002\u001a\u00020\b2\u0007\u0010\u0085\u0002\u001a\u00020\u0006H\u0016¢\u0006\u0005\b\u0086\u0002\u0010\nJ\u0011\u0010\u0087\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0087\u0002\u0010\u0016J\u0011\u0010\u0088\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0088\u0002\u0010\u0016J\u0011\u0010\u0089\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0089\u0002\u0010\u0016J\u0011\u0010\u008a\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\b\u008a\u0002\u0010\u0016J\u001c\u0010\u008b\u0002\u001a\u00020\b2\b\u0010\u0098\u0001\u001a\u00030\u0097\u0001H\u0016¢\u0006\u0006\b\u008b\u0002\u0010Ó\u0001J\u001c\u0010\u008d\u0002\u001a\u00020\b2\t\b\u0001\u0010\u008c\u0002\u001a\u00020\u001eH\u0016¢\u0006\u0005\b\u008d\u0002\u0010/J\u001a\u0010\u008e\u0002\u001a\u00020\b2\u0007\u0010\u008c\u0002\u001a\u00020?H\u0016¢\u0006\u0005\b\u008e\u0002\u0010}J\u0011\u0010\u008f\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\b\u008f\u0002\u0010\u0016J\u0011\u0010\u0090\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0090\u0002\u0010\u0016J\u0011\u0010\u0091\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0091\u0002\u0010\u0016J\u0011\u0010\u0092\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0092\u0002\u0010\u0016J\u0011\u0010\u0093\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0093\u0002\u0010\u0016J\u0011\u0010\u0094\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0094\u0002\u0010\u0016J\u001e\u0010\u0097\u0002\u001a\u00020\b2\n\u0010\u0096\u0002\u001a\u0005\u0018\u00010\u0095\u0002H\u0016¢\u0006\u0006\b\u0097\u0002\u0010\u0098\u0002J\u001c\u0010\u009b\u0002\u001a\u00020\b2\b\u0010\u009a\u0002\u001a\u00030\u0099\u0002H\u0016¢\u0006\u0006\b\u009b\u0002\u0010\u009c\u0002J\u0012\u0010\u009d\u0002\u001a\u00020\u0006H\u0016¢\u0006\u0006\b\u009d\u0002\u0010Í\u0001J\u0011\u0010\u009e\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\b\u009e\u0002\u0010\u0016J\u001a\u0010 \u0002\u001a\u00020\b2\u0007\u0010\u009f\u0002\u001a\u00020\u0006H\u0016¢\u0006\u0005\b \u0002\u0010\nJ;\u0010¦\u0002\u001a\u00020\b2\b\u0010¢\u0002\u001a\u00030¡\u00022\t\u0010£\u0002\u001a\u0004\u0018\u00010?2\t\u0010¤\u0002\u001a\u0004\u0018\u00010?2\u0007\u0010¥\u0002\u001a\u00020\u0006H\u0016¢\u0006\u0006\b¦\u0002\u0010§\u0002J\u001b\u0010©\u0002\u001a\u00020\u00062\u0007\u0010\f\u001a\u00030¨\u0002H\u0016¢\u0006\u0006\b©\u0002\u0010ª\u0002J%\u0010«\u0002\u001a\u00020\b2\u0007\u0010\f\u001a\u00030¨\u00022\b\u0010\u0098\u0001\u001a\u00030\u0097\u0001H\u0016¢\u0006\u0006\b«\u0002\u0010¬\u0002J\u0011\u0010\u00ad\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\b\u00ad\u0002\u0010\u0016J+\u0010°\u0002\u001a\u00020\b2\u0007\u0010®\u0002\u001a\u00020?2\u000e\u0010¯\u0002\u001a\t\u0012\u0004\u0012\u00020?0ª\u0001H\u0016¢\u0006\u0006\b°\u0002\u0010±\u0002J\u001c\u0010´\u0002\u001a\u00020\b2\b\u0010³\u0002\u001a\u00030²\u0002H\u0016¢\u0006\u0006\b´\u0002\u0010µ\u0002J\u001c\u0010¸\u0002\u001a\u00020\b2\b\u0010·\u0002\u001a\u00030¶\u0002H\u0016¢\u0006\u0006\b¸\u0002\u0010¹\u0002J\u0011\u0010º\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\bº\u0002\u0010\u0016J\u0011\u0010»\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\b»\u0002\u0010\u0016J\u001c\u0010¼\u0002\u001a\u00020\b2\b\u0010·\u0002\u001a\u00030¶\u0002H\u0016¢\u0006\u0006\b¼\u0002\u0010¹\u0002J\u0011\u0010½\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\b½\u0002\u0010\u0016J\u0011\u0010¾\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\b¾\u0002\u0010\u0016J\u001c\u0010¿\u0002\u001a\u00020\b2\b\u0010\u0098\u0001\u001a\u00030\u0097\u0001H\u0016¢\u0006\u0006\b¿\u0002\u0010Ó\u0001J\u0011\u0010À\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\bÀ\u0002\u0010\u0016J\u0011\u0010Á\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\bÁ\u0002\u0010\u0016J\u0011\u0010Â\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\bÂ\u0002\u0010\u0016J\u0011\u0010Ã\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\bÃ\u0002\u0010\u0016J\u001c\u0010Æ\u0002\u001a\u00020\b2\b\u0010Å\u0002\u001a\u00030Ä\u0002H\u0016¢\u0006\u0006\bÆ\u0002\u0010Ç\u0002J\u001c\u0010È\u0002\u001a\u00020\b2\b\u0010\u0098\u0001\u001a\u00030\u0097\u0001H\u0016¢\u0006\u0006\bÈ\u0002\u0010Ó\u0001J\u0019\u0010É\u0002\u001a\u00020\b2\u0006\u0010%\u001a\u00020\u0006H\u0016¢\u0006\u0005\bÉ\u0002\u0010\nJ0\u0010Ë\u0002\u001a\u00020\b2\b\u0010\u0098\u0001\u001a\u00030\u0097\u00012\u0007\u0010Ù\u0001\u001a\u00020?2\t\u0010Ê\u0002\u001a\u0004\u0018\u00010?H\u0016¢\u0006\u0006\bË\u0002\u0010Ì\u0002J\u0011\u0010Í\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\bÍ\u0002\u0010\u0016J\u0011\u0010Î\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\bÎ\u0002\u0010\u0016J1\u0010Ñ\u0002\u001a\u00020\b2\b\u0010Ð\u0002\u001a\u00030Ï\u00022\b\u0010Å\u0002\u001a\u00030Ä\u00022\t\u0010Â\u0001\u001a\u0004\u0018\u00010?H\u0016¢\u0006\u0006\bÑ\u0002\u0010Ò\u0002J\u0011\u0010Ó\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\bÓ\u0002\u0010\u0016J\u0011\u0010Ô\u0002\u001a\u00020\bH\u0016¢\u0006\u0005\bÔ\u0002\u0010\u0016J\u001c\u0010Õ\u0002\u001a\u00020\b2\b\u0010\u0098\u0001\u001a\u00030\u0097\u0001H\u0016¢\u0006\u0006\bÕ\u0002\u0010Ó\u0001R*\u0010Ý\u0002\u001a\u00030Ö\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b×\u0002\u0010Ø\u0002\u001a\u0006\bÙ\u0002\u0010Ú\u0002\"\u0006\bÛ\u0002\u0010Ü\u0002R*\u0010å\u0002\u001a\u00030Þ\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bß\u0002\u0010à\u0002\u001a\u0006\bá\u0002\u0010â\u0002\"\u0006\bã\u0002\u0010ä\u0002R\u001c\u0010é\u0002\u001a\u0005\u0018\u00010æ\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bç\u0002\u0010è\u0002R$\u0010î\u0002\u001a\u0004\u0018\u00010\u001e8B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bê\u0002\u0010ë\u0002\u001a\u0006\bì\u0002\u0010í\u0002R*\u0010·\u0002\u001a\u00030ï\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bð\u0002\u0010ñ\u0002\u001a\u0006\bò\u0002\u0010ó\u0002\"\u0006\bô\u0002\u0010õ\u0002R%\u0010ú\u0002\u001a\u0005\u0018\u00010ö\u00028B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b÷\u0002\u0010ë\u0002\u001a\u0006\bø\u0002\u0010ù\u0002R*\u0010\u0082\u0003\u001a\u00030û\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bü\u0002\u0010ý\u0002\u001a\u0006\bþ\u0002\u0010ÿ\u0002\"\u0006\b\u0080\u0003\u0010\u0081\u0003R\u0019\u0010\u0085\u0003\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0003\u0010\u0084\u0003R)\u0010\u0089\u0003\u001a\t\u0012\u0004\u0012\u00020\u000f0ª\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0086\u0003\u0010ë\u0002\u001a\u0006\b\u0087\u0003\u0010\u0088\u0003R*\u0010\u0091\u0003\u001a\u00030\u008a\u00038\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u008b\u0003\u0010\u008c\u0003\u001a\u0006\b\u008d\u0003\u0010\u008e\u0003\"\u0006\b\u008f\u0003\u0010\u0090\u0003R*\u0010\u0099\u0003\u001a\u00030\u0092\u00038\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u0093\u0003\u0010\u0094\u0003\u001a\u0006\b\u0095\u0003\u0010\u0096\u0003\"\u0006\b\u0097\u0003\u0010\u0098\u0003R\u001a\u0010\u009d\u0003\u001a\u00030\u009a\u00038\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009b\u0003\u0010\u009c\u0003R*\u0010£\u0003\u001a\u0013\u0012\u0005\u0012\u00030\u009f\u0003\u0012\u0005\u0012\u00030 \u0003\u0018\u00010\u009e\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¡\u0003\u0010¢\u0003R#\u0010©\u0003\u001a\u00030¤\u00038B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¥\u0003\u0010¦\u0003\u001a\u0006\b§\u0003\u0010¨\u0003R*\u0010±\u0003\u001a\u00030ª\u00038\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b«\u0003\u0010¬\u0003\u001a\u0006\b\u00ad\u0003\u0010®\u0003\"\u0006\b¯\u0003\u0010°\u0003R\u001a\u0010µ\u0003\u001a\u00030²\u00038\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b³\u0003\u0010´\u0003R!\u0010¸\u0003\u001a\u00020\u001e8B@\u0002X\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b4\u0010ë\u0002\u001a\u0006\b¶\u0003\u0010·\u0003¨\u0006¼\u0003"}, d2 = {"Le/a/g/a/b/a;", "Landroidx/fragment/app/Fragment;", "Le/a/g/a/b/h;", "Le/a/g/j/t;", "Le/a/x3/h/g;", "Le/a/g/a/d;", "", "isAdsVisible", "Ls1/s;", "VA", "(Z)V", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "onAttach", "(Landroid/content/Context;)V", "Landroid/view/View;", ViewAction.VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "()V", "onPause", "outState", "onSaveInstanceState", "(Landroid/os/Bundle;)V", "Ra", "mi", "pg", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "visible", "J2", "ak", "Landroid/net/Uri;", "uri", "jw", "(Landroid/net/Uri;)V", "Xz", RemoteMessageConst.Notification.COLOR, "Ut", "(I)V", "cv", "drawable", "mr", "logo", "w", "G0", "y2", "O1", "X0", "v0", "logoColor", "dividerColor", "goldShineLogo", "ru", "(IIZ)V", "", "carrierName", "simIcon", "Ea", "(Ljava/lang/String;I)V", "Dk", UpdateKey.STATUS, "iconRes", "bk", "(Ljava/lang/String;Ljava/lang/Integer;)V", "Ga", "B7", "Z8", "ow", "number", "q3", "isPhonebookContact", "Y7", "(Ljava/lang/String;Z)V", "textColor", "i1", "U0", "v5", "Le/a/k/a/k/y;", "videoXConfig", "analyticsContext", "tu", "(Le/a/k/a/k/y;Ljava/lang/String;)V", "Lcom/truecaller/acs/analytics/AnalyticsContext;", "Vz", "(Le/a/k/a/k/y;Lcom/truecaller/acs/analytics/AnalyticsContext;)V", "mute", "wz", "Le/a/k/a/k/z/a;", "lj", "()Le/a/k/a/k/z/a;", "Lq3/a/x2/i1;", "Le/a/k/a/k/z/b;", "Mg", "()Lq3/a/x2/i1;", "da", "ma", "Le/a/k/a/k/l;", DTBMetricsConfiguration.CONFIG_DIR, "V1", "(Le/a/k/a/k/l;Ljava/lang/String;)V", RemoteMessageConst.Notification.VISIBILITY, "aA", "Bh", "at", "sk", "showMuteButton", "g8", "cA", "k6", "Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType;", "videoExpansionType", "pe", "(Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType;)V", "profileName", "Aq", "setName", "(Ljava/lang/String;)V", "textSize", "S0", "p0", "Y3", "Fd", "Rq", "dd", "Si", "altName", "setAltName", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "F1", "M4", "backgroundColor", "backgroundDrawable", "kc", "(III)V", "Yv", "jobTitle", "company", "Pj", "(Ljava/lang/String;Ljava/lang/String;)V", "w5", "s4", "f5", "Lcom/truecaller/data/entity/Contact;", AnalyticsConstants.CONTACT, "searchType", "r8", "(Lcom/truecaller/data/entity/Contact;I)V", "tv", "iconUrl", "title", "clickable", "Hz", "(Ljava/lang/String;Ljava/lang/String;Z)V", "P0", "foregroundColor", "pu", "nk", "Lr", "f7", "gb", "b5", "", "Le/a/g/a/f;", "actionButtons", "Ds", "(Ljava/util/List;)V", "Wc", "z8", "finish", "Le/a/i/f0/m/d;", "ad", "Le/a/i/g;", "layout", "i6", "(Le/a/i/f0/m/d;Le/a/i/g;)V", "Le/a/i/c/a/c;", "I3", "(Le/a/i/c/a/c;Le/a/i/g;)V", "S1", "Lcom/truecaller/spamcategories/SpamCategoryRequest;", "spamCategoryRequest", "lz", "(Lcom/truecaller/spamcategories/SpamCategoryRequest;)V", "cr", "Mp", "message", "a", "gradientColor", "df", "sponsor", "vi", "J8", "onDestroyView", "ct", "zy", "R0", "()Z", "Le/a/g/a/b/s;", "listener", "m8", "(Le/a/g/a/b/s;)V", "K8", "(Lcom/truecaller/data/entity/Contact;)V", "intent", "Ig", "(Landroid/content/Intent;)V", AbstractLocaleUtils.ISO_US, "displayName", "normalizedNumber", "rawNumber", "rh", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "pl", "(Ljava/lang/String;Lcom/truecaller/acs/analytics/AnalyticsContext;)V", AnalyticsConstants.TIMEZONE, "address", "h2", "oy", "backgroundRes", "qv", "(II)V", "d4", "Lcom/truecaller/videocallerid/utils/OnboardingType;", "onboardingType", "contactName", "wr", "(Lcom/truecaller/videocallerid/utils/OnboardingType;Ljava/lang/String;)V", "Bx", "()Ljava/lang/String;", "getVideoPlayingState", "onDestroy", "tl", "ky", "", "aggregatedContactId", "ik", "(J)V", "Us", "cu", "Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;", "feedbackQuestion", "En", "(Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;)V", "yw", "ck", AnalyticsConstants.SHOW, "Ey", "rx", "ta", "l7", "De", "tm", "isCredPrivilege", "qk", "Vw", "ax", "tg", "Cv", "e1", "label", "ya", "Ag", "Zt", "By", "pa", "Lx", "aw", "Z7", "Lcom/truecaller/data/entity/SpamCategoryModel;", "category", "setSpamCategoryIcon", "(Lcom/truecaller/data/entity/SpamCategoryModel;)V", "Le/a/g/a/f0/a/e;", "rateAppPromo", "Oa", "(Le/a/g/a/f0/a/e;)V", "wa", "Th", "hasFocus", "d8", "Le/a/e0/b;", "afterBlockPromo", "spammerName", "spammerAddress", "isTopSpammer", "op", "(Le/a/e0/b;Ljava/lang/String;Ljava/lang/String;Z)V", "Lcom/truecaller/acs/util/AcsReferralHelper$ReferralLaunchContext;", "bq", "(Lcom/truecaller/acs/util/AcsReferralHelper$ReferralLaunchContext;)Z", "Oi", "(Lcom/truecaller/acs/util/AcsReferralHelper$ReferralLaunchContext;Lcom/truecaller/data/entity/Contact;)V", "dy", "displayNameOrNumber", "numbers", "Mr", "(Ljava/lang/String;Ljava/util/List;)V", "Lcom/truecaller/acs/ui/ActionButtonType;", "actionButtonType", "ir", "(Lcom/truecaller/acs/ui/ActionButtonType;)V", "Le/a/m5/c;", "presenter", "P", "(Le/a/m5/c;)V", "n", "sj", "W5", "a4", "C0", "Hu", "rz", "wg", "gm", "Nr", "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;", "source", "Yc", "(Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;)V", "hd", "CA", "countryCode", "ag", "(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ljava/lang/String;)V", "Fw", "ot", "Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;", "callOptions", "Gx", "(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;Ljava/lang/String;)V", "Kn", "tq", "Pn", "Le/a/g/j/m;", "i", "Le/a/g/j/m;", "getInCallUIHelper", "()Le/a/g/j/m;", "setInCallUIHelper", "(Le/a/g/j/m;)V", "inCallUIHelper", "Le/a/g/j/b;", "o", "Le/a/g/j/b;", "getAcsAdsViewManager", "()Le/a/g/j/b;", "setAcsAdsViewManager", "(Le/a/g/j/b;)V", "acsAdsViewManager", "Le/a/g/a/b/t;", "t", "Le/a/g/a/b/t;", "phoneUnlockedReceiver", "x", "Ls1/g;", "TA", "()Ljava/lang/Integer;", "tagViewPadding", "Le/a/g/a/b/g;", "e", "Le/a/g/a/b/g;", "RA", "()Le/a/g/a/b/g;", "setPresenter", "(Le/a/g/a/b/g;)V", "", "y", "UA", "()Ljava/lang/Float;", "tagViewTitleSize", "Lcom/truecaller/acs/util/AcsReferralHelper;", "l", "Lcom/truecaller/acs/util/AcsReferralHelper;", "getReferralHelper", "()Lcom/truecaller/acs/util/AcsReferralHelper;", "setReferralHelper", "(Lcom/truecaller/acs/util/AcsReferralHelper;)V", "referralHelper", "u", "Z", "animationPlayed", "v", "getSpamPremiumPromoOverlappedViews", "()Ljava/util/List;", "spamPremiumPromoOverlappedViews", "Le/a/o/b/m;", "p", "Le/a/o/b/m;", "getContextCallRouter", "()Le/a/o/b/m;", "setContextCallRouter", "(Le/a/o/b/m;)V", "contextCallRouter", "Le/a/u3/g;", "m", "Le/a/u3/g;", "getFeatureRegistry", "()Le/a/u3/g;", "setFeatureRegistry", "(Le/a/u3/g;)V", "featureRegistry", "e/a/g/a/b/a$j", "z", "Le/a/g/a/b/a$j;", "rateAppListener", "Le/f/a/r/k/d;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/graphics/drawable/Drawable;", "s", "Le/f/a/r/k/d;", "customTarget", "Le/a/g/h/a;", "q", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/g/h/a;", "binding", "Le/a/g/j/r;", "f", "Le/a/g/j/r;", "getPhonebookHelper", "()Le/a/g/j/r;", "setPhonebookHelper", "(Le/a/g/j/r;)V", "phonebookHelper", "Le/a/b0/a/b/a;", "r", "Le/a/b0/a/b/a;", "avatarPresenter", "SA", "()I", "tagViewBackground", "<init>", "B", AbstractC2405c.f7629a, "acs_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.g.a.b.a */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a.class */
public final class C14118a extends AbstractC14166r implements AbstractC14149h, AbstractC14313t, AbstractC21409g, AbstractC14183d {

    /* renamed from: A */
    public static final /* synthetic */ l[] f40795A = {C22128a.m8621g0(C14118a.class, "binding", "getBinding()Lcom/truecaller/acs/databinding/FragmentAcsFullscreenBinding;", 0)};

    /* renamed from: B */
    public static final C14121c f40796B = new C14121c(null);
    @Inject

    /* renamed from: e */
    public AbstractC14148g f40797e;
    @Inject

    /* renamed from: f */
    public AbstractC14307r f40798f;
    @Inject

    /* renamed from: g */
    public C14290k f40799g;
    @Inject

    /* renamed from: h */
    public C14300p f40800h;
    @Inject

    /* renamed from: i */
    public AbstractC14294m f40801i;
    @Inject

    /* renamed from: j */
    public C14314u f40802j;
    @Inject

    /* renamed from: k */
    public C14292l f40803k;
    @Inject

    /* renamed from: l */
    public AcsReferralHelper f40804l;
    @Inject

    /* renamed from: m */
    public C20592g f40805m;
    @Inject

    /* renamed from: n */
    public C14303q0 f40806n;
    @Inject

    /* renamed from: o */
    public AbstractC14269b f40807o;
    @Inject

    /* renamed from: p */
    public AbstractC18742m f40808p;

    /* renamed from: r */
    public C8243a f40810r;

    /* renamed from: s */
    public d<ConstraintLayout, Drawable> f40811s;

    /* renamed from: t */
    public C14168t f40812t;

    /* renamed from: u */
    public boolean f40813u;

    /* renamed from: q */
    public final ViewBindingProperty f40809q = new C19350a(new C14120b());

    /* renamed from: v */
    public final g f40814v = C25225a.m3978P1(new C14139s());

    /* renamed from: w */
    public final g f40815w = C25225a.m3978P1(C14140t.f40840b);

    /* renamed from: x */
    public final g f40816x = C25225a.m3978P1(new C14141u());

    /* renamed from: y */
    public final g f40817y = C25225a.m3978P1(new C14142v());

    /* renamed from: z */
    public final C14128j f40818z = new C14128j();

    /* renamed from: e.a.g.a.b.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/g/a/b/a$a.class */
    public static final class View$OnClickListenerC14119a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f40819a;

        /* renamed from: b */
        public final /* synthetic */ Object f40820b;

        public View$OnClickListenerC14119a(int i, Object obj) {
            this.f40819a = i;
            this.f40820b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f40819a;
            if (i == 0) {
                ((C14153l) ((C14118a) this.f40820b).m20723RA()).mo20428gk();
            } else if (i == 1) {
                ((AbstractC14205m) ((C14118a) this.f40820b).m20723RA()).m20421nk();
            } else if (i == 2) {
                ((AbstractC14205m) ((C14118a) this.f40820b).m20723RA()).m20431dk();
            } else if (i != 3) {
                throw null;
            } else {
                ((AbstractC14205m) ((C14118a) this.f40820b).m20723RA()).m20431dk();
            }
        }
    }

    /* renamed from: e.a.g.a.b.a$b */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$b.class */
    public static final class C14120b extends m implements s1.z.b.l<C14118a, C14256a> {
        public C14120b() {
            super(1);
        }

        /* renamed from: d */
        public Object m20718d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C2778R.C2780id.acsAdsContainer;
            View findViewById = requireView.findViewById(i);
            if (findViewById != null) {
                C14259d m20311a = C14259d.m20311a(findViewById);
                i = C2778R.C2780id.action_container;
                ActionButtonsView actionButtonsView = (ActionButtonsView) requireView.findViewById(i);
                if (actionButtonsView != null) {
                    i = C2778R.C2780id.ads_view_video_frame;
                    FrameLayout frameLayout = (FrameLayout) requireView.findViewById(i);
                    if (frameLayout != null) {
                        i = C2778R.C2780id.button_close_acs;
                        ImageButton imageButton = (ImageButton) requireView.findViewById(i);
                        if (imageButton != null) {
                            i = C2778R.C2780id.button_container;
                            LinearLayout linearLayout = (LinearLayout) requireView.findViewById(i);
                            if (linearLayout != null) {
                                i = C2778R.C2780id.button_mute_vcid;
                                AppCompatImageView appCompatImageView = (AppCompatImageView) requireView.findViewById(i);
                                if (appCompatImageView != null) {
                                    i = C2778R.C2780id.button_view_profile;
                                    Button button = (Button) requireView.findViewById(i);
                                    if (button != null) {
                                        i = C2778R.C2780id.caller_gradient;
                                        CallerGradientView callerGradientView = (CallerGradientView) requireView.findViewById(i);
                                        if (callerGradientView != null) {
                                            i = C2778R.C2780id.fullscreen_profile_picture;
                                            FullScreenProfilePictureView fullScreenProfilePictureView = (FullScreenProfilePictureView) requireView.findViewById(i);
                                            if (fullScreenProfilePictureView != null) {
                                                i = C2778R.C2780id.fullscreen_video_player;
                                                FullScreenVideoPlayerView fullScreenVideoPlayerView = (FullScreenVideoPlayerView) requireView.findViewById(i);
                                                if (fullScreenVideoPlayerView != null) {
                                                    i = C2778R.C2780id.group_ad;
                                                    Group group = (Group) requireView.findViewById(i);
                                                    if (group != null) {
                                                        i = C2778R.C2780id.guide_with_top_window_inset;
                                                        Guideline guideline = (Guideline) requireView.findViewById(i);
                                                        if (guideline != null) {
                                                            i = C2778R.C2780id.header_barrier;
                                                            Barrier barrier = (Barrier) requireView.findViewById(i);
                                                            if (barrier != null) {
                                                                i = C2778R.C2780id.image_partner_logo;
                                                                ImageView imageView = (ImageView) requireView.findViewById(i);
                                                                if (imageView != null) {
                                                                    i = C2778R.C2780id.image_truecaller_logo;
                                                                    GoldShineImageView goldShineImageView = (GoldShineImageView) requireView.findViewById(i);
                                                                    if (goldShineImageView != null) {
                                                                        i = C2778R.C2780id.image_truecaller_premium_logo;
                                                                        GoldShineImageView goldShineImageView2 = (GoldShineImageView) requireView.findViewById(i);
                                                                        if (goldShineImageView2 != null) {
                                                                            i = C2778R.C2780id.img_user_badge;
                                                                            ImageView imageView2 = (ImageView) requireView.findViewById(i);
                                                                            if (imageView2 != null) {
                                                                                i = C2778R.C2780id.layout_button_call_me_back;
                                                                                CallMeBackFACSButtonView callMeBackFACSButtonView = (CallMeBackFACSButtonView) requireView.findViewById(i);
                                                                                if (callMeBackFACSButtonView != null) {
                                                                                    i = C2778R.C2780id.onDemandReasonPickerView;
                                                                                    OnDemandCallReasonPickerView onDemandCallReasonPickerView = (OnDemandCallReasonPickerView) requireView.findViewById(i);
                                                                                    if (onDemandCallReasonPickerView != null) {
                                                                                        i = C2778R.C2780id.placeholder_acs_reply;
                                                                                        FrameLayout frameLayout2 = (FrameLayout) requireView.findViewById(i);
                                                                                        if (frameLayout2 != null) {
                                                                                            i = C2778R.C2780id.spam_caller_container;
                                                                                            ConstraintLayout constraintLayout = (ConstraintLayout) requireView.findViewById(i);
                                                                                            if (constraintLayout != null) {
                                                                                                i = C2778R.C2780id.spam_caller_icon;
                                                                                                TintedImageView tintedImageView = (TintedImageView) requireView.findViewById(i);
                                                                                                if (tintedImageView != null) {
                                                                                                    i = C2778R.C2780id.spam_caller_label;
                                                                                                    TextView textView = (TextView) requireView.findViewById(i);
                                                                                                    if (textView != null) {
                                                                                                        i = C2778R.C2780id.text_ad;
                                                                                                        TextView textView2 = (TextView) requireView.findViewById(i);
                                                                                                        if (textView2 != null) {
                                                                                                            i = C2778R.C2780id.text_alt_name;
                                                                                                            GoldShineTextView goldShineTextView = (GoldShineTextView) requireView.findViewById(i);
                                                                                                            if (goldShineTextView != null) {
                                                                                                                i = C2778R.C2780id.text_call_status;
                                                                                                                GoldShineTextView goldShineTextView2 = (GoldShineTextView) requireView.findViewById(i);
                                                                                                                if (goldShineTextView2 != null) {
                                                                                                                    i = C2778R.C2780id.text_call_status_icon;
                                                                                                                    ImageView imageView3 = (ImageView) requireView.findViewById(i);
                                                                                                                    if (imageView3 != null) {
                                                                                                                        i = C2778R.C2780id.text_caller_label;
                                                                                                                        GoldShineTextView goldShineTextView3 = (GoldShineTextView) requireView.findViewById(i);
                                                                                                                        if (goldShineTextView3 != null) {
                                                                                                                            i = C2778R.C2780id.text_job_details;
                                                                                                                            GoldShineTextView goldShineTextView4 = (GoldShineTextView) requireView.findViewById(i);
                                                                                                                            if (goldShineTextView4 != null) {
                                                                                                                                i = C2778R.C2780id.text_number;
                                                                                                                                TextView textView3 = (TextView) requireView.findViewById(i);
                                                                                                                                if (textView3 != null) {
                                                                                                                                    i = C2778R.C2780id.text_phonebook_number;
                                                                                                                                    GoldShineTextView goldShineTextView5 = (GoldShineTextView) requireView.findViewById(i);
                                                                                                                                    if (goldShineTextView5 != null) {
                                                                                                                                        i = C2778R.C2780id.text_profile_name;
                                                                                                                                        GoldShineTextView goldShineTextView6 = (GoldShineTextView) requireView.findViewById(i);
                                                                                                                                        if (goldShineTextView6 != null) {
                                                                                                                                            i = C2778R.C2780id.text_sim_slot;
                                                                                                                                            GoldShineTextView goldShineTextView7 = (GoldShineTextView) requireView.findViewById(i);
                                                                                                                                            if (goldShineTextView7 != null) {
                                                                                                                                                i = C2778R.C2780id.text_sponsored_ad;
                                                                                                                                                TextView textView4 = (TextView) requireView.findViewById(i);
                                                                                                                                                if (textView4 != null) {
                                                                                                                                                    i = C2778R.C2780id.text_verified_business_spam_label;
                                                                                                                                                    TextView textView5 = (TextView) requireView.findViewById(i);
                                                                                                                                                    if (textView5 != null) {
                                                                                                                                                        i = C2778R.C2780id.truecaller_logo_barrier;
                                                                                                                                                        Barrier barrier2 = (Barrier) requireView.findViewById(i);
                                                                                                                                                        if (barrier2 != null) {
                                                                                                                                                            i = C2778R.C2780id.truecontext;
                                                                                                                                                            TrueContext trueContext = (TrueContext) requireView.findViewById(i);
                                                                                                                                                            if (trueContext != null) {
                                                                                                                                                                i = C2778R.C2780id.truecontext_container_barrier;
                                                                                                                                                                Barrier barrier3 = (Barrier) requireView.findViewById(i);
                                                                                                                                                                if (barrier3 != null) {
                                                                                                                                                                    i = C2778R.C2780id.video_avatar_view;
                                                                                                                                                                    AvatarVideoPlayerView avatarVideoPlayerView = (AvatarVideoPlayerView) requireView.findViewById(i);
                                                                                                                                                                    if (avatarVideoPlayerView != null) {
                                                                                                                                                                        i = C2778R.C2780id.video_player_landscape;
                                                                                                                                                                        FullScreenRatioVideoPlayerView fullScreenRatioVideoPlayerView = (FullScreenRatioVideoPlayerView) requireView.findViewById(i);
                                                                                                                                                                        if (fullScreenRatioVideoPlayerView != null) {
                                                                                                                                                                            i = C2778R.C2780id.view_address_timezone;
                                                                                                                                                                            AddressTimezoneView addressTimezoneView = (AddressTimezoneView) requireView.findViewById(i);
                                                                                                                                                                            if (addressTimezoneView != null) {
                                                                                                                                                                                i = C2778R.C2780id.view_logo_divider;
                                                                                                                                                                                View findViewById2 = requireView.findViewById(i);
                                                                                                                                                                                if (findViewById2 != null) {
                                                                                                                                                                                    i = C2778R.C2780id.view_spam_premium_promo;
                                                                                                                                                                                    AcsSpamPremiumPromoView acsSpamPremiumPromoView = (AcsSpamPremiumPromoView) requireView.findViewById(i);
                                                                                                                                                                                    if (acsSpamPremiumPromoView != null) {
                                                                                                                                                                                        i = C2778R.C2780id.view_tag;
                                                                                                                                                                                        TagXView tagXView = (TagXView) requireView.findViewById(i);
                                                                                                                                                                                        if (tagXView != null) {
                                                                                                                                                                                            i = C2778R.C2780id.view_tag_business;
                                                                                                                                                                                            TagXView tagXView2 = (TagXView) requireView.findViewById(i);
                                                                                                                                                                                            if (tagXView2 != null) {
                                                                                                                                                                                                return new C14256a((DismissibleConstraintLayout) requireView, m20311a, actionButtonsView, frameLayout, imageButton, linearLayout, appCompatImageView, button, callerGradientView, fullScreenProfilePictureView, fullScreenVideoPlayerView, group, guideline, barrier, imageView, goldShineImageView, goldShineImageView2, imageView2, callMeBackFACSButtonView, onDemandCallReasonPickerView, frameLayout2, constraintLayout, tintedImageView, textView, textView2, goldShineTextView, goldShineTextView2, imageView3, goldShineTextView3, goldShineTextView4, textView3, goldShineTextView5, goldShineTextView6, goldShineTextView7, textView4, textView5, barrier2, trueContext, barrier3, avatarVideoPlayerView, fullScreenRatioVideoPlayerView, addressTimezoneView, findViewById2, acsSpamPremiumPromoView, tagXView, tagXView2);
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
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.g.a.b.a$c */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$c.class */
    public static final class C14121c {
        public C14121c(f fVar) {
        }
    }

    /* renamed from: e.a.g.a.b.a$d */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$d.class */
    public static final class C14122d extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14122d() {
            super(0);
            C14118a.this = r4;
        }

        public Object invoke() {
            AbstractC14149h abstractC14149h = (AbstractC14149h) ((C14153l) C14118a.this.m20723RA()).f57683a;
            if (abstractC14149h != null) {
                abstractC14149h.mo20498sj();
            }
            return s.a;
        }
    }

    /* renamed from: e.a.g.a.b.a$e */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$e.class */
    public static final class View$OnClickListenerC14123e implements View.OnClickListener {
        public View$OnClickListenerC14123e() {
            C14118a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ((C14153l) C14118a.this.m20723RA()).m20650Xk();
        }
    }

    /* renamed from: e.a.g.a.b.a$f */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$f.class */
    public static final class C14124f extends AbstractC25369b {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14124f(boolean z) {
            super(z);
            C14118a.this = r4;
        }

        @Override // p1727n3.p1728a.AbstractC25369b
        public void handleOnBackPressed() {
            C14153l c14153l = (C14153l) C14118a.this.m20723RA();
            if (!c14153l.m20458Kk()) {
                c14153l.m20461Jj(DismissReason.BACK_BUTTON);
            }
            c14153l.m20651Wk();
        }
    }

    /* renamed from: e.a.g.a.b.a$g */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$g.class */
    public static final class C14125g extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14125g() {
            super(0);
            C14118a.this = r4;
        }

        public Object invoke() {
            C14153l c14153l = (C14153l) C14118a.this.m20723RA();
            Objects.requireNonNull(c14153l);
            c14153l.m20461Jj(DismissReason.SWIPED_TO_DISMISS);
            c14153l.m20651Wk();
            return s.a;
        }
    }

    /* renamed from: e.a.g.a.b.a$h */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$h.class */
    public static final class RunnableC14126h implements Runnable {
        public RunnableC14126h() {
            C14118a.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ((AbstractC14205m) C14118a.this.m20723RA()).m20424kk();
        }
    }

    /* renamed from: e.a.g.a.b.a$i */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$i.class */
    public static final class View$OnApplyWindowInsetsListenerC14127i implements View.OnApplyWindowInsetsListener {
        public View$OnApplyWindowInsetsListenerC14127i() {
            C14118a.this = r4;
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            C14118a c14118a = C14118a.this;
            l[] lVarArr = C14118a.f40795A;
            Guideline guideline = c14118a.m20724QA().f41203m;
            s1.z.c.l.d(windowInsets, "insets");
            guideline.setGuidelineBegin(windowInsets.getSystemWindowInsetTop());
            return windowInsets;
        }
    }

    /* renamed from: e.a.g.a.b.a$j */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$j.class */
    public static final class C14128j implements AbstractC14189b {
        public C14128j() {
            C14118a.this = r4;
        }

        @Override // p193e.p194a.p773g.p774a.p778f0.p779a.AbstractC14189b
        /* renamed from: a */
        public void mo20596a() {
            AbstractC14198h abstractC14198h = (AbstractC14198h) ((AbstractC14205m) C14118a.this.m20723RA()).f57683a;
            if (abstractC14198h != null) {
                abstractC14198h.finish();
            }
        }
    }

    /* renamed from: e.a.g.a.b.a$k */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$k.class */
    public static final class C14129k implements TrueContext.AbstractC4652a {
        public C14129k() {
            C14118a.this = r4;
        }

        @Override // com.truecaller.truecontext.TrueContext.AbstractC4652a
        /* renamed from: a */
        public void mo20717a(boolean z) {
            ((C14153l) C14118a.this.m20723RA()).m20643q7(z);
        }
    }

    /* renamed from: e.a.g.a.b.a$l */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$l.class */
    public static final class KeyguardManager$KeyguardDismissCallbackC14130l extends KeyguardManager.KeyguardDismissCallback {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14167s f40829a;

        public KeyguardManager$KeyguardDismissCallbackC14130l(AbstractC14167s abstractC14167s) {
            this.f40829a = abstractC14167s;
        }

        @Override // android.app.KeyguardManager.KeyguardDismissCallback
        public void onDismissSucceeded() {
            super.onDismissSucceeded();
            this.f40829a.mo20597a();
        }
    }

    /* renamed from: e.a.g.a.b.a$m */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$m.class */
    public static final class C14131m implements FullScreenProfilePictureView.AbstractC3737b {

        /* renamed from: a */
        public final /* synthetic */ FullScreenProfilePictureView f40830a;

        /* renamed from: b */
        public final /* synthetic */ C14118a f40831b;

        /* renamed from: e.a.g.a.b.a$m$a */
        /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$m$a.class */
        public static final class RunnableC14132a implements Runnable {
            public RunnableC14132a() {
                C14131m.this = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C14153l c14153l = (C14153l) C14131m.this.f40831b.m20723RA();
                Objects.requireNonNull(c14153l);
                c14153l.f40853F0 = BackgroundMode.FULL_SCREEN_PROFILE_PICTURE;
                AbstractC14149h abstractC14149h = (AbstractC14149h) c14153l.f57683a;
                if (abstractC14149h != null) {
                    abstractC14149h.mo20706J2(false);
                }
                Contact contact = c14153l.m20451Oj().f11539f;
                if (contact != null) {
                    s1.z.c.l.d(contact, "it");
                    c14153l.m20656Rk(contact);
                }
            }
        }

        /* renamed from: e.a.g.a.b.a$m$b */
        /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$m$b.class */
        public static final class RunnableC14133b implements Runnable {
            public RunnableC14133b() {
                C14131m.this = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C14153l c14153l = (C14153l) C14131m.this.f40831b.m20723RA();
                Objects.requireNonNull(c14153l);
                c14153l.f40853F0 = BackgroundMode.NONE;
                if (c14153l.m20451Oj().f11539f != null) {
                    c14153l.f40853F0 = BackgroundMode.FULL_SCREEN_BACKGROUND;
                    c14153l.f40859L0.m28195a();
                    AbstractC14149h abstractC14149h = (AbstractC14149h) c14153l.f57683a;
                    if (abstractC14149h == null) {
                        return;
                    }
                    abstractC14149h.mo20706J2(true);
                }
            }
        }

        public C14131m(FullScreenProfilePictureView fullScreenProfilePictureView, C14118a c14118a, Uri uri) {
            this.f40830a = fullScreenProfilePictureView;
            this.f40831b = c14118a;
        }

        @Override // com.truecaller.common.p156ui.imageview.FullScreenProfilePictureView.AbstractC3737b
        /* renamed from: a */
        public void mo20716a() {
            this.f40830a.post(new RunnableC14133b());
        }

        @Override // com.truecaller.common.p156ui.imageview.FullScreenProfilePictureView.AbstractC3737b
        /* renamed from: b */
        public void mo20715b() {
            this.f40830a.post(new RunnableC14132a());
        }
    }

    /* renamed from: e.a.g.a.b.a$n */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$n.class */
    public static final class View$OnClickListenerC14134n implements View.OnClickListener {
        public View$OnClickListenerC14134n() {
            C14118a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C14153l c14153l = (C14153l) C14118a.this.m20723RA();
            Boolean bool = c14153l.f40857J0;
            if (bool != null) {
                c14153l.m20645dl(!bool.booleanValue());
            }
        }
    }

    /* renamed from: e.a.g.a.b.a$o */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$o.class */
    public static final class C14135o extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14135o(boolean z) {
            super(0);
            C14118a.this = r4;
        }

        public Object invoke() {
            C14153l c14153l = (C14153l) C14118a.this.m20723RA();
            Boolean bool = c14153l.f41024u;
            if (bool != null) {
                c14153l.m20644el(!bool.booleanValue());
            }
            return s.a;
        }
    }

    /* renamed from: e.a.g.a.b.a$p */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$p.class */
    public static final class DialogInterface$OnClickListenerC14136p implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC14136p() {
            C14118a.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            AbstractC14205m abstractC14205m = (AbstractC14205m) C14118a.this.m20723RA();
            s1.a.a.a.v0.f.d.w2(abstractC14205m, abstractC14205m.f41032y, (j0) null, new C14225t(abstractC14205m, null), 2, (Object) null);
        }
    }

    /* renamed from: e.a.g.a.b.a$q */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$q.class */
    public static final class DialogInterface$OnClickListenerC14137q implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC14137q() {
            C14118a.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            AbstractC14205m abstractC14205m = (AbstractC14205m) C14118a.this.m20723RA();
            s1.a.a.a.v0.f.d.w2(abstractC14205m, abstractC14205m.f41032y, (j0) null, new C14227v(abstractC14205m, null), 2, (Object) null);
        }
    }

    /* renamed from: e.a.g.a.b.a$r */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$r.class */
    public static final class C14138r extends m implements s1.z.b.l<VideoCallerIdAcsMoreOption, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14138r() {
            super(1);
            C14118a.this = r4;
        }

        /* renamed from: d */
        public Object m20714d(Object obj) {
            VideoCallerIdAcsMoreOption videoCallerIdAcsMoreOption = (VideoCallerIdAcsMoreOption) obj;
            s1.z.c.l.e(videoCallerIdAcsMoreOption, "clickedOption");
            ((AbstractC14205m) C14118a.this.m20723RA()).m20422mk(videoCallerIdAcsMoreOption);
            C14303q0 c14303q0 = C14118a.this.f40806n;
            if (c14303q0 != null) {
                c14303q0.m20278a();
                return s.a;
            }
            s1.z.c.l.l("videoCallerIdOptionsPopUpManager");
            throw null;
        }
    }

    /* renamed from: e.a.g.a.b.a$s */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$s.class */
    public static final class C14139s extends m implements a<List<? extends View>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14139s() {
            super(0);
            C14118a.this = r4;
        }

        public Object invoke() {
            C14118a c14118a = C14118a.this;
            l[] lVarArr = C14118a.f40795A;
            Button button = c14118a.m20724QA().f41198h;
            s1.z.c.l.d(button, "binding.buttonViewProfile");
            GoldShineTextView goldShineTextView = C14118a.this.m20724QA().f41180E;
            s1.z.c.l.d(goldShineTextView, "binding.textPhonebookNumber");
            AddressTimezoneView addressTimezoneView = C14118a.this.m20724QA().f41186O;
            s1.z.c.l.d(addressTimezoneView, "binding.viewAddressTimezone");
            return i.T(new View[]{button, goldShineTextView, addressTimezoneView});
        }
    }

    /* renamed from: e.a.g.a.b.a$t */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$t.class */
    public static final class C14140t extends m implements a<Integer> {

        /* renamed from: b */
        public static final C14140t f40840b = new C14140t();

        public C14140t() {
            super(0);
        }

        public /* bridge */ /* synthetic */ Object invoke() {
            return 0;
        }
    }

    /* renamed from: e.a.g.a.b.a$u */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$u.class */
    public static final class C14141u extends m implements a<Integer> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14141u() {
            super(0);
            C14118a.this = r4;
        }

        public Object invoke() {
            Resources resources;
            Context context = C14118a.this.getContext();
            return (context == null || (resources = context.getResources()) == null) ? null : Integer.valueOf(resources.getDimensionPixelSize(C2778R.dimen.control_zero_space));
        }
    }

    /* renamed from: e.a.g.a.b.a$v */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/b/a$v.class */
    public static final class C14142v extends m implements a<Float> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14142v() {
            super(0);
            C14118a.this = r4;
        }

        public Object invoke() {
            Resources resources;
            Context context = C14118a.this.getContext();
            return (context == null || (resources = context.getResources()) == null) ? null : Float.valueOf(resources.getDimension(C2778R.dimen.fullscreen_tag_font_size));
        }
    }

    public C14118a() {
        super(C2778R.layout.fragment_acs_fullscreen);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Ag */
    public void mo20589Ag(String str) {
        s1.z.c.l.e(str, "label");
        TextView textView = m20724QA().f41213w;
        s1.z.c.l.d(textView, "binding.spamCallerLabel");
        textView.setText(str);
        ConstraintLayout constraintLayout = m20724QA().f41211u;
        s1.z.c.l.d(constraintLayout, "binding.spamCallerContainer");
        C19286f.m13683U(constraintLayout, str.length() > 0);
        mo20695Z7();
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Aq */
    public void mo20588Aq(int i) {
        GoldShineTextView goldShineTextView = m20724QA().f41181J;
        s1.z.c.l.d(goldShineTextView, "binding.textProfileName");
        goldShineTextView.setText(getString(i));
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: B7 */
    public void mo20710B7() {
        m20724QA().f41216z.m35618l();
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Bh */
    public AbstractC15864a mo20587Bh() {
        return m20724QA().f41185N.getAudioState();
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: Bx */
    public String mo20709Bx() {
        return m20724QA().f41201k.getVideoUrl();
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: By */
    public void mo20586By() {
        ConstraintLayout constraintLayout = m20724QA().f41211u;
        s1.z.c.l.d(constraintLayout, "binding.spamCallerContainer");
        C19286f.m13684T(constraintLayout);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: C0 */
    public void mo20585C0() {
        m20724QA().f41183L.m34604g1(new C14129k());
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: CA */
    public void mo20584CA(boolean z) {
        OnDemandCallReasonPickerView onDemandCallReasonPickerView = m20724QA().f41209s;
        s1.z.c.l.d(onDemandCallReasonPickerView, "binding.onDemandReasonPickerView");
        C19286f.m13683U(onDemandCallReasonPickerView, z);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Cv */
    public void mo20583Cv() {
        if (this.f40802j == null) {
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
        Button button = m20724QA().f41198h;
        s1.z.c.l.d(button, "binding.buttonViewProfile");
        C19286f.m13684T(button);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Dk */
    public void mo20581Dk() {
        GoldShineTextView goldShineTextView = m20724QA().f41182K;
        s1.z.c.l.d(goldShineTextView, "binding.textSimSlot");
        C19286f.m13689O(goldShineTextView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Ds */
    public void mo20580Ds(List<C14187f> list) {
        s1.z.c.l.e(list, "actionButtons");
        m20724QA().f41193c.setActionButtons(list);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Ea */
    public void mo20579Ea(String str, int i) {
        Drawable m13597Q;
        GoldShineTextView goldShineTextView = m20724QA().f41182K;
        goldShineTextView.setText(str);
        Resources resources = goldShineTextView.getResources();
        s1.z.c.l.d(resources, "resources");
        m13597Q = C19291g.m13597Q(resources, i, null);
        goldShineTextView.setCompoundDrawablesWithIntrinsicBounds(m13597Q, (Drawable) null, (Drawable) null, (Drawable) null);
        C19286f.m13684T(goldShineTextView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: En */
    public void mo20578En(FeedbackQuestion feedbackQuestion) {
        s1.z.c.l.e(feedbackQuestion, "feedbackQuestion");
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Ey */
    public void mo20577Ey(boolean z) {
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: F1 */
    public void mo20708F1(int i) {
        m20724QA().f41215y.setTextColorRes(i);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Fd */
    public void mo20576Fd() {
        ImageView imageView = m20724QA().f41207q;
        C19286f.m13684T(imageView);
        imageView.setImageResource(C2778R.C2779drawable.ic_tcx_verified_badge);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Fw */
    public void mo20575Fw() {
        CallMeBackFACSButtonView callMeBackFACSButtonView = m20724QA().f41208r;
        s1.z.c.l.d(callMeBackFACSButtonView, "binding.layoutButtonCallMeBack");
        C19286f.m13684T(callMeBackFACSButtonView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: G */
    public void mo20574G() {
        GoldShineTextView goldShineTextView = m20724QA().f41215y;
        s1.z.c.l.d(goldShineTextView, "binding.textAltName");
        C19286f.m13689O(goldShineTextView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: G0 */
    public void mo20573G0() {
        GoldShineImageView goldShineImageView = m20724QA().f41205o;
        s1.z.c.l.d(goldShineImageView, "binding.imageTruecallerLogo");
        C19286f.m13689O(goldShineImageView);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: Ga */
    public void mo20707Ga(int i) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            GoldShineTextView goldShineTextView = m20724QA().f41216z;
            Object obj = C26467a.f74235a;
            goldShineTextView.setTextColor(C26467a.C26471d.m1787a(context, i));
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Gx */
    public void mo20572Gx(InitiateCallHelper.CallOptions callOptions, OnDemandMessageSource onDemandMessageSource, String str) {
        s1.z.c.l.e(callOptions, "callOptions");
        s1.z.c.l.e(onDemandMessageSource, "source");
        AbstractC18742m abstractC18742m = this.f40808p;
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
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Hz */
    public void mo20570Hz(String str, String str2, boolean z) {
        s1.z.c.l.e(str2, "title");
        TagXView tagXView = m20724QA().f41189R;
        tagXView.setClickable(z);
        tagXView.setIcon(str);
        tagXView.setTitle(str2);
        Float m20720UA = m20720UA();
        if (m20720UA != null) {
            tagXView.m35631b(0, m20720UA.floatValue());
        }
        tagXView.setBackgroundResource(m20722SA());
        Integer m20721TA = m20721TA();
        if (m20721TA != null) {
            int intValue = m20721TA.intValue();
            tagXView.setPadding(intValue, intValue, intValue, intValue);
        }
        C19286f.m13684T(tagXView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: I3 */
    public void mo20569I3(AbstractC15003c abstractC15003c, AbstractC15191g abstractC15191g) {
        AdsSwitchView adsSwitchView;
        s1.z.c.l.e(abstractC15003c, "ad");
        s1.z.c.l.e(abstractC15191g, "layout");
        View view = getView();
        if (view == null || (adsSwitchView = (AdsSwitchView) view.findViewById(C2778R.C2780id.acsAdsContainer)) == null) {
            return;
        }
        adsSwitchView.m35949c(abstractC15003c, abstractC15191g);
        m20719VA(true);
    }

    @Override // p193e.p194a.p773g.p785j.AbstractC14313t
    /* renamed from: Ig */
    public void mo20272Ig(Intent intent) {
        s1.z.c.l.e(intent, "intent");
        if (isAdded()) {
            C8613t.m28200l(this, intent, 2);
        }
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: J2 */
    public void mo20706J2(boolean z) {
        AvatarVideoPlayerView avatarVideoPlayerView = m20724QA().f41184M;
        s1.z.c.l.d(avatarVideoPlayerView, "binding.videoAvatarView");
        C19286f.m13683U(avatarVideoPlayerView, z);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: J8 */
    public void mo20705J8() {
        Group group = m20724QA().f41202l;
        s1.z.c.l.d(group, "binding.groupAd");
        C19286f.m13689O(group);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: K8 */
    public void mo20568K8(Contact contact) {
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        AbstractC14307r abstractC14307r = this.f40798f;
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
        AbstractC18742m abstractC18742m = this.f40808p;
        if (abstractC18742m == null) {
            s1.z.c.l.l("contextCallRouter");
            throw null;
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        abstractC18742m.mo14560c(childFragmentManager);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: Lr */
    public void mo20704Lr(int i) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            TagXView tagXView = m20724QA().f41190S;
            Object obj = C26467a.f74235a;
            tagXView.setIconTint(C26467a.C26471d.m1787a(context, i));
            tagXView.setTitleColor(C26467a.C26471d.m1787a(context, i));
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Lx */
    public void mo20566Lx() {
        TintedImageView tintedImageView = m20724QA().f41212v;
        s1.z.c.l.d(tintedImageView, "binding.spamCallerIcon");
        C19286f.m13689O(tintedImageView);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: M4 */
    public void mo20703M4() {
        m20724QA().f41215y.m35618l();
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: Mg */
    public i1<AbstractC15868b> mo20702Mg() {
        return m20724QA().f41201k.getPlayingState();
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Mp */
    public void mo20565Mp() {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            g$a g_a = new g$a(context);
            g_a.m3664e(C2778R.string.acs_not_spam_confirmation_message);
            g_a.m3660i(C2778R.string.acs_action_button_not_spam, new DialogInterface$OnClickListenerC14136p());
            g_a.m3662g(C2778R.string.str_cancel, null);
            g_a.m3652q();
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Mr */
    public void mo20564Mr(String str, List<String> list) {
        s1.z.c.l.e(str, "displayNameOrNumber");
        s1.z.c.l.e(list, "numbers");
        C14303q0 c14303q0 = this.f40806n;
        if (c14303q0 == null) {
            s1.z.c.l.l("videoCallerIdOptionsPopUpManager");
            throw null;
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        View findViewWithTag = m20724QA().f41193c.findViewWithTag(ActionButtonType.VIDEO_CALLER_ID);
        s1.z.c.l.d(findViewWithTag, "binding.actionContainer.…ttonType.VIDEO_CALLER_ID)");
        c14303q0.m20277b(childFragmentManager, findViewWithTag, list, str, new C14138r());
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Nr */
    public void mo20563Nr() {
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: O1 */
    public void mo20562O1() {
        ImageView imageView = m20724QA().f41204n;
        s1.z.c.l.d(imageView, "binding.imagePartnerLogo");
        C19286f.m13689O(imageView);
        View view = m20724QA().f41187P;
        s1.z.c.l.d(view, "binding.viewLogoDivider");
        C19286f.m13689O(view);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Oa */
    public void mo20561Oa(AbstractC14192e abstractC14192e) {
        s1.z.c.l.e(abstractC14192e, "rateAppPromo");
        if ((!(!isAdded()) && !isStateSaved()) && getContext() != null) {
            ((C14196i) abstractC14192e).m20590d(AnalyticsContext.FACS, this.f40818z);
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Oi */
    public void mo20560Oi(AcsReferralHelper.ReferralLaunchContext referralLaunchContext, Contact contact) {
        s1.z.c.l.e(referralLaunchContext, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        AcsReferralHelper acsReferralHelper = this.f40804l;
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
        TrueContext trueContext = m20724QA().f41183L;
        C19286f.m13684T(trueContext);
        trueContext.setPresenter(abstractC18240c);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: P0 */
    public void mo20558P0() {
        TagXView tagXView = m20724QA().f41189R;
        s1.z.c.l.d(tagXView, "binding.viewTag");
        C19286f.m13689O(tagXView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Pj */
    public void mo20557Pj(String str, String str2) {
        s1.z.c.l.e(str, "jobTitle");
        s1.z.c.l.e(str2, "company");
        GoldShineTextView goldShineTextView = m20724QA().f41178C;
        goldShineTextView.setText(C19231g0.m13813D(getString(C2778R.string.acs_job_details_delimiter), str, str2));
        C19286f.m13684T(goldShineTextView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Pn */
    public void mo20556Pn(Contact contact) {
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        C21167a.f59336h.m10178a(contact, ReferralAnalytics$Source.FACS).show(getChildFragmentManager(), C21167a.class.getSimpleName());
    }

    /* renamed from: QA */
    public final C14256a m20724QA() {
        return (C14256a) this.f40809q.m34468b(this, f40795A[0]);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: R0 */
    public boolean mo20555R0() {
        boolean z;
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "it");
            Object systemService = context.getSystemService("keyguard");
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.KeyguardManager");
            z = ((KeyguardManager) systemService).isKeyguardLocked();
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: RA */
    public final AbstractC14148g m20723RA() {
        AbstractC14148g abstractC14148g = this.f40797e;
        if (abstractC14148g != null) {
            return abstractC14148g;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Ra */
    public void mo20554Ra() {
        AbstractC14294m abstractC14294m = this.f40801i;
        if (abstractC14294m == null) {
            s1.z.c.l.l("inCallUIHelper");
            throw null;
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        abstractC14294m.mo20281i(childFragmentManager, true);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Rq */
    public void mo20553Rq() {
        ImageView imageView = m20724QA().f41207q;
        C19286f.m13684T(imageView);
        imageView.setImageResource(C2778R.C2779drawable.ic_tcx_badge_gold_24dp);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: S0 */
    public void mo20701S0(int i) {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "activity ?: return");
            m20724QA().f41181J.setTextSize(0, activity.getResources().getDimension(i));
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: S1 */
    public void mo20552S1() {
        m20719VA(false);
    }

    /* renamed from: SA */
    public final int m20722SA() {
        return ((Number) this.f40815w.getValue()).intValue();
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Si */
    public void mo20551Si() {
        ImageView imageView = m20724QA().f41207q;
        s1.z.c.l.d(imageView, "binding.imgUserBadge");
        C19286f.m13689O(imageView);
    }

    /* renamed from: TA */
    public final Integer m20721TA() {
        return (Integer) this.f40816x.getValue();
    }

    @Override // p193e.p194a.p1357x3.p1358h.AbstractC21409g
    /* renamed from: Th */
    public void mo9759Th() {
        AbstractC14148g abstractC14148g = this.f40797e;
        if (abstractC14148g != null) {
            ((AbstractC14205m) abstractC14148g).m20461Jj(DismissReason.FORCED_UPDATE);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: U0 */
    public void mo20700U0(int i) {
        m20724QA().f41180E.setTextColorRes(i);
    }

    /* renamed from: UA */
    public final Float m20720UA() {
        return (Float) this.f40817y.getValue();
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Us */
    public void mo20550Us() {
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: Ut */
    public void mo20699Ut(int i) {
        CallerGradientView callerGradientView = m20724QA().f41199i;
        C19286f.m13684T(callerGradientView);
        callerGradientView.setBackground(null);
        callerGradientView.setGradientColorRes(i);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: V1 */
    public void mo20549V1(AbstractC15836l abstractC15836l, String str) {
        s1.z.c.l.e(abstractC15836l, DTBMetricsConfiguration.CONFIG_DIR);
        s1.z.c.l.e(str, "analyticsContext");
        FullScreenRatioVideoPlayerView fullScreenRatioVideoPlayerView = m20724QA().f41185N;
        C19286f.m13684T(fullScreenRatioVideoPlayerView);
        fullScreenRatioVideoPlayerView.m34442e(abstractC15836l, str);
    }

    /* renamed from: VA */
    public final void m20719VA(boolean z) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            AbstractC14269b abstractC14269b = this.f40807o;
            if (abstractC14269b == null) {
                s1.z.c.l.l("acsAdsViewManager");
                throw null;
            }
            AvatarVideoPlayerView avatarVideoPlayerView = m20724QA().f41184M;
            s1.z.c.l.d(avatarVideoPlayerView, "binding.videoAvatarView");
            int i = C2778R.dimen.fullscreen_acs_profile_image_size;
            int i2 = C2778R.dimen.fullscreen_acs_profile_image_size_ratio;
            MarginDirection marginDirection = MarginDirection.TOP;
            int i3 = C2778R.dimen.fullscreen_acs_profile_top_margin;
            int i4 = C2778R.dimen.fullscreen_acs_profile_image_top_margin_ratio;
            s1.z.c.l.e(marginDirection, "marginDirection");
            C14271c c14271c = (C14271c) abstractC14269b;
            s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
            s1.z.c.l.e(avatarVideoPlayerView, ViewAction.VIEW);
            ViewGroup.LayoutParams layoutParams = avatarVideoPlayerView.getLayoutParams();
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            int m20303a = c14271c.m20303a(context, z, i, i2);
            marginLayoutParams.width = m20303a;
            marginLayoutParams.height = m20303a;
            marginLayoutParams.topMargin = c14271c.m20303a(context, z, i3, i4);
            avatarVideoPlayerView.setLayoutParams(marginLayoutParams);
            GoldShineTextView goldShineTextView = m20724QA().f41181J;
            s1.z.c.l.d(goldShineTextView, "binding.textProfileName");
            int i5 = C2778R.dimen.fullscreen_acs_name_font_size;
            int i6 = C2778R.dimen.fullscreen_acs_name_font_size_ratio;
            s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
            s1.z.c.l.e(goldShineTextView, ViewAction.VIEW);
            int i7 = 0;
            goldShineTextView.setTextSize(0, c14271c.m20303a(context, z, i5, i6));
            GoldShineTextView goldShineTextView2 = m20724QA().f41181J;
            s1.z.c.l.d(goldShineTextView2, "binding.textProfileName");
            n.A1(c14271c, context, z, goldShineTextView2, (C14301p0) null, new C14299o0(marginDirection, C2778R.dimen.fullscreen_acs_name_margin_top, C2778R.dimen.fullscreen_acs_name_top_margin_ratio), 8, (Object) null);
            LinearLayout linearLayout = m20724QA().f41196f;
            s1.z.c.l.d(linearLayout, "binding.buttonContainer");
            MarginDirection marginDirection2 = MarginDirection.BOTTOM;
            n.A1(c14271c, context, z, linearLayout, (C14301p0) null, new C14299o0(marginDirection2, C2778R.dimen.fullscreen_view_profile_bottom_margin, C2778R.dimen.fullscreen_view_profile_bottom_margin_ratio), 8, (Object) null);
            ActionButtonsView actionButtonsView = m20724QA().f41193c;
            s1.z.c.l.d(actionButtonsView, "binding.actionContainer");
            n.A1(c14271c, context, z, actionButtonsView, (C14301p0) null, new C14299o0(marginDirection2, C2778R.dimen.acs_action_container_bottom_margin, C2778R.dimen.acs_action_container_bottom_margin_ratio), 8, (Object) null);
            C14259d c14259d = m20724QA().f41192b;
            s1.z.c.l.d(c14259d, "binding.acsAdsContainer");
            AdsSwitchView adsSwitchView = c14259d.f41272a;
            s1.z.c.l.d(adsSwitchView, "binding.acsAdsContainer.root");
            if (!z) {
                i7 = 8;
            }
            adsSwitchView.setVisibility(i7);
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Vw */
    public void mo20548Vw() {
        AcsSpamPremiumPromoView acsSpamPremiumPromoView = m20724QA().f41188Q;
        s1.z.c.l.d(acsSpamPremiumPromoView, "binding.viewSpamPremiumPromo");
        C19286f.m13684T(acsSpamPremiumPromoView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Vz */
    public void mo20547Vz(AbstractC15863y abstractC15863y, AnalyticsContext analyticsContext) {
        s1.z.c.l.e(abstractC15863y, "videoXConfig");
        s1.z.c.l.e(analyticsContext, "analyticsContext");
        m20724QA().f41201k.m34438g((AbstractC15836l) abstractC15863y, analyticsContext.getValue());
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: W5 */
    public void mo20546W5(AbstractC18240c abstractC18240c) {
        s1.z.c.l.e(abstractC18240c, "presenter");
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Wc */
    public void mo20545Wc() {
        m20724QA().f41193c.setActionButtonTheme(C2778R.color.fullscreen_acs_action_color);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: X0 */
    public void mo20544X0(int i) {
        GoldShineImageView goldShineImageView = m20724QA().f41206p;
        C19286f.m13684T(goldShineImageView);
        goldShineImageView.setImageResource(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: Xz */
    public void mo20698Xz() {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            try {
                if (!(C26467a.m1801a(context, "android.permission.READ_EXTERNAL_STORAGE") == 0)) {
                    return;
                }
                WallpaperManager wallpaperManager = WallpaperManager.getInstance(context);
                s1.z.c.l.d(wallpaperManager, "WallpaperManager.getInstance(context)");
                Drawable drawable = wallpaperManager.getDrawable();
                if (drawable == null) {
                    return;
                }
                FullScreenProfilePictureView fullScreenProfilePictureView = m20724QA().f41200j;
                s1.z.c.l.d(fullScreenProfilePictureView, "binding.fullscreenProfilePicture");
                C19286f.m13689O(fullScreenProfilePictureView);
                Context context2 = getContext();
                if (context2 != null) {
                    s1.z.c.l.d(context2, "context ?: return");
                    AbstractC22598k<?> abstractC22598k = this.f40811s;
                    if (abstractC22598k != null) {
                        ((C21853e) ComponentCallbacks2C22222c.m8446e(context2)).m8411n(abstractC22598k);
                    }
                    C14256a m20724QA = m20724QA();
                    s1.z.c.l.d(m20724QA, "binding");
                    this.f40811s = new C14145d(this, null, null, context2, m20724QA.f41191a);
                }
                d<ConstraintLayout, Drawable> dVar = this.f40811s;
                if (dVar == null) {
                    return;
                }
                C21852d c21852d = (C21852d) C17891a1.C17902k.m15658M1(this).mo8414k().mo8424R(drawable);
                C22530c c22530c = new C22530c();
                c22530c.f61790a = new C22600a(300, false);
                Objects.requireNonNull(c21852d);
                c21852d.f61766E = c22530c;
                c21852d.f61770M = false;
                c21852d.m8966r0(new e.f.a.n.q.d.i(), new C21868b(context, 25.0f)).m8429M(dVar);
            } catch (RuntimeException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
            }
        }
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: Y3 */
    public void mo20697Y3() {
        m20724QA().f41181J.m35618l();
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Y7 */
    public void mo20543Y7(String str, boolean z) {
        s1.z.c.l.e(str, "number");
        if (z) {
            C14256a m20724QA = m20724QA();
            GoldShineTextView goldShineTextView = m20724QA.f41180E;
            s1.z.c.l.d(goldShineTextView, "textPhonebookNumber");
            goldShineTextView.setText(str);
            GoldShineTextView goldShineTextView2 = m20724QA.f41180E;
            s1.z.c.l.d(goldShineTextView2, "textPhonebookNumber");
            C19286f.m13684T(goldShineTextView2);
            TextView textView = m20724QA.f41179D;
            s1.z.c.l.d(textView, "textNumber");
            C19286f.m13689O(textView);
            return;
        }
        C14256a m20724QA2 = m20724QA();
        TextView textView2 = m20724QA2.f41179D;
        s1.z.c.l.d(textView2, "textNumber");
        textView2.setText(str);
        TextView textView3 = m20724QA2.f41179D;
        s1.z.c.l.d(textView3, "textNumber");
        C19286f.m13684T(textView3);
        GoldShineTextView goldShineTextView3 = m20724QA2.f41180E;
        s1.z.c.l.d(goldShineTextView3, "textPhonebookNumber");
        C19286f.m13689O(goldShineTextView3);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Yc */
    public void mo20542Yc(OnDemandMessageSource onDemandMessageSource) {
        s1.z.c.l.e(onDemandMessageSource, "source");
        m20724QA().f41209s.setSource(onDemandMessageSource);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: Yv */
    public void mo20696Yv() {
        GoldShineTextView goldShineTextView = m20724QA().f41177B;
        Context context = goldShineTextView.getContext();
        int i = C2778R.color.fullscreen_acs_caller_label_text_color;
        Object obj = C26467a.f74235a;
        goldShineTextView.setTextColor(C26467a.C26471d.m1787a(context, i));
        goldShineTextView.m35619k();
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: Z7 */
    public void mo20695Z7() {
        GoldShineTextView goldShineTextView = m20724QA().f41177B;
        s1.z.c.l.d(goldShineTextView, "binding.textCallerLabel");
        C19286f.m13689O(goldShineTextView);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: Z8 */
    public void mo20694Z8(int i) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            Object obj = C26467a.f74235a;
            int m1787a = C26467a.C26471d.m1787a(context, i);
            GoldShineTextView goldShineTextView = m20724QA().f41182K;
            goldShineTextView.setTextColor(m1787a);
            MediaSessionCompat.m43212o1(goldShineTextView, ColorStateList.valueOf(m1787a));
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: Zt */
    public void mo20541Zt() {
        ConstraintLayout constraintLayout = m20724QA().f41211u;
        s1.z.c.l.d(constraintLayout, "binding.spamCallerContainer");
        C19286f.m13689O(constraintLayout);
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
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: aA */
    public void mo20538aA(boolean z) {
        FullScreenRatioVideoPlayerView fullScreenRatioVideoPlayerView = m20724QA().f41185N;
        fullScreenRatioVideoPlayerView.m34441f(z);
        fullScreenRatioVideoPlayerView.m34443d(new C14135o(z));
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: ag */
    public void mo20537ag(Contact contact, String str, String str2) {
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        s1.z.c.l.e(str, "normalizedNumber");
        CallMeBackFACSButtonView callMeBackFACSButtonView = m20724QA().f41208r;
        Objects.requireNonNull(callMeBackFACSButtonView);
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        s1.z.c.l.e(str, "normalizedNumber");
        ((C7945b) callMeBackFACSButtonView.getPresenter()).m29089Kj(contact, str, str2, false);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: ak */
    public void mo20693ak() {
        AvatarVideoPlayerView avatarVideoPlayerView = m20724QA().f41184M;
        s1.z.c.l.d(avatarVideoPlayerView, "binding.videoAvatarView");
        C19286f.m13687Q(avatarVideoPlayerView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: at */
    public i1<AbstractC15868b> mo20536at() {
        return m20724QA().f41185N.getPlayingState();
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: aw */
    public void mo20692aw() {
        GoldShineTextView goldShineTextView = m20724QA().f41177B;
        s1.z.c.l.d(goldShineTextView, "binding.textCallerLabel");
        C19286f.m13684T(goldShineTextView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: ax */
    public void mo20535ax() {
        C19286f.m13688P((List) this.f40814v.getValue());
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: b5 */
    public void mo20534b5() {
        TagXView tagXView = m20724QA().f41190S;
        s1.z.c.l.d(tagXView, "binding.viewTagBusiness");
        C19286f.m13689O(tagXView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: bk */
    public void mo20533bk(String str, Integer num) {
        Drawable m13597Q;
        s1.z.c.l.e(str, UpdateKey.STATUS);
        if (!this.f40813u) {
            Context context = getContext();
            int i = C2778R.animator.anim_acs_call_status;
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
            loadAnimator.setTarget(m20724QA().f41216z);
            Animator loadAnimator2 = AnimatorInflater.loadAnimator(getContext(), i);
            loadAnimator2.setTarget(m20724QA().f41176A);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(loadAnimator, loadAnimator2);
            animatorSet.setStartDelay(500L);
            animatorSet.start();
        }
        C14256a m20724QA = m20724QA();
        GoldShineTextView goldShineTextView = m20724QA.f41216z;
        s1.z.c.l.d(goldShineTextView, "textCallStatus");
        goldShineTextView.setText(str);
        if (num != null) {
            int intValue = num.intValue();
            ImageView imageView = m20724QA.f41176A;
            Resources resources = getResources();
            s1.z.c.l.d(resources, "resources");
            m13597Q = C19291g.m13597Q(resources, intValue, null);
            imageView.setImageDrawable(m13597Q);
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: bq */
    public boolean mo20532bq(AcsReferralHelper.ReferralLaunchContext referralLaunchContext) {
        s1.z.c.l.e(referralLaunchContext, AnalyticsConstants.CONTEXT);
        AcsReferralHelper acsReferralHelper = this.f40804l;
        if (acsReferralHelper == null) {
            s1.z.c.l.l("referralHelper");
            throw null;
        }
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        return ((C14317x) acsReferralHelper).m20270b(requireActivity, referralLaunchContext);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: cA */
    public void mo20531cA() {
        FullScreenRatioVideoPlayerView fullScreenRatioVideoPlayerView = m20724QA().f41185N;
        Objects.requireNonNull(fullScreenRatioVideoPlayerView);
        C19286f.m13656w(fullScreenRatioVideoPlayerView, new C15832h(fullScreenRatioVideoPlayerView));
        C14122d c14122d = new C14122d();
        s1.z.c.l.e(c14122d, "playClickListener");
        C19286f.m13656w(fullScreenRatioVideoPlayerView, new C15835k(fullScreenRatioVideoPlayerView, c14122d));
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: ck */
    public void mo20530ck() {
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: cr */
    public void mo20529cr() {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            g$a g_a = new g$a(context);
            g_a.m3664e(C2778R.string.acs_unblock_confirmation_message);
            g_a.m3660i(C2778R.string.acs_action_button_unblock, new DialogInterface$OnClickListenerC14137q());
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
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: cv */
    public void mo20691cv(int i) {
        CallerGradientView callerGradientView = m20724QA().f41199i;
        C19286f.m13684T(callerGradientView);
        callerGradientView.setGradientArrayRes(i);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: d4 */
    public void mo20690d4(boolean z) {
        FullScreenVideoPlayerView fullScreenVideoPlayerView = m20724QA().f41201k;
        s1.z.c.l.d(fullScreenVideoPlayerView, "binding.fullscreenVideoPlayer");
        C19286f.m13683U(fullScreenVideoPlayerView, z);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14183d
    /* renamed from: d8 */
    public void mo20432d8(boolean z) {
        AbstractC14148g abstractC14148g = this.f40797e;
        if (abstractC14148g != null) {
            ((AbstractC14205m) abstractC14148g).mo20432d8(z);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: da */
    public void mo20689da(boolean z) {
        m20724QA().f41201k.m34439f(z);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: dd */
    public void mo20526dd() {
        ImageView imageView = m20724QA().f41207q;
        C19286f.m13684T(imageView);
        imageView.setImageResource(C2778R.C2779drawable.ic_premium_user_badge_24dp);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: df */
    public void mo20688df(int i) {
        CallerGradientView callerGradientView = m20724QA().f41199i;
        C19286f.m13684T(callerGradientView);
        callerGradientView.setGradientColorInt(i);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: dy */
    public void mo20525dy() {
        AcsReferralHelper acsReferralHelper = this.f40804l;
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
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: f5 */
    public void mo20687f5() {
        m20724QA().f41178C.m35618l();
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: f7 */
    public void mo20686f7() {
        m20724QA().f41190S.m35632a();
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    public void finish() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.overridePendingTransition(0, 0);
            activity.finish();
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: g8 */
    public void mo20523g8(boolean z) {
        FullScreenRatioVideoPlayerView fullScreenRatioVideoPlayerView = m20724QA().f41185N;
        Objects.requireNonNull(fullScreenRatioVideoPlayerView);
        C19286f.m13656w(fullScreenRatioVideoPlayerView, new C15833i(fullScreenRatioVideoPlayerView, z));
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: gb */
    public void mo20522gb(String str, String str2, boolean z) {
        s1.z.c.l.e(str2, "title");
        TagXView tagXView = m20724QA().f41190S;
        tagXView.setClickable(z);
        tagXView.setIcon(str);
        tagXView.setTitle(str2);
        Float m20720UA = m20720UA();
        if (m20720UA != null) {
            tagXView.m35631b(0, m20720UA.floatValue());
        }
        tagXView.setBackgroundResource(m20722SA());
        Integer m20721TA = m20721TA();
        if (m20721TA != null) {
            int intValue = m20721TA.intValue();
            tagXView.setPadding(intValue, intValue, intValue, intValue);
        }
        C19286f.m13684T(tagXView);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    public i1<AbstractC15868b> getVideoPlayingState() {
        return m20724QA().f41201k.getPlayingState();
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: gm */
    public void mo20521gm() {
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: h2 */
    public void mo20685h2(String str, String str2) {
        s1.z.c.l.e(str2, "address");
        AddressTimezoneView addressTimezoneView = m20724QA().f41186O;
        addressTimezoneView.m34615f1(str, str2);
        C19286f.m13684T(addressTimezoneView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: hd */
    public void mo20520hd(Contact contact) {
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: i1 */
    public void mo20684i1(int i) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            TextView textView = m20724QA().f41179D;
            Object obj = C26467a.f74235a;
            textView.setTextColor(C26467a.C26471d.m1787a(context, i));
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: i6 */
    public void mo20519i6(AbstractC15183d abstractC15183d, AbstractC15191g abstractC15191g) {
        AdsSwitchView adsSwitchView;
        s1.z.c.l.e(abstractC15183d, "ad");
        s1.z.c.l.e(abstractC15191g, "layout");
        View view = getView();
        if (view == null || (adsSwitchView = (AdsSwitchView) view.findViewById(C2778R.C2780id.acsAdsContainer)) == null) {
            return;
        }
        adsSwitchView.m35948d(abstractC15183d, abstractC15191g);
        m20719VA(true);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: ik */
    public void mo20518ik(long j) {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        startActivityForResult(ContactFeedbackActivity.m35611pa(requireContext, j, AnalyticsContext.FACS.getValue()), 4);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: ir */
    public void mo20517ir(ActionButtonType actionButtonType) {
        s1.z.c.l.e(actionButtonType, "actionButtonType");
        ActionButtonsView actionButtonsView = m20724QA().f41193c;
        Objects.requireNonNull(actionButtonsView);
        s1.z.c.l.e(actionButtonType, "actionButtonType");
        actionButtonsView.removeView(actionButtonsView.findViewWithTag(actionButtonType));
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: jw */
    public void mo20683jw(Uri uri) {
        FullScreenProfilePictureView fullScreenProfilePictureView = m20724QA().f41200j;
        C19286f.m13684T(fullScreenProfilePictureView);
        fullScreenProfilePictureView.m35661f(uri, new C14131m(fullScreenProfilePictureView, this, uri));
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: k6 */
    public void mo20516k6() {
        m20724QA().f41184M.setOnClickListener(new View$OnClickListenerC14123e());
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: kc */
    public void mo20682kc(int i, int i2, int i3) {
        GoldShineTextView goldShineTextView = m20724QA().f41177B;
        Context context = goldShineTextView.getContext();
        Object obj = C26467a.f74235a;
        goldShineTextView.setTextColor(C26467a.C26471d.m1787a(context, i));
        goldShineTextView.setBackgroundResource(i3);
        goldShineTextView.getBackground().setTint(C26467a.C26471d.m1787a(goldShineTextView.getContext(), i2));
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: ky */
    public void mo20515ky() {
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: l7 */
    public void mo20514l7() {
        Button button = m20724QA().f41198h;
        s1.z.c.l.d(button, "binding.buttonViewProfile");
        C19286f.m13683U(button, false);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: lj */
    public AbstractC15864a mo20681lj() {
        return m20724QA().f41201k.getAudioState();
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
        Activity activity = getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "activity ?: return");
            if (Build.VERSION.SDK_INT >= 26) {
                Object systemService = activity.getSystemService("keyguard");
                Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.KeyguardManager");
                ((KeyguardManager) systemService).requestDismissKeyguard(activity, new KeyguardManager$KeyguardDismissCallbackC14130l(abstractC14167s));
                return;
            }
            mo20674pg();
            activity.getWindow().addFlags(4194304);
            C14168t c14168t = new C14168t(abstractC14167s);
            this.f40812t = c14168t;
            activity.registerReceiver(c14168t, new IntentFilter("android.intent.action.USER_PRESENT"));
        }
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: ma */
    public void mo20680ma(int i) {
        m20724QA().f41197g.setImageResource(i);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: mi */
    public void mo20679mi() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "activity ?: return");
            if (Build.VERSION.SDK_INT < 27) {
                activity.getWindow().addFlags(2621440);
                return;
            }
            activity.setShowWhenLocked(true);
            activity.setTurnScreenOn(true);
        }
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: mr */
    public void mo20678mr(int i) {
        CallerGradientView callerGradientView = m20724QA().f41199i;
        C19286f.m13684T(callerGradientView);
        Context requireContext = requireContext();
        Object obj = C26467a.f74235a;
        callerGradientView.setBackground(C26467a.C26470c.m1789b(requireContext, i));
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: n */
    public void mo20511n() {
        TrueContext trueContext = m20724QA().f41183L;
        s1.z.c.l.d(trueContext, "binding.truecontext");
        C19286f.m13689O(trueContext);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: nk */
    public void mo20677nk() {
        m20724QA().f41189R.m35632a();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        Uri data;
        Contact contact;
        C14118a.super.onActivityResult(i, i2, intent);
        if (i == 1 && i2 == -1) {
            SpamCategoryResult spamCategoryResult = intent != null ? (SpamCategoryResult) intent.getParcelableExtra("result") : null;
            if (spamCategoryResult != null) {
                AbstractC14148g abstractC14148g = this.f40797e;
                if (abstractC14148g == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                ((AbstractC14205m) abstractC14148g).m20439Y6(spamCategoryResult);
            }
        }
        if (i == 1 && i2 == -1 && intent != null && (contact = (Contact) intent.getParcelableExtra(AnalyticsConstants.CONTACT)) != null) {
            AbstractC14148g abstractC14148g2 = this.f40797e;
            if (abstractC14148g2 == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            s1.z.c.l.d(contact, "it");
            AbstractC14205m abstractC14205m = (AbstractC14205m) abstractC14148g2;
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            abstractC14205m.m20451Oj().f11539f = contact;
            abstractC14205m.m20465Gk(contact);
        }
        if (i == 2 || i == 3) {
            if (i2 != -1) {
                AbstractC14307r abstractC14307r = this.f40798f;
                if (abstractC14307r == null) {
                    s1.z.c.l.l("phonebookHelper");
                    throw null;
                }
                ((C14309s) abstractC14307r).f41392b.mo11854a().mo14072i();
            } else if (intent == null || (data = intent.getData()) == null) {
                return;
            } else {
                s1.z.c.l.d(data, "data?.data ?: return");
                AbstractC14307r abstractC14307r2 = this.f40798f;
                if (abstractC14307r2 == null) {
                    s1.z.c.l.l("phonebookHelper");
                    throw null;
                } else {
                    s1.z.c.l.e(data, "uri");
                    ((C14309s) abstractC14307r2).f41392b.mo11854a().mo14075f(data);
                }
            }
            AbstractC14148g abstractC14148g3 = this.f40797e;
            if (abstractC14148g3 == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            AbstractC14198h abstractC14198h = (AbstractC14198h) ((AbstractC14205m) abstractC14148g3).f57683a;
            if (abstractC14198h != null) {
                abstractC14198h.finish();
            }
        }
        if (i == 4 && i2 == -1) {
            Contact contact2 = intent != null ? (Contact) intent.getParcelableExtra("result_contact") : null;
            AbstractC14148g abstractC14148g4 = this.f40797e;
            if (abstractC14148g4 != null) {
                ((AbstractC14205m) abstractC14148g4).m20427hk(contact2);
            } else {
                s1.z.c.l.l("presenter");
                throw null;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14166r
    public void onAttach(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        super.onAttach(context);
        C14124f c14124f = new C14124f(true);
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        requireActivity.getOnBackPressedDispatcher().m43175a(this, c14124f);
    }

    public void onDestroy() {
        n3.r.a.l activity;
        C14118a.super.onDestroy();
        C14168t c14168t = this.f40812t;
        if (c14168t == null || (activity = getActivity()) == null) {
            return;
        }
        activity.unregisterReceiver(c14168t);
    }

    public void onDestroyView() {
        AbstractC14148g abstractC14148g = this.f40797e;
        if (abstractC14148g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((AbstractC14205m) abstractC14148g).mo9806c();
        C14303q0 c14303q0 = this.f40806n;
        if (c14303q0 == null) {
            s1.z.c.l.l("videoCallerIdOptionsPopUpManager");
            throw null;
        }
        c14303q0.m20278a();
        C14118a.super.onDestroyView();
    }

    public void onPause() {
        C14118a.super.onPause();
        AbstractC14148g abstractC14148g = this.f40797e;
        if (abstractC14148g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((AbstractC14205m) abstractC14148g).onVisibilityChanged(false);
        mo20674pg();
    }

    public void onResume() {
        C14118a.super.onResume();
        AbstractC14148g abstractC14148g = this.f40797e;
        if (abstractC14148g != null) {
            ((AbstractC14205m) abstractC14148g).onVisibilityChanged(true);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        s1.z.c.l.e(bundle, "outState");
        C14118a.super.onSaveInstanceState(bundle);
        AbstractC14148g abstractC14148g = this.f40797e;
        if (abstractC14148g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        bundle.putLong("ARG_VIEW_LAUNCHED_TIMESTAMP", ((AbstractC14205m) abstractC14148g).f41008m);
        bundle.putBoolean("ARG_ANIMATION_PLAYED", true);
    }

    public void onViewCreated(View view, Bundle bundle) {
        Intent intent;
        s1.z.c.l.e(view, ViewAction.VIEW);
        C14118a.super.onViewCreated(view, bundle);
        m20724QA().f41203m.setOnApplyWindowInsetsListener(new View$OnApplyWindowInsetsListenerC14127i());
        AvatarVideoPlayerView avatarVideoPlayerView = m20724QA().f41184M;
        s1.z.c.l.d(avatarVideoPlayerView, "binding.videoAvatarView");
        Context context = avatarVideoPlayerView.getContext();
        s1.z.c.l.d(context, "binding.videoAvatarView.context");
        this.f40810r = new C8243a(new C19235i0(context));
        AvatarVideoPlayerView avatarVideoPlayerView2 = m20724QA().f41184M;
        C8243a c8243a = this.f40810r;
        if (c8243a == null) {
            s1.z.c.l.l("avatarPresenter");
            throw null;
        }
        avatarVideoPlayerView2.setAvatarXPresenter(c8243a);
        AbstractC14148g abstractC14148g = this.f40797e;
        if (abstractC14148g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C14153l) abstractC14148g).mo9029Y0(this);
        if (bundle != null) {
            Long valueOf = Long.valueOf(bundle.getLong("ARG_VIEW_LAUNCHED_TIMESTAMP", -1L));
            if (!(valueOf.longValue() != -1)) {
                valueOf = null;
            }
            if (valueOf != null) {
                long longValue = valueOf.longValue();
                AbstractC14148g abstractC14148g2 = this.f40797e;
                if (abstractC14148g2 == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                ((AbstractC14205m) abstractC14148g2).f41008m = longValue;
            }
            this.f40813u = bundle.getBoolean("ARG_ANIMATION_PLAYED", false);
        }
        n3.r.a.l activity = getActivity();
        AfterCallHistoryEvent I = (activity == null || (intent = activity.getIntent()) == null) ? null : n.I(intent, "ARG_ACS_HISTORY_EVENT");
        if (I == null) {
            finish();
            return;
        }
        AbstractC14148g abstractC14148g3 = this.f40797e;
        if (abstractC14148g3 == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((AbstractC14205m) abstractC14148g3).m20426ik(I);
        C14256a m20724QA = m20724QA();
        m20724QA.f41191a.setOnDismissListener(new C14125g());
        m20724QA.f41195e.setOnClickListener(new View$OnClickListenerC14119a(0, this));
        m20724QA.f41198h.setOnClickListener(new View$OnClickListenerC14119a(1, this));
        m20724QA.f41189R.setOnClickListener(new View$OnClickListenerC14119a(2, this));
        m20724QA.f41190S.setOnClickListener(new View$OnClickListenerC14119a(3, this));
        m20724QA.f41188Q.m36007f1();
        m20724QA.f41188Q.setOnLearnMoreClickListener(new RunnableC14126h());
        m20724QA().f41209s.setOnDemandReasonPickerCallback(new C14146e(this));
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
        abstractC13343b.m21897a(hVar2, AnalyticsContext.FACS.getValue(), str, str2, z, 5);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: ot */
    public void mo20509ot() {
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: ow */
    public void mo20676ow() {
        m20724QA().f41182K.m35618l();
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: oy */
    public void mo20508oy() {
        AddressTimezoneView addressTimezoneView = m20724QA().f41186O;
        s1.z.c.l.d(addressTimezoneView, "binding.viewAddressTimezone");
        C19286f.m13689O(addressTimezoneView);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: p0 */
    public void mo20675p0(int i) {
        m20724QA().f41181J.setTextColorRes(i);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: pa */
    public void mo20507pa() {
        TintedImageView tintedImageView = m20724QA().f41212v;
        s1.z.c.l.d(tintedImageView, "binding.spamCallerIcon");
        C19286f.m13684T(tintedImageView);
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

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: pg */
    public void mo20674pg() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "activity ?: return");
            if (Build.VERSION.SDK_INT < 27) {
                activity.getWindow().clearFlags(2621440);
                return;
            }
            activity.setShowWhenLocked(false);
            activity.setTurnScreenOn(false);
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: pl */
    public void mo20505pl(String str, AnalyticsContext analyticsContext) {
        s1.z.c.l.e(str, "normalizedNumber");
        s1.z.c.l.e(analyticsContext, "analyticsContext");
        C14300p c14300p = this.f40800h;
        if (c14300p == null) {
            s1.z.c.l.l("acsMessageHelper");
            throw null;
        }
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        c14300p.m20280a(requireActivity, str, analyticsContext);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: pu */
    public void mo20673pu(int i) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            TagXView tagXView = m20724QA().f41189R;
            Object obj = C26467a.f74235a;
            tagXView.setIconTint(C26467a.C26471d.m1787a(context, i));
            tagXView.setTitleColor(C26467a.C26471d.m1787a(context, i));
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: q3 */
    public void mo20504q3(int i) {
        TextView textView = m20724QA().f41179D;
        textView.setText(getString(i));
        C19286f.m13684T(textView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: qk */
    public void mo20503qk(boolean z) {
        Fragment m20612a = C14170a.f40907j.m20612a(AnalyticsContext.FACS.getValue(), z);
        C26907a c26907a = new C26907a(getChildFragmentManager());
        c26907a.m1120m(C2778R.C2780id.placeholder_acs_reply, m20612a, null);
        c26907a.mo1126g();
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: qv */
    public void mo20672qv(int i, int i2) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            Object obj = C26467a.f74235a;
            int m1787a = C26467a.C26471d.m1787a(context, i);
            AddressTimezoneView addressTimezoneView = m20724QA().f41186O;
            addressTimezoneView.m34613h1(m1787a, m1787a);
            addressTimezoneView.setBackgroundResource(i2);
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: r8 */
    public void mo20502r8(Contact contact, int i) {
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            C20592g c20592g = this.f40805m;
            if (c20592g != null) {
                startActivityForResult(C17422k.m16061p(context, contact, 1, i, c20592g), 1);
            } else {
                s1.z.c.l.l("featureRegistry");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: rh */
    public void mo20501rh(String str, String str2, String str3) {
        C14290k c14290k = this.f40799g;
        if (c14290k == null) {
            s1.z.c.l.l("detailsViewHelper");
            throw null;
        }
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        c14290k.m20286a(requireActivity, str, str2, str3);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: ru */
    public void mo20671ru(int i, int i2, boolean z) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            if (z) {
                m20724QA().f41205o.m35656h();
                m20724QA().f41206p.m35656h();
            } else {
                Object obj = C26467a.f74235a;
                ColorStateList valueOf = ColorStateList.valueOf(C26467a.C26471d.m1787a(context, i));
                s1.z.c.l.d(valueOf, "ColorStateList.valueOf(C…getColor(context, color))");
                GoldShineImageView goldShineImageView = m20724QA().f41205o;
                s1.z.c.l.d(goldShineImageView, "binding.imageTruecallerLogo");
                goldShineImageView.setImageTintList(valueOf);
                GoldShineImageView goldShineImageView2 = m20724QA().f41206p;
                s1.z.c.l.d(goldShineImageView2, "binding.imageTruecallerPremiumLogo");
                goldShineImageView2.setImageTintList(valueOf);
            }
            View view = m20724QA().f41187P;
            Object obj2 = C26467a.f74235a;
            view.setBackgroundColor(C26467a.C26471d.m1787a(context, i2));
            ImageView imageView = m20724QA().f41204n;
            s1.z.c.l.d(imageView, "binding.imagePartnerLogo");
            imageView.setImageTintList(ColorStateList.valueOf(C26467a.C26471d.m1787a(context, i)));
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: rx */
    public void mo20500rx() {
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: rz */
    public void mo20499rz() {
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: s4 */
    public void mo20670s4(int i) {
        m20724QA().f41178C.setTextColorRes(i);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    public void setAltName(String str) {
        s1.z.c.l.e(str, "altName");
        GoldShineTextView goldShineTextView = m20724QA().f41215y;
        goldShineTextView.setText(getString(C2778R.string.acs_alt_name, new Object[]{str}));
        C19286f.m13684T(goldShineTextView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    public void setName(String str) {
        s1.z.c.l.e(str, "profileName");
        GoldShineTextView goldShineTextView = m20724QA().f41181J;
        s1.z.c.l.d(goldShineTextView, "binding.textProfileName");
        goldShineTextView.setText(str);
        GoldShineTextView goldShineTextView2 = m20724QA().f41181J;
        s1.z.c.l.d(goldShineTextView2, "binding.textProfileName");
        goldShineTextView2.setSelected(true);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    public void setSpamCategoryIcon(SpamCategoryModel spamCategoryModel) {
        ComponentCallbacks2C22222c.m8448c(getContext()).m8129g(this).mo8407r(spamCategoryModel != null ? spamCategoryModel.getIconUrl() : null).mo8095m().m8427O(m20724QA().f41212v);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: sj */
    public void mo20498sj() {
        AbstractC18240c abstractC18240c = m20724QA().f41183L.f15498u;
        if (abstractC18240c != null) {
            abstractC18240c.mo9709g4();
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: sk */
    public void mo20497sk(boolean z) {
        FullScreenRatioVideoPlayerView fullScreenRatioVideoPlayerView = m20724QA().f41185N;
        fullScreenRatioVideoPlayerView.m34444c(z);
        fullScreenRatioVideoPlayerView.m34440g(z);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: ta */
    public void mo20496ta() {
        Button button = m20724QA().f41198h;
        s1.z.c.l.d(button, "binding.buttonViewProfile");
        C19286f.m13684T(button);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: tg */
    public void mo20495tg() {
        AcsSpamPremiumPromoView acsSpamPremiumPromoView = m20724QA().f41188Q;
        s1.z.c.l.d(acsSpamPremiumPromoView, "binding.viewSpamPremiumPromo");
        C19286f.m13689O(acsSpamPremiumPromoView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: tl */
    public void mo20494tl() {
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: tm */
    public void mo20493tm() {
        Button button = m20724QA().f41198h;
        s1.z.c.l.d(button, "binding.buttonViewProfile");
        C19286f.m13687Q(button);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: tq */
    public void mo20492tq() {
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: tu */
    public void mo20491tu(AbstractC15863y abstractC15863y, String str) {
        s1.z.c.l.e(abstractC15863y, "videoXConfig");
        s1.z.c.l.e(str, "analyticsContext");
        m20724QA().f41184M.m34450f((AbstractC15816a) abstractC15863y, str);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: tv */
    public void mo20490tv() {
        TagXView tagXView = m20724QA().f41189R;
        s1.z.c.l.d(tagXView, "this");
        Context context = tagXView.getContext();
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
        Float m20720UA = m20720UA();
        if (m20720UA != null) {
            tagXView.m35631b(0, m20720UA.floatValue());
        }
        tagXView.setBackgroundResource(m20722SA());
        Integer m20721TA = m20721TA();
        if (m20721TA != null) {
            int intValue = m20721TA.intValue();
            tagXView.setPadding(intValue, intValue, intValue, intValue);
        }
        C19286f.m13684T(tagXView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: us */
    public void mo20489us(Contact contact) {
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            AbstractC14307r abstractC14307r = this.f40798f;
            if (abstractC14307r == null) {
                s1.z.c.l.l("phonebookHelper");
                throw null;
            }
            C14309s c14309s = (C14309s) abstractC14307r;
            s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
            s1.z.c.l.e(this, "fragment");
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            C12864a2.m22576R(context, this, contact, true, 3);
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: v0 */
    public void mo20488v0() {
        GoldShineImageView goldShineImageView = m20724QA().f41206p;
        s1.z.c.l.d(goldShineImageView, "binding.imageTruecallerPremiumLogo");
        C19286f.m13689O(goldShineImageView);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: v5 */
    public void mo20669v5() {
        m20724QA().f41180E.m35618l();
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: vi */
    public void mo20668vi(String str) {
        s1.z.c.l.e(str, "sponsor");
        TextView textView = m20724QA().f41214x;
        s1.z.c.l.d(textView, "binding.textAd");
        textView.setText(str);
        Group group = m20724QA().f41202l;
        s1.z.c.l.d(group, "binding.groupAd");
        C19286f.m13684T(group);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: w */
    public void mo20487w(int i) {
        GoldShineImageView goldShineImageView = m20724QA().f41205o;
        C19286f.m13684T(goldShineImageView);
        goldShineImageView.setImageResource(i);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: w5 */
    public void mo20486w5() {
        GoldShineTextView goldShineTextView = m20724QA().f41178C;
        s1.z.c.l.d(goldShineTextView, "binding.textJobDetails");
        C19286f.m13689O(goldShineTextView);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: wa */
    public boolean mo20485wa() {
        boolean z;
        Context context = getContext();
        if (context != null) {
            C14292l c14292l = this.f40803k;
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
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: wr */
    public void mo20667wr(OnboardingType onboardingType, String str) {
        s1.z.c.l.e(onboardingType, "onboardingType");
        s1.z.c.l.e(str, "contactName");
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(onboardingType, "onboardingType");
        s1.z.c.l.e(str, "contactName");
        Intent intent = new Intent(requireContext, VideoCallerIdOnboardingActivity.class);
        intent.putExtra("ARG_VID_ONBOARDING_TYPE", onboardingType);
        intent.putExtra("ARG_CONTACT_NAME", str);
        requireContext.startActivity(intent);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: wz */
    public void mo20666wz(boolean z) {
        AppCompatImageView appCompatImageView = m20724QA().f41197g;
        C19286f.m13684T(appCompatImageView);
        appCompatImageView.setOnClickListener(new View$OnClickListenerC14134n());
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: y2 */
    public void mo20483y2(int i) {
        C14256a m20724QA = m20724QA();
        m20724QA.f41204n.setImageResource(i);
        ImageView imageView = m20724QA.f41204n;
        s1.z.c.l.d(imageView, "imagePartnerLogo");
        C19286f.m13684T(imageView);
        View view = m20724QA.f41187P;
        s1.z.c.l.d(view, "viewLogoDivider");
        C19286f.m13684T(view);
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14149h
    /* renamed from: ya */
    public void mo20665ya(int i) {
        GoldShineTextView goldShineTextView = m20724QA().f41177B;
        s1.z.c.l.d(goldShineTextView, "binding.textCallerLabel");
        goldShineTextView.setText(getString(i));
        GoldShineTextView goldShineTextView2 = m20724QA().f41177B;
        s1.z.c.l.d(goldShineTextView2, "binding.textCallerLabel");
        C19286f.m13684T(goldShineTextView2);
        mo20541Zt();
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: yw */
    public void mo20482yw() {
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: z8 */
    public void mo20481z8() {
        m20724QA().f41193c.setActionButtonTheme(C2778R.color.fullscreen_acs_action_color);
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14198h
    /* renamed from: zy */
    public void mo20480zy() {
    }
}

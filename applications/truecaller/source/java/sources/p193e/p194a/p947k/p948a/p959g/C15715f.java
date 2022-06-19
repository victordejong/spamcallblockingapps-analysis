package p193e.p194a.p947k.p948a.p959g;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher;
import androidx.camera.view.PreviewView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.p070ui.PlayerView;
import com.mopub.network.ImpressionData;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.common.p156ui.dialogs.ConfirmationDialog;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.data.OutgoingVideoDetails;
import com.truecaller.videocallerid.data.VideoVisibilityConfig;
import com.truecaller.videocallerid.p187ui.preview.PreviewModes;
import com.truecaller.videocallerid.p187ui.recording.RecordingScreenModes;
import com.truecaller.videocallerid.p187ui.recording.customisation_option.VideoCustomisationOption;
import com.truecaller.videocallerid.p187ui.view.RecordButton;
import com.truecaller.videocallerid.p187ui.view.RecordingProgressView;
import com.truecaller.videocallerid.p187ui.view.VideoGradientView;
import com.truecaller.videocallerid.upload.VideoUploadService;
import com.truecaller.videocallerid.utils.analytics.OnboardingData;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1821i.C26574e;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1132s0.C19294h0;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p947k.p948a.p952c.C15628a;
import p193e.p194a.p947k.p948a.p959g.p960n0.C15744c;
import p193e.p194a.p947k.p948a.p959g.p960n0.C15745d;
import p193e.p194a.p947k.p948a.p966l.C15907c;
import p193e.p194a.p947k.p948a.p966l.C15908d;
import p193e.p194a.p947k.p948a.p967m.C15911b;
import p193e.p194a.p947k.p969c.AbstractC15980e1;
import p193e.p194a.p947k.p969c.AbstractC16044q;
import p193e.p194a.p947k.p969c.C15984f1;
import p193e.p194a.p947k.p969c.C15988g1;
import p193e.p194a.p947k.p969c.C15993h1;
import p193e.p194a.p947k.p972m.C16137k;
import p193e.p194a.p947k.p972m.C16144r;
import q3.a.i0;
import s1.a.l;
import s1.g;
import s1.h;
import s1.s;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.a0;
import s1.z.c.d0;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��¸\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\b\u0001\u0018��2\u00020\u00012\u00020\u0002B\b¢\u0006\u0005\b°\u0001\u0010\u000fJ!\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0011\u0010\rJ\u000f\u0010\u0012\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0012\u0010\u000fJ\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0014\u0010\rJ\u000f\u0010\u0015\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0015\u0010\u000fJ\u0017\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001a\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001b\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001c\u0010\u0019J\u0017\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001e\u0010\u0019J\u0017\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001f\u0010\u0019J\u0017\u0010 \u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b \u0010\u0019J\u001f\u0010#\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u0016H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0007H\u0016¢\u0006\u0004\b%\u0010\u000fJ#\u0010)\u001a\u00020\u00072\b\u0010'\u001a\u0004\u0018\u00010&2\b\u0010(\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b)\u0010*J!\u0010-\u001a\u00020\u00072\u0006\u0010,\u001a\u00020+2\b\u0010(\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b-\u0010.J\u001f\u00101\u001a\u00020\u00072\u0006\u0010,\u001a\u00020+2\u0006\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\u0007H\u0016¢\u0006\u0004\b3\u0010\u000fJ\u000f\u00104\u001a\u00020\u0007H\u0016¢\u0006\u0004\b4\u0010\u000fJ\u000f\u00105\u001a\u00020\u0007H\u0016¢\u0006\u0004\b5\u0010\u000fJ\u000f\u00106\u001a\u00020\u0007H\u0016¢\u0006\u0004\b6\u0010\u000fJ\u0017\u00107\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b7\u0010\u0019J\u0017\u0010:\u001a\u00020\u00072\u0006\u00109\u001a\u000208H\u0016¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\u0007H\u0016¢\u0006\u0004\b<\u0010\u000fJ\u000f\u0010=\u001a\u00020\u0007H\u0016¢\u0006\u0004\b=\u0010\u000fJ\u0019\u0010@\u001a\u00020\u00072\b\b\u0001\u0010?\u001a\u00020>H\u0016¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\u0007H\u0016¢\u0006\u0004\bB\u0010\u000fJ\u0017\u0010E\u001a\u00020\u00072\u0006\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bE\u0010FJ\u0017\u0010G\u001a\u00020\u00072\u0006\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bG\u0010FJ\u0017\u0010I\u001a\u00020\u00072\u0006\u0010H\u001a\u00020\nH\u0016¢\u0006\u0004\bI\u0010\rJ\u0017\u0010J\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\bJ\u0010\u0019J\u000f\u0010K\u001a\u00020\u0007H\u0016¢\u0006\u0004\bK\u0010\u000fJ\u0017\u0010L\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\bL\u0010\u0019J\u0017\u0010N\u001a\u00020\u00072\u0006\u0010M\u001a\u00020\u0016H\u0016¢\u0006\u0004\bN\u0010\u0019J\u0017\u0010O\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\bO\u0010\u0019J\u0017\u0010P\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\bP\u0010\u0019J\u0017\u0010S\u001a\u00020\u00072\u0006\u0010R\u001a\u00020QH\u0016¢\u0006\u0004\bS\u0010TJ\u000f\u0010U\u001a\u00020\u0007H\u0016¢\u0006\u0004\bU\u0010\u000fJ\u000f\u0010V\u001a\u00020\u0007H\u0016¢\u0006\u0004\bV\u0010\u000fJ\u000f\u0010W\u001a\u00020\u0007H\u0016¢\u0006\u0004\bW\u0010\u000fJ\u000f\u0010X\u001a\u00020\u0007H\u0016¢\u0006\u0004\bX\u0010\u000fJ\u000f\u0010Y\u001a\u00020\u0007H\u0016¢\u0006\u0004\bY\u0010\u000fJ\u0011\u0010Z\u001a\u0004\u0018\u00010CH\u0016¢\u0006\u0004\bZ\u0010[J\u000f\u0010\\\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\\\u0010\u000fJ\u0017\u0010]\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b]\u0010\u0019J\u0017\u0010`\u001a\u00020\u00072\u0006\u0010_\u001a\u00020^H\u0016¢\u0006\u0004\b`\u0010aJ\u0017\u0010c\u001a\u00020\u00072\u0006\u0010b\u001a\u00020\nH\u0016¢\u0006\u0004\bc\u0010\rR(\u0010l\u001a\u00020d8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\be\u0010f\u0012\u0004\bk\u0010\u000f\u001a\u0004\bg\u0010h\"\u0004\bi\u0010jR\u001f\u0010'\u001a\u0004\u0018\u00010&8V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\bm\u0010n\u001a\u0004\bo\u0010pR\u001d\u0010u\u001a\u00020q8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\br\u0010n\u001a\u0004\bs\u0010tR\u001d\u0010{\u001a\u00020v8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bw\u0010x\u001a\u0004\by\u0010zR&\u0010\u0083\u0001\u001a\u00020|8��@��X\u0081.¢\u0006\u0015\n\u0004\b}\u0010~\u001a\u0005\b\u007f\u0010\u0080\u0001\"\u0006\b\u0081\u0001\u0010\u0082\u0001R\u0019\u0010\u0086\u0001\u001a\u00020\u00168V@\u0016X\u0096\u0004¢\u0006\b\u001a\u0006\b\u0084\u0001\u0010\u0085\u0001R(\u0010\u008a\u0001\u001a\u00020|8\u0006@\u0006X\u0087.¢\u0006\u0017\n\u0005\b\u0087\u0001\u0010~\u001a\u0006\b\u0088\u0001\u0010\u0080\u0001\"\u0006\b\u0089\u0001\u0010\u0082\u0001R*\u0010\u0092\u0001\u001a\u00030\u008b\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\b\u008c\u0001\u0010\u008d\u0001\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001\"\u0006\b\u0090\u0001\u0010\u0091\u0001R1\u0010\u009b\u0001\u001a\u00030\u0093\u00018\u0006@\u0006X\u0087.¢\u0006\u001f\n\u0006\b\u0094\u0001\u0010\u0095\u0001\u0012\u0005\b\u009a\u0001\u0010\u000f\u001a\u0006\b\u0096\u0001\u0010\u0097\u0001\"\u0006\b\u0098\u0001\u0010\u0099\u0001R\u001a\u0010\u009f\u0001\u001a\u00030\u009c\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u009e\u0001R\u001a\u0010£\u0001\u001a\u00030 \u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¡\u0001\u0010¢\u0001R!\u0010§\u0001\u001a\u00020>8V@\u0016X\u0096\u0084\u0002¢\u0006\u000f\n\u0005\b¤\u0001\u0010n\u001a\u0006\b¥\u0001\u0010¦\u0001R*\u0010¯\u0001\u001a\u00030¨\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b©\u0001\u0010ª\u0001\u001a\u0006\b«\u0001\u0010¬\u0001\"\u0006\b\u00ad\u0001\u0010®\u0001¨\u0006±\u0001"}, d2 = {"Le/a/k/a/g/f;", "Landroidx/fragment/app/Fragment;", "Le/a/k/a/g/x;", "Landroid/view/View;", ViewAction.VIEW, "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", AnalyticsConstants.NAME, "setProfileName", "(Ljava/lang/String;)V", "D4", "()V", "number", "setPhoneNumber", "J", ImpressionData.COUNTRY, "Yh", "Nv", "", "visible", "xr", "(Z)V", "Ff", "G9", "nc", "enable", "Rc", "Hl", "Gh", "url", "mirrorPlayback", "DA", "(Ljava/lang/String;Z)V", "og", "Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;", "onboardingData", "tempRecordingFilePath", "up", "(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;)V", "Lcom/truecaller/videocallerid/ui/preview/PreviewModes;", "previewMode", "Ip", "(Lcom/truecaller/videocallerid/ui/preview/PreviewModes;Ljava/lang/String;)V", "Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;", "outgoingVideoDetails", "Oe", "(Lcom/truecaller/videocallerid/ui/preview/PreviewModes;Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;)V", "h8", "Q8", "ga", "Zg", "dp", "Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$a;", "selfieVideo", "bt", "(Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$a;)V", "Qf", "pw", "", "textResource", "a", "(I)V", "zw", "Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;", "option", "lw", "(Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;)V", "Pk", "id", "rt", "j6", "td", "Lq", "torchEnabled", "Db", "Hj", "J2", "Lcom/truecaller/common/ui/avatar/AvatarXConfig;", "avatarXConfig", "setAvatarConfig", "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V", "onStop", "onDestroyView", "t", "n9", AnalyticsConstants.NOT_AVAILABLE, "rn", "()Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;", "hr", "jn", "Landroid/graphics/PointF;", "point", "w8", "(Landroid/graphics/PointF;)V", "videoId", "mz", "Lq3/a/i0;", "e", "Lq3/a/i0;", "getScope", "()Lq3/a/i0;", "setScope", "(Lq3/a/i0;)V", "getScope$annotations", "scope", "q", "Ls1/g;", "k0", "()Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;", "Lcom/google/android/exoplayer2/SimpleExoPlayer;", "m", "RA", "()Lcom/google/android/exoplayer2/SimpleExoPlayer;", "playbackPlayer", "Le/a/k/m/k;", "l", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/k/m/k;", "binding", "Le/a/k/c/e1;", "g", "Le/a/k/c/e1;", "getRouter$video_caller_id_release", "()Le/a/k/c/e1;", "setRouter$video_caller_id_release", "(Le/a/k/c/e1;)V", "router", "Yl", "()Z", "isWhiteLightVisible", "h", "getVideoCallerIdRouter", "setVideoCallerIdRouter", "videoCallerIdRouter", "Le/a/k/a/g/w;", "f", "Le/a/k/a/g/w;", "SA", "()Le/a/k/a/g/w;", "setPresenter$video_caller_id_release", "(Le/a/k/a/g/w;)V", "presenter", "Le/a/p5/h0;", "j", "Le/a/p5/h0;", "getResourceProvider", "()Le/a/p5/h0;", "setResourceProvider", "(Le/a/p5/h0;)V", "getResourceProvider$annotations", "resourceProvider", "Le/a/k/a/g/n0/c;", "n", "Le/a/k/a/g/n0/c;", "customizationAdapter", "Le/a/b0/a/b/a;", "o", "Le/a/b0/a/b/a;", "avatarPresenter", "p", "Iw", "()I", "initialRecordingScreenMode", "Le/a/k/c/q;", "k", "Le/a/k/c/q;", "getExoPlayerUtil", "()Le/a/k/c/q;", "setExoPlayerUtil", "(Le/a/k/c/q;)V", "exoPlayerUtil", "<init>", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.k.a.g.f */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/f.class */
public final class C15715f extends AbstractC15709c implements AbstractC15756x {

    /* renamed from: r */
    public static final /* synthetic */ l[] f44326r = {C22128a.m8621g0(C15715f.class, "binding", "getBinding()Lcom/truecaller/videocallerid/databinding/FragmentVideoCallerIdRecordingBinding;", 0)};
    @Inject

    /* renamed from: e */
    public i0 f44327e;
    @Inject

    /* renamed from: f */
    public AbstractC15755w f44328f;
    @Inject

    /* renamed from: g */
    public AbstractC15980e1 f44329g;
    @Inject

    /* renamed from: h */
    public AbstractC15980e1 f44330h;
    @Inject

    /* renamed from: i */
    public C15754v f44331i;
    @Inject

    /* renamed from: j */
    public AbstractC19233h0 f44332j;
    @Inject

    /* renamed from: k */
    public AbstractC16044q f44333k;

    /* renamed from: l */
    public final ViewBindingProperty f44334l = new C19350a(new C15716a());

    /* renamed from: m */
    public final g f44335m = C25225a.m3978P1(new C15720e());

    /* renamed from: n */
    public C15744c f44336n;

    /* renamed from: o */
    public C8243a f44337o;

    /* renamed from: p */
    public final g f44338p;

    /* renamed from: q */
    public final g f44339q;

    /* renamed from: e.a.k.a.g.f$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/f$a.class */
    public static final class C15716a extends m implements s1.z.b.l<C15715f, C16137k> {
        public C15716a() {
            super(1);
        }

        /* renamed from: d */
        public Object m18447d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4718R.C4720id.avatar;
            AvatarXView avatarXView = (AvatarXView) requireView.findViewById(i);
            if (avatarXView != null) {
                i = C4718R.C4720id.cameraButton;
                ImageView imageView = (ImageView) requireView.findViewById(i);
                if (imageView != null) {
                    i = C4718R.C4720id.closeButton;
                    ImageView imageView2 = (ImageView) requireView.findViewById(i);
                    if (imageView2 != null) {
                        i = C4718R.C4720id.controlsHorizontalGuide;
                        Guideline guideline = (Guideline) requireView.findViewById(i);
                        if (guideline != null) {
                            i = C4718R.C4720id.flashOverlay;
                            FrameLayout frameLayout = (FrameLayout) requireView.findViewById(i);
                            if (frameLayout != null) {
                                i = C4718R.C4720id.focusRingImageView;
                                ImageView imageView3 = (ImageView) requireView.findViewById(i);
                                if (imageView3 != null) {
                                    i = C4718R.C4720id.gradientBackground;
                                    VideoGradientView videoGradientView = (VideoGradientView) requireView.findViewById(i);
                                    if (videoGradientView != null) {
                                        i = C4718R.C4720id.menu;
                                        ImageView imageView4 = (ImageView) requireView.findViewById(i);
                                        if (imageView4 != null) {
                                            i = C4718R.C4720id.optionListView;
                                            RecyclerView recyclerView = (RecyclerView) requireView.findViewById(i);
                                            if (recyclerView != null) {
                                                i = C4718R.C4720id.previewView;
                                                PreviewView previewView = (PreviewView) requireView.findViewById(i);
                                                if (previewView != null) {
                                                    i = C4718R.C4720id.recordButton;
                                                    RecordButton recordButton = (RecordButton) requireView.findViewById(i);
                                                    if (recordButton != null) {
                                                        i = C4718R.C4720id.replayPlayerView;
                                                        PlayerView playerView = (PlayerView) requireView.findViewById(i);
                                                        if (playerView != null) {
                                                            i = C4718R.C4720id.secondaryControlsVerticalGuide;
                                                            Guideline guideline2 = (Guideline) requireView.findViewById(i);
                                                            if (guideline2 != null) {
                                                                i = C4718R.C4720id.submitButton;
                                                                ImageView imageView5 = (ImageView) requireView.findViewById(i);
                                                                if (imageView5 != null) {
                                                                    i = C4718R.C4720id.switchCameraButton;
                                                                    ImageView imageView6 = (ImageView) requireView.findViewById(i);
                                                                    if (imageView6 != null) {
                                                                        i = C4718R.C4720id.tapToPlayTextView;
                                                                        TextView textView = (TextView) requireView.findViewById(i);
                                                                        if (textView != null) {
                                                                            i = C4718R.C4720id.text_country;
                                                                            TextView textView2 = (TextView) requireView.findViewById(i);
                                                                            if (textView2 != null) {
                                                                                i = C4718R.C4720id.text_phone_number;
                                                                                TextView textView3 = (TextView) requireView.findViewById(i);
                                                                                if (textView3 != null) {
                                                                                    i = C4718R.C4720id.text_profile_name;
                                                                                    TextView textView4 = (TextView) requireView.findViewById(i);
                                                                                    if (textView4 != null) {
                                                                                        i = C4718R.C4720id.toastTextView;
                                                                                        TextView textView5 = (TextView) requireView.findViewById(i);
                                                                                        if (textView5 != null) {
                                                                                            i = C4718R.C4720id.topWindowInsetGuide;
                                                                                            Guideline guideline3 = (Guideline) requireView.findViewById(i);
                                                                                            if (guideline3 != null) {
                                                                                                i = C4718R.C4720id.torchButton;
                                                                                                ImageView imageView7 = (ImageView) requireView.findViewById(i);
                                                                                                if (imageView7 != null) {
                                                                                                    i = C4718R.C4720id.visibilityButton;
                                                                                                    TextView textView6 = (TextView) requireView.findViewById(i);
                                                                                                    if (textView6 != null) {
                                                                                                        return new C16137k((ConstraintLayout) requireView, avatarXView, imageView, imageView2, guideline, frameLayout, imageView3, videoGradientView, imageView4, recyclerView, previewView, recordButton, playerView, guideline2, imageView5, imageView6, textView, textView2, textView3, textView4, textView5, guideline3, imageView7, textView6);
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

    /* renamed from: e.a.k.a.g.f$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/f$b.class */
    public static final class RunnableC15717b implements Runnable {
        public RunnableC15717b(PointF pointF) {
            C15715f.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C15715f c15715f = C15715f.this;
            l[] lVarArr = C15715f.f44326r;
            ImageView imageView = c15715f.m18450QA().f45498f;
            imageView.animate().alpha(0.0f).setStartDelay(500L).setDuration(200L).withEndAction(new RunnableC15729h(imageView)).start();
            s1.z.c.l.d(imageView, "binding.focusRingImageVi…           .start()\n    }");
        }
    }

    /* renamed from: e.a.k.a.g.f$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/f$c.class */
    public static final class C15718c extends m implements a<Integer> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15718c() {
            super(0);
            C15715f.this = r4;
        }

        public Object invoke() {
            n3.r.a.l requireActivity = C15715f.this.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            return Integer.valueOf(requireActivity.getIntent().getIntExtra("recordingModeArg", RecordingScreenModes.RECORDING.getValue()));
        }
    }

    /* renamed from: e.a.k.a.g.f$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/f$d.class */
    public static final class C15719d extends m implements a<OnboardingData> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15719d() {
            super(0);
            C15715f.this = r4;
        }

        public Object invoke() {
            n3.r.a.l requireActivity = C15715f.this.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            return (OnboardingData) requireActivity.getIntent().getParcelableExtra("onboardingData");
        }
    }

    /* renamed from: e.a.k.a.g.f$e */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/f$e.class */
    public static final class C15720e extends m implements a<SimpleExoPlayer> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15720e() {
            super(0);
            C15715f.this = r4;
        }

        public Object invoke() {
            return new SimpleExoPlayer.C1964b(C15715f.this.requireContext()).m39243a();
        }
    }

    /* renamed from: e.a.k.a.g.f$f */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/f$f.class */
    public static final class C15721f extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15721f() {
            super(0);
            C15715f.this = r4;
        }

        public Object invoke() {
            C15757y c15757y = (C15757y) C15715f.this.m18448SA();
            Objects.requireNonNull(c15757y);
            c15757y.m18370Pj(new C15736k0(c15757y, null));
            return s.a;
        }
    }

    /* renamed from: e.a.k.a.g.f$g */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/f$g.class */
    public static final class C15722g extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15722g() {
            super(0);
            C15715f.this = r4;
        }

        public Object invoke() {
            AbstractC15756x abstractC15756x = (AbstractC15756x) ((C15757y) C15715f.this.m18448SA()).f57683a;
            if (abstractC15756x != null) {
                abstractC15756x.mo18384t();
            }
            return s.a;
        }
    }

    /* renamed from: e.a.k.a.g.f$h */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/f$h.class */
    public static final class C15723h extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15723h() {
            super(0);
            C15715f.this = r4;
        }

        public Object invoke() {
            C15757y c15757y = (C15757y) C15715f.this.m18448SA();
            AbstractC15756x abstractC15756x = (AbstractC15756x) c15757y.f57683a;
            if (abstractC15756x != null) {
                abstractC15756x.mo18411NA();
            }
            AbstractC15756x abstractC15756x2 = (AbstractC15756x) c15757y.f57683a;
            if (abstractC15756x2 != null) {
                abstractC15756x2.mo18396hr();
            }
            return s.a;
        }
    }

    /* renamed from: e.a.k.a.g.f$i */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/f$i.class */
    public static final class RunnableC15724i implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ TextView f44347a;

        public RunnableC15724i(TextView textView) {
            this.f44347a = textView;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C19286f.m13689O(this.f44347a);
        }
    }

    /* renamed from: e.a.k.a.g.f$j */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/f$j.class */
    public static final class C15725j extends m implements s1.z.b.l<VideoVisibilityConfig, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15725j() {
            super(1);
            C15715f.this = r4;
        }

        /* renamed from: d */
        public Object m18446d(Object obj) {
            VideoVisibilityConfig videoVisibilityConfig = (VideoVisibilityConfig) obj;
            s1.z.c.l.e(videoVisibilityConfig, "videoVisibilityConfig");
            Objects.requireNonNull((C15757y) C15715f.this.m18448SA());
            s1.z.c.l.e(videoVisibilityConfig, "videoVisibilityConfig");
            return s.a;
        }
    }

    public C15715f() {
        super(C4718R.layout.fragment_video_caller_id_recording);
        h hVar = h.c;
        this.f44338p = C25225a.m3982O1(hVar, new C15718c());
        this.f44339q = C25225a.m3982O1(hVar, new C15719d());
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: D4 */
    public void mo18424D4() {
        TextView textView = m18450QA().f45510r;
        s1.z.c.l.d(textView, "binding.textProfileName");
        textView.setSelected(true);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: DA */
    public void mo18423DA(String str, boolean z) {
        s1.z.c.l.e(str, "url");
        PlayerView playerView = m18450QA().f45504l;
        s1.z.c.l.d(playerView, "replayPlayerView");
        C19286f.m13684T(playerView);
        AbstractC16044q abstractC16044q = this.f44333k;
        if (abstractC16044q == null) {
            s1.z.c.l.l("exoPlayerUtil");
            throw null;
        }
        AbstractC24531p mo4937a = abstractC16044q.mo17960c().mo4937a(Uri.parse(str));
        PlayerView playerView2 = m18450QA().f45504l;
        s1.z.c.l.d(playerView2, "binding.replayPlayerView");
        View videoSurfaceView = playerView2.getVideoSurfaceView();
        if (videoSurfaceView != null) {
            s1.z.c.l.d(videoSurfaceView, "binding.replayPlayerView…ideoSurfaceView ?: return");
            AbstractC16044q abstractC16044q2 = this.f44333k;
            if (abstractC16044q2 == null) {
                s1.z.c.l.l("exoPlayerUtil");
                throw null;
            }
            i0 i0Var = this.f44327e;
            if (i0Var == null) {
                s1.z.c.l.l("scope");
                throw null;
            }
            SimpleExoPlayer m18449RA = m18449RA();
            s1.z.c.l.d(m18449RA, "playbackPlayer");
            abstractC16044q2.mo17955h(i0Var, m18449RA, videoSurfaceView, z);
        }
        m18449RA().prepare(mo4937a);
        SimpleExoPlayer m18449RA2 = m18449RA();
        s1.z.c.l.d(m18449RA2, "playbackPlayer");
        m18449RA2.setPlayWhenReady(true);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: Db */
    public void mo18422Db(boolean z) {
        Drawable m13597Q;
        Drawable m13597Q2;
        if (z) {
            ImageView imageView = m18450QA().f45513u;
            Resources resources = getResources();
            s1.z.c.l.d(resources, "resources");
            m13597Q2 = C19291g.m13597Q(resources, C4718R.C4719drawable.ic_vid_torch_on, null);
            imageView.setImageDrawable(m13597Q2);
            return;
        }
        ImageView imageView2 = m18450QA().f45513u;
        Resources resources2 = getResources();
        s1.z.c.l.d(resources2, "resources");
        m13597Q = C19291g.m13597Q(resources2, C4718R.C4719drawable.ic_vid_torch_off, null);
        imageView2.setImageDrawable(m13597Q);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: Ff */
    public void mo18421Ff(boolean z) {
        ImageView imageView = m18450QA().f45506n;
        s1.z.c.l.d(imageView, "binding.switchCameraButton");
        C19286f.m13683U(imageView, z);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: G9 */
    public void mo18420G9(boolean z) {
        ImageView imageView = m18450QA().f45495c;
        s1.z.c.l.d(imageView, "binding.cameraButton");
        C19286f.m13683U(imageView, z);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: Gh */
    public void mo18419Gh(boolean z) {
        ImageView imageView = m18450QA().f45513u;
        s1.z.c.l.d(imageView, "binding.torchButton");
        C19286f.m13683U(imageView, z);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: Hj */
    public void mo18418Hj(boolean z) {
        ImageView imageView = m18450QA().f45500h;
        s1.z.c.l.d(imageView, "binding.menu");
        C19286f.m13683U(imageView, z);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: Hl */
    public void mo18417Hl(boolean z) {
        TextView textView = m18450QA().f45514v;
        s1.z.c.l.d(textView, "binding.visibilityButton");
        C19286f.m13683U(textView, z);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: Ip */
    public void mo18416Ip(PreviewModes previewModes, String str) {
        s1.z.c.l.e(previewModes, "previewMode");
        AbstractC15980e1 abstractC15980e1 = this.f44329g;
        if (abstractC15980e1 == null) {
            s1.z.c.l.l("router");
            throw null;
        }
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        C19291g.m13643A1(abstractC15980e1, requireContext, previewModes, mo18393k0(), str, null, 16, null);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: Iw */
    public int mo18415Iw() {
        return ((Number) this.f44338p.getValue()).intValue();
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: J */
    public void mo18414J() {
        TextView textView = m18450QA().f45509q;
        s1.z.c.l.d(textView, "binding.textPhoneNumber");
        C19286f.m13689O(textView);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: J2 */
    public void mo18413J2(boolean z) {
        AvatarXView avatarXView = m18450QA().f45494b;
        s1.z.c.l.d(avatarXView, "binding.avatar");
        C19286f.m13683U(avatarXView, z);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: Lq */
    public void mo18412Lq(boolean z) {
        FrameLayout frameLayout = m18450QA().f45497e;
        s1.z.c.l.d(frameLayout, "binding.flashOverlay");
        C19286f.m13683U(frameLayout, z);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: NA */
    public void mo18411NA() {
        n3.b.a.h activity = getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "activity ?: return");
            AbstractC15980e1 abstractC15980e1 = this.f44329g;
            if (abstractC15980e1 == null) {
                s1.z.c.l.l("router");
                throw null;
            }
            C15721f c15721f = new C15721f();
            Objects.requireNonNull((C15993h1) abstractC15980e1);
            s1.z.c.l.e(activity, AnalyticsConstants.CONTEXT);
            s1.z.c.l.e(c15721f, "positiveCallback");
            ConfirmationDialog.C3713d c3713d = ConfirmationDialog.f11158i;
            n3.b.a.h hVar = activity;
            int i = C4718R.string.vid_delete_record_confirmation_title;
            int i2 = C4718R.string.video_caller_id;
            String string = activity.getString(i, activity.getString(i2));
            s1.z.c.l.d(string, "context.getString(R.stri….string.video_caller_id))");
            String string2 = activity.getString(C4718R.string.vid_delete_record_confirmation_description, activity.getString(i2));
            String string3 = activity.getString(C4718R.string.vid_delete_record);
            s1.z.c.l.d(string3, "context.getString(R.string.vid_delete_record)");
            ConfirmationDialog.C3713d.m35691b(c3713d, hVar, string, string2, string3, activity.getString(C4718R.string.StrCancel), null, new C15984f1(c15721f), null, null, false, ConfirmationDialog.ButtonStyle.ALERT, 928);
        }
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: Nv */
    public void mo18410Nv() {
        TextView textView = m18450QA().f45508p;
        s1.z.c.l.d(textView, "binding.textCountry");
        C19286f.m13689O(textView);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: Oe */
    public void mo18409Oe(PreviewModes previewModes, OutgoingVideoDetails outgoingVideoDetails) {
        s1.z.c.l.e(previewModes, "previewMode");
        s1.z.c.l.e(outgoingVideoDetails, "outgoingVideoDetails");
        AbstractC15980e1 abstractC15980e1 = this.f44329g;
        if (abstractC15980e1 == null) {
            s1.z.c.l.l("router");
            throw null;
        }
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        C19291g.m13643A1(abstractC15980e1, requireContext, previewModes, mo18393k0(), null, outgoingVideoDetails, 8, null);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: Pk */
    public void mo18408Pk(VideoCustomisationOption videoCustomisationOption) {
        s1.z.c.l.e(videoCustomisationOption, "option");
        C15744c c15744c = this.f44336n;
        if (c15744c != null) {
            c15744c.m18426e(videoCustomisationOption);
        } else {
            s1.z.c.l.l("customizationAdapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: Q8 */
    public void mo18407Q8() {
        n3.b.a.h activity = getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "activity ?: return");
            AbstractC15980e1 abstractC15980e1 = this.f44329g;
            if (abstractC15980e1 == null) {
                s1.z.c.l.l("router");
                throw null;
            }
            C15722g c15722g = new C15722g();
            Objects.requireNonNull((C15993h1) abstractC15980e1);
            s1.z.c.l.e(activity, AnalyticsConstants.CONTEXT);
            s1.z.c.l.e(c15722g, "positiveCallback");
            ConfirmationDialog.C3713d c3713d = ConfirmationDialog.f11158i;
            n3.b.a.h hVar = activity;
            String string = activity.getString(C4718R.string.discard_video_caller_id, activity.getString(C4718R.string.video_caller_id));
            s1.z.c.l.d(string, "context.getString(R.stri….string.video_caller_id))");
            String string2 = activity.getString(C4718R.string.vid_discard_video_dialog_description);
            String string3 = activity.getString(C4718R.string.StrDiscard);
            s1.z.c.l.d(string3, "context.getString(R.string.StrDiscard)");
            ConfirmationDialog.C3713d.m35691b(c3713d, hVar, string, string2, string3, activity.getString(C4718R.string.StrCancel), null, new C15988g1(c15722g), null, null, false, ConfirmationDialog.ButtonStyle.ALERT, 928);
        }
    }

    /* renamed from: QA */
    public final C16137k m18450QA() {
        return (C16137k) this.f44334l.m34468b(this, f44326r[0]);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: Qf */
    public void mo18406Qf() {
        C15744c c15744c = this.f44336n;
        if (c15744c == null) {
            s1.z.c.l.l("customizationAdapter");
            throw null;
        } else if (!(i.D(c15744c.f44383a) instanceof VideoCustomisationOption.C4735a)) {
        } else {
            c15744c.f44383a.remove(0);
            c15744c.notifyItemRemoved(0);
        }
    }

    /* renamed from: RA */
    public final SimpleExoPlayer m18449RA() {
        return (SimpleExoPlayer) this.f44335m.getValue();
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: Rc */
    public void mo18405Rc(boolean z) {
        ImageView imageView = m18450QA().f45505m;
        s1.z.c.l.d(imageView, "binding.submitButton");
        imageView.setEnabled(z);
    }

    /* renamed from: SA */
    public final AbstractC15755w m18448SA() {
        AbstractC15755w abstractC15755w = this.f44328f;
        if (abstractC15755w != null) {
            return abstractC15755w;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: Yh */
    public void mo18404Yh(String str) {
        s1.z.c.l.e(str, ImpressionData.COUNTRY);
        TextView textView = m18450QA().f45508p;
        s1.z.c.l.d(textView, "binding.textCountry");
        textView.setText(str);
        TextView textView2 = m18450QA().f45508p;
        s1.z.c.l.d(textView2, "binding.textCountry");
        C19286f.m13684T(textView2);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: Yl */
    public boolean mo18403Yl() {
        FrameLayout frameLayout = m18450QA().f45497e;
        s1.z.c.l.d(frameLayout, "binding.flashOverlay");
        return C19286f.m13663p(frameLayout);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: Zg */
    public void mo18402Zg() {
        RecordButton recordButton = m18450QA().f45503k;
        recordButton.m34433g1();
        RecordingProgressView recordingProgressView = recordButton.f16100t.f45582b;
        s1.z.c.l.d(recordingProgressView, "binding.progressBar");
        ViewGroup.LayoutParams layoutParams = recordingProgressView.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        Context context = recordButton.getContext();
        float dimension = recordButton.getResources().getDimension(C4718R.dimen.vid_recording_progress_bar_margin);
        Resources resources = recordButton.getResources();
        s1.z.c.l.d(resources, "resources");
        int m28238b = C8605o.m28238b(context, dimension / resources.getDisplayMetrics().density);
        marginLayoutParams.setMargins(m28238b, m28238b, m28238b, m28238b);
        RecordingProgressView recordingProgressView2 = recordButton.f16100t.f45582b;
        s1.z.c.l.d(recordingProgressView2, "binding.progressBar");
        recordingProgressView2.setLayoutParams(marginLayoutParams);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: a */
    public void mo18401a(int i) {
        TextView textView = m18450QA().f45511s;
        textView.setText(i);
        C19286f.m13684T(textView);
        textView.setAlpha(1.0f);
        textView.animate().setStartDelay(4000L).alpha(0.0f).setDuration(200L).withEndAction(new RunnableC15724i(textView)).start();
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: bt */
    public void mo18400bt(VideoCustomisationOption.C4735a c4735a) {
        s1.z.c.l.e(c4735a, "selfieVideo");
        C15744c c15744c = this.f44336n;
        if (c15744c == null) {
            s1.z.c.l.l("customizationAdapter");
            throw null;
        }
        s1.z.c.l.e(c4735a, "selfieVideo");
        if (i.D(c15744c.f44383a) instanceof VideoCustomisationOption.C4735a) {
            c15744c.f44383a.set(0, c4735a);
            c15744c.notifyItemChanged(0);
            return;
        }
        c15744c.f44383a.add(0, c4735a);
        c15744c.notifyItemInserted(0);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: dp */
    public void mo18399dp(boolean z) {
        TextView textView = m18450QA().f45507o;
        s1.z.c.l.d(textView, "binding.tapToPlayTextView");
        C19286f.m13683U(textView, z);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: ga */
    public void mo18398ga() {
        RecordButton recordButton = m18450QA().f45503k;
        recordButton.m34433g1();
        RecordingProgressView recordingProgressView = recordButton.f16100t.f45582b;
        s1.z.c.l.d(recordingProgressView, "binding.progressBar");
        ViewGroup.LayoutParams layoutParams = recordingProgressView.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.setMargins(0, 0, 0, 0);
        RecordingProgressView recordingProgressView2 = recordButton.f16100t.f45582b;
        s1.z.c.l.d(recordingProgressView2, "binding.progressBar");
        recordingProgressView2.setLayoutParams(marginLayoutParams);
        RecordingProgressView recordingProgressView3 = recordButton.f16100t.f45582b;
        C15907c c15907c = new C15907c(recordButton);
        Objects.requireNonNull(recordingProgressView3);
        s1.z.c.l.e(c15907c, "onEndCallback");
        Animator animator = recordingProgressView3.f16107f;
        if (animator != null) {
            animator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(recordingProgressView3.getResources().getDimension(C4718R.dimen.vid_recording_progress_bg_padding_start), 0.0f);
        ofFloat.addUpdateListener(new f0(0, recordingProgressView3));
        Context context = recordingProgressView3.getContext();
        int i = C4718R.color.video_caller_id_recording_progress_bg_start;
        Object obj = C26467a.f74235a;
        ValueAnimator ofArgb = ValueAnimator.ofArgb(C26467a.C26471d.m1787a(context, i), C26467a.C26471d.m1787a(recordingProgressView3.getContext(), C4718R.color.video_caller_id_recording_progress_bg_end));
        ofArgb.addUpdateListener(new f0(1, recordingProgressView3));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(300L);
        animatorSet.playTogether(ofFloat, ofArgb);
        C12864a2.m22557f(animatorSet, true, new C15908d(ofFloat, ofArgb, c15907c));
        animatorSet.start();
        recordingProgressView3.f16107f = animatorSet;
        recordButton.f16100t.f45583c.animate().scaleX(1.0f).scaleY(1.0f).setDuration(300L).start();
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: h8 */
    public void mo18397h8() {
        C15628a.C15630b c15630b = C15628a.f44164k;
        FragmentManager parentFragmentManager = getParentFragmentManager();
        s1.z.c.l.d(parentFragmentManager, "parentFragmentManager");
        Objects.requireNonNull(c15630b);
        s1.z.c.l.e(parentFragmentManager, "fragmentManager");
        C15628a m42942K = parentFragmentManager.m42942K(C15628a.class.getSimpleName());
        Fragment fragment = m42942K;
        if (!(m42942K instanceof C15628a)) {
            fragment = null;
        }
        if (fragment != null) {
            return;
        }
        try {
            C15628a c15628a = new C15628a();
            c15628a.f44167g = null;
            c15628a.show(parentFragmentManager, C15628a.class.getSimpleName());
        } catch (IllegalStateException e) {
        }
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: hr */
    public void mo18396hr() {
        C15754v c15754v = this.f44331i;
        if (c15754v == null) {
            s1.z.c.l.l("recordingMenuViewHandler");
            throw null;
        }
        PopupWindow popupWindow = c15754v.f44397a;
        if (popupWindow == null) {
            return;
        }
        popupWindow.dismiss();
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: j6 */
    public void mo18395j6(boolean z) {
        RecyclerView recyclerView = m18450QA().f45501i;
        s1.z.c.l.d(recyclerView, "binding.optionListView");
        C19286f.m13683U(recyclerView, z);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: jn */
    public void mo18394jn(boolean z) {
        VideoGradientView videoGradientView = m18450QA().f45499g;
        s1.z.c.l.d(videoGradientView, "binding.gradientBackground");
        C19286f.m13683U(videoGradientView, z);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: k0 */
    public OnboardingData mo18393k0() {
        return (OnboardingData) this.f44339q.getValue();
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: lw */
    public void mo18392lw(VideoCustomisationOption videoCustomisationOption) {
        s1.z.c.l.e(videoCustomisationOption, "option");
        C15744c c15744c = this.f44336n;
        if (c15744c == null) {
            s1.z.c.l.l("customizationAdapter");
            throw null;
        }
        Objects.requireNonNull(c15744c);
        s1.z.c.l.e(videoCustomisationOption, "item");
        if (c15744c.f44383a.contains(videoCustomisationOption)) {
            int indexOf = c15744c.f44383a.indexOf(videoCustomisationOption);
            c15744c.f44383a.set(indexOf, videoCustomisationOption);
            c15744c.notifyItemChanged(indexOf);
        } else {
            c15744c.f44383a.add(videoCustomisationOption);
            c15744c.notifyItemInserted(c15744c.f44383a.indexOf(videoCustomisationOption));
        }
        RecyclerView recyclerView = m18450QA().f45501i;
        s1.z.c.l.d(recyclerView, "binding.optionListView");
        C19286f.m13684T(recyclerView);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: mz */
    public void mo18391mz(String str) {
        Object obj;
        s1.z.c.l.e(str, "videoId");
        C15744c c15744c = this.f44336n;
        if (c15744c == null) {
            s1.z.c.l.l("customizationAdapter");
            throw null;
        }
        Objects.requireNonNull(c15744c);
        s1.z.c.l.e(str, "videoId");
        Iterator<T> it = c15744c.f44383a.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            Object next = it.next();
            VideoCustomisationOption videoCustomisationOption = (VideoCustomisationOption) next;
            VideoCustomisationOption videoCustomisationOption2 = videoCustomisationOption;
            if (!(videoCustomisationOption instanceof VideoCustomisationOption.PredefinedVideo)) {
                videoCustomisationOption2 = null;
            }
            VideoCustomisationOption.PredefinedVideo predefinedVideo = (VideoCustomisationOption.PredefinedVideo) videoCustomisationOption2;
            if (s1.z.c.l.a(predefinedVideo != null ? predefinedVideo.f16041a : null, str)) {
                obj = next;
                break;
            }
        }
        VideoCustomisationOption videoCustomisationOption3 = (VideoCustomisationOption) obj;
        VideoCustomisationOption.PredefinedVideo predefinedVideo2 = (VideoCustomisationOption.PredefinedVideo) (!(videoCustomisationOption3 instanceof VideoCustomisationOption.PredefinedVideo) ? null : videoCustomisationOption3);
        if (predefinedVideo2 != null) {
            predefinedVideo2.f16047g = false;
        }
        c15744c.notifyItemChanged(i.J(c15744c.f44383a, videoCustomisationOption3));
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: n9 */
    public void mo18390n9() {
        C15754v c15754v = this.f44331i;
        if (c15754v == null) {
            s1.z.c.l.l("recordingMenuViewHandler");
            throw null;
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        ImageView imageView = m18450QA().f45500h;
        s1.z.c.l.d(imageView, "binding.menu");
        C15723h c15723h = new C15723h();
        Objects.requireNonNull(c15754v);
        s1.z.c.l.e(childFragmentManager, "fragmentManager");
        s1.z.c.l.e(imageView, "anchor");
        s1.z.c.l.e(c15723h, "itemClickListener");
        Context context = imageView.getContext();
        PopupWindow popupWindow = c15754v.f44397a;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
        AtomicInteger atomicInteger = C26614s.f74505a;
        boolean z = imageView.getLayoutDirection() == 0;
        LayoutInflater from = LayoutInflater.from(context);
        s1.z.c.l.d(from, "LayoutInflater.from(context)");
        View inflate = C17422k.m16050u0(from, true).inflate(C4718R.layout.menu_video_caller_id_recording_options, (ViewGroup) null, false);
        int i = C4718R.C4720id.deleteTV;
        TextView textView = (TextView) inflate.findViewById(i);
        if (textView == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
        C16144r c16144r = new C16144r((CardView) inflate, textView);
        s1.z.c.l.d(c16144r, "MenuVideoCallerIdRecordi…          false\n        )");
        PopupWindow popupWindow2 = new PopupWindow((View) c16144r.f45541a, -2, -2, true);
        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
        Resources resources = context.getResources();
        int i2 = C4718R.dimen.vid_recording_popup_margins;
        float dimension = resources.getDimension(i2);
        float dimension2 = context.getResources().getDimension(C4718R.dimen.vid_recording_popup_width);
        float dimension3 = context.getResources().getDimension(i2);
        float f = dimension;
        if (z) {
            f = (-dimension2) - dimension;
        }
        popupWindow2.setBackgroundDrawable(new ColorDrawable(0));
        c16144r.f45542b.setOnClickListener(new View$OnClickListenerC15753u(context, z, c16144r, c15723h, imageView));
        popupWindow2.showAsDropDown(imageView, (int) f, (-imageView.getHeight()) - ((int) dimension3), 8388613);
        c15754v.f44397a = popupWindow2;
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: nc */
    public void mo18389nc(boolean z) {
        ImageView imageView = m18450QA().f45505m;
        s1.z.c.l.d(imageView, "binding.submitButton");
        C19286f.m13683U(imageView, z);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: og */
    public void mo18388og() {
        C16137k m18450QA = m18450QA();
        SimpleExoPlayer m18449RA = m18449RA();
        s1.z.c.l.d(m18449RA, "playbackPlayer");
        if (m18449RA.isPlaying()) {
            m18449RA().stop();
        }
        PlayerView playerView = m18450QA.f45504l;
        s1.z.c.l.d(playerView, "replayPlayerView");
        C19286f.m13689O(playerView);
    }

    public void onDestroyView() {
        AbstractC15755w abstractC15755w = this.f44328f;
        if (abstractC15755w == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C15757y) abstractC15755w).mo9806c();
        m18449RA().release();
        C15754v c15754v = this.f44331i;
        if (c15754v == null) {
            s1.z.c.l.l("recordingMenuViewHandler");
            throw null;
        }
        PopupWindow popupWindow = c15754v.f44397a;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
        C15715f.super.onDestroyView();
    }

    public void onStop() {
        AbstractC15755w abstractC15755w = this.f44328f;
        if (abstractC15755w == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C15757y c15757y = (C15757y) abstractC15755w;
        Objects.requireNonNull(c15757y);
        c15757y.m18370Pj(new C15730h0(c15757y, null));
        C15715f.super.onStop();
    }

    public void onViewCreated(View view, Bundle bundle) {
        OnBackPressedDispatcher onBackPressedDispatcher;
        s1.z.c.l.e(view, ViewAction.VIEW);
        C15715f.super.onViewCreated(view, bundle);
        n3.r.a.l activity = getActivity();
        if (activity != null && (onBackPressedDispatcher = activity.getOnBackPressedDispatcher()) != null) {
            C15731i c15731i = new C15731i(this, true);
            onBackPressedDispatcher.f73b.add(c15731i);
            c15731i.addCancellable(new OnBackPressedDispatcher.C0018a(c15731i));
        }
        C26614s.m1563r(requireView(), new C15727g(this));
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        C26574e c26574e = new C26574e(requireContext, new C15739m(this, requireContext));
        ((C26574e.C26576b) c26574e.f74449a).f74450a.setIsLongpressEnabled(false);
        a0 a0Var = new a0();
        a0Var.a = -1;
        m18450QA().f45503k.setOnTouchListener(new View$OnTouchListenerC15737l(this, a0Var, c26574e));
        View view2 = getView();
        if (view2 != null) {
            view2.setFocusableInTouchMode(true);
            view2.requestFocus();
            view2.setOnKeyListener(new View$OnKeyListenerC15741n(this));
        }
        m18450QA().f45506n.setOnClickListener(new View$OnClickListenerC15748p(this));
        m18450QA().f45496d.setOnClickListener(new View$OnClickListenerC15735k(this));
        m18450QA().f45514v.setOnClickListener(new View$OnClickListenerC15750r(this));
        PlayerView playerView = m18450QA().f45504l;
        s1.z.c.l.d(playerView, "binding.replayPlayerView");
        playerView.setPlayer(m18449RA());
        SimpleExoPlayer m18449RA = m18449RA();
        s1.z.c.l.d(m18449RA, "playbackPlayer");
        m18449RA.setRepeatMode(2);
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        requireActivity.getOnBackPressedDispatcher();
        m18450QA().f45495c.setOnClickListener(new View$OnClickListenerC15733j(this));
        m18450QA().f45513u.setOnClickListener(new View$OnClickListenerC15749q(this));
        ImageView imageView = m18450QA().f45505m;
        s1.z.c.l.e(imageView, "$this$setRoundOutlineProvider");
        imageView.setOutlineProvider(new C19294h0());
        imageView.setOnClickListener(new View$OnClickListenerC15747o(this));
        this.f44336n = new C15744c(new n1(0, this), new n1(1, this));
        RecyclerView recyclerView = m18450QA().f45501i;
        Context requireContext2 = requireContext();
        s1.z.c.l.d(requireContext2, "requireContext()");
        recyclerView.addItemDecoration(new C15745d(requireContext2));
        C15744c c15744c = this.f44336n;
        if (c15744c == null) {
            s1.z.c.l.l("customizationAdapter");
            throw null;
        }
        recyclerView.setAdapter(c15744c);
        m18450QA().f45500h.setOnClickListener(new View$OnClickListenerC15751s(this));
        AbstractC19233h0 abstractC19233h0 = this.f44332j;
        if (abstractC19233h0 == null) {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
        this.f44337o = new C8243a(abstractC19233h0);
        AvatarXView avatarXView = m18450QA().f45494b;
        C8243a c8243a = this.f44337o;
        if (c8243a == null) {
            s1.z.c.l.l("avatarPresenter");
            throw null;
        }
        avatarXView.setPresenter(c8243a);
        AbstractC15755w abstractC15755w = this.f44328f;
        if (abstractC15755w != null) {
            ((C15757y) abstractC15755w).mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: pw */
    public void mo18387pw() {
        AbstractC15980e1 abstractC15980e1 = this.f44330h;
        if (abstractC15980e1 == null) {
            s1.z.c.l.l("videoCallerIdRouter");
            throw null;
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        C15725j c15725j = new C15725j();
        Objects.requireNonNull((C15993h1) abstractC15980e1);
        s1.z.c.l.e(childFragmentManager, "fragmentManager");
        s1.z.c.l.e(c15725j, "callback");
        Objects.requireNonNull(C15911b.f44892i);
        C15911b c15911b = new C15911b();
        c15911b.f44894f = c15725j;
        c15911b.show(childFragmentManager, d0.a(C15911b.class).c());
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: rn */
    public VideoCustomisationOption mo18386rn() {
        C15744c c15744c = this.f44336n;
        VideoCustomisationOption videoCustomisationOption = null;
        if (c15744c == null) {
            s1.z.c.l.l("customizationAdapter");
            throw null;
        }
        Integer num = c15744c.f44384b;
        if (num != null) {
            videoCustomisationOption = c15744c.f44383a.get(num.intValue());
        }
        return videoCustomisationOption;
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: rt */
    public void mo18385rt(String str) {
        Object obj;
        boolean z;
        s1.z.c.l.e(str, "id");
        C15744c c15744c = this.f44336n;
        if (c15744c == null) {
            s1.z.c.l.l("customizationAdapter");
            throw null;
        }
        s1.z.c.l.e(str, "id");
        Iterator<T> it = c15744c.f44383a.iterator();
        do {
            obj = null;
            if (!it.hasNext()) {
                break;
            }
            obj = it.next();
            VideoCustomisationOption videoCustomisationOption = (VideoCustomisationOption) obj;
            if (videoCustomisationOption instanceof VideoCustomisationOption.C4735a) {
                z = s1.z.c.l.a(((VideoCustomisationOption.C4735a) videoCustomisationOption).f16048a, str);
            } else if (!(videoCustomisationOption instanceof VideoCustomisationOption.PredefinedVideo)) {
                throw new s1.i();
            } else {
                z = s1.z.c.l.a(((VideoCustomisationOption.PredefinedVideo) videoCustomisationOption).f16041a, str);
            }
        } while (!z);
        VideoCustomisationOption videoCustomisationOption2 = (VideoCustomisationOption) obj;
        if (videoCustomisationOption2 == null) {
            return;
        }
        c15744c.m18426e(videoCustomisationOption2);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    public void setAvatarConfig(AvatarXConfig avatarXConfig) {
        s1.z.c.l.e(avatarXConfig, "avatarXConfig");
        C8243a c8243a = this.f44337o;
        if (c8243a != null) {
            C8243a.m28739ok(c8243a, avatarXConfig, false, 2, null);
        } else {
            s1.z.c.l.l("avatarPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    public void setPhoneNumber(String str) {
        s1.z.c.l.e(str, "number");
        TextView textView = m18450QA().f45509q;
        s1.z.c.l.d(textView, "binding.textPhoneNumber");
        textView.setText(str);
        TextView textView2 = m18450QA().f45509q;
        s1.z.c.l.d(textView2, "binding.textPhoneNumber");
        C19286f.m13684T(textView2);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    public void setProfileName(String str) {
        s1.z.c.l.e(str, AnalyticsConstants.NAME);
        TextView textView = m18450QA().f45510r;
        s1.z.c.l.d(textView, "binding.textProfileName");
        textView.setText(str);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: t */
    public void mo18384t() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: td */
    public void mo18383td() {
        C15744c c15744c = this.f44336n;
        if (c15744c == null) {
            s1.z.c.l.l("customizationAdapter");
            throw null;
        }
        Integer num = c15744c.f44384b;
        c15744c.f44384b = null;
        if (num == null) {
            return;
        }
        c15744c.notifyItemChanged(num.intValue());
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: up */
    public void mo18382up(OnboardingData onboardingData, String str) {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        VideoUploadService.m34428h(requireContext, onboardingData, str);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: w8 */
    public void mo18381w8(PointF pointF) {
        s1.z.c.l.e(pointF, "point");
        ImageView imageView = m18450QA().f45498f;
        imageView.animate().cancel();
        imageView.setTranslationX(pointF.x - (imageView.getWidth() / 2.0f));
        imageView.setTranslationY(pointF.y - (imageView.getHeight() / 2.0f));
        imageView.setScaleX(1.5f);
        imageView.setScaleY(1.5f);
        imageView.setAlpha(1.0f);
        C19286f.m13684T(imageView);
        imageView.animate().scaleX(1.0f).scaleY(1.0f).setDuration(300L).setStartDelay(0L).setInterpolator(new AccelerateDecelerateInterpolator()).withEndAction(new RunnableC15717b(pointF)).start();
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: xr */
    public void mo18380xr(boolean z) {
        RecordButton recordButton = m18450QA().f45503k;
        s1.z.c.l.d(recordButton, "binding.recordButton");
        C19286f.m13683U(recordButton, z);
    }

    @Override // p193e.p194a.p947k.p948a.p959g.AbstractC15756x
    /* renamed from: zw */
    public void mo18379zw() {
        TextView textView = m18450QA().f45511s;
        textView.animate().cancel();
        C19286f.m13689O(textView);
    }
}

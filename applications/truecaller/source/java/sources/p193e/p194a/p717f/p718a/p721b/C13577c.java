package p193e.p194a.p717f.p718a.p721b;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.callrecording.p154ui.floatingbutton.CallRecordingFloatingButton;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.common.p156ui.textview.GoldShineChronometer;
import com.truecaller.common.p156ui.textview.GoldShineTextView;
import com.truecaller.contextcall.p160ui.reasonpicker.ondemand.OnDemandMessageSource;
import com.truecaller.contextcall.utils.view.ondemandreasonpicker.OnDemandCallReasonPickerView;
import com.truecaller.incallui.C4013R;
import com.truecaller.incallui.callui.ongoing.OngoingCallUIEvent;
import com.truecaller.incallui.utils.OngoingCallActionButton;
import com.truecaller.incallui.utils.analytics.events.AnalyticsContext;
import com.truecaller.timezone.TimezoneView;
import com.truecaller.truecontext.TrueContext;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import com.truecaller.videocallerid.p187ui.utils.ToastWithActionView;
import com.truecaller.voip.VoipCallOptions;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1041l0.AbstractC17351f;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1064m5.AbstractC18240c;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18591d;
import p193e.p194a.p1080o.p1097b.AbstractC18742m;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p372b0.p373a.p383e0.C8304c;
import p193e.p194a.p619d.p637c0.AbstractC11476s1;
import p193e.p194a.p717f.C13729v;
import p193e.p194a.p717f.p718a.AbstractC13634c;
import p193e.p194a.p717f.p718a.p721b.p722a.C13560d;
import p193e.p194a.p717f.p718a.p721b.p723b.C13568a;
import p193e.p194a.p717f.p718a.p721b.p724v.C13612a;
import p193e.p194a.p717f.p718a.p721b.p726x.C13629b;
import p193e.p194a.p717f.p732x.C13746e;
import p193e.p194a.p717f.p732x.C13750i;
import p193e.p194a.p717f.p732x.C13751j;
import p193e.p194a.p717f.p732x.C13752k;
import p193e.p194a.p717f.p734z.AbstractC13809c0;
import p193e.p194a.p717f.p734z.p736n0.C13843a;
import p193e.p194a.p947k.p948a.p963j.C15804a;
import p193e.p194a.p982k0.p989n.p992c.AbstractC16393b;
import q3.a.j0;
import q3.a.w2.h;
import q3.a.w2.r;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.s;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��Î\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0017\n\u0002\u0010\u000e\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\b\u0007\u0018�� Æ\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0002Ç\u0001B\b¢\u0006\u0005\bÅ\u0001\u0010\u0013J+\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0017\u0010\u0013J\u000f\u0010\u0018\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0018\u0010\u0013J\u0019\u0010\u001b\u001a\u00020\u000f2\b\b\u0001\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u001e\u001a\u00020\u000f2\b\b\u0001\u0010\u001d\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001e\u0010\u001cJ\u000f\u0010\u001f\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u001f\u0010\u0013J\u000f\u0010 \u001a\u00020\u000fH\u0016¢\u0006\u0004\b \u0010\u0013J\u0017\u0010#\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u000fH\u0016¢\u0006\u0004\b%\u0010\u0013J\u000f\u0010&\u001a\u00020\u000fH\u0016¢\u0006\u0004\b&\u0010\u0013J\u000f\u0010'\u001a\u00020\u000fH\u0016¢\u0006\u0004\b'\u0010\u0013J\u000f\u0010(\u001a\u00020\u000fH\u0016¢\u0006\u0004\b(\u0010\u0013J\u000f\u0010)\u001a\u00020\u000fH\u0016¢\u0006\u0004\b)\u0010\u0013J\u000f\u0010*\u001a\u00020\u000fH\u0016¢\u0006\u0004\b*\u0010\u0013J\u0017\u0010+\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u0019H\u0016¢\u0006\u0004\b+\u0010\u001cJ\u0011\u0010,\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u000fH\u0016¢\u0006\u0004\b.\u0010\u0013J\u000f\u0010/\u001a\u00020\u000fH\u0016¢\u0006\u0004\b/\u0010\u0013J\u000f\u00100\u001a\u00020\u000fH\u0016¢\u0006\u0004\b0\u0010\u0013J\u000f\u00101\u001a\u00020\u000fH\u0016¢\u0006\u0004\b1\u0010\u0013J\u000f\u00102\u001a\u00020\u000fH\u0016¢\u0006\u0004\b2\u0010\u0013J\u000f\u00103\u001a\u00020\u000fH\u0016¢\u0006\u0004\b3\u0010\u0013J\u000f\u00104\u001a\u00020\u000fH\u0016¢\u0006\u0004\b4\u0010\u0013J\u000f\u00105\u001a\u00020\u000fH\u0016¢\u0006\u0004\b5\u0010\u0013J\u000f\u00106\u001a\u00020\u000fH\u0016¢\u0006\u0004\b6\u0010\u0013J\u000f\u00107\u001a\u00020\u000fH\u0016¢\u0006\u0004\b7\u0010\u0013J\u000f\u00108\u001a\u00020\u000fH\u0016¢\u0006\u0004\b8\u0010\u0013J\u0017\u0010;\u001a\u00020\u000f2\u0006\u0010:\u001a\u000209H\u0016¢\u0006\u0004\b;\u0010<J\u0019\u0010>\u001a\u00020\u000f2\b\b\u0001\u0010=\u001a\u00020\u0019H\u0016¢\u0006\u0004\b>\u0010\u001cJ\u000f\u0010?\u001a\u00020\u000fH\u0016¢\u0006\u0004\b?\u0010\u0013J\u000f\u0010@\u001a\u00020\u000fH\u0016¢\u0006\u0004\b@\u0010\u0013J\u000f\u0010A\u001a\u00020\u000fH\u0016¢\u0006\u0004\bA\u0010\u0013J\u000f\u0010B\u001a\u00020\u000fH\u0016¢\u0006\u0004\bB\u0010\u0013J\u000f\u0010C\u001a\u00020\u000fH\u0016¢\u0006\u0004\bC\u0010\u0013J\u000f\u0010D\u001a\u00020\u000fH\u0016¢\u0006\u0004\bD\u0010\u0013J\u000f\u0010E\u001a\u00020\u000fH\u0016¢\u0006\u0004\bE\u0010\u0013J\u000f\u0010F\u001a\u00020\u000fH\u0016¢\u0006\u0004\bF\u0010\u0013J\u000f\u0010G\u001a\u00020\u000fH\u0016¢\u0006\u0004\bG\u0010\u0013J\u000f\u0010H\u001a\u00020\u000fH\u0016¢\u0006\u0004\bH\u0010\u0013J\u000f\u0010I\u001a\u00020\u000fH\u0016¢\u0006\u0004\bI\u0010\u0013J\u000f\u0010J\u001a\u00020\u000fH\u0016¢\u0006\u0004\bJ\u0010\u0013J\u000f\u0010K\u001a\u00020\u000fH\u0016¢\u0006\u0004\bK\u0010\u0013J\u000f\u0010L\u001a\u00020\u000fH\u0016¢\u0006\u0004\bL\u0010\u0013J\u000f\u0010M\u001a\u00020\u000fH\u0016¢\u0006\u0004\bM\u0010\u0013J\u000f\u0010N\u001a\u00020\u000fH\u0016¢\u0006\u0004\bN\u0010\u0013J\u000f\u0010O\u001a\u00020\u000fH\u0016¢\u0006\u0004\bO\u0010\u0013J\u000f\u0010P\u001a\u00020\u000fH\u0016¢\u0006\u0004\bP\u0010\u0013J\u0017\u0010S\u001a\u00020\u000f2\u0006\u0010R\u001a\u00020QH\u0016¢\u0006\u0004\bS\u0010TJ\u000f\u0010U\u001a\u00020\u000fH\u0016¢\u0006\u0004\bU\u0010\u0013J\u000f\u0010V\u001a\u00020\u000fH\u0016¢\u0006\u0004\bV\u0010\u0013J\u000f\u0010W\u001a\u00020\u000fH\u0016¢\u0006\u0004\bW\u0010\u0013J\u000f\u0010X\u001a\u00020\u000fH\u0016¢\u0006\u0004\bX\u0010\u0013J\u000f\u0010Y\u001a\u00020\u000fH\u0016¢\u0006\u0004\bY\u0010\u0013J\u000f\u0010Z\u001a\u00020\u000fH\u0016¢\u0006\u0004\bZ\u0010\u0013J\u000f\u0010[\u001a\u00020\u000fH\u0016¢\u0006\u0004\b[\u0010\u0013J\u0017\u0010]\u001a\u00020\u000f2\u0006\u0010\\\u001a\u000209H\u0016¢\u0006\u0004\b]\u0010<J\u000f\u0010^\u001a\u00020\u000fH\u0016¢\u0006\u0004\b^\u0010\u0013J\u0017\u0010a\u001a\u00020\u000f2\u0006\u0010`\u001a\u00020_H\u0016¢\u0006\u0004\ba\u0010bJ\u000f\u0010c\u001a\u00020\u000fH\u0016¢\u0006\u0004\bc\u0010\u0013J\u0017\u0010e\u001a\u00020\u000f2\u0006\u0010d\u001a\u00020\u0014H\u0016¢\u0006\u0004\be\u0010fJ\u000f\u0010g\u001a\u00020\u0014H\u0016¢\u0006\u0004\bg\u0010\u0016J\u0017\u0010h\u001a\u00020\u000f2\u0006\u0010d\u001a\u00020\u0014H\u0016¢\u0006\u0004\bh\u0010fJ\u0019\u0010j\u001a\u00020\u000f2\b\u0010i\u001a\u0004\u0018\u000109H\u0016¢\u0006\u0004\bj\u0010<J\u0017\u0010m\u001a\u00020\u000f2\u0006\u0010l\u001a\u00020kH\u0016¢\u0006\u0004\bm\u0010nJ\u0017\u0010p\u001a\u00020\u000f2\u0006\u0010o\u001a\u00020\u0014H\u0016¢\u0006\u0004\bp\u0010fJ!\u0010s\u001a\u00020\u000f2\b\u0010q\u001a\u0004\u0018\u0001092\u0006\u0010r\u001a\u00020kH\u0016¢\u0006\u0004\bs\u0010tJ\u000f\u0010u\u001a\u00020\u000fH\u0016¢\u0006\u0004\bu\u0010\u0013J\u000f\u0010v\u001a\u00020\u000fH\u0016¢\u0006\u0004\bv\u0010\u0013J\u0017\u0010y\u001a\u00020\u000f2\u0006\u0010x\u001a\u00020wH\u0016¢\u0006\u0004\by\u0010zJ\u000f\u0010{\u001a\u00020\u000fH\u0016¢\u0006\u0004\b{\u0010\u0013J\u000f\u0010|\u001a\u00020\u000fH\u0016¢\u0006\u0004\b|\u0010\u0013R\u0017\u0010\u0080\u0001\u001a\u00020}8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b~\u0010\u007fR\u001a\u0010\u0084\u0001\u001a\u00030\u0081\u00018T@\u0014X\u0094\u0004¢\u0006\b\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001R\u001a\u0010\u0088\u0001\u001a\u00030\u0085\u00018T@\u0014X\u0094\u0004¢\u0006\b\u001a\u0006\b\u0086\u0001\u0010\u0087\u0001R*\u0010\u0090\u0001\u001a\u00030\u0089\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u008a\u0001\u0010\u008b\u0001\u001a\u0006\b\u008c\u0001\u0010\u008d\u0001\"\u0006\b\u008e\u0001\u0010\u008f\u0001R\u001a\u0010\u0094\u0001\u001a\u00030\u0091\u00018T@\u0014X\u0094\u0004¢\u0006\b\u001a\u0006\b\u0092\u0001\u0010\u0093\u0001R,\u0010\u0098\u0001\u001a\u0015\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u000f0\u0095\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0097\u0001R#\u0010\u009e\u0001\u001a\u00030\u0099\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u009a\u0001\u0010\u009b\u0001\u001a\u0006\b\u009c\u0001\u0010\u009d\u0001R\u0018\u0010 \u0001\u001a\u00020}8T@\u0014X\u0094\u0004¢\u0006\u0007\u001a\u0005\b\u009f\u0001\u0010\u007fR\u001a\u0010¤\u0001\u001a\u00030¡\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¢\u0001\u0010£\u0001R\u0018\u0010¦\u0001\u001a\u00020}8T@\u0014X\u0094\u0004¢\u0006\u0007\u001a\u0005\b¥\u0001\u0010\u007fR\u001a\u0010ª\u0001\u001a\u00030§\u00018T@\u0014X\u0094\u0004¢\u0006\b\u001a\u0006\b¨\u0001\u0010©\u0001R\u0018\u0010¬\u0001\u001a\u00020}8T@\u0014X\u0094\u0004¢\u0006\u0007\u001a\u0005\b«\u0001\u0010\u007fR,\u0010®\u0001\u001a\u0015\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u000f0\u0095\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u00ad\u0001\u0010\u0097\u0001R\u0018\u0010°\u0001\u001a\u00020}8T@\u0014X\u0094\u0004¢\u0006\u0007\u001a\u0005\b¯\u0001\u0010\u007fR,\u0010²\u0001\u001a\u0015\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u000f0\u0095\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b±\u0001\u0010\u0097\u0001R\u0018\u0010´\u0001\u001a\u00020}8T@\u0014X\u0094\u0004¢\u0006\u0007\u001a\u0005\b³\u0001\u0010\u007fR\u001a\u0010¶\u0001\u001a\u00030\u0091\u00018T@\u0014X\u0094\u0004¢\u0006\b\u001a\u0006\bµ\u0001\u0010\u0093\u0001R\u001c\u0010º\u0001\u001a\u0005\u0018\u00010·\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010¹\u0001R\u001a\u0010¾\u0001\u001a\u00030»\u00018T@\u0014X\u0094\u0004¢\u0006\b\u001a\u0006\b¼\u0001\u0010½\u0001R(\u0010R\u001a\u00020\u00028\u0014@\u0014X\u0095.¢\u0006\u0018\n\u0006\b¿\u0001\u0010À\u0001\u001a\u0006\bÁ\u0001\u0010Â\u0001\"\u0006\bÃ\u0001\u0010Ä\u0001¨\u0006È\u0001"}, d2 = {"Le/a/f/a/b/c;", "Le/a/f/a/c;", "Le/a/f/a/b/h;", "Le/a/f/a/b/i;", "Le/a/o/a/g/c;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "m2", "()V", "", "jo", "()Z", "r5", "onResume", "", UpdateKey.STATUS, "ry", "(I)V", RemoteMessageConst.Notification.COLOR, "L4", "Of", "s1", "", "chronometerBase", "t5", "(J)V", "Rg", "hg", "bB", "Yn", "cB", "ic", "D3", "f8", "()Ljava/lang/Integer;", "Jw", "T1", "dB", "re", "eB", "z", "Bj", "G6", "le", "jq", "La", "", "text", "sy", "(Ljava/lang/String;)V", RemoteMessageConst.Notification.ICON, "lc", "Sa", "dx", "dA", "Vg", "xv", "an", "Fq", "Cx", "Js", "di", "Dg", "Vq", "Tb", "uu", "in", "wc", "X5", "Bf", "Le/a/m5/c;", "presenter", "P", "(Le/a/m5/c;)V", "n", "y5", "Oc", "Vm", "Ti", "z9", "Lm", "postDialSequence", "H9", "q", "Le/a/k/a/j/a$a;", "toastMessage", "Qb", "(Le/a/k/a/j/a$a;)V", "M1", "visible", "So", "(Z)V", "wu", "Ux", "rawNumber", "O6", "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;", "source", "O3", "(Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;)V", "shouldShowCallReason", "fl", "message", "onDemandMessageSource", "ji", "(Ljava/lang/String;Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;)V", "onDetach", "onDestroyView", "Le/a/o/a/g/d;", "type", "Vi", "(Le/a/o/a/g/d;)V", "q4", "Hg", "Lcom/truecaller/common/ui/textview/GoldShineTextView;", "XA", "()Lcom/truecaller/common/ui/textview/GoldShineTextView;", "textProfileName", "Landroid/widget/ImageView;", "PA", "()Landroid/widget/ImageView;", "imgUserBadge", "Lcom/truecaller/common/ui/avatar/AvatarXView;", "OA", "()Lcom/truecaller/common/ui/avatar/AvatarXView;", "avatar", "Le/a/o/b/m;", "g", "Le/a/o/b/m;", "getContextCallRouter", "()Le/a/o/b/m;", "setContextCallRouter", "(Le/a/o/b/m;)V", "contextCallRouter", "Landroid/widget/TextView;", "SA", "()Landroid/widget/TextView;", "spamCallerLabel", "Lkotlin/Function2;", "j", "Ls1/z/b/p;", "muteCheckedChangeListener", "Le/a/f/x/e;", "l", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "iB", "()Le/a/f/x/e;", "binding", "UA", "textCarrier", "Le/a/k/a/j/a;", "k", "Le/a/k/a/j/a;", "toasViewQueue", "TA", "textAltName", "Lcom/truecaller/timezone/TimezoneView;", "ZA", "()Lcom/truecaller/timezone/TimezoneView;", "timezoneView", "VA", "textNumber", "i", "holdCheckedChangedListener", "YA", "textSimSlot", "h", "audioRouteCheckedChangedListener", "WA", "textPhonebookNumber", "RA", "regularCallerLabel", "Ljava/lang/Runnable;", "m", "Ljava/lang/Runnable;", "showVoipToolTipRunnable", "Lcom/truecaller/truecontext/TrueContext;", "aB", "()Lcom/truecaller/truecontext/TrueContext;", "trueContext", "f", "Le/a/f/a/b/h;", "jB", "()Le/a/f/a/b/h;", "setPresenter", "(Le/a/f/a/b/h;)V", "<init>", "o", "d", "incallui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.f.a.b.c */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/c.class */
public final class C13577c extends AbstractC13634c<AbstractC13588h> implements AbstractC13589i, AbstractC18590c {

    /* renamed from: n */
    public static final /* synthetic */ l[] f39343n = {C22128a.m8621g0(C13577c.class, "binding", "getBinding()Lcom/truecaller/incallui/databinding/FragmentIncalluiOngoingBinding;", 0)};

    /* renamed from: o */
    public static final C13581d f39344o = new C13581d(null);
    @Inject

    /* renamed from: f */
    public AbstractC13588h f39345f;
    @Inject

    /* renamed from: g */
    public AbstractC18742m f39346g;

    /* renamed from: k */
    public C15804a f39350k;

    /* renamed from: m */
    public Runnable f39352m;

    /* renamed from: h */
    public final p<View, Boolean, s> f39347h = new C13579b(0, this);

    /* renamed from: i */
    public final p<View, Boolean, s> f39348i = new C13579b(1, this);

    /* renamed from: j */
    public final p<View, Boolean, s> f39349j = new C13579b(2, this);

    /* renamed from: l */
    public final ViewBindingProperty f39351l = new C19350a(new C13580c());

    /* renamed from: e.a.f.a.b.c$a */
    /* loaded from: classes3-dex2jar.jar:e/a/f/a/b/c$a.class */
    public static final class View$OnClickListenerC13578a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f39353a;

        /* renamed from: b */
        public final /* synthetic */ Object f39354b;

        public View$OnClickListenerC13578a(int i, Object obj) {
            this.f39353a = i;
            this.f39354b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f39353a;
            if (i == 0) {
                C13590j c13590j = (C13590j) ((C13577c) this.f39354b).mo21466QA();
                C17891a1.C17902k.m15590n0(c13590j.f39376p, false, 1, null);
                h<OngoingCallUIEvent> hVar = c13590j.f39370j;
                if (hVar != null) {
                    hVar.offer(OngoingCallUIEvent.HANG_UP_CLICK);
                } else {
                    s1.z.c.l.l("uiEventsChannel");
                    throw null;
                }
            } else if (i != 1) {
                throw null;
            } else {
                C13590j c13590j2 = (C13590j) ((C13577c) this.f39354b).mo21466QA();
                c13590j2.f39386z.putBoolean("voipTooltip", true);
                String mo21200g = c13590j2.f39376p.mo21200g();
                if (mo21200g == null) {
                    return;
                }
                c13590j2.f39376p.mo21229A(false);
                AbstractC13809c0 abstractC13809c0 = c13590j2.f39385y;
                AnalyticsContext analyticsContext = AnalyticsContext.INCALLUI_SWITCH_TO_VOIP;
                C13729v c13729v = (C13729v) abstractC13809c0;
                Objects.requireNonNull(c13729v);
                s1.z.c.l.e(mo21200g, "number");
                s1.z.c.l.e(analyticsContext, "analyticsContext");
                ((AbstractC11476s1) c13729v.f39771b.get()).mo24613k(mo21200g, analyticsContext.getValue(), new VoipCallOptions(3000L, 3000L));
                h<OngoingCallUIEvent> hVar2 = c13590j2.f39370j;
                if (hVar2 != null) {
                    hVar2.offer(OngoingCallUIEvent.VOIP_CLICK);
                } else {
                    s1.z.c.l.l("uiEventsChannel");
                    throw null;
                }
            }
        }
    }

    /* renamed from: e.a.f.a.b.c$b */
    /* loaded from: classes6-dex2jar.jar:e/a/f/a/b/c$b.class */
    public static final class C13579b extends m implements p<View, Boolean, s> {

        /* renamed from: b */
        public final /* synthetic */ int f39355b;

        /* renamed from: c */
        public final /* synthetic */ Object f39356c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13579b(int i, Object obj) {
            super(2);
            this.f39355b = i;
            this.f39356c = obj;
        }

        /* renamed from: k */
        public final Object m21608k(Object obj, Object obj2) {
            C13843a c13843a;
            s sVar = s.a;
            int i = this.f39355b;
            if (i == 0) {
                boolean booleanValue = ((Boolean) obj2).booleanValue();
                s1.z.c.l.e((View) obj, "<anonymous parameter 0>");
                C13590j c13590j = (C13590j) ((C13577c) this.f39356c).mo21466QA();
                r<C13843a> mo21061s = c13590j.f39377q.mo21061s();
                if (mo21061s != null && (c13843a = (C13843a) mo21061s.c()) != null) {
                    if (!c13843a.f40170b.isEmpty()) {
                        AbstractC13589i abstractC13589i = (AbstractC13589i) c13590j.f57683a;
                        if (abstractC13589i != null) {
                            abstractC13589i.mo21565jq();
                        }
                        AbstractC13589i abstractC13589i2 = (AbstractC13589i) c13590j.f57683a;
                        if (abstractC13589i2 != null) {
                            abstractC13589i2.mo21577Vm();
                        }
                    } else if (booleanValue) {
                        c13590j.f39377q.mo21077A0();
                    } else {
                        c13590j.f39377q.mo21070P1();
                    }
                    h<OngoingCallUIEvent> hVar = c13590j.f39370j;
                    if (hVar == null) {
                        s1.z.c.l.l("uiEventsChannel");
                        throw null;
                    }
                    hVar.offer(OngoingCallUIEvent.AUDIO_ROUTE_CLICK);
                }
                return sVar;
            } else if (i == 1) {
                boolean booleanValue2 = ((Boolean) obj2).booleanValue();
                s1.z.c.l.e((View) obj, "<anonymous parameter 0>");
                C13590j c13590j2 = (C13590j) ((C13577c) this.f39356c).mo21466QA();
                if (booleanValue2) {
                    c13590j2.f39376p.mo21197j();
                    h<OngoingCallUIEvent> hVar2 = c13590j2.f39370j;
                    if (hVar2 == null) {
                        s1.z.c.l.l("uiEventsChannel");
                        throw null;
                    }
                    hVar2.offer(OngoingCallUIEvent.HOLD_CLICK);
                } else {
                    c13590j2.f39376p.mo21181z();
                    h<OngoingCallUIEvent> hVar3 = c13590j2.f39370j;
                    if (hVar3 == null) {
                        s1.z.c.l.l("uiEventsChannel");
                        throw null;
                    }
                    hVar3.offer(OngoingCallUIEvent.UNHOLD_CLICK);
                }
                return sVar;
            } else if (i != 2) {
                throw null;
            } else {
                boolean booleanValue3 = ((Boolean) obj2).booleanValue();
                s1.z.c.l.e((View) obj, "<anonymous parameter 0>");
                C13590j c13590j3 = (C13590j) ((C13577c) this.f39356c).mo21466QA();
                c13590j3.f39377q.mo21066i0(booleanValue3);
                if (booleanValue3) {
                    h<OngoingCallUIEvent> hVar4 = c13590j3.f39370j;
                    if (hVar4 == null) {
                        s1.z.c.l.l("uiEventsChannel");
                        throw null;
                    }
                    hVar4.offer(OngoingCallUIEvent.MUTE_CLICK);
                } else {
                    h<OngoingCallUIEvent> hVar5 = c13590j3.f39370j;
                    if (hVar5 == null) {
                        s1.z.c.l.l("uiEventsChannel");
                        throw null;
                    }
                    hVar5.offer(OngoingCallUIEvent.UNMUTE_CLICK);
                }
                return sVar;
            }
        }
    }

    /* renamed from: e.a.f.a.b.c$c */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/c$c.class */
    public static final class C13580c extends m implements s1.z.b.l<C13577c, C13746e> {
        public C13580c() {
            super(1);
        }

        /* renamed from: d */
        public Object m21607d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4013R.C4015id.btn_group_container;
            View findViewById = requireView.findViewById(i);
            if (findViewById != null) {
                C13752k m21233a = C13752k.m21233a(findViewById);
                i = C4013R.C4015id.button_end_call;
                FloatingActionButton findViewById2 = requireView.findViewById(i);
                if (findViewById2 != null) {
                    i = C4013R.C4015id.button_record;
                    CallRecordingFloatingButton callRecordingFloatingButton = (CallRecordingFloatingButton) requireView.findViewById(i);
                    if (callRecordingFloatingButton != null) {
                        i = C4013R.C4015id.button_voip;
                        FloatingActionButton findViewById3 = requireView.findViewById(i);
                        if (findViewById3 != null) {
                            i = C4013R.C4015id.chronometer;
                            GoldShineChronometer goldShineChronometer = (GoldShineChronometer) requireView.findViewById(i);
                            if (goldShineChronometer != null) {
                                i = C4013R.C4015id.contextCallView;
                                ToastWithActionView toastWithActionView = (ToastWithActionView) requireView.findViewById(i);
                                if (toastWithActionView != null) {
                                    i = C4013R.C4015id.image_profile_picture;
                                    AvatarXView avatarXView = (AvatarXView) requireView.findViewById(i);
                                    if (avatarXView != null) {
                                        i = C4013R.C4015id.img_user_badge;
                                        ImageView imageView = (ImageView) requireView.findViewById(i);
                                        if (imageView != null) {
                                            i = C4013R.C4015id.linear_status;
                                            LinearLayout linearLayout = (LinearLayout) requireView.findViewById(i);
                                            if (linearLayout != null) {
                                                ConstraintLayout constraintLayout = (ConstraintLayout) requireView;
                                                i = C4013R.C4015id.onDemandReasonPickerView;
                                                OnDemandCallReasonPickerView onDemandCallReasonPickerView = (OnDemandCallReasonPickerView) requireView.findViewById(i);
                                                if (onDemandCallReasonPickerView != null) {
                                                    i = C4013R.C4015id.profile_name_container;
                                                    ConstraintLayout constraintLayout2 = (ConstraintLayout) requireView.findViewById(i);
                                                    if (constraintLayout2 != null) {
                                                        i = C4013R.C4015id.space_caller_label;
                                                        Space space = (Space) requireView.findViewById(i);
                                                        if (space != null) {
                                                            i = C4013R.C4015id.space_profile_name;
                                                            Space space2 = (Space) requireView.findViewById(i);
                                                            if (space2 != null) {
                                                                i = C4013R.C4015id.space_profile_picture;
                                                                Space space3 = (Space) requireView.findViewById(i);
                                                                if (space3 != null) {
                                                                    i = C4013R.C4015id.space_spam_caller_label;
                                                                    Space space4 = (Space) requireView.findViewById(i);
                                                                    if (space4 != null) {
                                                                        i = C4013R.C4015id.space_timezone;
                                                                        Space space5 = (Space) requireView.findViewById(i);
                                                                        if (space5 != null) {
                                                                            i = C4013R.C4015id.space_true_context;
                                                                            Space space6 = (Space) requireView.findViewById(i);
                                                                            if (space6 != null) {
                                                                                i = C4013R.C4015id.text_alt_name;
                                                                                GoldShineTextView goldShineTextView = (GoldShineTextView) requireView.findViewById(i);
                                                                                if (goldShineTextView != null) {
                                                                                    i = C4013R.C4015id.text_caller_label;
                                                                                    View findViewById4 = requireView.findViewById(i);
                                                                                    if (findViewById4 != null) {
                                                                                        TextView textView = (TextView) findViewById4;
                                                                                        C13750i c13750i = new C13750i(textView, textView);
                                                                                        i = C4013R.C4015id.text_carrier;
                                                                                        GoldShineTextView goldShineTextView2 = (GoldShineTextView) requireView.findViewById(i);
                                                                                        if (goldShineTextView2 != null) {
                                                                                            i = C4013R.C4015id.text_number;
                                                                                            GoldShineTextView goldShineTextView3 = (GoldShineTextView) requireView.findViewById(i);
                                                                                            if (goldShineTextView3 != null) {
                                                                                                i = C4013R.C4015id.text_phonebook_number;
                                                                                                GoldShineTextView goldShineTextView4 = (GoldShineTextView) requireView.findViewById(i);
                                                                                                if (goldShineTextView4 != null) {
                                                                                                    i = C4013R.C4015id.text_profile_name;
                                                                                                    GoldShineTextView goldShineTextView5 = (GoldShineTextView) requireView.findViewById(i);
                                                                                                    if (goldShineTextView5 != null) {
                                                                                                        i = C4013R.C4015id.text_sim_slot;
                                                                                                        GoldShineTextView goldShineTextView6 = (GoldShineTextView) requireView.findViewById(i);
                                                                                                        if (goldShineTextView6 != null) {
                                                                                                            i = C4013R.C4015id.text_spam_caller_label;
                                                                                                            View findViewById5 = requireView.findViewById(i);
                                                                                                            if (findViewById5 != null) {
                                                                                                                TextView textView2 = (TextView) findViewById5;
                                                                                                                C13751j c13751j = new C13751j(textView2, textView2);
                                                                                                                i = C4013R.C4015id.text_status;
                                                                                                                GoldShineTextView goldShineTextView7 = (GoldShineTextView) requireView.findViewById(i);
                                                                                                                if (goldShineTextView7 != null) {
                                                                                                                    i = C4013R.C4015id.timezone_view;
                                                                                                                    TimezoneView timezoneView = (TimezoneView) requireView.findViewById(i);
                                                                                                                    if (timezoneView != null) {
                                                                                                                        i = C4013R.C4015id.trueContext;
                                                                                                                        TrueContext trueContext = (TrueContext) requireView.findViewById(i);
                                                                                                                        if (trueContext != null) {
                                                                                                                            i = C4013R.C4015id.view_keypad;
                                                                                                                            FrameLayout frameLayout = (FrameLayout) requireView.findViewById(i);
                                                                                                                            if (frameLayout != null) {
                                                                                                                                return new C13746e(constraintLayout, m21233a, findViewById2, callRecordingFloatingButton, findViewById3, goldShineChronometer, toastWithActionView, avatarXView, imageView, linearLayout, constraintLayout, onDemandCallReasonPickerView, constraintLayout2, space, space2, space3, space4, space5, space6, goldShineTextView, c13750i, goldShineTextView2, goldShineTextView3, goldShineTextView4, goldShineTextView5, goldShineTextView6, c13751j, goldShineTextView7, timezoneView, trueContext, frameLayout);
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

    /* renamed from: e.a.f.a.b.c$d */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/c$d.class */
    public static final class C13581d {
        public C13581d(f fVar) {
        }
    }

    /* renamed from: e.a.f.a.b.c$e */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/c$e.class */
    public static final class C13582e extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13582e() {
            super(0);
            C13577c.this = r4;
        }

        public Object invoke() {
            C13590j c13590j = (C13590j) C13577c.this.mo21466QA();
            Objects.requireNonNull(c13590j);
            d.w2(c13590j, (s1.w.f) null, (j0) null, new C13606q(c13590j, null), 3, (Object) null);
            return s.a;
        }
    }

    /* renamed from: e.a.f.a.b.c$f */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/c$f.class */
    public static final class C13583f extends m implements p<View, Boolean, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13583f() {
            super(2);
            C13577c.this = r4;
        }

        /* renamed from: k */
        public Object m21606k(Object obj, Object obj2) {
            ((Boolean) obj2).booleanValue();
            s1.z.c.l.e((View) obj, "<anonymous parameter 0>");
            ((C13590j) C13577c.this.mo21466QA()).m21539Zj();
            return s.a;
        }
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: Bf */
    public void mo21602Bf() {
        OngoingCallActionButton ongoingCallActionButton = m21610iB().f39838b.f39886j;
        s1.z.c.l.d(ongoingCallActionButton, "binding.btnGroupContainer.messageAction");
        C19286f.m13689O(ongoingCallActionButton);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: Bj */
    public void mo21601Bj() {
        m21610iB().f39842f.m35625f();
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: Cx */
    public void mo21600Cx() {
        OngoingCallActionButton ongoingCallActionButton = m21610iB().f39838b.f39880d;
        s1.z.c.l.d(ongoingCallActionButton, "binding.btnGroupContainer.holdCallAction");
        C19286f.m13687Q(ongoingCallActionButton);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: D3 */
    public void mo21599D3(int i) {
        m21610iB().f39842f.setTextColor(getResources().getColor(i, null));
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: Dg */
    public void mo21598Dg() {
        m21610iB().f39838b.f39880d.m35288f1(false, this.f39348i);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: Fq */
    public void mo21597Fq() {
        OngoingCallActionButton ongoingCallActionButton = m21610iB().f39838b.f39880d;
        ongoingCallActionButton.setEnabled(true);
        C19286f.m13684T(ongoingCallActionButton);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: G6 */
    public void mo21596G6() {
        m21610iB().f39838b.f39887k.m35288f1(true, this.f39349j);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: H9 */
    public void mo21595H9(String str) {
        FragmentManager supportFragmentManager;
        s1.z.c.l.e(str, "postDialSequence");
        n3.r.a.l activity = getActivity();
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
            return;
        }
        s1.z.c.l.d(supportFragmentManager, "activity?.supportFragmentManager ?: return");
        s1.z.c.l.e(str, "postDialSequence");
        C13629b c13629b = new C13629b();
        Bundle bundle = new Bundle();
        bundle.putString("POST_DIAL_SEQUENCE", str);
        c13629b.setArguments(bundle);
        c13629b.show(supportFragmentManager, "POST_DIAL_SEQUENCE_FRAGMENT_TAG");
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c
    /* renamed from: Hg */
    public void mo14748Hg() {
        AbstractC13589i abstractC13589i = (AbstractC13589i) ((C13590j) mo21466QA()).f57683a;
        if (abstractC13589i != null) {
            abstractC13589i.mo21562m2();
        }
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: Js */
    public void mo21594Js() {
        OngoingCallActionButton ongoingCallActionButton = m21610iB().f39838b.f39880d;
        ongoingCallActionButton.setEnabled(false);
        C19286f.m13684T(ongoingCallActionButton);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c, p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: Jw */
    public void mo21438Jw() {
        super.mo21438Jw();
        Space space = m21610iB().f39847k;
        s1.z.c.l.d(space, "binding.spaceCallerLabel");
        C19286f.m13684T(space);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: L4 */
    public void mo21593L4(int i) {
        m21610iB().f39861y.setTextColor(getResources().getColor(i, null));
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: La */
    public void mo21592La() {
        m21610iB().f39838b.f39888l.m35288f1(false, this.f39347h);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: Lm */
    public void mo21591Lm() {
        FragmentManager supportFragmentManager;
        n3.r.a.l activity = getActivity();
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
            return;
        }
        s1.z.c.l.d(supportFragmentManager, "activity?.supportFragmentManager ?: return");
        Objects.requireNonNull(C13560d.f39322i);
        new C13560d().show(supportFragmentManager, "MANAGE_CONFERENCE_FRAGMENT_TAG");
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: M1 */
    public void mo21590M1() {
        ToastWithActionView toastWithActionView = m21610iB().f39843g;
        s1.z.c.l.d(toastWithActionView, "binding.contextCallView");
        C19286f.m13689O(toastWithActionView);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: O3 */
    public void mo21589O3(OnDemandMessageSource onDemandMessageSource) {
        s1.z.c.l.e(onDemandMessageSource, "source");
        m21610iB().f39846j.setSource(onDemandMessageSource);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: O6 */
    public void mo21588O6(String str) {
        m21610iB().f39840d.setPhoneNumber(str);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: OA */
    public AvatarXView mo21468OA() {
        AvatarXView avatarXView = m21610iB().f39844h;
        s1.z.c.l.d(avatarXView, "binding.imageProfilePicture");
        return avatarXView;
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: Oc */
    public void mo21587Oc() {
        FragmentManager supportFragmentManager;
        Fragment m42942K;
        n3.r.a.l activity = getActivity();
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
            return;
        }
        s1.z.c.l.d(supportFragmentManager, "activity?.supportFragmentManager ?: return");
        if (supportFragmentManager.m42940M() == 0 || (m42942K = supportFragmentManager.m42942K("KEYPAD_FRAGMENT_TAG")) == null) {
            return;
        }
        s1.z.c.l.d(m42942K, "supportFragmentManager.f…D_FRAGMENT_TAG) ?: return");
        C26907a c26907a = new C26907a(supportFragmentManager);
        c26907a.mo1121l(m42942K);
        c26907a.mo1126g();
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: Of */
    public void mo21586Of() {
        m21610iB().f39861y.m35618l();
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c, p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: P */
    public void mo21431P(AbstractC18240c abstractC18240c) {
        s1.z.c.l.e(abstractC18240c, "presenter");
        s1.z.c.l.e(abstractC18240c, "presenter");
        TrueContext mo21456aB = mo21456aB();
        C19286f.m13684T(mo21456aB);
        mo21456aB.setPresenter(abstractC18240c);
        Space space = m21610iB().f39852p;
        s1.z.c.l.d(space, "binding.spaceTrueContext");
        C19286f.m13684T(space);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: PA */
    public ImageView mo21467PA() {
        ImageView imageView = m21610iB().f39845i;
        s1.z.c.l.d(imageView, "binding.imgUserBadge");
        return imageView;
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: Qb */
    public void mo21585Qb(C15804a.C15805a c15805a) {
        s1.z.c.l.e(c15805a, "toastMessage");
        C15804a c15804a = this.f39350k;
        if (c15804a != null) {
            c15804a.m18284a(c15805a);
        } else {
            s1.z.c.l.l("toasViewQueue");
            throw null;
        }
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: RA */
    public TextView mo21465RA() {
        TextView textView = m21610iB().f39854r.f39875a;
        s1.z.c.l.d(textView, "binding.textCallerLabel.textCallerLabel");
        return textView;
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: Rg */
    public void mo21584Rg() {
        GoldShineChronometer goldShineChronometer = m21610iB().f39842f;
        C19286f.m13689O(goldShineChronometer);
        goldShineChronometer.stop();
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: SA */
    public TextView mo21464SA() {
        TextView textView = m21610iB().f39860x.f39876a;
        s1.z.c.l.d(textView, "binding.textSpamCallerLabel.textSpamCallerLabel");
        return textView;
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: Sa */
    public void mo21583Sa() {
        OngoingCallActionButton ongoingCallActionButton = m21610iB().f39838b.f39878b;
        ongoingCallActionButton.setEnabled(true);
        C19286f.m13684T(ongoingCallActionButton);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: So */
    public void mo21582So(boolean z) {
        FloatingActionButton floatingActionButton = m21610iB().f39841e;
        s1.z.c.l.d(floatingActionButton, "binding.buttonVoip");
        C19286f.m13683U(floatingActionButton, z);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c, p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: T1 */
    public void mo21428T1() {
        super.mo21428T1();
        Space space = m21610iB().f39847k;
        s1.z.c.l.d(space, "binding.spaceCallerLabel");
        C19286f.m13689O(space);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: TA */
    public GoldShineTextView mo21463TA() {
        GoldShineTextView goldShineTextView = m21610iB().f39853q;
        s1.z.c.l.d(goldShineTextView, "binding.textAltName");
        return goldShineTextView;
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: Tb */
    public void mo21581Tb() {
        OngoingCallActionButton ongoingCallActionButton = m21610iB().f39838b.f39889m;
        s1.z.c.l.d(ongoingCallActionButton, "binding.btnGroupContainer.swapCallsAction");
        C19286f.m13689O(ongoingCallActionButton);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: Ti */
    public void mo21580Ti() {
        FragmentManager supportFragmentManager;
        n3.r.a.l activity = getActivity();
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
            return;
        }
        s1.z.c.l.d(supportFragmentManager, "activity?.supportFragmentManager ?: return");
        Fragment m42942K = supportFragmentManager.m42942K("AUDIO_PICKER_FRAGMENT_TAG");
        if (m42942K == null) {
            return;
        }
        s1.z.c.l.d(m42942K, "supportFragmentManager.f…R_FRAGMENT_TAG) ?: return");
        C26907a c26907a = new C26907a(supportFragmentManager);
        c26907a.mo1121l(m42942K);
        c26907a.mo1126g();
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: UA */
    public GoldShineTextView mo21462UA() {
        GoldShineTextView goldShineTextView = m21610iB().f39855s;
        s1.z.c.l.d(goldShineTextView, "binding.textCarrier");
        return goldShineTextView;
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: Ux */
    public void mo21579Ux(boolean z) {
        CallRecordingFloatingButton callRecordingFloatingButton = m21610iB().f39840d;
        s1.z.c.l.d(callRecordingFloatingButton, "binding.buttonRecord");
        C19286f.m13683U(callRecordingFloatingButton, z);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: VA */
    public GoldShineTextView mo21461VA() {
        GoldShineTextView goldShineTextView = m21610iB().f39856t;
        s1.z.c.l.d(goldShineTextView, "binding.textNumber");
        return goldShineTextView;
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: Vg */
    public void mo21578Vg() {
        OngoingCallActionButton ongoingCallActionButton = m21610iB().f39838b.f39885i;
        ongoingCallActionButton.setEnabled(true);
        C19286f.m13684T(ongoingCallActionButton);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c
    /* renamed from: Vi */
    public void mo14747Vi(AbstractC18591d abstractC18591d) {
        s1.z.c.l.e(abstractC18591d, "type");
        C13590j c13590j = (C13590j) mo21466QA();
        Objects.requireNonNull(c13590j);
        s1.z.c.l.e(abstractC18591d, "type");
        AbstractC13589i abstractC13589i = (AbstractC13589i) c13590j.f57683a;
        if (abstractC13589i != null) {
            abstractC13589i.mo21570fl(false);
        }
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: Vm */
    public void mo21577Vm() {
        FragmentManager supportFragmentManager;
        n3.r.a.l activity = getActivity();
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
            return;
        }
        s1.z.c.l.d(supportFragmentManager, "activity?.supportFragmentManager ?: return");
        new C13612a().show(supportFragmentManager, "AUDIO_PICKER_FRAGMENT_TAG");
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: Vq */
    public void mo21576Vq() {
        OngoingCallActionButton ongoingCallActionButton = m21610iB().f39838b.f39889m;
        ongoingCallActionButton.setEnabled(true);
        ongoingCallActionButton.setOnClickListener((p<? super View, ? super Boolean, s>) new C13583f());
        C19286f.m13684T(ongoingCallActionButton);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: WA */
    public GoldShineTextView mo21460WA() {
        GoldShineTextView goldShineTextView = m21610iB().f39857u;
        s1.z.c.l.d(goldShineTextView, "binding.textPhonebookNumber");
        return goldShineTextView;
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: X5 */
    public void mo21575X5() {
        OngoingCallActionButton ongoingCallActionButton = m21610iB().f39838b.f39886j;
        s1.z.c.l.d(ongoingCallActionButton, "binding.btnGroupContainer.messageAction");
        C19286f.m13684T(ongoingCallActionButton);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: XA */
    public GoldShineTextView mo21459XA() {
        GoldShineTextView goldShineTextView = m21610iB().f39858v;
        s1.z.c.l.d(goldShineTextView, "binding.textProfileName");
        return goldShineTextView;
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: YA */
    public GoldShineTextView mo21458YA() {
        GoldShineTextView goldShineTextView = m21610iB().f39859w;
        s1.z.c.l.d(goldShineTextView, "binding.textSimSlot");
        return goldShineTextView;
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c, p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: Yn */
    public void mo21423Yn() {
        super.mo21423Yn();
        Space space = m21610iB().f39849m;
        s1.z.c.l.d(space, "binding.spaceProfilePicture");
        C19286f.m13689O(space);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: ZA */
    public TimezoneView mo21457ZA() {
        TimezoneView timezoneView = m21610iB().f39862z;
        s1.z.c.l.d(timezoneView, "binding.timezoneView");
        return timezoneView;
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: aB */
    public TrueContext mo21456aB() {
        TrueContext trueContext = m21610iB().f39835A;
        s1.z.c.l.d(trueContext, "binding.trueContext");
        return trueContext;
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: an */
    public void mo21574an() {
        OngoingCallActionButton ongoingCallActionButton = m21610iB().f39838b.f39885i;
        ongoingCallActionButton.setEnabled(false);
        C19286f.m13684T(ongoingCallActionButton);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: bB */
    public void mo21455bB() {
        C19286f.m13684T(mo21468OA());
        Space space = m21610iB().f39849m;
        s1.z.c.l.d(space, "binding.spaceProfilePicture");
        C19286f.m13684T(space);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: cB */
    public void mo21454cB() {
        super.mo21454cB();
        Space space = m21610iB().f39848l;
        s1.z.c.l.d(space, "binding.spaceProfileName");
        C19286f.m13684T(space);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: dA */
    public void mo21573dA() {
        OngoingCallActionButton ongoingCallActionButton = m21610iB().f39838b.f39878b;
        ongoingCallActionButton.setEnabled(false);
        C19286f.m13684T(ongoingCallActionButton);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: dB */
    public void mo21453dB() {
        C19286f.m13684T(mo21464SA());
        Space space = m21610iB().f39850n;
        s1.z.c.l.d(space, "binding.spaceSpamCallerLabel");
        C19286f.m13684T(space);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: di */
    public void mo21572di() {
        m21610iB().f39838b.f39880d.m35288f1(true, this.f39348i);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: dx */
    public void mo21571dx() {
        OngoingCallActionButton ongoingCallActionButton = m21610iB().f39838b.f39878b;
        s1.z.c.l.d(ongoingCallActionButton, "binding.btnGroupContainer.addCallAction");
        C19286f.m13689O(ongoingCallActionButton);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: eB */
    public void mo21452eB() {
        C19286f.m13684T(mo21457ZA());
        Space space = m21610iB().f39851o;
        s1.z.c.l.d(space, "binding.spaceTimezone");
        C19286f.m13684T(space);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: f8 */
    public Integer mo21421f8() {
        try {
            return Integer.valueOf(AbstractC17351f.m16221c(requireContext()).mo16186d(2));
        } catch (IllegalStateException e) {
            return null;
        }
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: fl */
    public void mo21570fl(boolean z) {
        OnDemandCallReasonPickerView onDemandCallReasonPickerView = m21610iB().f39846j;
        s1.z.c.l.d(onDemandCallReasonPickerView, "binding.onDemandReasonPickerView");
        C19286f.m13683U(onDemandCallReasonPickerView, z);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: hg */
    public void mo21569hg() {
        m21610iB().f39842f.stop();
    }

    /* renamed from: iB */
    public final C13746e m21610iB() {
        return (C13746e) this.f39351l.m34468b(this, f39343n[0]);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c, p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: ic */
    public void mo21417ic() {
        super.mo21417ic();
        Space space = m21610iB().f39848l;
        s1.z.c.l.d(space, "binding.spaceProfileName");
        C19286f.m13689O(space);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: in */
    public void mo21568in() {
        OngoingCallActionButton ongoingCallActionButton = m21610iB().f39838b.f39883g;
        s1.z.c.l.d(ongoingCallActionButton, "binding.btnGroupContainer.manageCallAction");
        C19286f.m13684T(ongoingCallActionButton);
    }

    /* renamed from: jB */
    public AbstractC13588h mo21466QA() {
        AbstractC13588h abstractC13588h = this.f39345f;
        if (abstractC13588h != null) {
            return abstractC13588h;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: ji */
    public void mo21567ji(String str, OnDemandMessageSource onDemandMessageSource) {
        s1.z.c.l.e(onDemandMessageSource, "onDemandMessageSource");
        AbstractC18742m abstractC18742m = this.f39346g;
        if (abstractC18742m == null) {
            s1.z.c.l.l("contextCallRouter");
            throw null;
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        abstractC18742m.mo14562a(childFragmentManager, (OnDemandMessageSource.MidCall) onDemandMessageSource, str);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: jo */
    public boolean mo21566jo() {
        OnDemandCallReasonPickerView onDemandCallReasonPickerView = m21610iB().f39846j;
        s1.z.c.l.d(onDemandCallReasonPickerView, "binding.onDemandReasonPickerView");
        return C19286f.m13663p(onDemandCallReasonPickerView);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: jq */
    public void mo21565jq() {
        m21610iB().f39838b.f39888l.m35288f1(true, this.f39347h);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: lc */
    public void mo21564lc(int i) {
        OngoingCallActionButton ongoingCallActionButton = m21610iB().f39838b.f39888l;
        Context requireContext = requireContext();
        Object obj = C26467a.f74235a;
        ongoingCallActionButton.setActionButtonSrc(C26467a.C26470c.m1789b(requireContext, i));
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: le */
    public void mo21563le() {
        m21610iB().f39838b.f39887k.m35288f1(false, this.f39349j);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: m2 */
    public void mo21562m2() {
        Context context = getContext();
        if (context != null) {
            C19291g.m13589S1(context, C4013R.string.context_call_error_network, null, 0, 6);
        }
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c, p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: n */
    public void mo21416n() {
        super.mo21416n();
        Space space = m21610iB().f39852p;
        s1.z.c.l.d(space, "binding.spaceTrueContext");
        C19286f.m13689O(space);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C4013R.layout.fragment_incallui_ongoing, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.inflate(R.layou…ngoing, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        ((C13590j) mo21466QA()).mo9806c();
        C13577c.super.onDestroyView();
    }

    public void onDetach() {
        if (this.f39352m != null) {
            m21610iB().f39841e.removeCallbacks(this.f39352m);
            this.f39352m = null;
        }
        C13577c.super.onDetach();
    }

    public void onResume() {
        C13577c.super.onResume();
        C13590j c13590j = (C13590j) mo21466QA();
        C19291g.m13599P0(c13590j, c13590j.f39376p.mo21199h(), new C13601l(c13590j, null));
        d.w2(c13590j, (s1.w.f) null, (j0) null, new C13608s(c13590j, null), 3, (Object) null);
        AbstractC16393b abstractC16393b = m21610iB().f39840d.f10809a;
        if (abstractC16393b != null) {
            abstractC16393b.onResume();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString("call_state") : null;
        ((C13590j) mo21466QA()).mo9029Y0(this);
        C13590j c13590j = (C13590j) mo21466QA();
        Objects.requireNonNull(c13590j);
        d.w2(c13590j, (s1.w.f) null, (j0) null, new C13607r(c13590j, string, null), 3, (Object) null);
        C13746e m21610iB = m21610iB();
        s1.z.c.l.d(m21610iB, "binding");
        this.f39350k = new C15804a(m21610iB.f39837a, Integer.valueOf(getResources().getDimensionPixelSize(C4013R.dimen.incallui_toast_margin_bottom)), null, 4);
        m21610iB().f39839c.setOnClickListener(new View$OnClickListenerC13578a(0, this));
        C13752k c13752k = m21610iB().f39838b;
        c13752k.f39887k.setOnClickListener(this.f39349j);
        c13752k.f39882f.setOnClickListener((p<? super View, ? super Boolean, s>) new C25349l3(0, this));
        c13752k.f39888l.setOnClickListener(this.f39347h);
        c13752k.f39878b.setOnClickListener((p<? super View, ? super Boolean, s>) new C25349l3(1, this));
        c13752k.f39885i.setOnClickListener((p<? super View, ? super Boolean, s>) new C25349l3(2, this));
        c13752k.f39880d.setOnClickListener(this.f39348i);
        c13752k.f39889m.setOnClickListener((p<? super View, ? super Boolean, s>) new C25349l3(3, this));
        c13752k.f39883g.setOnClickListener((p<? super View, ? super Boolean, s>) new C25349l3(4, this));
        c13752k.f39886j.setOnClickListener((p<? super View, ? super Boolean, s>) new C25349l3(5, this));
        m21610iB().f39841e.setOnClickListener(new View$OnClickListenerC13578a(1, this));
        m21610iB().f39843g.setGotItClickListener(new C13582e());
        m21610iB().f39846j.setOnDemandReasonPickerCallback(new C13586f(this));
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: q */
    public void mo21561q() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "activity ?: return");
            m21610iB().f39839c.startAnimation(AnimationUtils.loadAnimation(activity, C4013R.anim.anim_slide_down));
        }
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c
    /* renamed from: q4 */
    public void mo14746q4() {
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: r5 */
    public void mo21560r5() {
        AbstractC18742m abstractC18742m = this.f39346g;
        if (abstractC18742m == null) {
            s1.z.c.l.l("contextCallRouter");
            throw null;
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        abstractC18742m.mo14560c(childFragmentManager);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c, p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: re */
    public void mo21412re() {
        super.mo21412re();
        Space space = m21610iB().f39850n;
        s1.z.c.l.d(space, "binding.spaceSpamCallerLabel");
        C19286f.m13689O(space);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: ry */
    public void mo21559ry(int i) {
        GoldShineTextView goldShineTextView = m21610iB().f39861y;
        goldShineTextView.setText(i);
        C19286f.m13684T(goldShineTextView);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: s1 */
    public void mo21558s1() {
        GoldShineTextView goldShineTextView = m21610iB().f39861y;
        s1.z.c.l.d(goldShineTextView, "binding.textStatus");
        C19286f.m13689O(goldShineTextView);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: sy */
    public void mo21557sy(String str) {
        s1.z.c.l.e(str, "text");
        m21610iB().f39838b.f39888l.setActionButtonText(str);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: t5 */
    public void mo21556t5(long j) {
        GoldShineChronometer goldShineChronometer = m21610iB().f39842f;
        C19286f.m13684T(goldShineChronometer);
        goldShineChronometer.setBase(j);
        goldShineChronometer.start();
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: uu */
    public void mo21555uu() {
        OngoingCallActionButton ongoingCallActionButton = m21610iB().f39838b.f39889m;
        ongoingCallActionButton.setEnabled(false);
        ongoingCallActionButton.setOnClickListener((p<? super View, ? super Boolean, s>) null);
        C19286f.m13684T(ongoingCallActionButton);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: wc */
    public void mo21554wc() {
        OngoingCallActionButton ongoingCallActionButton = m21610iB().f39838b.f39883g;
        s1.z.c.l.d(ongoingCallActionButton, "binding.btnGroupContainer.manageCallAction");
        C19286f.m13687Q(ongoingCallActionButton);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: wu */
    public boolean mo21553wu() {
        if (getContext() != null) {
            FloatingActionButton floatingActionButton = m21610iB().f39841e;
            s1.z.c.l.d(floatingActionButton, "binding.buttonVoip");
            ViewParent parent = floatingActionButton.getParent();
            ViewParent viewParent = parent;
            if (!(parent instanceof ViewGroup)) {
                viewParent = null;
            }
            ViewGroup viewGroup = (ViewGroup) viewParent;
            if (viewGroup == null) {
                return false;
            }
            s1.z.c.l.e(viewGroup, "parent");
            if (viewGroup.getTag() instanceof C8304c) {
                return false;
            }
            FloatingActionButton floatingActionButton2 = m21610iB().f39841e;
            RunnableC13585e runnableC13585e = this.f39352m;
            if (runnableC13585e == null) {
                runnableC13585e = new RunnableC13585e(this, viewGroup);
                this.f39352m = runnableC13585e;
            }
            floatingActionButton2.post(runnableC13585e);
            return true;
        }
        return false;
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: xv */
    public void mo21552xv() {
        OngoingCallActionButton ongoingCallActionButton = m21610iB().f39838b.f39885i;
        s1.z.c.l.d(ongoingCallActionButton, "binding.btnGroupContainer.mergeCallsAction");
        C19286f.m13689O(ongoingCallActionButton);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: y5 */
    public void mo21551y5() {
        FragmentManager supportFragmentManager;
        n3.r.a.l activity = getActivity();
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
            return;
        }
        s1.z.c.l.d(supportFragmentManager, "activity?.supportFragmentManager ?: return");
        C26907a c26907a = new C26907a(supportFragmentManager);
        int i = C4013R.C4015id.view_keypad;
        Objects.requireNonNull(C13568a.f39331i);
        c26907a.mo1122k(i, new C13568a(), "KEYPAD_FRAGMENT_TAG", 1);
        c26907a.m1128e("KEYPAD_FRAGMENT_TAG");
        c26907a.mo1126g();
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c, p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: z */
    public void mo21407z() {
        super.mo21407z();
        Space space = m21610iB().f39851o;
        s1.z.c.l.d(space, "binding.spaceTimezone");
        C19286f.m13689O(space);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.AbstractC13589i
    /* renamed from: z9 */
    public void mo21550z9() {
        Intent intent = new Intent("android.intent.action.DIAL");
        Context context = getContext();
        startActivity(intent.setPackage(context != null ? context.getPackageName() : null));
    }
}

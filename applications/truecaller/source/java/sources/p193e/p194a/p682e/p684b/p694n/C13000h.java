package p193e.p194a.p682e.p684b.p694n;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.p183ui.components.ComboBase;
import com.truecaller.p183ui.settings.SettingsActivity;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.C20399t1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1221t.p1222a.p1223a.AbstractC20242b;
import p193e.p194a.p1221t.p1222a.p1223a.C20239a;
import p193e.p194a.p682e.p699c2.C13197i0;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b*\n\u0002\u0018\u0002\n\u0002\bB\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u00012\u00020\u0002B\b¢\u0006\u0005\b¦\u0001\u0010\u0015J-\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001b\u0010\u0015J%\u0010 \u001a\u00020\r2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001f\u001a\u00020\u0016H\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010$\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u0017\u0010'\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b'\u0010%J\u0017\u0010(\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b(\u0010%J\u0017\u0010*\u001a\u00020\r2\u0006\u0010)\u001a\u00020\"H\u0016¢\u0006\u0004\b*\u0010%J\u0017\u0010+\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b+\u0010%J\u0017\u0010,\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b,\u0010%J\u0017\u0010-\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b-\u0010%J\u0017\u0010.\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b.\u0010%J\u0017\u0010/\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b/\u0010%J\u0017\u00100\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b0\u0010%J\u0017\u00101\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b1\u0010%J\u0017\u00102\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b2\u0010%J\u0017\u00103\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b3\u0010%J\u0017\u00104\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b4\u0010%J\u0017\u00105\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b5\u0010%J\u0017\u00106\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b6\u0010%J\u0017\u00107\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b7\u0010%J\u0017\u00108\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b8\u0010%J\u0017\u00109\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b9\u0010%J\u0017\u0010:\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b:\u0010%J\u0017\u0010;\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b;\u0010%J\u0017\u0010<\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b<\u0010%J\u0017\u0010=\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b=\u0010%J\u0017\u0010?\u001a\u00020\r2\u0006\u0010>\u001a\u00020\u0016H\u0016¢\u0006\u0004\b?\u0010@J\u0017\u0010A\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\bA\u0010%J\u0017\u0010B\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\bB\u0010%J\u0017\u0010C\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\bC\u0010%J\u000f\u0010D\u001a\u00020\rH\u0016¢\u0006\u0004\bD\u0010\u0015J\u0017\u0010E\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\bE\u0010%J\u0017\u0010F\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\bF\u0010%J\u0017\u0010G\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\bG\u0010%J\u0017\u0010I\u001a\u00020\r2\u0006\u0010H\u001a\u00020\"H\u0016¢\u0006\u0004\bI\u0010%J\u0017\u0010J\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\bJ\u0010%J\u0017\u0010K\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\bK\u0010%J\u0017\u0010L\u001a\u00020\r2\u0006\u0010H\u001a\u00020\"H\u0016¢\u0006\u0004\bL\u0010%R\u0018\u0010P\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0018\u0010S\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0018\u0010U\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010OR\u0018\u0010W\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010OR\u0018\u0010Y\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010OR\u0018\u0010[\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010OR\u0018\u0010]\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010RR\u0018\u0010_\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010RR\u0018\u0010a\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010RR\u0018\u0010c\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010RR\u0018\u0010e\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010OR\u0018\u0010g\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010RR\u0018\u0010i\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010RR\u0018\u0010k\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010RR\u0018\u0010m\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010OR\u0018\u0010o\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010RR\u0018\u0010q\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010OR\u0018\u0010s\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010OR\u0018\u0010u\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010OR\u0018\u0010w\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010RR\u0018\u0010y\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010OR\u0018\u0010{\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010OR\u0018\u0010}\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010OR\u0018\u0010\u007f\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010RR\u001a\u0010\u0081\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010RR\u001a\u0010\u0083\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010RR\u001a\u0010\u0085\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010RR\u001a\u0010\u0087\u0001\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0086\u0001\u0010OR\u001a\u0010\u0089\u0001\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010OR\u001a\u0010\u008b\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008a\u0001\u0010RR\u001a\u0010\u008d\u0001\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008c\u0001\u0010OR\u001a\u0010\u008f\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008e\u0001\u0010RR\u001c\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u0090\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0092\u0001R\u001c\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0094\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0096\u0001R\u001a\u0010\u0099\u0001\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0098\u0001\u0010OR\u001a\u0010\u009b\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009a\u0001\u0010RR\u001a\u0010\u009d\u0001\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009c\u0001\u0010OR*\u0010¥\u0001\u001a\u00030\u009e\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u009f\u0001\u0010 \u0001\u001a\u0006\b¡\u0001\u0010¢\u0001\"\u0006\b£\u0001\u0010¤\u0001¨\u0006§\u0001"}, d2 = {"Le/a/e/b/n/h;", "Landroidx/fragment/app/Fragment;", "Le/a/e/b/n/k;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "onAttach", "(Landroid/content/Context;)V", "onResume", "()V", "", "description", RemoteMessageConst.Notification.ICON, "Os", "(II)V", "x8", "", "Le/a/e/c2/i0;", "items", "defaultItemIndex", "y6", "(Ljava/util/List;I)V", "", "isVisible", "ww", "(Z)V", "enabled", "Rx", "Oj", "checked", "ab", "iy", "Xu", "Z6", "rf", "a8", "Cz", "R6", "el", "ht", "ib", "S6", "Q9", "qu", "nu", "Qh", "lv", "no", "uz", "Mi", "pendingInvitationNo", "pc", "(I)V", "hs", "wA", "zd", "Rr", "Zz", "K6", "jk", AnalyticsConstants.SHOW, "zo", "Ch", "kg", "wo", "Landroidx/appcompat/widget/SwitchCompat;", "h", "Landroidx/appcompat/widget/SwitchCompat;", "smartNotificationSwitch", "k", "Landroid/view/View;", "smartRemindersView", "x", "chatGroupAutoJoinSwitch", "t", "simTwoSmsDeliverySwitch", "z", "chatReadReceiptsSwitch", "J", "callHistorySwitch", "K", "urgentMessagesView", "O", "urgentMessagesSwishSwitchContainer", "m", "simOneView", "s", "simTwoSmsDeliveryView", "v", "simTwoMmsAutoDownloadOnRoamingSwitch", "e", "smsUserFeedbackView", AbstractC2405c.f7629a, "defaultSmsSupportView", "g", "smartNotificationContainer", "o", "simOneSmsDeliverySwitch", C22021b.f61237c, "defaultSmsRequestView", "f", "smsFeedbackConsentSwitch", "q", "simOneMmsAutoDownloadOnRoamingSwitch", "B", "chatGifSupportSwitch", "i", "hideTransactionView", "N", "urgentMessagesSwishSwitch", "u", "simTwoMmsAutoDownloadSwitch", "l", "smartRemindersSwitch", "n", "simOneSmsDeliveryView", "y", "chatGroupAutoJoinView", "C", "chatGifSupportView", "D", "promotionalView", "E", "promotionalNotificationsSwitch", "L", "urgentMessagesSwitch", "M", "urgentMessagesSwitchContainer", "p", "simOneMmsAutoDownloadSwitch", "r", "simTwoView", "Landroid/widget/TextView;", "a", "Landroid/widget/TextView;", "defaultSmsStateText", "Lcom/truecaller/ui/components/ComboBase;", "d", "Lcom/truecaller/ui/components/ComboBase;", "replyToGroupTransport", "A", "chatTypingIndicatorSwitch", "w", "chatView", "j", "hideTransactionSwitch", "Le/a/e/b/n/j;", "P", "Le/a/e/b/n/j;", "OA", "()Le/a/e/b/n/j;", "setPresenter", "(Le/a/e/b/n/j;)V", "presenter", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.b.n.h */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/n/h.class */
public final class C13000h extends Fragment implements AbstractC13005k {

    /* renamed from: Q */
    public static final /* synthetic */ int f37726Q = 0;

    /* renamed from: A */
    public SwitchCompat f37727A;

    /* renamed from: B */
    public SwitchCompat f37728B;

    /* renamed from: C */
    public View f37729C;

    /* renamed from: D */
    public View f37730D;

    /* renamed from: E */
    public SwitchCompat f37731E;

    /* renamed from: J */
    public SwitchCompat f37732J;

    /* renamed from: K */
    public View f37733K;

    /* renamed from: L */
    public SwitchCompat f37734L;

    /* renamed from: M */
    public View f37735M;

    /* renamed from: N */
    public SwitchCompat f37736N;

    /* renamed from: O */
    public View f37737O;
    @Inject

    /* renamed from: P */
    public AbstractC13004j f37738P;

    /* renamed from: a */
    public TextView f37739a;

    /* renamed from: b */
    public View f37740b;

    /* renamed from: c */
    public View f37741c;

    /* renamed from: d */
    public ComboBase f37742d;

    /* renamed from: e */
    public View f37743e;

    /* renamed from: f */
    public SwitchCompat f37744f;

    /* renamed from: g */
    public View f37745g;

    /* renamed from: h */
    public SwitchCompat f37746h;

    /* renamed from: i */
    public View f37747i;

    /* renamed from: j */
    public SwitchCompat f37748j;

    /* renamed from: k */
    public View f37749k;

    /* renamed from: l */
    public SwitchCompat f37750l;

    /* renamed from: m */
    public View f37751m;

    /* renamed from: n */
    public View f37752n;

    /* renamed from: o */
    public SwitchCompat f37753o;

    /* renamed from: p */
    public SwitchCompat f37754p;

    /* renamed from: q */
    public SwitchCompat f37755q;

    /* renamed from: r */
    public View f37756r;

    /* renamed from: s */
    public View f37757s;

    /* renamed from: t */
    public SwitchCompat f37758t;

    /* renamed from: u */
    public SwitchCompat f37759u;

    /* renamed from: v */
    public SwitchCompat f37760v;

    /* renamed from: w */
    public View f37761w;

    /* renamed from: x */
    public SwitchCompat f37762x;

    /* renamed from: y */
    public View f37763y;

    /* renamed from: z */
    public SwitchCompat f37764z;

    /* renamed from: e.a.e.b.n.h$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/n/h$a.class */
    public static final class C13001a implements AbstractC20242b {
        public C13001a() {
            C13000h.this = r4;
        }

        @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20242b
        /* renamed from: a */
        public void mo11263a(boolean z) {
            C13000h.this.m22274OA().mo22219h5(z);
        }
    }

    /* renamed from: e.a.e.b.n.h$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/n/h$b.class */
    public static final class DialogInterface$OnClickListenerC13002b implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC13002b() {
            C13000h.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C13000h.this.m22274OA().mo22235De();
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: Ch */
    public void mo22273Ch(boolean z) {
        SwitchCompat switchCompat = this.f37734L;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: Cz */
    public void mo22272Cz(boolean z) {
        View view = this.f37752n;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: K6 */
    public void mo22271K6(boolean z) {
        SwitchCompat switchCompat = this.f37731E;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: Mi */
    public void mo22270Mi(boolean z) {
        SwitchCompat switchCompat = this.f37764z;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    /* renamed from: OA */
    public final AbstractC13004j m22274OA() {
        AbstractC13004j abstractC13004j = this.f37738P;
        if (abstractC13004j != null) {
            return abstractC13004j;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: Oj */
    public void mo22269Oj(boolean z) {
        View view = this.f37745g;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: Os */
    public void mo22268Os(int i, int i2) {
        TextView textView = this.f37739a;
        if (textView != null) {
            textView.setText(i);
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(i2, 0, 0, 0);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: Q9 */
    public void mo22267Q9(boolean z) {
        View view = this.f37757s;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: Qh */
    public void mo22266Qh(boolean z) {
        SwitchCompat switchCompat = this.f37759u;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: R6 */
    public void mo22265R6(boolean z) {
        SwitchCompat switchCompat = this.f37754p;
        if (switchCompat != null) {
            C19286f.m13683U(switchCompat, z);
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [e.a.t.a.a.a, android.app.Dialog] */
    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: Rr */
    public void mo22264Rr() {
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        new C20239a(C17422k.m16113E(requireContext, true), new C13001a()).show();
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: Rx */
    public void mo22263Rx(boolean z) {
        SwitchCompat switchCompat = this.f37744f;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: S6 */
    public void mo22262S6(boolean z) {
        View view = this.f37756r;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: Xu */
    public void mo22261Xu(boolean z) {
        SwitchCompat switchCompat = this.f37748j;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: Z6 */
    public void mo22260Z6(boolean z) {
        View view = this.f37749k;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: Zz */
    public void mo22259Zz(boolean z) {
        View view = this.f37730D;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: a8 */
    public void mo22258a8(boolean z) {
        View view = this.f37751m;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: ab */
    public void mo22257ab(boolean z) {
        SwitchCompat switchCompat = this.f37746h;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: el */
    public void mo22256el(boolean z) {
        SwitchCompat switchCompat = this.f37753o;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: hs */
    public void mo22255hs(boolean z) {
        SwitchCompat switchCompat = this.f37727A;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: ht */
    public void mo22254ht(boolean z) {
        SwitchCompat switchCompat = this.f37754p;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: ib */
    public void mo22253ib(boolean z) {
        SwitchCompat switchCompat = this.f37755q;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: iy */
    public void mo22252iy(boolean z) {
        View view = this.f37747i;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: jk */
    public void mo22251jk(boolean z) {
        SwitchCompat switchCompat = this.f37732J;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: kg */
    public void mo22250kg(boolean z) {
        SwitchCompat switchCompat = this.f37736N;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: lv */
    public void mo22249lv(boolean z) {
        SwitchCompat switchCompat = this.f37760v;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: no */
    public void mo22248no(boolean z) {
        View view = this.f37761w;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: nu */
    public void mo22247nu(boolean z) {
        SwitchCompat switchCompat = this.f37758t;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    public void onAttach(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C13000h.super.onAttach(context);
        SettingsActivity requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.ui.settings.SettingsActivity");
        AbstractC13004j abstractC13004j = (AbstractC13004j) ((C20399t1.C20427s) requireActivity.m34497wa()).f57484s.get();
        this.f37738P = abstractC13004j;
        if (abstractC13004j != null) {
            abstractC13004j.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.settings_messaging, viewGroup, false);
    }

    public void onResume() {
        C13000h.super.onResume();
        AbstractC13004j abstractC13004j = this.f37738P;
        if (abstractC13004j != null) {
            abstractC13004j.onResume();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C13000h.super.onViewCreated(view, bundle);
        this.f37739a = (TextView) view.findViewById(C2752R.C2754id.settingsMessagingDefaultSmsState);
        View findViewById = view.findViewById(C2752R.C2754id.settingsMessagingMakeTCDefaultSMS);
        this.f37740b = findViewById;
        if (findViewById != null) {
            findViewById.setOnClickListener(new View$OnClickListenerC0425b0(0, this));
        }
        View findViewById2 = view.findViewById(C2752R.C2754id.settingsOpenMessagingSupport);
        this.f37741c = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(new View$OnClickListenerC0425b0(1, this));
        }
        ComboBase comboBase = (ComboBase) view.findViewById(C2752R.C2754id.settingsReplyToGroupTransport);
        this.f37742d = comboBase;
        if (comboBase != null) {
            comboBase.m34539a(new C12997e(this));
        }
        SwitchCompat switchCompat = (SwitchCompat) view.findViewById(C2752R.C2754id.smsFeedbackConsentSwitch);
        this.f37744f = switchCompat;
        if (switchCompat != null) {
            switchCompat.setOnCheckedChangeListener(new C12999g(this));
        }
        View findViewById3 = view.findViewById(C2752R.C2754id.smsUserFeedback);
        this.f37743e = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(new View$OnClickListenerC13003i(this.f37744f));
        }
        SwitchCompat switchCompat2 = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsShowSmartNotificationSwitch);
        this.f37746h = switchCompat2;
        if (switchCompat2 != null) {
            switchCompat2.setOnCheckedChangeListener(new C12998f(this));
        }
        View findViewById4 = view.findViewById(C2752R.C2754id.settingsShowSmartNotification);
        this.f37745g = findViewById4;
        if (findViewById4 != null) {
            findViewById4.setOnClickListener(new View$OnClickListenerC13003i(this.f37746h));
        }
        SwitchCompat switchCompat3 = (SwitchCompat) view.findViewById(C2752R.C2754id.hideTransactionSwitch);
        this.f37748j = switchCompat3;
        if (switchCompat3 != null) {
            switchCompat3.setOnCheckedChangeListener(new C12994b(this));
        }
        View findViewById5 = view.findViewById(C2752R.C2754id.security);
        this.f37747i = findViewById5;
        if (findViewById5 != null) {
            findViewById5.setOnClickListener(new View$OnClickListenerC13003i(this.f37748j));
        }
        SwitchCompat switchCompat4 = (SwitchCompat) view.findViewById(C2752R.C2754id.smartRemindersSwitch);
        this.f37750l = switchCompat4;
        if (switchCompat4 != null) {
            switchCompat4.setOnCheckedChangeListener(new C12996d(this));
        }
        View findViewById6 = view.findViewById(C2752R.C2754id.smartReminders);
        this.f37749k = findViewById6;
        if (findViewById6 != null) {
            findViewById6.setOnClickListener(new View$OnClickListenerC13003i(this.f37750l));
        }
        this.f37751m = view.findViewById(C2752R.C2754id.settingsMessagingSimOne);
        this.f37752n = view.findViewById(C2752R.C2754id.simOneSettingsSmsDelivery);
        SwitchCompat switchCompat5 = (SwitchCompat) view.findViewById(C2752R.C2754id.simOneSettingsSmsDeliverySwitch);
        this.f37753o = switchCompat5;
        if (switchCompat5 != null) {
            switchCompat5.setOnCheckedChangeListener(new z(0, this));
        }
        SwitchCompat switchCompat6 = (SwitchCompat) view.findViewById(C2752R.C2754id.simOneSettingsMessagingAutoDownloadSwitch);
        this.f37754p = switchCompat6;
        if (switchCompat6 != null) {
            switchCompat6.setOnCheckedChangeListener(new z(1, this));
        }
        SwitchCompat switchCompat7 = (SwitchCompat) view.findViewById(C2752R.C2754id.simOneSettingsMessagingAutoDownloadWhenRoamingSwitch);
        this.f37755q = switchCompat7;
        if (switchCompat7 != null) {
            switchCompat7.setOnCheckedChangeListener(new z(2, this));
        }
        this.f37756r = view.findViewById(C2752R.C2754id.settingsMessagingSimTwo);
        this.f37757s = view.findViewById(C2752R.C2754id.simTwoSettingsSmsDelivery);
        SwitchCompat switchCompat8 = (SwitchCompat) view.findViewById(C2752R.C2754id.simTwoSettingsSmsDeliverySwitch);
        this.f37758t = switchCompat8;
        if (switchCompat8 != null) {
            switchCompat8.setOnCheckedChangeListener(new C25277g(0, this));
        }
        SwitchCompat switchCompat9 = (SwitchCompat) view.findViewById(C2752R.C2754id.simTwoSettingsMessagingAutoDownloadSwitch);
        this.f37759u = switchCompat9;
        if (switchCompat9 != null) {
            switchCompat9.setOnCheckedChangeListener(new C25277g(1, this));
        }
        SwitchCompat switchCompat10 = (SwitchCompat) view.findViewById(C2752R.C2754id.simTwoSettingsMessagingAutoDownloadWhenRoamingSwitch);
        this.f37760v = switchCompat10;
        if (switchCompat10 != null) {
            switchCompat10.setOnCheckedChangeListener(new C25277g(2, this));
        }
        this.f37761w = view.findViewById(C2752R.C2754id.settingsMessagingChat);
        SwitchCompat switchCompat11 = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsGroupAutoJoinSwitch);
        this.f37762x = switchCompat11;
        if (switchCompat11 != null) {
            switchCompat11.setOnCheckedChangeListener(new x0(0, this));
        }
        View findViewById7 = view.findViewById(C2752R.C2754id.settingsGroupAutoJoin);
        this.f37763y = findViewById7;
        if (findViewById7 != null) {
            findViewById7.setOnClickListener(new View$OnClickListenerC13003i(this.f37762x));
        }
        SwitchCompat switchCompat12 = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsChatReadReceiptsSwitch);
        this.f37764z = switchCompat12;
        if (switchCompat12 != null) {
            switchCompat12.setOnCheckedChangeListener(new x0(1, this));
        }
        SwitchCompat switchCompat13 = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsChatTypingIndicatorSwitch);
        this.f37727A = switchCompat13;
        if (switchCompat13 != null) {
            switchCompat13.setOnCheckedChangeListener(new x0(2, this));
        }
        SwitchCompat switchCompat14 = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsChatGIFSwitch);
        this.f37728B = switchCompat14;
        if (switchCompat14 != null) {
            switchCompat14.setOnCheckedChangeListener(new x0(3, this));
        }
        View findViewById8 = view.findViewById(C2752R.C2754id.settingsChatGIF);
        this.f37729C = findViewById8;
        if (findViewById8 != null) {
            findViewById8.setOnClickListener(new View$OnClickListenerC13003i(this.f37728B));
        }
        this.f37730D = view.findViewById(C2752R.C2754id.settingsMessagingPromotional);
        SwitchCompat switchCompat15 = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsPromotionalNotificationsSwitch);
        this.f37731E = switchCompat15;
        if (switchCompat15 != null) {
            switchCompat15.setOnCheckedChangeListener(new C12995c(this));
        }
        SwitchCompat switchCompat16 = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsShowCallHistorySwitch);
        this.f37732J = switchCompat16;
        if (switchCompat16 != null) {
            switchCompat16.setOnCheckedChangeListener(new C12993a(this));
        }
        this.f37733K = view.findViewById(C2752R.C2754id.settingsMessagingUrgentMessagesSection);
        SwitchCompat switchCompat17 = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsUrgentMessagesSwitch);
        this.f37734L = switchCompat17;
        if (switchCompat17 != null) {
            switchCompat17.setOnCheckedChangeListener(new u0(0, this));
        }
        View findViewById9 = view.findViewById(C2752R.C2754id.settingsUrgentMessages);
        this.f37735M = findViewById9;
        if (findViewById9 != null) {
            findViewById9.setOnClickListener(new View$OnClickListenerC13003i(this.f37734L));
        }
        SwitchCompat switchCompat18 = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsUrgentMessagesSwishSwitch);
        this.f37736N = switchCompat18;
        if (switchCompat18 != null) {
            switchCompat18.setOnCheckedChangeListener(new u0(1, this));
        }
        View findViewById10 = view.findViewById(C2752R.C2754id.settingsUrgentMessagesSwish);
        this.f37737O = findViewById10;
        if (findViewById10 != null) {
            findViewById10.setOnClickListener(new View$OnClickListenerC13003i(this.f37736N));
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: pc */
    public void mo22246pc(int i) {
        g$a g_a = new g$a(requireContext());
        g_a.m3656m(C2752R.string.SettingPendingGroupInvitationsTitle);
        g_a.f70854a.f156f = getResources().getQuantityString(C2752R.plurals.SettingPendingGroupInvitationsMessage, i, Integer.valueOf(i));
        g_a.m3660i(C2752R.string.SettingPendingGroupInvitationsBtnPositive, new DialogInterface$OnClickListenerC13002b());
        g_a.m3662g(C2752R.string.SettingPendingGroupInvitationsBtnNegative, null);
        g_a.m3652q();
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: qu */
    public void mo22245qu(boolean z) {
        SwitchCompat switchCompat = this.f37759u;
        if (switchCompat != null) {
            C19286f.m13683U(switchCompat, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: rf */
    public void mo22244rf(boolean z) {
        SwitchCompat switchCompat = this.f37750l;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: uz */
    public void mo22243uz(boolean z) {
        SwitchCompat switchCompat = this.f37762x;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: wA */
    public void mo22242wA(boolean z) {
        View view = this.f37729C;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: wo */
    public void mo22241wo(boolean z) {
        View view = this.f37737O;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: ww */
    public void mo22240ww(boolean z) {
        View view = this.f37743e;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r5 != null) goto L7;
     */
    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: x8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo22239x8() {
        /*
            r4 = this;
            r0 = r4
            android.os.Bundle r0 = r0.getArguments()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L18
            r0 = r5
            java.lang.String r1 = "analytics_context"
            java.lang.String r0 = r0.getString(r1)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L18
            goto L1c
        L18:
            java.lang.String r0 = "settings-messagingChangeDma"
            r5 = r0
        L1c:
            r0 = r5
            java.lang.String r1 = "arguments?.getString(Set…texts.SETTINGS_CHANGE_DMA"
            s1.z.c.l.d(r0, r1)
            r0 = r4
            r1 = r4
            android.content.Context r1 = r1.requireContext()
            r2 = r5
            android.content.Intent r1 = com.truecaller.messaging.defaultsms.DefaultSmsActivity.m34991pa(r1, r2)
            r0.startActivity(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.p684b.p694n.C13000h.mo22239x8():void");
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: y6 */
    public void mo22238y6(List<? extends C13197i0> list, int i) {
        l.e(list, "items");
        ComboBase comboBase = this.f37742d;
        if (comboBase != null) {
            comboBase.setData(list);
            comboBase.setSelection(list.get(i));
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: zd */
    public void mo22237zd(boolean z) {
        SwitchCompat switchCompat = this.f37728B;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p694n.AbstractC13005k
    /* renamed from: zo */
    public void mo22236zo(boolean z) {
        View view = this.f37733K;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }
}

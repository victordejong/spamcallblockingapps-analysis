package p193e.p194a.p682e.p684b.p691k;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.fragment.app.Fragment;
import com.google.android.gms.ads.RequestConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.contextcall.p160ui.managecallreasons.ManageCallReasonsActivity;
import com.truecaller.contextcall.utils.ContextCallAnalyticsContext;
import com.truecaller.p183ui.SingleActivity;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.p183ui.components.ComboBase;
import com.truecaller.p183ui.settings.SettingsActivity;
import com.truecaller.p183ui.settings.SettingsCategory;
import com.truecaller.premium.util.NotificationAccessSource;
import com.truecaller.tcpermissions.PermissionPoller;
import com.truecaller.whatsappcallerid.WhatsAppCallerIdPermissionDialogActivity;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.r.a.l;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.C20399t1;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p682e.p699c2.C13197i0;
import p193e.p194a.p912i4.C15282l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b+\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u001b\u0018��2\u00020\u00012\u00020\u0002B\b¢\u0006\u0005\b¶\u0001\u0010\u0015J-\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0018\u001a\u00020\r2\b\b\u0001\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001a\u0010\u0015J%\u0010 \u001a\u00020\r2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010$\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u0017\u0010'\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b'\u0010%J\u0017\u0010(\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b(\u0010%J\u0017\u0010)\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b)\u0010%J\u0017\u0010*\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b*\u0010%J\u0017\u0010+\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b+\u0010%J\u0017\u0010,\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b,\u0010%J\u0017\u0010-\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b-\u0010%J\u0017\u0010.\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b.\u0010%J\u0017\u0010/\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b/\u0010%J\u0017\u00100\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b0\u0010%J\u0017\u00101\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b1\u0010%J\u0017\u00102\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b2\u0010%J\u0017\u00103\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b3\u0010%J\u0017\u00104\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b4\u0010%J\u0017\u00105\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b5\u0010%J\u001f\u00107\u001a\u00020\r2\u0006\u00106\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b7\u00108J\u0017\u00109\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b9\u0010%J\u0017\u0010:\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b:\u0010%J\u0017\u0010;\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b;\u0010%J\u0017\u0010<\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b<\u0010%J\u001f\u0010=\u001a\u00020\r2\u0006\u00106\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b=\u00108J\u0017\u0010>\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b>\u0010%J\u0017\u0010?\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b?\u0010%J\u0017\u0010@\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b@\u0010%J\u0017\u0010A\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\bA\u0010%J\u0017\u0010B\u001a\u00020\r2\u0006\u00106\u001a\u00020\u001eH\u0016¢\u0006\u0004\bB\u0010CJ\u000f\u0010D\u001a\u00020\rH\u0016¢\u0006\u0004\bD\u0010\u0015J\u0017\u0010F\u001a\u00020\r2\u0006\u0010E\u001a\u00020\"H\u0016¢\u0006\u0004\bF\u0010%J\u000f\u0010G\u001a\u00020\rH\u0016¢\u0006\u0004\bG\u0010\u0015J\u000f\u0010H\u001a\u00020\rH\u0016¢\u0006\u0004\bH\u0010\u0015R\u0018\u0010K\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0018\u0010M\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010JR\u0018\u0010Q\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0018\u0010U\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010TR\u0018\u0010W\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010PR\u0018\u0010Y\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010JR\u0018\u0010]\u001a\u0004\u0018\u00010Z8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\R\u0018\u0010_\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010JR\u0018\u0010a\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010JR\u0018\u0010c\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010JR\u0018\u0010g\u001a\u0004\u0018\u00010d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010fR\u0018\u0010i\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010JR\u0018\u0010k\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010PR\u0018\u0010m\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010JR\"\u0010u\u001a\u00020n8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bo\u0010p\u001a\u0004\bq\u0010r\"\u0004\bs\u0010tR\u0018\u0010y\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010xR\u0018\u0010{\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010PR\u0018\u0010}\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010JR\u0018\u0010\u007f\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010JR*\u0010\u0087\u0001\u001a\u00030\u0080\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u0081\u0001\u0010\u0082\u0001\u001a\u0006\b\u0083\u0001\u0010\u0084\u0001\"\u0006\b\u0085\u0001\u0010\u0086\u0001R\u001a\u0010\u0089\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010JR\u001a\u0010\u008b\u0001\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008a\u0001\u0010PR\u001a\u0010\u008d\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008c\u0001\u0010JR\u001a\u0010\u008f\u0001\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008e\u0001\u0010PR\u001a\u0010\u0091\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0090\u0001\u0010JR\u001a\u0010\u0093\u0001\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0092\u0001\u0010PR\u001a\u0010\u0095\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0094\u0001\u0010JR\u001a\u0010\u0097\u0001\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0096\u0001\u0010PR\u001a\u0010\u0099\u0001\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0098\u0001\u0010xR\u001a\u0010\u009b\u0001\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009a\u0001\u0010PR\u001c\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u009c\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u009e\u0001R\u001a\u0010¡\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b \u0001\u0010JR\u001a\u0010£\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¢\u0001\u0010JR\u001a\u0010¥\u0001\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¤\u0001\u0010xR\u001a\u0010§\u0001\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¦\u0001\u0010PR\u001a\u0010©\u0001\u001a\u0004\u0018\u00010Z8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¨\u0001\u0010\\R\u001a\u0010«\u0001\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bª\u0001\u0010xR\u001a\u0010\u00ad\u0001\u001a\u0004\u0018\u00010d8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¬\u0001\u0010fR\u001a\u0010¯\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b®\u0001\u0010JR\u001a\u0010±\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b°\u0001\u0010JR\u001a\u0010³\u0001\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b²\u0001\u0010PR\u001a\u0010µ\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b´\u0001\u0010J¨\u0006·\u0001"}, d2 = {"Le/a/e/b/k/p;", "Landroidx/fragment/app/Fragment;", "Le/a/e/b/k/u;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "onAttach", "(Landroid/content/Context;)V", "onResume", "()V", "", "requestText", "ne", "(I)V", "ui", "", "Le/a/e/c2/i0;", "entries", "", "selectedItemId", "jh", "(Ljava/util/List;Ljava/lang/String;)V", "", "checked", "Cd", "(Z)V", "isVisible", "Wm", "ii", "Qd", "Na", "M9", "cw", "F8", "Qv", "ai", "Rw", "Aw", "s9", "Sy", "kb", "Up", "text", "Wb", "(IZ)V", "Fo", "Hh", "Ox", "Wz", "rk", "ls", "u9", "vs", "sl", "yb", "(Ljava/lang/String;)V", "Qs", "enabled", "ol", "G7", "Yu", "r", "Landroid/view/View;", "flashView", "p", "shortcutBankingSeparator", "Landroidx/appcompat/widget/SwitchCompat;", "y", "Landroidx/appcompat/widget/SwitchCompat;", "autoSearchEnhancedNotificationSwitch", "Lcom/truecaller/ui/components/ComboBase;", C22021b.f61237c, "Lcom/truecaller/ui/components/ComboBase;", "dialPadFeedbackCombo", "x", "autoSearchSwitch", "J", "tapInCallLogContainer", "Landroid/widget/Button;", "N", "Landroid/widget/Button;", "contextCallManageButton", "v", "autoSearchContainer", "w", "autoSearchView", "P", "contextCallContainer", "Landroid/widget/RadioButton;", "Q", "Landroid/widget/RadioButton;", "defaultTabCalls", "L", "incomingCallNotificationsView", "s", "flashSwitch", "q", "flashContainer", "Le/a/i4/l;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Le/a/i4/l;", "getNotificationAccessRequester", "()Le/a/i4/l;", "setNotificationAccessRequester", "(Le/a/i4/l;)V", "notificationAccessRequester", "Landroid/widget/TextView;", "m", "Landroid/widget/TextView;", "shortcutMessagesView", "f", "whoViewedMeNotificationsSwitch", "n", "shortcutMessagesSeparator", "j", "missedCallNotificationsView", "Le/a/e/b/k/t;", "S", "Le/a/e/b/k/t;", "OA", "()Le/a/e/b/k/t;", "setPresenter", "(Le/a/e/b/k/t;)V", "presenter", "C", "whatsAppInCallLogView", "K", "incomingCallNotificationsSwitch", "h", "whoViewedMeNotificationsContainer", "k", "missedCallRemindersSwitch", "A", "autoSearchEnhancedNotificationView", "u", "swishConfirmationFlashSwitch", "t", "swishContainer", "B", "whatsAppInCallLogSwitch", "o", "shortcutBankingView", "i", "missedCallNotificationsSwitch", "Lcom/truecaller/tcpermissions/PermissionPoller;", "a", "Lcom/truecaller/tcpermissions/PermissionPoller;", "permissionPoller", "g", "whoViewedMeNotificationsView", "l", "missedCallRemindersView", "z", "autoSearchEnhancedNotificationText", "M", "contextCallSwitch", "O", "contextCallHiddenPersonsButton", "D", "whatsAppInCallLogText", "R", "defaultTabMessages", "d", "enhancedSearchView", "E", "tapInCallLogMethodView", "e", "enhancedSearchSwitchView", AbstractC2405c.f7629a, "enhancedSearchContainer", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.b.k.p */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/k/p.class */
public final class C12958p extends Fragment implements AbstractC12966u {

    /* renamed from: A */
    public View f37580A;

    /* renamed from: B */
    public SwitchCompat f37581B;

    /* renamed from: C */
    public View f37582C;

    /* renamed from: D */
    public TextView f37583D;

    /* renamed from: E */
    public View f37584E;

    /* renamed from: J */
    public View f37585J;

    /* renamed from: K */
    public SwitchCompat f37586K;

    /* renamed from: L */
    public View f37587L;

    /* renamed from: M */
    public SwitchCompat f37588M;

    /* renamed from: N */
    public Button f37589N;

    /* renamed from: O */
    public Button f37590O;

    /* renamed from: P */
    public View f37591P;

    /* renamed from: Q */
    public RadioButton f37592Q;

    /* renamed from: R */
    public RadioButton f37593R;
    @Inject

    /* renamed from: S */
    public AbstractC12965t f37594S;
    @Inject

    /* renamed from: T */
    public C15282l f37595T;

    /* renamed from: a */
    public PermissionPoller f37596a;

    /* renamed from: b */
    public ComboBase f37597b;

    /* renamed from: c */
    public View f37598c;

    /* renamed from: d */
    public View f37599d;

    /* renamed from: e */
    public SwitchCompat f37600e;

    /* renamed from: f */
    public SwitchCompat f37601f;

    /* renamed from: g */
    public View f37602g;

    /* renamed from: h */
    public View f37603h;

    /* renamed from: i */
    public SwitchCompat f37604i;

    /* renamed from: j */
    public View f37605j;

    /* renamed from: k */
    public SwitchCompat f37606k;

    /* renamed from: l */
    public View f37607l;

    /* renamed from: m */
    public TextView f37608m;

    /* renamed from: n */
    public View f37609n;

    /* renamed from: o */
    public TextView f37610o;

    /* renamed from: p */
    public View f37611p;

    /* renamed from: q */
    public View f37612q;

    /* renamed from: r */
    public View f37613r;

    /* renamed from: s */
    public SwitchCompat f37614s;

    /* renamed from: t */
    public View f37615t;

    /* renamed from: u */
    public SwitchCompat f37616u;

    /* renamed from: v */
    public View f37617v;

    /* renamed from: w */
    public View f37618w;

    /* renamed from: x */
    public SwitchCompat f37619x;

    /* renamed from: y */
    public SwitchCompat f37620y;

    /* renamed from: z */
    public TextView f37621z;

    /* renamed from: e.a.e.b.k.p$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/k/p$a.class */
    public static final class RunnableC12959a implements Runnable {
        public RunnableC12959a() {
            C12958p.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ScrollView scrollView;
            View view;
            View findViewById;
            l activity = C12958p.this.getActivity();
            if (activity == null || (scrollView = (ScrollView) activity.findViewById(C2752R.C2754id.settings_scrollView)) == null || (view = C12958p.this.getView()) == null || (findViewById = view.findViewById(C2752R.C2754id.settingsNotificationAccessContainer)) == null) {
                return;
            }
            scrollView.scrollTo(0, findViewById.getTop());
        }
    }

    /* renamed from: e.a.e.b.k.p$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/k/p$b.class */
    public static final class View$OnClickListenerC12960b implements View.OnClickListener {
        public View$OnClickListenerC12960b() {
            C12958p.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            l activity = C12958p.this.getActivity();
            if (activity != null) {
                activity.startActivity(SingleActivity.m34591ua(activity, SingleActivity.FragmentSingle.SPEED_DIAL));
            }
        }
    }

    /* renamed from: e.a.e.b.k.p$c */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/k/p$c.class */
    public static final class C12961c implements ComboBase.AbstractC4672a {

        /* renamed from: b */
        public final /* synthetic */ List f37625b;

        public C12961c(List list, String str) {
            C12958p.this = r4;
            this.f37625b = list;
        }

        @Override // com.truecaller.p183ui.components.ComboBase.AbstractC4672a
        /* renamed from: a */
        public final void mo14306a(ComboBase comboBase) {
            AbstractC12965t m22373OA = C12958p.this.m22373OA();
            s1.z.c.l.d(comboBase, "combo1");
            C13197i0 selection = comboBase.getSelection();
            s1.z.c.l.d(selection, "combo1.selection");
            m22373OA.mo22326Zi(selection.mo18607e().toString());
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: Aw */
    public void mo22371Aw(boolean z) {
        SwitchCompat switchCompat = this.f37616u;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: Cd */
    public void mo22370Cd(boolean z) {
        SwitchCompat switchCompat = this.f37620y;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: F8 */
    public void mo22369F8(boolean z) {
        TextView textView = this.f37608m;
        if (textView != null) {
            C19286f.m13683U(textView, z);
        }
        View view = this.f37609n;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: Fo */
    public void mo22368Fo(boolean z) {
        View view = this.f37584E;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: G7 */
    public void mo22367G7() {
        View view = getView();
        if (view != null) {
            view.post(new RunnableC12959a());
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: Hh */
    public void mo22366Hh(boolean z) {
        View view = this.f37585J;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: M9 */
    public void mo22365M9(boolean z) {
        SwitchCompat switchCompat = this.f37604i;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: Na */
    public void mo22364Na(boolean z) {
        SwitchCompat switchCompat = this.f37601f;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    /* renamed from: OA */
    public final AbstractC12965t m22373OA() {
        AbstractC12965t abstractC12965t = this.f37594S;
        if (abstractC12965t != null) {
            return abstractC12965t;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: Ox */
    public void mo22363Ox(boolean z) {
        View view = this.f37582C;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: Qd */
    public void mo22362Qd(boolean z) {
        View view = this.f37603h;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: Qs */
    public void mo22361Qs() {
        ManageCallReasonsActivity.C3785b c3785b = ManageCallReasonsActivity.f11438f;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        startActivity(c3785b.m35584a(requireContext, ContextCallAnalyticsContext.SETTINGS, true));
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: Qv */
    public void mo22360Qv(boolean z) {
        View view = this.f37612q;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: Rw */
    public void mo22359Rw(boolean z) {
        View view = this.f37615t;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: Sy */
    public void mo22358Sy(boolean z) {
        RadioButton radioButton = this.f37592Q;
        if (radioButton != null) {
            radioButton.setOnCheckedChangeListener(null);
            radioButton.setChecked(z);
            radioButton.setOnCheckedChangeListener(new C12962q(this, true));
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: Up */
    public void mo22357Up(boolean z) {
        SwitchCompat switchCompat = this.f37619x;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: Wb */
    public void mo22356Wb(int i, boolean z) {
        SwitchCompat switchCompat = this.f37620y;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
        TextView textView = this.f37621z;
        if (textView != null) {
            textView.setText(i);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: Wm */
    public void mo22355Wm(boolean z) {
        View view = this.f37598c;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: Wz */
    public void mo22354Wz(boolean z) {
        SwitchCompat switchCompat = this.f37581B;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: Yu */
    public void mo22353Yu() {
        startActivity(TruecallerInit.m34553xa(requireContext(), "premium", "WhatsAppCallerIdNotficationAccess"));
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: ai */
    public void mo22352ai(boolean z) {
        SwitchCompat switchCompat = this.f37614s;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: cw */
    public void mo22351cw(boolean z) {
        SwitchCompat switchCompat = this.f37606k;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: ii */
    public void mo22350ii(boolean z) {
        SwitchCompat switchCompat = this.f37600e;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: jh */
    public void mo22349jh(List<? extends C13197i0> list, String str) {
        s1.z.c.l.e(list, "entries");
        s1.z.c.l.e(str, "selectedItemId");
        ComboBase comboBase = this.f37597b;
        if (comboBase != null) {
            C19286f.m13690N(comboBase, true, 0.0f, 2);
            comboBase.setData(list);
            comboBase.setSelection(C19045j0.m14206j(list, str));
            comboBase.m34539a(new C12961c(list, str));
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: kb */
    public void mo22348kb(boolean z) {
        RadioButton radioButton = this.f37593R;
        if (radioButton != null) {
            radioButton.setOnCheckedChangeListener(null);
            radioButton.setChecked(z);
            radioButton.setOnCheckedChangeListener(new C12962q(this, false));
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: ls */
    public void mo22347ls(boolean z) {
        View view = this.f37587L;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: ne */
    public void mo22346ne(int i) {
        C15282l c15282l = this.f37595T;
        if (c15282l == null) {
            s1.z.c.l.l("notificationAccessRequester");
            throw null;
        } else if (!c15282l.m18958a(requireActivity(), NotificationAccessSource.SETTINGS, i)) {
        } else {
            PermissionPoller permissionPoller = this.f37596a;
            if (permissionPoller != null && permissionPoller != null) {
                permissionPoller.f15304b.removeCallbacks(permissionPoller);
            }
            Context requireContext = requireContext();
            s1.z.c.l.d(requireContext, "requireContext()");
            PermissionPoller permissionPoller2 = new PermissionPoller(requireContext, new Handler(Looper.getMainLooper()), SettingsActivity.C4692a.m34493b(SettingsActivity.f15840g, requireContext, SettingsCategory.SETTINGS_GENERAL, false, null, 12));
            this.f37596a = permissionPoller2;
            if (permissionPoller2 == null) {
                return;
            }
            permissionPoller2.m34618a(PermissionPoller.Permission.NOTIFICATION_ACCESS);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: ol */
    public void mo22345ol(boolean z) {
        SwitchCompat switchCompat = this.f37588M;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    public void onAttach(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        C12958p.super.onAttach(context);
        SettingsActivity requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.ui.settings.SettingsActivity");
        C20399t1.C20427s c20427s = (C20399t1.C20427s) requireActivity.m34497wa();
        this.f37594S = (AbstractC12965t) c20427s.f57474i.get();
        C15282l mo12747E6 = c20427s.f57467b.f57299b.mo12747E6();
        Objects.requireNonNull(mo12747E6, "Cannot return null from a non-@Nullable component method");
        this.f37595T = mo12747E6;
        AbstractC12965t abstractC12965t = this.f37594S;
        if (abstractC12965t != null) {
            abstractC12965t.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.settings_general, viewGroup, false);
    }

    public void onResume() {
        C12958p.super.onResume();
        AbstractC12965t abstractC12965t = this.f37594S;
        if (abstractC12965t == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC12965t.onResume();
        Bundle arguments = getArguments();
        if (arguments != null) {
            AbstractC12965t abstractC12965t2 = this.f37594S;
            if (abstractC12965t2 == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            abstractC12965t2.mo22322l1(arguments.getString("settings_action"));
        }
        PermissionPoller permissionPoller = this.f37596a;
        if (permissionPoller == null) {
            return;
        }
        permissionPoller.f15304b.removeCallbacks(permissionPoller);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C12958p.super.onViewCreated(view, bundle);
        this.f37592Q = (RadioButton) view.findViewById(C2752R.C2754id.radioCalls);
        this.f37593R = (RadioButton) view.findViewById(C2752R.C2754id.radioMessages);
        view.findViewById(C2752R.C2754id.containerCallsTab).setOnClickListener(new r(2, this));
        view.findViewById(C2752R.C2754id.containerMessagesTab).setOnClickListener(new r(3, this));
        RadioButton radioButton = this.f37592Q;
        if (radioButton != null) {
            radioButton.setOnClickListener(new r(0, this));
            radioButton.setOnCheckedChangeListener(new p(0, this));
        }
        RadioButton radioButton2 = this.f37593R;
        if (radioButton2 != null) {
            radioButton2.setOnClickListener(new r(1, this));
            radioButton2.setOnCheckedChangeListener(new p(1, this));
        }
        this.f37597b = (ComboBase) view.findViewById(C2752R.C2754id.settingsDialPadFeedback);
        SwitchCompat switchCompat = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsEnhancedSearchSwitch);
        this.f37600e = switchCompat;
        if (switchCompat != null) {
            switchCompat.setOnCheckedChangeListener(new C12945c(this));
        }
        this.f37598c = view.findViewById(C2752R.C2754id.settingsEnhancedSearchContainer);
        View findViewById = view.findViewById(C2752R.C2754id.settingsEnhancedSearch);
        this.f37599d = findViewById;
        if (findViewById != null) {
            findViewById.setOnClickListener(new View$OnClickListenerC12963r(this.f37600e));
        }
        TextView textView = (TextView) view.findViewById(C2752R.C2754id.settingsEnhancedSearchText);
        if (textView != null) {
            textView.setMovementMethod(LinkMovementMethod.getInstance());
        }
        this.f37603h = view.findViewById(C2752R.C2754id.settingsWhoViewedMeNotificationsContainer);
        SwitchCompat switchCompat2 = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsWhoViewedMeNotificationsSwitch);
        this.f37601f = switchCompat2;
        if (switchCompat2 != null) {
            switchCompat2.setOnCheckedChangeListener(new C12957o(this));
        }
        View findViewById2 = view.findViewById(C2752R.C2754id.settingsWhoViewedMeNotifications);
        this.f37602g = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(new View$OnClickListenerC12963r(this.f37601f));
        }
        SwitchCompat switchCompat3 = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsShowMissedCallNotificationsSwitch);
        this.f37604i = switchCompat3;
        if (switchCompat3 != null) {
            switchCompat3.setOnCheckedChangeListener(new C12950h(this));
        }
        View findViewById3 = view.findViewById(C2752R.C2754id.settingsShowMissedCallNotifications);
        this.f37605j = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(new View$OnClickListenerC12951i(this));
        }
        SwitchCompat switchCompat4 = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsShowMissedCallRemindersSwitch);
        this.f37606k = switchCompat4;
        if (switchCompat4 != null) {
            switchCompat4.setOnCheckedChangeListener(new C12952j(this));
        }
        View findViewById4 = view.findViewById(C2752R.C2754id.settingsShowMissedCallReminders);
        this.f37607l = findViewById4;
        if (findViewById4 != null) {
            findViewById4.setOnClickListener(new View$OnClickListenerC12963r(this.f37606k));
        }
        this.f37609n = view.findViewById(C2752R.C2754id.separatorShortcutMessages);
        TextView textView2 = (TextView) view.findViewById(C2752R.C2754id.settingsShortcutMessages);
        this.f37608m = textView2;
        if (textView2 != null) {
            textView2.setOnClickListener(new View$OnClickListenerC12955m(this));
        }
        TextView textView3 = (TextView) view.findViewById(C2752R.C2754id.settingsShortcutContacts);
        if (textView3 != null) {
            textView3.setOnClickListener(new View$OnClickListenerC12954l(this));
        }
        this.f37611p = view.findViewById(C2752R.C2754id.separatorShortcutBanking);
        TextView textView4 = (TextView) view.findViewById(C2752R.C2754id.settingsShortcutBanking);
        this.f37610o = textView4;
        if (textView4 != null) {
            textView4.setOnClickListener(new View$OnClickListenerC12953k(this));
        }
        this.f37612q = view.findViewById(C2752R.C2754id.settingsFlashContainer);
        SwitchCompat switchCompat5 = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsFlashSwitch);
        this.f37614s = switchCompat5;
        if (switchCompat5 != null) {
            switchCompat5.setOnCheckedChangeListener(new C12946d(this));
        }
        View findViewById5 = view.findViewById(C2752R.C2754id.settingsFlash);
        this.f37613r = findViewById5;
        if (findViewById5 != null) {
            findViewById5.setOnClickListener(new View$OnClickListenerC12963r(this.f37614s));
        }
        SwitchCompat switchCompat6 = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsSwishFlashSwitch);
        this.f37616u = switchCompat6;
        if (switchCompat6 != null) {
            switchCompat6.setOnCheckedChangeListener(new C12956n(this));
        }
        View findViewById6 = view.findViewById(C2752R.C2754id.settingsSwishFlash);
        this.f37615t = findViewById6;
        if (findViewById6 != null) {
            findViewById6.setOnClickListener(new View$OnClickListenerC12963r(this.f37616u));
        }
        this.f37617v = view.findViewById(C2752R.C2754id.settingsAutoSearchContainer);
        SwitchCompat switchCompat7 = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsAutoSearchSwitch);
        this.f37619x = switchCompat7;
        if (switchCompat7 != null) {
            switchCompat7.setOnCheckedChangeListener(new C12943a(this));
        }
        View findViewById7 = view.findViewById(C2752R.C2754id.settingsAutoSearch);
        this.f37618w = findViewById7;
        if (findViewById7 != null) {
            findViewById7.setOnClickListener(new View$OnClickListenerC12963r(this.f37619x));
        }
        this.f37620y = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsSmartNotificationSwitch);
        View findViewById8 = view.findViewById(C2752R.C2754id.settingsSmartNotification);
        this.f37580A = findViewById8;
        if (findViewById8 != null) {
            findViewById8.setOnClickListener(new View$OnClickListenerC12944b(this));
        }
        this.f37621z = (TextView) view.findViewById(C2752R.C2754id.smartNotificationsBodyText);
        this.f37584E = view.findViewById(C2752R.C2754id.settingsTapInCallLogMethod);
        this.f37585J = view.findViewById(C2752R.C2754id.settingsTapInCallLogContainer);
        this.f37583D = (TextView) view.findViewById(C2752R.C2754id.settingsWhatsAppInCallLogBodyText);
        SwitchCompat switchCompat8 = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsWhatsAppInCallLogSwitch);
        this.f37581B = switchCompat8;
        if (switchCompat8 != null) {
            switchCompat8.setOnCheckedChangeListener(new C12947e(this));
        }
        View findViewById9 = view.findViewById(C2752R.C2754id.settingsWhatsAppInCallLog);
        this.f37582C = findViewById9;
        if (findViewById9 != null) {
            findViewById9.setOnClickListener(new View$OnClickListenerC12948f(this));
        }
        SwitchCompat switchCompat9 = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsShowIncomingCallNotificationsSwitch);
        this.f37586K = switchCompat9;
        if (switchCompat9 != null) {
            switchCompat9.setOnCheckedChangeListener(new C12949g(this));
        }
        View findViewById10 = view.findViewById(C2752R.C2754id.settingsShowIncomingCallNotifications);
        this.f37587L = findViewById10;
        if (findViewById10 != null) {
            findViewById10.setOnClickListener(new View$OnClickListenerC12963r(this.f37586K));
        }
        Button button = (Button) view.findViewById(C2752R.C2754id.settingsContextCallManageButton);
        this.f37589N = button;
        if (button != null) {
            button.setOnClickListener(new j1(0, this));
        }
        Button button2 = (Button) view.findViewById(C2752R.C2754id.settingsContextCallHiddenPersonsButton);
        this.f37590O = button2;
        if (button2 != null) {
            button2.setOnClickListener(new j1(1, this));
        }
        this.f37588M = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsContextCallSwitch);
        View findViewById11 = view.findViewById(C2752R.C2754id.settingsContextCallContainer);
        this.f37591P = findViewById11;
        if (findViewById11 != null) {
            findViewById11.setOnClickListener(new j1(2, this));
        }
        View findViewById12 = view.findViewById(C2752R.C2754id.settingsSpeedDial);
        if (findViewById12 != null) {
            findViewById12.setOnClickListener(new View$OnClickListenerC12960b());
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: rk */
    public void mo22344rk(int i, boolean z) {
        SwitchCompat switchCompat = this.f37581B;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
        TextView textView = this.f37583D;
        if (textView != null) {
            textView.setText(i);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: s9 */
    public void mo22343s9(boolean z) {
        View findViewById;
        View view = getView();
        if (view == null || (findViewById = view.findViewById(C2752R.C2754id.settingDefaultTabContainer)) == null) {
            return;
        }
        C19286f.m13683U(findViewById, z);
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: sl */
    public void mo22342sl(boolean z) {
        Button button = this.f37590O;
        if (button != null) {
            C19286f.m13683U(button, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: u9 */
    public void mo22341u9(boolean z) {
        SwitchCompat switchCompat = this.f37586K;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: ui */
    public void mo22340ui() {
        WhatsAppCallerIdPermissionDialogActivity.C4852b c4852b = WhatsAppCallerIdPermissionDialogActivity.f16481k;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        NotificationAccessSource notificationAccessSource = NotificationAccessSource.SETTINGS;
        SettingsActivity.C4692a c4692a = SettingsActivity.f15840g;
        Context requireContext2 = requireContext();
        s1.z.c.l.d(requireContext2, "requireContext()");
        startActivity(c4852b.m34282a(requireContext, notificationAccessSource, SettingsActivity.C4692a.m34493b(c4692a, requireContext2, SettingsCategory.SETTINGS_GENERAL, false, null, 12), -1));
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: vs */
    public void mo22339vs(boolean z) {
        View view = this.f37591P;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12966u
    /* renamed from: yb */
    public void mo22338yb(String str) {
        s1.z.c.l.e(str, "text");
        Button button = this.f37589N;
        if (button != null) {
            button.setText(str);
        }
    }
}

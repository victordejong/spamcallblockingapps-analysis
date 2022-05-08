package gogolook.callgogolook2.messaging.p078ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.text.Layout;
import android.text.Selection;
import android.text.SpannableString;
import android.text.method.ScrollingMovementMethod;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.content.res.ResourcesCompat;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.contact.ContactRealmObject;
import gogolook.callgogolook2.view.MetaphorBadgeLayout;
import kotlin.Metadata;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import p459j.p460a.p474c0.p491g.p495d0.AbstractC11996e;
import p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f;
import p459j.p460a.p474c0.p491g.p495d0.AbstractView$OnClickListenerC11995d;
import p459j.p460a.p474c0.p491g.p495d0.C11993b;
import p459j.p460a.p521j0.p529x.C12801n;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14188u2;
import p459j.p460a.p613z0.DialogC14618f;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� L2\u00020\u00012\u00020\u0002:\u0003KLMB%\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u0014H\u0016J\b\u0010\u001d\u001a\u00020\u0014H\u0016J\b\u0010\u001e\u001a\u00020\u0014H\u0016J\u0010\u0010\u001f\u001a\u00020\u00142\u0006\u0010 \u001a\u00020\u001bH\u0016J\b\u0010!\u001a\u00020\u0014H\u0016J\b\u0010\"\u001a\u00020\u0014H\u0016J\b\u0010#\u001a\u00020\u0014H\u0016J\b\u0010$\u001a\u00020\u0014H\u0016J\b\u0010%\u001a\u00020\u0014H\u0016J\b\u0010&\u001a\u00020\u0014H\u0016J&\u0010'\u001a\u00020\u00122\b\u0010(\u001a\u0004\u0018\u00010\u00142\b\u0010)\u001a\u0004\u0018\u00010\u00142\b\u0010*\u001a\u0004\u0018\u00010\u0014H\u0016J \u0010+\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020.H\u0016J\u001c\u00100\u001a\u00020\u00122\b\u00101\u001a\u0004\u0018\u0001022\b\u00103\u001a\u0004\u0018\u00010\u001bH\u0016J\u0010\u00104\u001a\u00020\u00122\u0006\u00105\u001a\u00020\u0010H\u0016J\u0010\u00106\u001a\u00020\u00122\u0006\u00107\u001a\u00020\u001bH\u0016J\u0010\u00108\u001a\u00020\u00122\u0006\u00109\u001a\u00020:H\u0016J\b\u0010;\u001a\u00020\u0012H\u0002J;\u0010<\u001a\u00020\u00122\u0006\u0010=\u001a\u00020\u00162\u0006\u0010>\u001a\u00020\b2!\u0010?\u001a\u001d\u0012\u0013\u0012\u00110.¢\u0006\f\bA\u0012\b\bB\u0012\u0004\b\b(C\u0012\u0004\u0012\u00020\u00120@H\u0002J\u0010\u0010D\u001a\u00020\u00122\u0006\u0010E\u001a\u00020.H\u0016J\b\u0010F\u001a\u00020\u0012H\u0016J\b\u0010G\u001a\u00020\u0012H\u0016J\u0012\u0010H\u001a\u00020\u00122\b\u0010I\u001a\u0004\u0018\u00010JH\u0016R\u001a\u0010\n\u001a\u00020\bX\u0096\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n��¨\u0006N"}, m815d2 = {"Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogView;", "Landroid/widget/LinearLayout;", "Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogContract$SmsView;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "contentVisibility", "getContentVisibility", "()I", "setContentVisibility", "(I)V", "presenter", "Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogContract$Presenter;", "applyButtonView", "", "buttonParam", "Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogContract$DialogButton;", "buttonView", "Landroid/widget/TextView;", "dividerView", "Landroid/view/View;", "dismissNotification", NovaHomeBadger.TAG, "", "getBlockButton", "getCallButton", "getCopyOtpButton", "getMyReportButton", "mySpamReason", "getReplyButton", "getReportButton", "getReportNotSpamButton", "getReportSpamButton", "getVasScanMessageButton", "getViewContentButton", "setButtons", "primaryButton", "secondaryButton", "tertiaryButton", "setContent", "content", "isShowContentDirectly", "", "urlClickable", "setMetaphor", "rowInfo", "Lgogolook/callgogolook2/gson/RowInfo;", ContactRealmObject.CONTACT_ID, "setPresenter", "p", "setSubtitle", "subtitle", "setTitle", "title", "", "setupUi", "setupViewFullMessage", "contentView", "maxLine", "onShowFullMessage", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "skipExpandedTouchEvent", "shouldShowNumberUi", "shouldShow", "showGoSettingDialog", "showScanPermissionDialog", "updateScanResultUi", "rule", "Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$ScanResultDisplayRule;", "AutoRemovePreDrawerListener", "Companion", "ScanResultDisplayRule", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView.class */
public final class SmsDialogView extends LinearLayout implements AbstractC11999f {

    /* renamed from: a */
    public int f11799a;

    /* renamed from: b */
    public AbstractC11996e f11800b;

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$a.class */
    public static final class ViewTreeObserver$OnPreDrawListenerC4786a implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a */
        public final View f11801a;

        /* renamed from: b */
        public final AbstractC15107a<C14989s> f11802b;

        public ViewTreeObserver$OnPreDrawListenerC4786a(View view, AbstractC15107a<C14989s> aVar) {
            C15149k.m377b(view, "parentView");
            C15149k.m377b(aVar, "onPreDrawAction");
            this.f11801a = view;
            this.f11802b = aVar;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.f11801a.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f11802b.invoke();
            return false;
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$b.class */
    public static final class C4787b {
        public C4787b() {
        }

        public /* synthetic */ C4787b(C15145g gVar) {
            this();
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\u00020\u0001:\u0007\u0017\u0018\u0019\u001a\u001b\u001c\u001dB9\b\u0002\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0001\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0016\u0082\u0001\u0007\u001e\u001f !\"#$¨\u0006%"}, m815d2 = {"Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$ScanResultDisplayRule;", "", "icon", "", "animation", "Landroid/view/animation/Animation;", "text", "", "textColorRes", "shouldShowAlertBackground", "", "(Ljava/lang/Integer;Landroid/view/animation/Animation;Ljava/lang/String;IZ)V", "getAnimation", "()Landroid/view/animation/Animation;", "getIcon", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getShouldShowAlertBackground", "()Z", "getText", "()Ljava/lang/String;", "getTextColorRes", "()I", "ContentScanning", "SmsUrlScanManually", "SpamContent", "UrlClickToScan", "UrlHasResult", "UrlScanning", "VasContent", "Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$ScanResultDisplayRule$UrlClickToScan;", "Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$ScanResultDisplayRule$UrlScanning;", "Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$ScanResultDisplayRule$UrlHasResult;", "Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$ScanResultDisplayRule$VasContent;", "Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$ScanResultDisplayRule$ContentScanning;", "Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$ScanResultDisplayRule$SpamContent;", "Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$ScanResultDisplayRule$SmsUrlScanManually;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$c.class */
    public static abstract class AbstractC4788c {

        /* renamed from: a */
        public final Integer f11803a;

        /* renamed from: b */
        public final Animation f11804b;

        /* renamed from: c */
        public final String f11805c;

        /* renamed from: d */
        public final int f11806d;

        /* renamed from: e */
        public final boolean f11807e;

        /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$c$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$c$a.class */
        public static final class C4789a extends AbstractC4788c {
            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public C4789a(android.content.Context r9) {
                /*
                    r8 = this;
                    r0 = r9
                    java.lang.String r1 = "context"
                    p626l.p641z.p643d.C15149k.m377b(r0, r1)
                    r0 = r9
                    r1 = 2130772006(0x7f010026, float:1.7147118E38)
                    android.view.animation.Animation r0 = android.view.animation.AnimationUtils.loadAnimation(r0, r1)
                    r10 = r0
                    r0 = r9
                    r1 = 2131888285(0x7f12089d, float:1.94112E38)
                    java.lang.String r0 = r0.getString(r1)
                    r9 = r0
                    r0 = r9
                    java.lang.String r1 = "context.getString(R.stri…ms_dialog_sms_processing)"
                    p626l.p641z.p643d.C15149k.m383a(r0, r1)
                    r0 = r8
                    r1 = 2131231659(0x7f0803ab, float:1.8079405E38)
                    java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                    r2 = r10
                    r3 = r9
                    r4 = 2131100120(0x7f0601d8, float:1.7812612E38)
                    r5 = 0
                    r6 = 0
                    r0.<init>(r1, r2, r3, r4, r5, r6)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.p078ui.dialog.SmsDialogView.AbstractC4788c.C4789a.<init>(android.content.Context):void");
            }
        }

        /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$c$b */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$c$b.class */
        public static final class C4790b extends AbstractC4788c {
            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public C4790b(android.content.Context r10) {
                /*
                    r9 = this;
                    r0 = r10
                    java.lang.String r1 = "context"
                    p626l.p641z.p643d.C15149k.m377b(r0, r1)
                    r0 = r10
                    r1 = 2131888366(0x7f1208ee, float:1.9411365E38)
                    java.lang.String r0 = r0.getString(r1)
                    r10 = r0
                    r0 = r10
                    java.lang.String r1 = "context.getString(R.string.smsdialog_hasurl)"
                    p626l.p641z.p643d.C15149k.m383a(r0, r1)
                    r0 = r9
                    r1 = 2131231654(0x7f0803a6, float:1.8079395E38)
                    java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                    r2 = 0
                    r3 = r10
                    r4 = 2131100044(0x7f06018c, float:1.7812458E38)
                    r5 = 0
                    r6 = 2
                    r7 = 0
                    r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.p078ui.dialog.SmsDialogView.AbstractC4788c.C4790b.<init>(android.content.Context):void");
            }
        }

        /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$c$c */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$c$c.class */
        public static final class C4791c extends AbstractC4788c {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4791c(Integer num, String str) {
                super(num, null, str, 2131100044, true, 2, null);
                C15149k.m377b(str, "text");
            }
        }

        /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$c$d */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$c$d.class */
        public static final class C4792d extends AbstractC4788c {
            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public C4792d(android.content.Context r10) {
                /*
                    r9 = this;
                    r0 = r10
                    java.lang.String r1 = "context"
                    p626l.p641z.p643d.C15149k.m377b(r0, r1)
                    r0 = r10
                    r1 = 2131888368(0x7f1208f0, float:1.941137E38)
                    java.lang.String r0 = r0.getString(r1)
                    r10 = r0
                    r0 = r10
                    java.lang.String r1 = "context.getString(R.string.smsdialog_haveurl)"
                    p626l.p641z.p643d.C15149k.m383a(r0, r1)
                    r0 = r9
                    r1 = 0
                    r2 = 0
                    r3 = r10
                    r4 = 2131100120(0x7f0601d8, float:1.7812612E38)
                    r5 = 0
                    r6 = 3
                    r7 = 0
                    r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.p078ui.dialog.SmsDialogView.AbstractC4788c.C4792d.<init>(android.content.Context):void");
            }
        }

        /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$c$e */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$c$e.class */
        public static final class C4793e extends AbstractC4788c {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4793e(Integer num, String str, boolean z) {
                super(num, null, str, z ? 2131100044 : 2131100120, z, 2, null);
                C15149k.m377b(str, "text");
            }
        }

        /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$c$f */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$c$f.class */
        public static final class C4794f extends AbstractC4788c {
            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public C4794f(android.content.Context r9) {
                /*
                    r8 = this;
                    r0 = r9
                    java.lang.String r1 = "context"
                    p626l.p641z.p643d.C15149k.m377b(r0, r1)
                    r0 = r9
                    r1 = 2130772006(0x7f010026, float:1.7147118E38)
                    android.view.animation.Animation r0 = android.view.animation.AnimationUtils.loadAnimation(r0, r1)
                    r10 = r0
                    r0 = r9
                    r1 = 6
                    int r1 = p459j.p460a.p582w0.C14131q4.m2409b(r1)
                    java.lang.String r0 = r0.getString(r1)
                    r9 = r0
                    r0 = r9
                    java.lang.String r1 = "context.getString(getStr…rovider(TYPE_START_SCAN))"
                    p626l.p641z.p643d.C15149k.m383a(r0, r1)
                    r0 = r8
                    r1 = 2131231659(0x7f0803ab, float:1.8079405E38)
                    java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                    r2 = r10
                    r3 = r9
                    r4 = 2131100120(0x7f0601d8, float:1.7812612E38)
                    r5 = 0
                    r6 = 0
                    r0.<init>(r1, r2, r3, r4, r5, r6)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.p078ui.dialog.SmsDialogView.AbstractC4788c.C4794f.<init>(android.content.Context):void");
            }
        }

        /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$c$g */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$c$g.class */
        public static final class C4795g extends AbstractC4788c {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4795g(String str) {
                super(null, null, str, 2131100044, true, 2, null);
                C15149k.m377b(str, "subscriptionString");
            }
        }

        public AbstractC4788c(Integer num, Animation animation, String str, @ColorRes int i, boolean z) {
            this.f11803a = num;
            this.f11804b = animation;
            this.f11805c = str;
            this.f11806d = i;
            this.f11807e = z;
        }

        public /* synthetic */ AbstractC4788c(Integer num, Animation animation, String str, int i, boolean z, int i2, C15145g gVar) {
            this((i2 & 1) != 0 ? null : num, (i2 & 2) != 0 ? null : animation, str, i, z);
        }

        public /* synthetic */ AbstractC4788c(Integer num, Animation animation, String str, @ColorRes int i, boolean z, C15145g gVar) {
            this(num, animation, str, i, z);
        }

        /* renamed from: a */
        public final Animation m27032a() {
            return this.f11804b;
        }

        /* renamed from: b */
        public final Integer m27031b() {
            return this.f11803a;
        }

        /* renamed from: c */
        public final boolean m27030c() {
            return this.f11807e;
        }

        /* renamed from: d */
        public final String m27029d() {
            return this.f11805c;
        }

        /* renamed from: e */
        public final int m27028e() {
            return this.f11806d;
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$d.class */
    public static final class C4796d extends AbstractView$OnClickListenerC11995d {
        public C4796d(String str) {
            super(str);
        }

        @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractView$OnClickListenerC11995d
        /* renamed from: a */
        public void mo7616a(View view, String str) {
            C15149k.m377b(str, "action");
            AbstractC11996e eVar = SmsDialogView.this.f11800b;
            if (eVar != null) {
                eVar.mo7568g();
                eVar.mo7585a(str);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$e.class */
    public static final class C4797e extends AbstractView$OnClickListenerC11995d {
        public C4797e(String str) {
            super(str);
        }

        @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractView$OnClickListenerC11995d
        /* renamed from: a */
        public void mo7616a(View view, String str) {
            C15149k.m377b(str, "action");
            AbstractC11996e eVar = SmsDialogView.this.f11800b;
            if (eVar != null && eVar.mo7595a()) {
                eVar.mo7585a(str);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$f.class */
    public static final class C4798f extends AbstractView$OnClickListenerC11995d {
        public C4798f(String str) {
            super(str);
        }

        @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractView$OnClickListenerC11995d
        /* renamed from: a */
        public void mo7616a(View view, String str) {
            C15149k.m377b(str, "action");
            AbstractC11996e eVar = SmsDialogView.this.f11800b;
            if (eVar != null) {
                eVar.mo7565j();
                eVar.mo7585a(str);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$g.class */
    public static final class C4799g extends AbstractView$OnClickListenerC11995d {
        public C4799g(String str) {
            super(str);
        }

        @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractView$OnClickListenerC11995d
        /* renamed from: a */
        public void mo7616a(View view, String str) {
            C15149k.m377b(str, "action");
            AbstractC11996e eVar = SmsDialogView.this.f11800b;
            if (eVar != null) {
                eVar.mo7574c();
                eVar.mo7585a(str);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$h.class */
    public static final class C4800h extends AbstractView$OnClickListenerC11995d {
        public C4800h(String str) {
            super(str);
        }

        @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractView$OnClickListenerC11995d
        /* renamed from: a */
        public void mo7616a(View view, String str) {
            C15149k.m377b(str, "action");
            AbstractC11996e eVar = SmsDialogView.this.f11800b;
            if (eVar != null) {
                eVar.mo7594a(10);
                eVar.mo7585a(str);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$i */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$i.class */
    public static final class C4801i extends AbstractView$OnClickListenerC11995d {
        public C4801i(String str) {
            super(str);
        }

        @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractView$OnClickListenerC11995d
        /* renamed from: a */
        public void mo7616a(View view, String str) {
            C15149k.m377b(str, "action");
            AbstractC11996e eVar = SmsDialogView.this.f11800b;
            if (eVar != null) {
                eVar.mo7569f();
                eVar.mo7585a(str);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$j */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$j.class */
    public static final class C4802j extends AbstractView$OnClickListenerC11995d {
        public C4802j(String str) {
            super(str);
        }

        @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractView$OnClickListenerC11995d
        /* renamed from: a */
        public void mo7616a(View view, String str) {
            C15149k.m377b(str, "action");
            AbstractC11996e eVar = SmsDialogView.this.f11800b;
            if (eVar != null) {
                eVar.mo7566i();
                eVar.mo7585a(str);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$k */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$k.class */
    public static final class C4803k extends AbstractView$OnClickListenerC11995d {
        public C4803k(String str) {
            super(str);
        }

        @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractView$OnClickListenerC11995d
        /* renamed from: a */
        public void mo7616a(View view, String str) {
            C15149k.m377b(str, "action");
            AbstractC11996e eVar = SmsDialogView.this.f11800b;
            if (eVar != null) {
                eVar.mo7568g();
                eVar.mo7585a(str);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$l */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$l.class */
    public static final class C4804l extends AbstractView$OnClickListenerC11995d {
        public C4804l(String str) {
            super(str);
        }

        @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractView$OnClickListenerC11995d
        /* renamed from: a */
        public void mo7616a(View view, String str) {
            C15149k.m377b(str, "action");
            AbstractC11996e eVar = SmsDialogView.this.f11800b;
            if (eVar != null) {
                eVar.mo7567h();
                eVar.mo7585a(str);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$m */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$m.class */
    public static final class C4805m extends AbstractView$OnClickListenerC11995d {
        public C4805m(String str) {
            super(str);
        }

        @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractView$OnClickListenerC11995d
        /* renamed from: a */
        public void mo7616a(View view, String str) {
            C15149k.m377b(str, "action");
            AbstractC11996e eVar = SmsDialogView.this.f11800b;
            if (eVar != null) {
                eVar.mo7594a(10);
                eVar.mo7585a(str);
            }
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, m815d2 = {"<anonymous>", "", "invoke", "gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$setContent$1$1"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$n */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$n.class */
    public static final class C4806n extends AbstractC15150l implements AbstractC15107a<C14989s> {

        /* renamed from: a */
        public final /* synthetic */ TextView f11818a;

        /* renamed from: b */
        public final /* synthetic */ SmsDialogView f11819b;

        /* renamed from: c */
        public final /* synthetic */ String f11820c;

        /* renamed from: d */
        public final /* synthetic */ boolean f11821d;

        @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, m815d2 = {"<anonymous>", "", "skipExpandedTouchEvent", "", "invoke", "gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$setContent$1$1$1"}, m814k = 3, m813mv = {1, 1, 13})
        /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$n$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$n$a.class */
        public static final class C4807a extends AbstractC15150l implements AbstractC15118l<Boolean, C14989s> {

            /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$n$a$a */
            /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$n$a$a.class */
            public static final class View$OnClickListenerC4808a implements View.OnClickListener {

                /* renamed from: b */
                public final /* synthetic */ boolean f11824b;

                public View$OnClickListenerC4808a(boolean z) {
                    this.f11824b = z;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AbstractC11996e eVar;
                    if (this.f11824b && (eVar = C4806n.this.f11819b.f11800b) != null) {
                        eVar.mo7572c("sms_dialog_url");
                        eVar.mo7585a("scan_url");
                    }
                    AbstractC11996e eVar2 = C4806n.this.f11819b.f11800b;
                    if (eVar2 != null) {
                        eVar2.mo7575b("click_url");
                    }
                }
            }

            /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$n$a$b */
            /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$n$a$b.class */
            public static final class View$OnTouchListenerC4809b implements View.OnTouchListener {

                /* renamed from: a */
                public long f11825a;

                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean z = view instanceof TextView;
                    CharSequence text = null;
                    if (!z) {
                        view = null;
                    }
                    TextView textView = (TextView) view;
                    if (textView == null || motionEvent == null) {
                        return false;
                    }
                    text = textView.getText();
                    if (!(text instanceof SpannableString)) {
                    }
                    SpannableString spannableString = (SpannableString) text;
                    if (spannableString == null) {
                        return false;
                    }
                    if (motionEvent.getAction() == 0) {
                        this.f11825a = System.currentTimeMillis();
                    } else if (motionEvent.getAction() == 1 && System.currentTimeMillis() - this.f11825a > 250) {
                        Selection.removeSelection(spannableString);
                        return true;
                    }
                    if (motionEvent.getAction() == 1 || motionEvent.getAction() == 0 || motionEvent.getAction() == 2) {
                        int x = (int) motionEvent.getX();
                        int totalPaddingLeft = textView.getTotalPaddingLeft();
                        int scrollX = textView.getScrollX();
                        int y = (int) motionEvent.getY();
                        int totalPaddingTop = textView.getTotalPaddingTop();
                        int scrollY = textView.getScrollY();
                        Layout layout = textView.getLayout();
                        int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical((y - totalPaddingTop) + scrollY), (x - totalPaddingLeft) + scrollX);
                        ClickableSpan[] clickableSpanArr = (ClickableSpan[]) spannableString.getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
                        C15149k.m383a((Object) clickableSpanArr, "links");
                        if (!(clickableSpanArr.length == 0)) {
                            ClickableSpan clickableSpan = clickableSpanArr[0];
                            if (motionEvent.getAction() == 1) {
                                clickableSpan.onClick(textView);
                                return false;
                            } else if (motionEvent.getAction() != 0) {
                                return false;
                            } else {
                                Selection.setSelection(spannableString, spannableString.getSpanStart(clickableSpan), spannableString.getSpanEnd(clickableSpan));
                                return false;
                            }
                        } else {
                            Selection.removeSelection(spannableString);
                            return false;
                        }
                    } else {
                        Selection.removeSelection(spannableString);
                        return false;
                    }
                }
            }

            /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$n$a$c */
            /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$n$a$c.class */
            public static final class View$OnClickListenerC4810c implements View.OnClickListener {
                public View$OnClickListenerC4810c() {
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AbstractC11996e eVar;
                    if (C4806n.this.f11818a.getSelectionStart() == -1 && C4806n.this.f11818a.getSelectionEnd() == -1 && (eVar = C4806n.this.f11819b.f11800b) != null) {
                        eVar.mo7594a(14);
                        eVar.mo7585a("content");
                    }
                }
            }

            public C4807a() {
                super(1);
            }

            /* renamed from: a */
            public final void m27027a(boolean z) {
                if (z) {
                    AbstractC11996e eVar = C4806n.this.f11819b.f11800b;
                    if (eVar != null) {
                        eVar.mo7594a(15);
                        eVar.mo7585a("view_message_to_scp");
                        return;
                    }
                    return;
                }
                if (C4806n.this.f11821d) {
                    boolean f = C12810o.m5239f();
                    Context context = C4806n.this.f11818a.getContext();
                    C4806n nVar = C4806n.this;
                    C12801n.m5280a(context, nVar.f11820c, "#0690c9", nVar.f11818a, null, null, new View$OnClickListenerC4808a(f), null, !f);
                }
                C4806n.this.f11818a.setOnTouchListener(new View$OnTouchListenerC4809b());
                C4806n.this.f11818a.setOnClickListener(new View$OnClickListenerC4810c());
                C4806n.this.f11818a.setVerticalScrollBarEnabled(true);
                C4806n.this.f11818a.setMovementMethod(ScrollingMovementMethod.getInstance());
            }

            @Override // p626l.p641z.p642c.AbstractC15118l
            public /* bridge */ /* synthetic */ C14989s invoke(Boolean bool) {
                m27027a(bool.booleanValue());
                return C14989s.f33022a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4806n(TextView textView, SmsDialogView smsDialogView, String str, boolean z, boolean z2) {
            super(0);
            this.f11818a = textView;
            this.f11819b = smsDialogView;
            this.f11820c = str;
            this.f11821d = z2;
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.f11819b.m27040a(this.f11818a, 3, new C4807a());
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$o */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$o.class */
    public static final class View$OnClickListenerC4811o implements View.OnClickListener {
        public View$OnClickListenerC4811o(RowInfo rowInfo, String str) {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC11996e eVar = SmsDialogView.this.f11800b;
            if (eVar != null) {
                eVar.mo7579b();
                eVar.mo7585a("num_info");
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$p */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$p.class */
    public static final class View$OnClickListenerC4812p implements View.OnClickListener {
        public View$OnClickListenerC4812p(String str) {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC11996e eVar = SmsDialogView.this.f11800b;
            if (eVar != null) {
                eVar.mo7579b();
                eVar.mo7585a("num_info");
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$q */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$q.class */
    public static final class View$OnClickListenerC4813q implements View.OnClickListener {
        public View$OnClickListenerC4813q(CharSequence charSequence) {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC11996e eVar = SmsDialogView.this.f11800b;
            if (eVar != null) {
                eVar.mo7579b();
            }
            AbstractC11996e eVar2 = SmsDialogView.this.f11800b;
            if (eVar2 != null) {
                eVar2.mo7585a("num_info");
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$r */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$r.class */
    public static final class View$OnClickListenerC4814r implements View.OnClickListener {
        public View$OnClickListenerC4814r() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC11996e eVar = SmsDialogView.this.f11800b;
            if (eVar != null) {
                eVar.mo7585a(MraidParser.MRAID_COMMAND_CLOSE);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$s */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$s.class */
    public static final class View$OnClickListenerC4815s implements View.OnClickListener {
        public View$OnClickListenerC4815s() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC11996e eVar = SmsDialogView.this.f11800b;
            if (eVar != null) {
                eVar.mo7579b();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$t */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$t.class */
    public static final class View$OnClickListenerC4816t implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ View f11832a;

        /* renamed from: b */
        public final /* synthetic */ SmsDialogView f11833b;

        /* renamed from: c */
        public final /* synthetic */ TextView f11834c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC15118l f11835d;

        public View$OnClickListenerC4816t(View view, SmsDialogView smsDialogView, TextView textView, int i, AbstractC15118l lVar) {
            this.f11832a = view;
            this.f11833b = smsDialogView;
            this.f11834c = textView;
            this.f11835d = lVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (C12810o.f28921a.m5272a()) {
                this.f11835d.invoke(true);
                return;
            }
            this.f11833b.m27041a(1);
            this.f11834c.setMaxLines(7);
            this.f11835d.invoke(false);
            this.f11832a.setVisibility(8);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$u */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$u.class */
    public static final class DialogInterface$OnClickListenerC4817u implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC4817u() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            AbstractC11996e eVar = SmsDialogView.this.f11800b;
            if (eVar != null) {
                eVar.mo7571d();
                AbstractC11996e.C11998b.m7615a(eVar, null, 1, null);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$v */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$v.class */
    public static final class DialogInterface$OnClickListenerC4818v implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC4818v() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            AbstractC11996e eVar = SmsDialogView.this.f11800b;
            if (eVar != null) {
                AbstractC11996e.C11998b.m7615a(eVar, null, 1, null);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogView$w */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogView$w.class */
    public static final class View$OnClickListenerC4819w implements View.OnClickListener {
        public View$OnClickListenerC4819w(AbstractC4788c cVar) {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC11996e eVar = SmsDialogView.this.f11800b;
            if (eVar != null) {
                eVar.mo7572c("sms_dialog");
                eVar.mo7585a("scan_url");
            }
        }
    }

    static {
        new C4787b(null);
    }

    public SmsDialogView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SmsDialogView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C15149k.m377b(context, "context");
        LayoutInflater.from(context).inflate(R$layout.dialog_sms, this);
        m27033l();
    }

    public /* synthetic */ SmsDialogView(Context context, AttributeSet attributeSet, int i, int i2, C15145g gVar) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* renamed from: a */
    public static /* synthetic */ void m27037a(SmsDialogView smsDialogView, C11993b bVar, TextView textView, View view, int i, Object obj) {
        if ((i & 4) != 0) {
            view = null;
        }
        smsDialogView.m27036a(bVar, textView, view);
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f
    /* renamed from: a */
    public C11993b mo7613a() {
        String string = getContext().getString(R$string.smsdialog_question_spam_underkitkat);
        C15149k.m383a((Object) string, "context.getString(R.stri…uestion_spam_underkitkat)");
        return new C11993b(string, C14167t.m2314b(), new C4796d("block"));
    }

    /* renamed from: a */
    public void m27041a(int i) {
        this.f11799a = i;
    }

    /* renamed from: a */
    public final void m27040a(TextView textView, int i, AbstractC15118l<? super Boolean, C14989s> lVar) {
        View findViewById = findViewById(R$id.tv_content_view_message);
        if (findViewById != null) {
            int i2 = 0;
            if (textView.getLineCount() > i) {
                textView.setMaxLines(i);
                textView.setMovementMethod(null);
                View$OnClickListenerC4816t tVar = new View$OnClickListenerC4816t(findViewById, this, textView, i, lVar);
                findViewById.setOnClickListener(tVar);
                textView.setOnClickListener(tVar);
                m27041a(2);
            } else {
                lVar.invoke(false);
                m27041a(0);
                i2 = 8;
            }
            findViewById.setVisibility(i2);
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f
    /* renamed from: a */
    public void mo7612a(RowInfo rowInfo, String str) {
        MetaphorBadgeLayout metaphorBadgeLayout = (MetaphorBadgeLayout) findViewById(R$id.mbl_metaphor);
        if (metaphorBadgeLayout != null) {
            metaphorBadgeLayout.setVisibility(0);
            CallUtils.m26576a(metaphorBadgeLayout.m25911b(), metaphorBadgeLayout.m25913a(), rowInfo, str, CallUtils.EnumC4993l.SMS_DIALOG);
            metaphorBadgeLayout.setOnClickListener(new View$OnClickListenerC4811o(rowInfo, str));
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f
    /* renamed from: a */
    public void mo7611a(AbstractC4788c cVar) {
        int i;
        if (cVar == null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R$id.cl_url_result_parent);
            if (constraintLayout != null) {
                constraintLayout.setVisibility(8);
            }
            ConstraintLayout constraintLayout2 = (ConstraintLayout) findViewById(R$id.cl_sender_info);
            if (constraintLayout2 != null) {
                constraintLayout2.setBackground(null);
                return;
            }
            return;
        }
        TextView textView = (TextView) findViewById(R$id.tv_url_result);
        if (textView != null) {
            textView.setText(cVar.m27029d());
            textView.setTextColor(ResourcesCompat.getColor(textView.getResources(), cVar.m27028e(), null));
        }
        ImageView imageView = (ImageView) findViewById(R$id.iv_url_alert_icon);
        if (imageView != null) {
            if (cVar.m27031b() == null) {
                imageView.setImageDrawable(null);
                i = 8;
            } else {
                imageView.setImageResource(cVar.m27031b().intValue());
                if (cVar.m27032a() == null) {
                    imageView.clearAnimation();
                } else {
                    imageView.startAnimation(cVar.m27032a());
                }
                i = 0;
            }
            imageView.setVisibility(i);
        }
        ConstraintLayout constraintLayout3 = (ConstraintLayout) findViewById(R$id.cl_sender_info);
        if (constraintLayout3 != null) {
            constraintLayout3.setBackground(cVar.m27030c() ? getContext().getDrawable(R$drawable.sms_alert_upper_bg) : null);
        }
        ConstraintLayout constraintLayout4 = (ConstraintLayout) findViewById(R$id.cl_url_result_parent);
        if (constraintLayout4 != null) {
            ViewGroup.LayoutParams layoutParams = constraintLayout4.getLayoutParams();
            ViewGroup.LayoutParams layoutParams2 = layoutParams;
            if (!(layoutParams instanceof ConstraintLayout.LayoutParams)) {
                layoutParams2 = null;
            }
            ConstraintLayout.LayoutParams layoutParams3 = (ConstraintLayout.LayoutParams) layoutParams2;
            if (layoutParams3 != null) {
                ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin = cVar.m27030c() ? (int) constraintLayout4.getResources().getDimension(R$dimen.sms_dialog_url_scan_result_margin_bottom) : 0;
            }
            constraintLayout4.setVisibility(0);
        }
        Button button = (Button) findViewById(R$id.btn_scan_url);
        if (button == null) {
            return;
        }
        if (cVar instanceof AbstractC4788c.C4790b) {
            button.setVisibility(0);
            button.setOnClickListener(new View$OnClickListenerC4819w(cVar));
            return;
        }
        button.setVisibility(8);
    }

    /* renamed from: a */
    public final void m27036a(C11993b bVar, TextView textView, View view) {
        if (bVar != null) {
            if (textView != null) {
                textView.setText(bVar.m7621b());
                textView.setTextColor(bVar.m7620c());
                textView.setOnClickListener(bVar.m7622a());
                textView.setVisibility(0);
            }
            if (view != null) {
                view.setVisibility(0);
                return;
            }
            return;
        }
        if (textView != null) {
            textView.setVisibility(8);
        }
        if (view != null) {
            view.setVisibility(8);
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f
    /* renamed from: a */
    public void mo7610a(C11993b bVar, C11993b bVar2, C11993b bVar3) {
        m27037a(this, bVar, (TextView) findViewById(R$id.tv_btn_primary), null, 4, null);
        m27036a(bVar2, (TextView) findViewById(R$id.tv_btn_secondary), findViewById(R$id.v_divider_secondary));
        m27036a(bVar3, (TextView) findViewById(R$id.tv_btn_tertiary), findViewById(R$id.v_divider_tertiary));
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo7623a(AbstractC11996e eVar) {
        C15149k.m377b(eVar, "p");
        this.f11800b = eVar;
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f
    /* renamed from: a */
    public void mo7609a(String str) {
        C15149k.m377b(str, "subtitle");
        TextView textView = (TextView) findViewById(R$id.tv_subtitle);
        if (textView != null) {
            textView.setText(str);
            textView.setOnClickListener(new View$OnClickListenerC4812p(str));
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f
    /* renamed from: a */
    public void mo7608a(String str, boolean z, boolean z2) {
        C15149k.m377b(str, "content");
        TextView textView = (TextView) findViewById(R$id.tv_content);
        if (textView != null && !C15149k.m384a((Object) textView.getText().toString(), (Object) str)) {
            textView.setMaxLines(Integer.MAX_VALUE);
            textView.setVerticalScrollBarEnabled(false);
            if (!z) {
                textView.setText(textView.getContext().getText(R$string.smsdialog_hide_hint));
                m27041a(3);
                return;
            }
            textView.setText(str);
            textView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC4786a(textView, new C4806n(textView, this, str, z, z2)));
        }
    }

    /* renamed from: a */
    public void m27034a(boolean z) {
        TextView textView = (TextView) findViewById(R$id.tv_bottom_text);
        if (textView != null) {
            textView.setText(R$string.calldialog_bottom_verified_number);
        }
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R$id.ll_number_ui_footer);
        if (relativeLayout != null) {
            relativeLayout.setVisibility(z ? 0 : 8);
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f
    /* renamed from: b */
    public int mo7607b() {
        return this.f11799a;
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f
    /* renamed from: b */
    public void mo7606b(String str) {
        C15149k.m377b(str, NovaHomeBadger.TAG);
        Context context = getContext();
        C15149k.m383a((Object) context, "context");
        C14188u2.m2280a(context, 0, str);
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f
    /* renamed from: c */
    public C11993b mo7605c() {
        String string = getContext().getString(R$string.smsdialog_question_spam);
        C15149k.m383a((Object) string, "context.getString(R.stri….smsdialog_question_spam)");
        return new C11993b(string, C14167t.m2314b(), new C4803k("spam"));
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f
    /* renamed from: c */
    public C11993b mo7604c(String str) {
        C15149k.m377b(str, "mySpamReason");
        String string = getContext().getString(R$string.smsdialog_reported_title, str);
        C15149k.m383a((Object) string, "context.getString(R.stri…rted_title, mySpamReason)");
        return new C11993b(string, 0, new C4799g("has_reported"), 2, null);
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f
    /* renamed from: d */
    public C11993b mo7603d() {
        String string = getContext().getString(R$string.smsdialog_question_notspam);
        C15149k.m383a((Object) string, "context.getString(R.stri…sdialog_question_notspam)");
        return new C11993b(string, C14167t.m2311e(), new C4802j("not_spam"));
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f
    /* renamed from: e */
    public C11993b mo7602e() {
        String string = getContext().getString(R$string.callend_action_title_sms);
        C15149k.m383a((Object) string, "context.getString(R.stri…callend_action_title_sms)");
        return new C11993b(string, 0, new C4800h("reply"), 2, null);
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f
    /* renamed from: f */
    public C11993b mo7601f() {
        String string = getContext().getString(R$string.smsdialog_copy);
        C15149k.m383a((Object) string, "context.getString(R.string.smsdialog_copy)");
        return new C11993b(string, 0, new C4798f("copy"), 2, null);
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f
    /* renamed from: g */
    public C11993b mo7600g() {
        String string = getContext().getString(R$string.smsdialog_report);
        C15149k.m383a((Object) string, "context.getString(R.string.smsdialog_report)");
        return new C11993b(string, 0, new C4801i("report"), 2, null);
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f
    /* renamed from: h */
    public void mo7599h() {
        DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(new ContextThemeWrapper(getContext(), 2131952205));
        fVar.m975d(R$string.smsdialog_settingdialog_title);
        fVar.m981b(R$string.smsdialog_settingdialog_content);
        fVar.m987a(R$string.smsdialog_settingdialog_tosetting, new DialogInterface$OnClickListenerC4817u());
        fVar.m980b(R$string.close, new DialogInterface$OnClickListenerC4818v());
        fVar.m989a().show();
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f
    /* renamed from: i */
    public C11993b mo7598i() {
        String string = getContext().getString(R$string.vas_SMS_action);
        C15149k.m383a((Object) string, "context.getString(R.string.vas_SMS_action)");
        return new C11993b(string, C14167t.m2310f(), new C4804l("scan_vas"));
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f
    /* renamed from: j */
    public C11993b mo7597j() {
        String string = getContext().getString(R$string.smsdialog_view);
        C15149k.m383a((Object) string, "context.getString(R.string.smsdialog_view)");
        return new C11993b(string, 0, new C4805m("view_message"), 2, null);
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f
    /* renamed from: k */
    public C11993b mo7596k() {
        String string = getContext().getString(R$string.callend_action_title_call);
        C15149k.m383a((Object) string, "context.getString(R.stri…allend_action_title_call)");
        return new C11993b(string, 0, new C4797e(NotificationCompat.CATEGORY_CALL), 2, null);
    }

    /* renamed from: l */
    public final void m27033l() {
        ImageView imageView = (ImageView) findViewById(R$id.iv_bottom_start);
        if (imageView != null) {
            imageView.setImageResource(R$drawable.popup_logo);
        }
        ImageView imageView2 = (ImageView) findViewById(R$id.iv_bottom_end);
        if (imageView2 != null) {
            imageView2.setVisibility(8);
        }
        ImageView imageView3 = (ImageView) findViewById(R$id.iv_close);
        if (imageView3 != null) {
            imageView3.setOnClickListener(new View$OnClickListenerC4814r());
        }
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R$id.cl_url_result_parent);
        if (constraintLayout != null) {
            constraintLayout.setVisibility(8);
        }
        TextView textView = (TextView) findViewById(R$id.tv_btn_primary);
        if (textView != null) {
            textView.setVisibility(8);
        }
        View findViewById = findViewById(R$id.v_divider_secondary);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        TextView textView2 = (TextView) findViewById(R$id.tv_btn_secondary);
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
        View findViewById2 = findViewById(R$id.v_divider_tertiary);
        if (findViewById2 != null) {
            findViewById2.setVisibility(8);
        }
        TextView textView3 = (TextView) findViewById(R$id.tv_btn_tertiary);
        if (textView3 != null) {
            textView3.setVisibility(8);
        }
        ConstraintLayout constraintLayout2 = (ConstraintLayout) findViewById(R$id.cl_sender_info);
        if (constraintLayout2 != null) {
            constraintLayout2.setBackground(null);
        }
        View findViewById3 = findViewById(R$id.v_top_touch_area);
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(new View$OnClickListenerC4815s());
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f
    public void setTitle(CharSequence charSequence) {
        C15149k.m377b(charSequence, "title");
        TextView textView = (TextView) findViewById(R$id.tv_title);
        if (textView != null) {
            textView.setText(charSequence);
            textView.setOnClickListener(new View$OnClickListenerC4813q(charSequence));
        }
    }
}

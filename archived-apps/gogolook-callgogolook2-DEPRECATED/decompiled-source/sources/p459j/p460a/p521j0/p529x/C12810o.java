package p459j.p460a.p521j0.p529x;

import android.app.Activity;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.provider.Telephony;
import android.telephony.SmsManager;
import androidx.annotation.MainThread;
import androidx.annotation.WorkerThread;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.role.RoleManagerCompat;
import androidx.fragment.app.Fragment;
import androidx.media.AudioAttributesCompat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import com.facebook.ads.ExtraHints;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.block.BlockManageActivity;
import gogolook.callgogolook2.developmode.LogManager;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.main.MainActivity;
import gogolook.callgogolook2.messaging.datamodel.action.MarkAsReadAction;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import gogolook.callgogolook2.messaging.receiver.SmsActionsEntrypointReceiver;
import gogolook.callgogolook2.phone.SettingResultActivity;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.contact.ContactRealmObject;
import gogolook.callgogolook2.setting.SettingsActivity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import p081h.p119d.p120a.C5765c;
import p081h.p119d.p120a.C5776l;
import p081h.p119d.p120a.C5780o;
import p081h.p119d.p120a.p145w.p147j.AbstractC6082k;
import p081h.p160h.p172b.p173a.C6292b;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11522d;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p488f.C11832i;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p491g.AbstractC12126w;
import p459j.p460a.p474c0.p499h.C12157f;
import p459j.p460a.p521j0.p529x.C12774j;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14021h2;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14118p2;
import p459j.p460a.p582w0.C14131q4;
import p459j.p460a.p582w0.C14173t4;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p589f5.C14005a;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p641z.p643d.C15136c0;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0003J\b\u0010\r\u001a\u00020\u000eH\u0007J\b\u0010\u000f\u001a\u00020\u000eH\u0007J\b\u0010\u0010\u001a\u00020\u000eH\u0007J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0007J\u0018\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\nH\u0007J\b\u0010\u0019\u001a\u00020\u000eH\u0007J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u001d\u001a\u00020\u0015H\u0007J\b\u0010\u001e\u001a\u00020\nH\u0007J7\u0010\u001f\u001a\u00020 2\u0006\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00012\b\u0010\"\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010#\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0002\u0010$J\b\u0010%\u001a\u00020\nH\u0007J\"\u0010&\u001a\u00020'2\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\nH\u0007J@\u0010(\u001a\u00020'2\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u00152\b\u0010\u001d\u001a\u0004\u0018\u00010\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010)\u001a\u00020\u000e2\b\b\u0002\u0010*\u001a\u00020\u000eH\u0007J\u0010\u0010+\u001a\u00020\b2\u0006\u0010,\u001a\u00020-H\u0002J \u0010.\u001a\u00020'2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\b2\u0006\u00100\u001a\u00020\u0015H\u0007J\b\u00101\u001a\u00020\u000eH\u0007J\b\u00102\u001a\u00020\u000eH\u0007J\u0012\u00103\u001a\u00020\u000e2\b\u00104\u001a\u0004\u0018\u00010\u0015H\u0007J\u0012\u00105\u001a\u00020\u000e2\b\u00104\u001a\u0004\u0018\u00010\u0015H\u0007J\u0010\u00106\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020\u000eH\u0007J\u0010\u00106\u001a\u00020\u000e2\u0006\u00104\u001a\u00020\u0015H\u0007J\u000e\u00107\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020\u000eJ\b\u00108\u001a\u00020\u000eH\u0007J\u0006\u00109\u001a\u00020\u000eJ\b\u0010:\u001a\u00020\u000eH\u0007J\b\u0010;\u001a\u00020\u000eH\u0007J\b\u0010<\u001a\u00020\u000eH\u0007J\b\u0010=\u001a\u00020\u000eH\u0007J@\u0010>\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\n2\u0006\u0010@\u001a\u00020\u00152\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u00152\b\b\u0002\u0010A\u001a\u00020\u000e2\b\b\u0002\u0010\u0018\u001a\u00020\nH\u0007J*\u0010B\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00152\b\b\u0002\u0010\u0018\u001a\u00020\nH\u0007J \u0010C\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\n2\u0006\u0010@\u001a\u00020\u0015H\u0003J0\u0010D\u001a\u00020\u00132\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u000e2\b\u0010H\u001a\u0004\u0018\u00010\u00152\f\u0010I\u001a\b\u0012\u0004\u0012\u00020\f0JH\u0007J\u0018\u0010K\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\b\u0010L\u001a\u00020\u0013H\u0007J*\u0010M\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0002J\u0010\u0010N\u001a\u00020\u00132\u0006\u0010,\u001a\u00020-H\u0007J\u0018\u0010O\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010,\u001a\u00020-H\u0007J\"\u0010P\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010@\u001a\u00020\u00152\b\u00104\u001a\u0004\u0018\u00010\u0015H\u0007J\u0018\u0010Q\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\nH\u0007J\b\u0010R\u001a\u00020\u000eH\u0007J\b\u0010S\u001a\u00020\u000eH\u0002¨\u0006T"}, m815d2 = {"Lgogolook/callgogolook2/phone/sms/SmsUtils;", "", "()V", "buildNonDefaultSmsNotification", "Landroid/app/Notification;", "context", "Landroid/content/Context;", "smsNotificationData", "Lgogolook/callgogolook2/phone/sms/SmsNotificationData;", "contentTitleRes", "", "metaphor", "Landroid/graphics/Bitmap;", "canEnterConversationPage", "", "checkAndNotifyDefaultSmsAppDisabled", "checkAndNotifyDefaultSmsAppEnabled", "checkAndShowDefaultSmsAppDisabledDialog", "copyOtpToClipboard", "", "otpStr", "", "deleteConversationMessagesFromTelephony", "conversationId", "filterType", "enableSmsUrlScanManually", "getBackToSmsLogPendingIntent", "Landroid/content/Intent;", "getConversationIdFromSmsReceiveAddress", "address", "getDefaultFilterType", "getDefaultSmsExplainDialog", "Lgogolook/callgogolook2/view/MDialog;", "fragment", "requestCode", "gfEntrance", "(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Integer;)Lgogolook/callgogolook2/view/MDialog;", "getDefaultSubscriptionId", "getNotificationContentPendingIntent", "Landroid/app/PendingIntent;", "getNotificationDeletePendingIntent", "hasUrl", "isNonDefaultAndWithMetaphor", "getSmsNotificationData", "whoscallSmsData", "Lgogolook/callgogolook2/phone/sms/WhoscallSmsData;", "getUrlScanPendingIntent", "data", "action", "isDefaultSmsAppEnabled", "isFilterEnabled", "isMessageContainApkUrl", "message", "isMessageContainUrl", "isNeedToShowUrlScanCta", "isNeedToShowUrlScanCtaForNonDefault", "isSmsBlockingEnabled", "isSmsDialogViewMessageToScpEnabled", "isSmsReadable", "isSmsWritable", "isSuggestedToEnableSms", "isSupportDefaultSmsApp", "launchConversation", "source", "number", "isCreateNew", "launchConversationWithId", "launchCreateNewConversationInternal", "loadMetaphorOnMainThread", "rowInfo", "Lgogolook/callgogolook2/gson/RowInfo;", "isContact", ContactRealmObject.CONTACT_ID, AnimatedVectorDrawableCompat.TARGET, "Lcom/bumptech/glide/request/target/Target;", "loadNonDefaultDisplayContent", "markFirstTimeDefaultSmsEnabled", "notifyNonDefaultNotification", "sendDefaultSmsNotification", "sendNonDefaultSmsNotification", "sendSms", "setupDefaultSmsApp", "shouldShowContent", "shouldShowMetaphorForNonDefaultNotification", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.j0.x.o */
/* loaded from: classes3-dex2jar.jar:j/a/j0/x/o.class */
public final class C12810o {

    /* renamed from: a */
    public static final C12810o f28921a = new C12810o();

    /* renamed from: j.a.j0.x.o$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/o$a.class */
    public static final class DialogInterface$OnClickListenerC12811a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f28922a;

        public DialogInterface$OnClickListenerC12811a(Context context) {
            this.f28922a = context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            SettingResultActivity.m26746b(this.f28922a, RoleManagerCompat.ROLE_SMS, (Integer) 2);
        }
    }

    /* renamed from: j.a.j0.x.o$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/o$b.class */
    public static final class DialogInterface$OnClickListenerC12812b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Integer f28923a;

        /* renamed from: b */
        public final /* synthetic */ Context f28924b;

        /* renamed from: c */
        public final /* synthetic */ Integer f28925c;

        /* renamed from: d */
        public final /* synthetic */ Object f28926d;

        public DialogInterface$OnClickListenerC12812b(Integer num, Context context, Integer num2, Object obj) {
            this.f28923a = num;
            this.f28924b = context;
            this.f28925c = num2;
            this.f28926d = obj;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            if (this.f28923a != null) {
                Intent a = SettingResultActivity.m26750a(this.f28924b, RoleManagerCompat.ROLE_SMS, this.f28925c);
                Object obj = this.f28926d;
                if (obj instanceof Fragment) {
                    ((Fragment) obj).startActivityForResult(a, this.f28923a.intValue());
                    return;
                } else if (obj instanceof android.app.Fragment) {
                    ((android.app.Fragment) obj).startActivityForResult(a, this.f28923a.intValue());
                    return;
                } else {
                    Context context = this.f28924b;
                    if (context instanceof Activity) {
                        ((Activity) context).startActivityForResult(a, this.f28923a.intValue());
                        return;
                    }
                }
            }
            SettingResultActivity.m26746b(this.f28924b, RoleManagerCompat.ROLE_SMS, this.f28925c);
        }
    }

    /* renamed from: j.a.j0.x.o$c */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/o$c.class */
    public static final class C12813c<T> implements Single.OnSubscribe<String> {

        /* renamed from: a */
        public final /* synthetic */ String f28927a;

        public C12813c(String str) {
            this.f28927a = str;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super String> singleSubscriber) {
            AbstractC11528g k = AbstractC11528g.m9259k();
            C15149k.m383a((Object) k, "DataModel.get()");
            ArrayList<String> k2 = C11521c.m9329k(k.mo9244f(), this.f28927a);
            StringBuilder sb = new StringBuilder();
            C15149k.m383a((Object) k2, "recipients");
            if ((!k2.isEmpty()) && k2.size() > 0) {
                Iterator<String> it = k2.iterator();
                while (it.hasNext()) {
                    sb.append(it.next());
                    sb.append(ExtraHints.KEYWORD_SEPARATOR);
                }
            }
            singleSubscriber.onSuccess(sb.toString());
        }
    }

    /* renamed from: j.a.j0.x.o$d */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/o$d.class */
    public static final class C12814d<T> implements Action1<String> {

        /* renamed from: a */
        public final /* synthetic */ Context f28928a;

        public C12814d(Context context) {
            this.f28928a = context;
        }

        /* renamed from: a */
        public final void call(String str) {
            Context context = this.f28928a;
            C15149k.m383a((Object) str, "it");
            C12810o.m5258a(context, str, "");
        }
    }

    /* renamed from: j.a.j0.x.o$e */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/o$e.class */
    public static final class CallableC12815e<V> implements Callable<T> {

        /* renamed from: a */
        public final /* synthetic */ RowInfo f28929a;

        /* renamed from: b */
        public final /* synthetic */ boolean f28930b;

        /* renamed from: c */
        public final /* synthetic */ String f28931c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC6082k f28932d;

        public CallableC12815e(RowInfo rowInfo, boolean z, String str, AbstractC6082k kVar) {
            this.f28929a = rowInfo;
            this.f28930b = z;
            this.f28931c = str;
            this.f28932d = kVar;
        }

        @Override // java.util.concurrent.Callable
        public final AbstractC6082k<Bitmap> call() {
            Context o = MyApplication.m29013o();
            int b = CallUtils.m26558b(this.f28929a, this.f28930b);
            RowInfo rowInfo = this.f28929a;
            String a = C14118p2.m2463a(new C14118p2.C14119a(rowInfo, this.f28931c, b, new ArrayList(rowInfo.m28231e()), CallUtils.EnumC4993l.SMS_DIALOG));
            C5780o c = C5776l.m24470c(o);
            Object obj = a;
            if (C14217x3.m2160b(a)) {
                obj = Integer.valueOf(b);
            }
            C5765c l = c.m24451a((C5780o) obj).m24524l();
            l.mo24521a(b);
            AbstractC6082k<Bitmap> kVar = this.f28932d;
            l.m24512b((C5765c) kVar);
            return kVar;
        }
    }

    /* renamed from: j.a.j0.x.o$f */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/o$f.class */
    public static final class C12816f implements C12157f.AbstractC12158a {

        /* renamed from: a */
        public final /* synthetic */ Context f28933a;

        /* renamed from: b */
        public final /* synthetic */ C12774j f28934b;

        /* renamed from: c */
        public final /* synthetic */ int f28935c;

        public C12816f(Context context, C12774j jVar, int i) {
            this.f28933a = context;
            this.f28934b = jVar;
            this.f28935c = i;
        }

        @Override // p459j.p460a.p474c0.p499h.C12157f.AbstractC12158a
        /* renamed from: a */
        public void mo5225a(Bitmap bitmap) {
            C12810o.f28921a.m5264a(this.f28933a, this.f28934b, this.f28935c, bitmap);
        }

        @Override // p459j.p460a.p474c0.p499h.C12157f.AbstractC12158a
        public void onError(Throwable th) {
            C15149k.m377b(th, "error");
            C12810o.f28921a.m5264a(this.f28933a, this.f28934b, this.f28935c, (Bitmap) null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0028, code lost:
        if (r8 != null) goto L_0x0033;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final android.app.PendingIntent m5263a(android.content.Context r5, p459j.p460a.p521j0.p529x.C12774j r6, java.lang.String r7) {
        /*
            r0 = r5
            java.lang.String r1 = "context"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r6
            java.lang.String r1 = "data"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r7
            java.lang.String r1 = "action"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r6
            java.lang.String r0 = r0.m5371a()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x002e
            r0 = r6
            boolean r0 = r0.m5356l()
            if (r0 == 0) goto L_0x0025
            goto L_0x0027
        L_0x0025:
            r0 = 0
            r8 = r0
        L_0x0027:
            r0 = r8
            if (r0 == 0) goto L_0x002e
            goto L_0x0033
        L_0x002e:
            r0 = r6
            java.lang.String r0 = r0.m5363e()
            r8 = r0
        L_0x0033:
            boolean r0 = m5236i()
            if (r0 != 0) goto L_0x0048
            j.a.j0.x.o r0 = p459j.p460a.p521j0.p529x.C12810o.f28921a
            boolean r0 = r0.m5250b()
            if (r0 == 0) goto L_0x0048
            r0 = 1
            r9 = r0
            goto L_0x004b
        L_0x0048:
            r0 = 0
            r9 = r0
        L_0x004b:
            android.content.Intent r0 = new android.content.Intent
            r1 = r0
            r2 = r5
            java.lang.Class<gogolook.callgogolook2.messaging.receiver.SmsActionsEntrypointReceiver> r3 = gogolook.callgogolook2.messaging.receiver.SmsActionsEntrypointReceiver.class
            r1.<init>(r2, r3)
            r10 = r0
            r0 = r10
            r1 = r7
            android.content.Intent r0 = r0.setAction(r1)
            r0 = r10
            java.lang.String r1 = "extra.conversation.id"
            r2 = r6
            java.lang.String r2 = r2.m5371a()
            android.content.Intent r0 = r0.putExtra(r1, r2)
            r0 = r10
            java.lang.String r1 = "extra.message.uri"
            r2 = r6
            java.lang.String r2 = r2.m5364d()
            android.content.Intent r0 = r0.putExtra(r1, r2)
            r0 = r10
            java.lang.String r1 = "extra.sender.number"
            r2 = r6
            java.lang.String r2 = r2.m5363e()
            android.content.Intent r0 = r0.putExtra(r1, r2)
            r0 = r10
            java.lang.String r1 = "extra.content"
            r2 = r6
            java.lang.String r2 = r2.m5365c()
            android.content.Intent r0 = r0.putExtra(r1, r2)
            r0 = r10
            java.lang.String r1 = "extra.has.url"
            r2 = 1
            android.content.Intent r0 = r0.putExtra(r1, r2)
            r0 = r10
            java.lang.String r1 = "extra.is.non.default.and.with.metaphor"
            r2 = r9
            android.content.Intent r0 = r0.putExtra(r1, r2)
            r0 = r10
            r1 = r5
            java.lang.String r1 = r1.getPackageName()
            android.content.Intent r0 = r0.setPackage(r1)
            r0 = r5
            r1 = r8
            int r1 = p459j.p460a.p474c0.p475c.C11522d.m9278b(r1)
            r2 = r10
            r3 = 134217728(0x8000000, float:3.85186E-34)
            android.app.PendingIntent r0 = android.app.PendingIntent.getBroadcast(r0, r1, r2, r3)
            r5 = r0
            r0 = r5
            java.lang.String r1 = "PendingIntent.getBroadca…tent.FLAG_UPDATE_CURRENT)"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.p529x.C12810o.m5263a(android.content.Context, j.a.j0.x.j, java.lang.String):android.app.PendingIntent");
    }

    /* renamed from: a */
    public static final PendingIntent m5259a(Context context, String str, int i) {
        int i2;
        C15149k.m377b(context, "context");
        try {
        } catch (NumberFormatException e) {
            i2 = (int) System.currentTimeMillis();
        }
        if (str != null) {
            i2 = Integer.parseInt(str);
            PendingIntent a = C14217x3.m2187a(context, m5249b(context), AbstractC12126w.m7095a().mo7081a(context, 11, str, (MessageData) null, i), i2);
            C15149k.m383a((Object) a, "Utils.cancelAndGetPendin…    requestCode\n        )");
            return a;
        }
        C15149k.m378b();
        throw null;
    }

    /* renamed from: a */
    public static final PendingIntent m5257a(Context context, String str, String str2, String str3, boolean z, boolean z2) {
        C15149k.m377b(context, "context");
        Intent intent = new Intent(context, SmsActionsEntrypointReceiver.class);
        intent.setAction("action.notification.dismissed");
        intent.setPackage(context.getPackageName());
        if (str != null) {
            intent.putExtra("extra.conversation.id", str);
        }
        if (str2 != null) {
            intent.putExtra("extra.sender.number", str2);
        }
        if (str3 != null) {
            intent.putExtra("extra.otp", str3);
        }
        intent.putExtra("extra.has.url", z);
        intent.putExtra("extra.is.non.default.and.with.metaphor", z2);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, C11522d.m9278b(str), intent, 134217728);
        C15149k.m383a((Object) broadcast, "PendingIntent.getBroadca…tent.FLAG_UPDATE_CURRENT)");
        return broadcast;
    }

    /* renamed from: a */
    public static final DialogC14618f m5261a(Context context, Object obj, Integer num, Integer num2) {
        C15149k.m377b(context, "context");
        DialogC14618f fVar = new DialogC14618f(context);
        fVar.setTitle(R$string.permission_SMS_default_app_title);
        fVar.m995c(R$string.permission_SMS_default_app_desc);
        fVar.m999b(R$string.SMS_default_setting_button, new DialogInterface$OnClickListenerC12812b(num, context, num2, obj));
        fVar.m993d(R$string.cancel);
        return fVar;
    }

    /* renamed from: a */
    public static final String m5253a(String str) {
        C15149k.m377b(str, "address");
        ParticipantData h = ParticipantData.m27528h(str);
        long a = C11832i.C11833a.m8156a(MyApplication.m29013o(), str);
        AbstractC11528g k = AbstractC11528g.m9259k();
        C15149k.m383a((Object) k, "DataModel.get()");
        return C11521c.m9384a(k.mo9244f(), a, str, h);
    }

    /* renamed from: a */
    public static final void m5269a(Context context, int i, String str) {
        if (C14108o4.m2477i(str)) {
            AbstractC12126w.m7095a().mo7086a(context, i, null, str);
        } else {
            AbstractC12126w.m7095a().mo7087a(context, i, (MessageData) null);
        }
    }

    /* renamed from: a */
    public static final void m5268a(Context context, int i, String str, int i2) {
        C15149k.m377b(context, "context");
        C15149k.m377b(str, "conversationId");
        if (m5244c()) {
            AbstractC12126w.m7095a().m7094a(context, i, str, i2, (MessageData) null);
        } else {
            Single.create(new C12813c(str)).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C12814d(context), C14081m3.m2611a());
        }
    }

    /* renamed from: a */
    public static final void m5267a(Context context, int i, String str, String str2, boolean z, int i2) {
        C15149k.m377b(context, "context");
        C15149k.m377b(str, "number");
        if (!m5244c()) {
            m5258a(context, str, str2);
        } else if (z) {
            m5269a(context, i, str);
        } else {
            AbstractC12126w.m7095a().mo7068b(context, i, str, i2, str2);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m5266a(Context context, int i, String str, String str2, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 8) != 0) {
            str2 = null;
        }
        if ((i3 & 16) != 0) {
            z = false;
        }
        if ((i3 & 32) != 0) {
            i2 = m5238g();
        }
        m5267a(context, i, str, str2, z, i2);
    }

    /* renamed from: a */
    public static final void m5262a(Context context, C12817p pVar) {
        C15149k.m377b(context, "context");
        C15149k.m377b(pVar, "whoscallSmsData");
        f28921a.m5265a(context, f28921a.m5254a(pVar));
    }

    /* renamed from: a */
    public static final void m5260a(Context context, String str) {
        C15149k.m377b(context, "context");
        if (!(str == null || str.length() == 0)) {
            Object systemService = context.getSystemService("clipboard");
            if (systemService != null) {
                ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText("otp", str));
                C14687h.m862a(context, (int) R$string.smsnotification_copied, 0).m858c();
                return;
            }
            throw new C14986p("null cannot be cast to non-null type android.content.ClipboardManager");
        }
    }

    /* renamed from: a */
    public static final void m5258a(Context context, String str, String str2) {
        C15149k.m377b(context, "context");
        C15149k.m377b(str, "number");
        try {
            MarkAsReadAction.m27697b(str, m5238g());
            Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + Uri.encode(str)));
            intent.addFlags(268435456);
            intent.putExtra("compose_mode", true);
            intent.putExtra("sms_body", str2);
            C14191v.m2257a(context, intent, null, 2, null);
        } catch (ActivityNotFoundException e) {
            C14687h.m862a(context, (int) R$string.not_support_function, 1).m858c();
        } catch (SecurityException e2) {
            C14687h.m861a(context, context.getString(R$string.call_confirm_error, e2.getMessage()), 1).m858c();
            String defaultSmsPackage = Telephony.Sms.getDefaultSmsPackage(context);
            LogManager.m28581a("Default " + defaultSmsPackage + " not set exported = true");
        }
    }

    @MainThread
    /* renamed from: a */
    public static final void m5256a(RowInfo rowInfo, boolean z, String str, AbstractC6082k<Bitmap> kVar) {
        C15149k.m377b(rowInfo, "rowInfo");
        C15149k.m377b(kVar, AnimatedVectorDrawableCompat.TARGET);
        Single.fromCallable(new CallableC12815e(rowInfo, z, str, kVar)).subscribeOn(AndroidSchedulers.mainThread()).subscribe();
    }

    /* renamed from: a */
    public static final void m5252a(String str, int i) {
        C15149k.m377b(str, "conversationId");
        AbstractC11528g k = AbstractC11528g.m9259k();
        C15149k.m383a((Object) k, "DataModel.get()");
        C11534l f = k.mo9244f();
        ArrayList<Uri> arrayList = new ArrayList();
        boolean z = -1 != i;
        Cursor a = f.m9216a(NotificationCompat.CarExtender.KEY_MESSAGES, new String[]{"sms_message_uri"}, z ? "conversation_id=? AND message_status=-1 AND message_filter_type=?" : "conversation_id=? AND message_status=-1", z ? new String[]{str, String.valueOf(i)} : new String[]{str}, null, null, null);
        if (a != null) {
            while (a.moveToNext()) {
                try {
                    try {
                        Uri parse = Uri.parse(a.getString(0));
                        C15149k.m383a((Object) parse, "Uri.parse(messageUri)");
                        arrayList.add(parse);
                    } catch (Exception e) {
                        C13973d4.m2952a(e);
                    }
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            C14989s sVar = C14989s.f33022a;
            th = null;
        }
        for (Uri uri : arrayList) {
            C11834j.m8120a(uri);
        }
    }

    /* renamed from: a */
    public static final boolean m5271a(Context context) {
        C15149k.m377b(context, "context");
        boolean z = true;
        if (!m5230o() || !C13915b3.m3067a("first_enable_default_sms") || C13915b3.m3062a("first_disable_default_sms_dialog_hint", false) || m5236i()) {
            z = false;
        } else {
            DialogC14618f fVar = new DialogC14618f(context);
            fVar.setTitle(R$string.block_page_sms_disable_dialog_title);
            fVar.m995c(R$string.block_page_sms_disable_dialog_content);
            fVar.m999b(R$string.block_page_sms_disable_action_yes, new DialogInterface$OnClickListenerC12811a(context));
            fVar.m993d(R$string.block_page_sms_disable_action_no);
            fVar.show();
            C13915b3.m3055b("first_disable_default_sms_dialog_hint", true);
        }
        return z;
    }

    /* renamed from: a */
    public static final boolean m5270a(Context context, int i) {
        Intent a;
        C15149k.m377b(context, "context");
        boolean z = false;
        if (!m5230o()) {
            return false;
        }
        try {
            a = C6292b.m23380a(context, RoleManagerCompat.ROLE_SMS);
        } catch (ActivityNotFoundException e) {
            C13973d4.m2952a(e);
        } catch (SecurityException e2) {
            C13973d4.m2952a(e2);
        }
        if (a == null) {
            return false;
        }
        if (context instanceof Activity) {
            ActivityCompat.startActivityForResult((Activity) context, a, i, null);
        } else {
            a.setFlags(268435456);
            C14217x3.m2156c(context, a);
        }
        z = true;
        return z;
    }

    /* renamed from: b */
    public static final Notification m5248b(Context context, C12774j jVar, int i, Bitmap bitmap) {
        C15136c0 c0Var = C15136c0.f33133a;
        String a = C14206w4.m2225a((int) R$string.urlscan_notification_title);
        Object[] objArr = {jVar.m5359i()};
        String format = String.format(a, Arrays.copyOf(objArr, objArr.length));
        C15149k.m383a((Object) format, "java.lang.String.format(format, *args)");
        NotificationCompat.Builder deleteIntent = C14173t4.m2308a().setContentTitle(C14206w4.m2225a(i)).setContentText(format).setDeleteIntent(m5257a(context, jVar.m5371a(), jVar.m5363e(), jVar.m5361g(), jVar.m5357k(), bitmap != null));
        if (bitmap != null) {
            deleteIntent.setLargeIcon(bitmap);
        }
        deleteIntent.setContentIntent(m5263a(context, jVar, "action.non.default.sms.scan.url"));
        deleteIntent.addAction(C11522d.m9294a(jVar, "action.non.default.sms.scan.url.by.cta"));
        Notification build = deleteIntent.build();
        C15149k.m383a((Object) build, "notificationBuilder.build()");
        return build;
    }

    /* renamed from: b */
    public static final Intent m5249b(Context context) {
        C15149k.m377b(context, "context");
        Intent intent = new Intent(context, MainActivity.class);
        intent.putExtra("goto", "smslog");
        intent.putExtra("from", "conversation_page");
        return intent;
    }

    /* renamed from: b */
    public static final void m5247b(C12817p pVar) {
        C15149k.m377b(pVar, "whoscallSmsData");
        if (pVar.m5219c() != null) {
            C11522d.m9301a(f28921a.m5254a(pVar));
        }
    }

    @WorkerThread
    /* renamed from: b */
    public static final boolean m5246b(String str) {
        List<String> e = C14131q4.m2404e(str);
        if (e == null) {
            return false;
        }
        for (String str2 : e) {
            C15149k.m383a((Object) str2, "url");
            if (C14005a.m2876f(C14005a.m2884a(str2, null, 2, null))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static final boolean m5245b(boolean z) {
        return z && m5239f();
    }

    /* renamed from: c */
    public static final boolean m5244c() {
        return m5232m() || C13891a.m3167a(C14017g4.m2810n());
    }

    /* renamed from: c */
    public static final boolean m5243c(String str) {
        return !C14217x3.m2173a(C14131q4.m2404e(str));
    }

    /* renamed from: d */
    public static final boolean m5242d() {
        boolean z = true;
        if (!m5230o() || !C13915b3.m3067a("first_enable_default_sms") || C13915b3.m3062a("first_disable_default_sms_notify_hint", false) || m5236i()) {
            z = false;
        } else {
            Context o = MyApplication.m29013o();
            String string = o.getString(R$string.disable_default_sms_fail_block_notification);
            NotificationCompat.Builder style = C14173t4.m2307a(o).setContentTitle(o.getString(R$string.disable_default_sms_fail_block_title)).setContentText(string).setStyle(new NotificationCompat.BigTextStyle().setSummaryText(null).bigText(string));
            Intent intent = new Intent(o, SettingsActivity.class);
            intent.putExtra("action", "focus_default_sms_app");
            NotificationManagerCompat.from(o).notify(1999, style.setContentIntent(C14217x3.m2188a(o, intent, 1999)).build());
            C13915b3.m3055b("first_disable_default_sms_notify_hint", true);
        }
        return z;
    }

    /* renamed from: d */
    public static final boolean m5241d(String str) {
        C15149k.m377b(str, "message");
        return m5243c(str) && m5239f();
    }

    /* renamed from: e */
    public static final boolean m5240e() {
        m5229p();
        boolean z = true;
        if (!m5230o() || !C13915b3.m3067a("first_enable_default_sms") || C13915b3.m3062a("first_enable_default_sms_notify_hint", false) || !m5236i()) {
            z = false;
        } else {
            Context o = MyApplication.m29013o();
            String string = o.getString(R$string.block_sms_notification_content);
            NotificationManagerCompat.from(o).notify(1999, C14173t4.m2307a(o).setContentTitle(o.getString(R$string.block_sms_notification_title)).setContentText(string).setStyle(new NotificationCompat.BigTextStyle().setSummaryText(null).bigText(string)).setContentIntent(C14217x3.m2188a(o, new Intent(o, BlockManageActivity.class), 1999)).build());
            C13915b3.m3055b("first_enable_default_sms_notify_hint", true);
        }
        return z;
    }

    /* renamed from: f */
    public static final boolean m5239f() {
        return !C14021h2.m2779g() && C13640c.m3745d().m3753a("sms_url_scan_manually");
    }

    /* renamed from: g */
    public static final int m5238g() {
        return m5235j() ? 1 : -1;
    }

    /* renamed from: h */
    public static final int m5237h() {
        int i = -1;
        if (C14017g4.m2804t()) {
            i = SmsManager.getDefaultSmsSubscriptionId();
            if (i < 0) {
                i = -1;
            }
        }
        return i;
    }

    /* renamed from: i */
    public static final boolean m5236i() {
        Context o = MyApplication.m29013o();
        C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
        return C6292b.m23377d(o, RoleManagerCompat.ROLE_SMS);
    }

    /* renamed from: j */
    public static final boolean m5235j() {
        return C12758e.m5413c() || C12754a.m5431a();
    }

    /* renamed from: k */
    public static final boolean m5234k() {
        return m5232m();
    }

    /* renamed from: l */
    public static final boolean m5233l() {
        return C13878a3.m3202p();
    }

    /* renamed from: m */
    public static final boolean m5232m() {
        return C13878a3.m3208j() && m5236i();
    }

    /* renamed from: n */
    public static final boolean m5231n() {
        return m5230o() && !m5232m() && C13640c.m3745d().m3753a("calllog_setting_default_sms_show");
    }

    /* renamed from: o */
    public static final boolean m5230o() {
        Context o = MyApplication.m29013o();
        C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
        return C6292b.m23378c(o, RoleManagerCompat.ROLE_SMS);
    }

    /* renamed from: p */
    public static final void m5229p() {
        if (!C13915b3.m3067a("first_enable_default_sms") && m5236i()) {
            C13915b3.m3055b("first_enable_default_sms", true);
        }
    }

    /* renamed from: q */
    public static final boolean m5228q() {
        return C11507b.m9467a(C13978e.f31386a, "smsDialogDirectly", (Boolean) null, 2, (Object) null);
    }

    /* renamed from: a */
    public final C12774j m5254a(C12817p pVar) {
        C12774j.C12775a aVar = new C12774j.C12775a(null, null, 0, false, null, null, null, null, null, null, AudioAttributesCompat.FLAG_ALL, null);
        aVar.m5343d(pVar.m5216f().m5425a());
        aVar.m5347a(pVar.m5219c());
        aVar.m5351a(pVar.m5220b());
        aVar.m5346a(false);
        aVar.m5350a(pVar.m5215g());
        C14005a.C14007b i = pVar.m5213i();
        aVar.m5348a(i != null ? Integer.valueOf(i.m2855f()) : null);
        aVar.m5342e(pVar.m5216f().m5420d());
        aVar.m5344c(pVar.m5217e());
        aVar.m5345b(pVar.m5216f().m5423b());
        aVar.m5349a(Boolean.valueOf(pVar.m5216f().m5417g()));
        return aVar.m5352a();
    }

    /* renamed from: a */
    public final void m5265a(Context context, C12774j jVar) {
        if (m5250b()) {
            C12157f.f27304a.m6957a(R$drawable.icon_metaphor_click, R$dimen.standard_icon_size, new C12816f(context, jVar, R$string.nondefaultsms_urlscan_notification_title_v2));
        } else {
            m5264a(context, jVar, R$string.nondefaultsms_urlscan_notification_title, (Bitmap) null);
        }
    }

    /* renamed from: a */
    public final void m5264a(Context context, C12774j jVar, int i, Bitmap bitmap) {
        NotificationManagerCompat.from(context).notify(C11522d.m9287a(":sms:", jVar.m5363e()), 0, m5248b(context, jVar, i, bitmap));
    }

    /* renamed from: a */
    public final boolean m5272a() {
        return !C14021h2.m2779g() && C13640c.m3745d().m3753a("sms_dialog_view_message_to_scp");
    }

    /* renamed from: a */
    public final boolean m5251a(boolean z) {
        return m5245b(z) && C13640c.m3745d().m3753a("nondefault_sms_url_scan_notification");
    }

    /* renamed from: b */
    public final boolean m5250b() {
        return C13640c.m3745d().m3753a("show_metaphor_on_scan_url_notification");
    }
}

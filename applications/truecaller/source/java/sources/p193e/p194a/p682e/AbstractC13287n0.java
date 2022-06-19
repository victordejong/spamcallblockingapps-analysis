package p193e.p194a.p682e;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.C2752R;
import com.truecaller.premium.util.NotificationAccessSource;
import com.truecaller.tcpermissions.PermissionPoller;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1011l.p1012a.AbstractC16599t;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p912i4.C15282l;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b;\u0010\nJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u000b\u0010\nJ\r\u0010\f\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\nJ\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0014¢\u0006\u0004\b\u000f\u0010\u0010R\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\"\u0010*\u001a\u00020\r8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010\u0010R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u0010:\u001a\u0002038\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109¨\u0006<"}, d2 = {"Le/a/e/n0;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "outState", "Ls1/s;", "onSaveInstanceState", "(Landroid/os/Bundle;)V", "savedInstanceState", "onCreate", "onResume", "()V", "onDestroy", "qa", "", "granted", "pa", "(Z)V", "Le/a/l/a/t;", C22021b.f61237c, "Le/a/l/a/t;", "getPremiumNotificationAccessEventLogger", "()Le/a/l/a/t;", "setPremiumNotificationAccessEventLogger", "(Le/a/l/a/t;)V", "premiumNotificationAccessEventLogger", "Le/a/p5/a0;", AbstractC2405c.f7629a, "Le/a/p5/a0;", "getPermissionUtil", "()Le/a/p5/a0;", "setPermissionUtil", "(Le/a/p5/a0;)V", "permissionUtil", "Lcom/truecaller/tcpermissions/PermissionPoller;", "d", "Lcom/truecaller/tcpermissions/PermissionPoller;", "permissionPoller", "e", "Z", "getHasOpenedNotificationAccessSetting", "()Z", "setHasOpenedNotificationAccessSetting", "hasOpenedNotificationAccessSetting", "Le/a/i4/l;", "a", "Le/a/i4/l;", "getNotificationAccessRequester", "()Le/a/i4/l;", "setNotificationAccessRequester", "(Le/a/i4/l;)V", "notificationAccessRequester", "Lcom/truecaller/premium/util/NotificationAccessSource;", "f", "Lcom/truecaller/premium/util/NotificationAccessSource;", "getSource", "()Lcom/truecaller/premium/util/NotificationAccessSource;", "setSource", "(Lcom/truecaller/premium/util/NotificationAccessSource;)V", "source", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.n0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/n0.class */
public abstract class AbstractC13287n0 extends h {
    @Inject

    /* renamed from: a */
    public C15282l f38623a;
    @Inject

    /* renamed from: b */
    public AbstractC16599t f38624b;
    @Inject

    /* renamed from: c */
    public AbstractC19219a0 f38625c;

    /* renamed from: d */
    public PermissionPoller f38626d;

    /* renamed from: e */
    public boolean f38627e;

    /* renamed from: f */
    public NotificationAccessSource f38628f = NotificationAccessSource.UNKNOWN;

    /* renamed from: e.a.e.n0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/n0$a.class */
    public static final class RunnableC13288a implements Runnable {
        public RunnableC13288a() {
            AbstractC13287n0.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AbstractC13287n0 abstractC13287n0 = AbstractC13287n0.this;
            AbstractC19219a0 abstractC19219a0 = abstractC13287n0.f38625c;
            if (abstractC19219a0 != null) {
                abstractC13287n0.mo21953pa(abstractC19219a0.mo13831b());
            } else {
                l.l("permissionUtil");
                throw null;
            }
        }
    }

    /* renamed from: ra */
    public static final Intent m21951ra(Intent intent, NotificationAccessSource notificationAccessSource, int i, Intent intent2) {
        l.e(intent, "$this$putParams");
        l.e(notificationAccessSource, "source");
        l.e(intent2, "callbackIntent");
        Intent putExtra = intent.putExtra("toastMessage", i).putExtra("source", notificationAccessSource).putExtra("goBackIntent", intent2);
        l.d(putExtra, "this\n                .pu…K_INTENT, callbackIntent)");
        return putExtra;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        AbstractC13287n0.super.onCreate(bundle);
        Intent intent = getIntent();
        NotificationAccessSource serializableExtra = intent != null ? intent.getSerializableExtra("source") : null;
        boolean z = serializableExtra instanceof NotificationAccessSource;
        NotificationAccessSource notificationAccessSource = serializableExtra;
        if (!z) {
            notificationAccessSource = null;
        }
        NotificationAccessSource notificationAccessSource2 = notificationAccessSource;
        if (notificationAccessSource2 == null) {
            notificationAccessSource2 = NotificationAccessSource.UNKNOWN;
        }
        this.f38628f = notificationAccessSource2;
        this.f38627e = bundle != null ? bundle.getBoolean("hasOpenedNotificationAccessSetting") : false;
    }

    public void onDestroy() {
        AbstractC13287n0.super.onDestroy();
        PermissionPoller permissionPoller = this.f38626d;
        if (permissionPoller != null) {
            permissionPoller.f15304b.removeCallbacks(permissionPoller);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onResume() {
        AbstractC13287n0.super.onResume();
        PermissionPoller permissionPoller = this.f38626d;
        if (permissionPoller != null) {
            permissionPoller.f15304b.removeCallbacks(permissionPoller);
        }
        if (this.f38627e) {
            AbstractC19219a0 abstractC19219a0 = this.f38625c;
            Intent intent = null;
            if (abstractC19219a0 == null) {
                l.l("permissionUtil");
                throw null;
            }
            mo21953pa(abstractC19219a0.mo13831b());
            Intent intent2 = getIntent();
            l.d(intent2, "intent");
            Bundle extras = intent2.getExtras();
            if (extras != null) {
                intent = extras.get("goBackIntent");
            }
            Intent intent3 = intent;
            if (intent3 != null) {
                intent3.setFlags(335609856);
                startActivity(intent3);
            }
            finish();
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        l.e(bundle, "outState");
        bundle.putBoolean("hasOpenedNotificationAccessSetting", this.f38627e);
        AbstractC13287n0.super.onSaveInstanceState(bundle);
    }

    /* renamed from: pa */
    public void mo21953pa(boolean z) {
        AbstractC16599t abstractC16599t = this.f38624b;
        if (abstractC16599t != null) {
            abstractC16599t.mo17201b(this.f38628f, z);
        } else {
            l.l("premiumNotificationAccessEventLogger");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: qa */
    public final void m21952qa() {
        int intExtra = getIntent().getIntExtra("toastMessage", C2752R.string.toast_allow_notification_access);
        C15282l c15282l = this.f38623a;
        Intent intent = null;
        if (c15282l == null) {
            l.l("notificationAccessRequester");
            throw null;
        } else if (!c15282l.m18958a(this, this.f38628f, intExtra)) {
        } else {
            this.f38627e = true;
            PermissionPoller permissionPoller = this.f38626d;
            if (permissionPoller != null) {
                permissionPoller.f15304b.removeCallbacks(permissionPoller);
            }
            Intent intent2 = getIntent();
            l.d(intent2, "intent");
            Bundle extras = intent2.getExtras();
            if (extras != null) {
                intent = extras.get("goBackIntent");
            }
            Intent intent3 = intent;
            if (intent3 == null) {
                return;
            }
            PermissionPoller permissionPoller2 = new PermissionPoller(this, new Handler(Looper.getMainLooper()), intent3);
            this.f38626d = permissionPoller2;
            if (permissionPoller2 == null) {
                return;
            }
            PermissionPoller.Permission permission = PermissionPoller.Permission.NOTIFICATION_ACCESS;
            permissionPoller2.f15309g = new RunnableC13288a();
            permissionPoller2.m34618a(permission);
        }
    }
}

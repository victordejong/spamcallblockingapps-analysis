package p193e.p194a.p717f.p734z;

import android.app.NotificationChannel;
import android.content.Context;
import android.os.Build;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p849h4.p850q.AbstractC14932g;
import s1.z.c.l;
/* renamed from: e.a.f.z.f0 */
/* loaded from: classes10-dex2jar.jar:e/a/f/z/f0.class */
public final class C13817f0 {

    /* renamed from: a */
    public AbstractC14920n f40077a;

    /* renamed from: b */
    public final Context f40078b;

    @Inject
    public C13817f0(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f40078b = context;
        Context applicationContext = context.getApplicationContext();
        AbstractC14932g abstractC14932g = (AbstractC14932g) (!(applicationContext instanceof AbstractC14932g) ? null : applicationContext);
        if (abstractC14932g != null) {
            this.f40077a = abstractC14932g.mo19403n();
            return;
        }
        throw new RuntimeException(C22128a.m8643a2(AbstractC14932g.class, C22128a.m8728C("Application class does not implement ")));
    }

    /* renamed from: a */
    public boolean m21047a() {
        boolean z = true;
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel mo19423c = this.f40077a.mo19423c("incoming_calls");
            Integer valueOf = mo19423c != null ? Integer.valueOf(mo19423c.getImportance()) : null;
            z = valueOf != null && valueOf.intValue() == 4;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m21046b() {
        /*
            r3 = this;
            r0 = r3
            e.a.h4.n r0 = r0.f40077a
            boolean r0 = r0.mo19416j()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L67
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 28
            if (r0 < r1) goto L5d
            r0 = r3
            e.a.h4.n r0 = r0.f40077a
            java.lang.String r1 = "incoming_calls"
            android.app.NotificationChannel r0 = r0.mo19423c(r1)
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L36
            r0 = r7
            java.lang.String r0 = r0.getGroup()
            r7 = r0
            goto L39
        L36:
            r0 = 0
            r7 = r0
        L39:
            r0 = r3
            e.a.h4.n r0 = r0.f40077a
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L5d
            r0 = r8
            r1 = r7
            android.app.NotificationChannelGroup r0 = r0.mo19418h(r1)
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L5d
            r0 = r7
            boolean r0 = r0.isBlocked()
            r4 = r0
            goto L5f
        L5d:
            r0 = 0
            r4 = r0
        L5f:
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L67
            r0 = 1
            r6 = r0
        L67:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p734z.C13817f0.m21046b():boolean");
    }

    /* renamed from: c */
    public boolean m21045c() {
        boolean z;
        boolean z2 = false;
        if (C19291g.m13573Y(this.f40078b).getCurrentInterruptionFilter() != 1) {
            if (Build.VERSION.SDK_INT >= 26) {
                NotificationChannel mo19423c = this.f40077a.mo19423c("incoming_calls");
                z = mo19423c != null ? mo19423c.canBypassDnd() : false;
            } else {
                z = true;
            }
            z2 = false;
            if (!z) {
                z2 = true;
            }
        }
        return z2;
    }
}

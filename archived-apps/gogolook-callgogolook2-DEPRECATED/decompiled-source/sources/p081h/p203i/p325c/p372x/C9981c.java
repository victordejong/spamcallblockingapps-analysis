package p081h.p203i.p325c.p372x;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p081h.p203i.p204a.p224e.p235d.p249s.C7083o;
import p081h.p203i.p204a.p224e.p293r.C9148k;
import p081h.p203i.p325c.p372x.C9977a;
/* renamed from: h.i.c.x.c */
/* loaded from: classes2-dex2jar.jar:h/i/c/x/c.class */
public class C9981c {

    /* renamed from: a */
    public final Executor f22580a;

    /* renamed from: b */
    public final Context f22581b;

    /* renamed from: c */
    public final C9998q f22582c;

    public C9981c(Context context, C9998q qVar, Executor executor) {
        this.f22580a = executor;
        this.f22581b = context;
        this.f22582c = qVar;
    }

    /* renamed from: a */
    public final void m13765a(NotificationCompat.Builder builder, @Nullable C9996o oVar) {
        if (oVar != null) {
            try {
                Bitmap bitmap = (Bitmap) C9148k.m16002a(oVar.m13745c(), 5L, TimeUnit.SECONDS);
                builder.setLargeIcon(bitmap);
                builder.setStyle(new NotificationCompat.BigPictureStyle().bigPicture(bitmap).bigLargeIcon(null));
            } catch (InterruptedException e) {
                oVar.close();
                Thread.currentThread().interrupt();
            } catch (ExecutionException e2) {
                String valueOf = String.valueOf(e2.getCause());
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 26);
                sb.append("Failed to download image: ");
                sb.append(valueOf);
                sb.toString();
            } catch (TimeoutException e3) {
                oVar.close();
            }
        }
    }

    /* renamed from: a */
    public final void m13764a(C9977a.C9978a aVar) {
        Log.isLoggable("FirebaseMessaging", 3);
        ((NotificationManager) this.f22581b.getSystemService("notification")).notify(aVar.f22577b, aVar.f22578c, aVar.f22576a.build());
    }

    /* renamed from: a */
    public boolean m13766a() {
        if (this.f22582c.m13713a("gcm.n.noui")) {
            return true;
        }
        if (m13763b()) {
            return false;
        }
        C9996o c = m13762c();
        C9977a.C9978a b = C9977a.m13771b(this.f22581b, this.f22582c);
        m13765a(b.f22576a, c);
        m13764a(b);
        return true;
    }

    /* renamed from: b */
    public final boolean m13763b() {
        if (((KeyguardManager) this.f22581b.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            return false;
        }
        if (!C7083o.m21124h()) {
            SystemClock.sleep(10L);
        }
        int myPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.f22581b.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == myPid) {
                return runningAppProcessInfo.importance == 100;
            }
        }
        return false;
    }

    @Nullable
    /* renamed from: c */
    public final C9996o m13762c() {
        C9996o a = C9996o.m13748a(this.f22582c.m13700g("gcm.n.image"));
        if (a != null) {
            a.m13747a(this.f22580a);
        }
        return a;
    }
}

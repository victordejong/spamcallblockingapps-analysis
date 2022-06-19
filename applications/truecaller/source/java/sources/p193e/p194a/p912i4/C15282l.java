package p193e.p194a.p912i4;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.widget.Toast;
import com.truecaller.premium.util.NotificationAccessSource;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1012a.AbstractC16599t;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p437c.p578p.C10480a;
/* renamed from: e.a.i4.l */
/* loaded from: classes11-dex2jar.jar:e/a/i4/l.class */
public class C15282l {

    /* renamed from: a */
    public final Handler f43503a = new Handler();

    /* renamed from: b */
    public final AbstractC16599t f43504b;

    @Inject
    public C15282l(AbstractC16599t abstractC16599t) {
        this.f43504b = abstractC16599t;
    }

    /* renamed from: a */
    public boolean m18958a(Context context, NotificationAccessSource notificationAccessSource, final int i) {
        try {
            context.startActivity(new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"));
            this.f43503a.postDelayed(new Runnable() { // from class: e.a.i4.a
                @Override // java.lang.Runnable
                public final void run() {
                    Toast.makeText(AbstractApplicationC8442a.m28551L(), i, 0).show();
                }
            }, 500L);
            this.f43504b.mo17202a(notificationAccessSource);
            return true;
        } catch (ActivityNotFoundException e) {
            C10480a.m26057J1(e, "Cannot start activity");
            return false;
        }
    }
}

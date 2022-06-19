package p193e.p194a.p717f.p733y;

import android.telecom.InCallService;
import com.truecaller.incallui.service.InCallUIService;
import o3.b.a.c.c.g;
import o3.b.b.b;
/* renamed from: e.a.f.y.g */
/* loaded from: classes10-dex2jar.jar:e/a/f/y/g.class */
public abstract class AbstractC13769g extends InCallService implements b {

    /* renamed from: a */
    public volatile g f39925a;

    /* renamed from: b */
    public final Object f39926b = new Object();

    /* renamed from: c */
    public boolean f39927c = false;

    /* renamed from: Yt */
    public final Object m21176Yt() {
        if (this.f39925a == null) {
            synchronized (this.f39926b) {
                if (this.f39925a == null) {
                    this.f39925a = new g(this);
                }
            }
        }
        return this.f39925a.Yt();
    }

    @Override // android.app.Service
    public void onCreate() {
        if (!this.f39927c) {
            this.f39927c = true;
            ((AbstractC13791u) m21176Yt()).mo11876k((InCallUIService) this);
        }
        super.onCreate();
    }
}

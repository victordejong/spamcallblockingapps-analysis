package p193e.p194a.p619d.p670z.p671b;

import android.app.Service;
import com.truecaller.voip.service.call.CallService;
import o3.b.a.c.c.g;
import o3.b.b.b;
/* renamed from: e.a.d.z.b.o */
/* loaded from: classes15-dex2jar.jar:e/a/d/z/b/o.class */
public abstract class AbstractServiceC12374o extends Service implements b {

    /* renamed from: a */
    public volatile g f36105a;

    /* renamed from: b */
    public final Object f36106b = new Object();

    /* renamed from: c */
    public boolean f36107c = false;

    /* renamed from: Yt */
    public final Object m23167Yt() {
        if (this.f36105a == null) {
            synchronized (this.f36106b) {
                if (this.f36105a == null) {
                    this.f36105a = new g(this);
                }
            }
        }
        return this.f36105a.Yt();
    }

    @Override // android.app.Service
    public void onCreate() {
        if (!this.f36107c) {
            this.f36107c = true;
            ((AbstractC12373n) m23167Yt()).mo11879f((CallService) this);
        }
        super.onCreate();
    }
}

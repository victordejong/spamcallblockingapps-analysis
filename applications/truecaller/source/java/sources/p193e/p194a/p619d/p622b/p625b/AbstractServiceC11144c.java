package p193e.p194a.p619d.p622b.p625b;

import android.app.Service;
import com.truecaller.voip.legacy.incoming.LegacyIncomingVoipService;
import o3.b.a.c.c.g;
import o3.b.b.b;
/* renamed from: e.a.d.b.b.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/b/c.class */
public abstract class AbstractServiceC11144c extends Service implements b {

    /* renamed from: a */
    public volatile g f32962a;

    /* renamed from: b */
    public final Object f32963b = new Object();

    /* renamed from: c */
    public boolean f32964c = false;

    /* renamed from: Yt */
    public final Object m25128Yt() {
        if (this.f32962a == null) {
            synchronized (this.f32963b) {
                if (this.f32962a == null) {
                    this.f32962a = new g(this);
                }
            }
        }
        return this.f32962a.Yt();
    }

    @Override // android.app.Service
    public void onCreate() {
        if (!this.f32964c) {
            this.f32964c = true;
            ((AbstractC11160s) m25128Yt()).mo11878g((LegacyIncomingVoipService) this);
        }
        super.onCreate();
    }
}

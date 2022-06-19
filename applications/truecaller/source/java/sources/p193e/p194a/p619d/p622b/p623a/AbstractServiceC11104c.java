package p193e.p194a.p619d.p622b.p623a;

import android.app.Service;
import com.truecaller.voip.legacy.incall.LegacyVoipService;
import o3.b.a.c.c.g;
import o3.b.b.b;
/* renamed from: e.a.d.b.a.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/a/c.class */
public abstract class AbstractServiceC11104c extends Service implements b {

    /* renamed from: a */
    public volatile g f32848a;

    /* renamed from: b */
    public final Object f32849b = new Object();

    /* renamed from: c */
    public boolean f32850c = false;

    /* renamed from: Yt */
    public final Object m25234Yt() {
        if (this.f32848a == null) {
            synchronized (this.f32849b) {
                if (this.f32848a == null) {
                    this.f32848a = new g(this);
                }
            }
        }
        return this.f32848a.Yt();
    }

    @Override // android.app.Service
    public void onCreate() {
        if (!this.f32850c) {
            this.f32850c = true;
            ((AbstractC11120r) m25234Yt()).mo11881c((LegacyVoipService) this);
        }
        super.onCreate();
    }
}

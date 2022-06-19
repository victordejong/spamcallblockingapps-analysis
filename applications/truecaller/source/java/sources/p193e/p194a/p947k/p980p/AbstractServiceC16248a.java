package p193e.p194a.p947k.p980p;

import android.app.Service;
import com.truecaller.videocallerid.upload.VideoUploadService;
import o3.b.a.c.c.g;
import o3.b.b.b;
/* renamed from: e.a.k.p.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/p/a.class */
public abstract class AbstractServiceC16248a extends Service implements b {

    /* renamed from: a */
    public volatile g f45783a;

    /* renamed from: b */
    public final Object f45784b = new Object();

    /* renamed from: c */
    public boolean f45785c = false;

    /* renamed from: Yt */
    public final Object m17679Yt() {
        if (this.f45783a == null) {
            synchronized (this.f45784b) {
                if (this.f45783a == null) {
                    this.f45783a = new g(this);
                }
            }
        }
        return this.f45783a.Yt();
    }

    @Override // android.app.Service
    public void onCreate() {
        if (!this.f45785c) {
            this.f45785c = true;
            ((AbstractC16257h) m17679Yt()).mo11883a((VideoUploadService) this);
        }
        super.onCreate();
    }
}

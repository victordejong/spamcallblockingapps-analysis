package p193e.p194a.p619d.p670z.p672c;

import android.app.Service;
import com.truecaller.voip.service.invitation.InvitationService;
import o3.b.a.c.c.g;
import o3.b.b.b;
/* renamed from: e.a.d.z.c.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/z/c/a.class */
public abstract class AbstractServiceC12375a extends Service implements b {

    /* renamed from: a */
    public volatile g f36108a;

    /* renamed from: b */
    public final Object f36109b = new Object();

    /* renamed from: c */
    public boolean f36110c = false;

    /* renamed from: Yt */
    public final Object m23166Yt() {
        if (this.f36108a == null) {
            synchronized (this.f36109b) {
                if (this.f36108a == null) {
                    this.f36108a = new g(this);
                }
            }
        }
        return this.f36108a.Yt();
    }

    @Override // android.app.Service
    public void onCreate() {
        if (!this.f36110c) {
            this.f36110c = true;
            ((AbstractC12408l) m23166Yt()).mo11877j((InvitationService) this);
        }
        super.onCreate();
    }
}

package p193e.p194a.p619d.p652q;

import android.telecom.ConnectionService;
import com.truecaller.voip.callconnection.VoipCallConnectionService;
import o3.b.a.c.c.g;
import o3.b.b.b;
/* renamed from: e.a.d.q.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/q/a.class */
public abstract class AbstractC11745a extends ConnectionService implements b {

    /* renamed from: a */
    public volatile g f34524a;

    /* renamed from: b */
    public final Object f34525b = new Object();

    /* renamed from: c */
    public boolean f34526c = false;

    /* renamed from: Yt */
    public final Object m24058Yt() {
        if (this.f34524a == null) {
            synchronized (this.f34525b) {
                if (this.f34524a == null) {
                    this.f34524a = new g(this);
                }
            }
        }
        return this.f34524a.Yt();
    }

    @Override // android.app.Service
    public void onCreate() {
        if (!this.f34526c) {
            this.f34526c = true;
            ((AbstractC11781x) m24058Yt()).mo11882b((VoipCallConnectionService) this);
        }
        super.onCreate();
    }
}

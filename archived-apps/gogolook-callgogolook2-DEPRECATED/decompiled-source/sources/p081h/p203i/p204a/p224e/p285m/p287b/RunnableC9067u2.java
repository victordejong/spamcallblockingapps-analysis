package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzh;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: h.i.a.e.m.b.u2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/u2.class */
public final class RunnableC9067u2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f20689a;

    /* renamed from: b */
    public final /* synthetic */ String f20690b;

    /* renamed from: c */
    public final /* synthetic */ String f20691c;

    /* renamed from: d */
    public final /* synthetic */ String f20692d;

    /* renamed from: e */
    public final /* synthetic */ boolean f20693e;

    /* renamed from: f */
    public final /* synthetic */ zzh f20694f;

    /* renamed from: g */
    public final /* synthetic */ C9000j2 f20695g;

    public RunnableC9067u2(C9000j2 j2Var, AtomicReference atomicReference, String str, String str2, String str3, boolean z, zzh zzhVar) {
        this.f20695g = j2Var;
        this.f20689a = atomicReference;
        this.f20690b = str;
        this.f20691c = str2;
        this.f20692d = str3;
        this.f20693e = z;
        this.f20694f = zzhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC8973f fVar;
        synchronized (this.f20689a) {
            try {
                fVar = this.f20695g.f20451d;
            } catch (RemoteException e) {
                this.f20695g.mo16178c().m16375s().m16335a("Failed to get user properties", C9027o.m16380a(this.f20690b), this.f20691c, e);
                this.f20689a.set(Collections.emptyList());
                this.f20689a.notify();
            }
            if (fVar == null) {
                this.f20695g.mo16178c().m16375s().m16335a("Failed to get user properties", C9027o.m16380a(this.f20690b), this.f20691c, this.f20692d);
                this.f20689a.set(Collections.emptyList());
                this.f20689a.notify();
                return;
            }
            if (TextUtils.isEmpty(this.f20690b)) {
                this.f20689a.set(fVar.mo16134a(this.f20691c, this.f20692d, this.f20693e, this.f20694f));
            } else {
                this.f20689a.set(fVar.mo16135a(this.f20690b, this.f20691c, this.f20692d, this.f20693e));
            }
            this.f20695g.m16545C();
            this.f20689a.notify();
        }
    }
}

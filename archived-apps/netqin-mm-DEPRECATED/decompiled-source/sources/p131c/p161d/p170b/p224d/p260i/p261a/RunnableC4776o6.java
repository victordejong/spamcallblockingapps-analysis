package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzei;
import com.google.android.gms.measurement.internal.zzeq;
import com.google.android.gms.measurement.internal.zzir;
import com.google.android.gms.measurement.internal.zzn;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: c.d.b.d.i.a.o6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/o6.class */
public final class RunnableC4776o6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f17306a;

    /* renamed from: b */
    public final /* synthetic */ String f17307b;

    /* renamed from: c */
    public final /* synthetic */ String f17308c;

    /* renamed from: d */
    public final /* synthetic */ String f17309d;

    /* renamed from: e */
    public final /* synthetic */ zzn f17310e;

    /* renamed from: f */
    public final /* synthetic */ zzir f17311f;

    public RunnableC4776o6(zzir zzirVar, AtomicReference atomicReference, String str, String str2, String str3, zzn zznVar) {
        this.f17311f = zzirVar;
        this.f17306a = atomicReference;
        this.f17307b = str;
        this.f17308c = str2;
        this.f17309d = str3;
        this.f17310e = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzei zzeiVar;
        synchronized (this.f17306a) {
            try {
                zzeiVar = this.f17311f.f30089d;
            } catch (RemoteException e) {
                this.f17311f.mo8789p().m9152q().m9140a("(legacy) Failed to get conditional properties; remote exception", zzeq.m9157a(this.f17307b), this.f17308c, e);
                this.f17306a.set(Collections.emptyList());
                this.f17306a.notify();
            }
            if (zzeiVar == null) {
                this.f17311f.mo8789p().m9152q().m9140a("(legacy) Failed to get conditional properties; not connected to service", zzeq.m9157a(this.f17307b), this.f17308c, this.f17309d);
                this.f17306a.set(Collections.emptyList());
                this.f17306a.notify();
                return;
            }
            if (TextUtils.isEmpty(this.f17307b)) {
                this.f17306a.set(zzeiVar.mo9024a(this.f17308c, this.f17309d, this.f17310e));
            } else {
                this.f17306a.set(zzeiVar.mo9023a(this.f17307b, this.f17308c, this.f17309d));
            }
            this.f17311f.m8912J();
            this.f17306a.notify();
        }
    }
}

package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdvu;
import com.google.android.gms.internal.ads.zzdwd;
import com.google.android.gms.internal.ads.zzdya;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdzc;
import com.google.android.gms.internal.ads.zzdze;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* renamed from: c.d.b.d.g.a.n10 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/n10.class */
public abstract class n10<I, O, F, T> extends x10<O> implements Runnable {

    /* renamed from: h */
    public zzdzc<? extends I> f14210h;

    /* renamed from: i */
    public F f14211i;

    public n10(zzdzc<? extends I> zzdzcVar, F f) {
        zzdwd.m13096a(zzdzcVar);
        this.f14210h = zzdzcVar;
        zzdwd.m13096a(f);
        this.f14211i = f;
    }

    /* renamed from: a */
    public static <I, O> zzdzc<O> m26624a(zzdzc<I> zzdzcVar, zzdvu<? super I, ? extends O> zzdvuVar, Executor executor) {
        zzdwd.m13096a(zzdvuVar);
        o10 o10Var = new o10(zzdzcVar, zzdvuVar);
        zzdzcVar.mo12976a(o10Var, zzdze.m12974a(executor, o10Var));
        return o10Var;
    }

    /* renamed from: a */
    public static <I, O> zzdzc<O> m26623a(zzdzc<I> zzdzcVar, zzdya<? super I, ? extends O> zzdyaVar, Executor executor) {
        zzdwd.m13096a(executor);
        m10 m10Var = new m10(zzdzcVar, zzdyaVar);
        zzdzcVar.mo12976a(m10Var, zzdze.m12974a(executor, m10Var));
        return m10Var;
    }

    /* renamed from: a */
    public abstract T mo26612a(F f, I i) throws Exception;

    @Override // com.google.android.gms.internal.ads.zzdxq
    /* renamed from: b */
    public final void mo13033b() {
        m13061a((Future<?>) this.f14210h);
        this.f14210h = null;
        this.f14211i = null;
    }

    /* renamed from: c */
    public abstract void mo26611c(T t);

    @Override // com.google.android.gms.internal.ads.zzdxq
    /* renamed from: d */
    public final String mo13029d() {
        String str;
        zzdzc<? extends I> zzdzcVar = this.f14210h;
        F f = this.f14211i;
        String d = super.mo13029d();
        if (zzdzcVar != null) {
            String valueOf = String.valueOf(zzdzcVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16);
            sb.append("inputFuture=[");
            sb.append(valueOf);
            sb.append("], ");
            str = sb.toString();
        } else {
            str = "";
        }
        if (f != null) {
            String valueOf2 = String.valueOf(f);
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 11 + String.valueOf(valueOf2).length());
            sb2.append(str);
            sb2.append("function=[");
            sb2.append(valueOf2);
            sb2.append("]");
            return sb2.toString();
        } else if (d == null) {
            return null;
        } else {
            String valueOf3 = String.valueOf(str);
            String valueOf4 = String.valueOf(d);
            return valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        zzdzc<? extends I> zzdzcVar = this.f14210h;
        F f = this.f14211i;
        boolean isCancelled = isCancelled();
        boolean z = true;
        boolean z2 = zzdzcVar == null;
        if (f != null) {
            z = false;
        }
        if (!(isCancelled | z2) && !z) {
            this.f14210h = null;
            if (zzdzcVar.isCancelled()) {
                m13064a((zzdzc) zzdzcVar);
                return;
            }
            try {
                try {
                    Object a = mo26612a((n10<I, O, F, T>) f, (F) zzdyq.m12986a((Future<Object>) zzdzcVar));
                    this.f14211i = null;
                    mo26611c((n10<I, O, F, T>) a);
                } catch (Throwable th) {
                    try {
                        mo12971a(th);
                        this.f14211i = null;
                    } catch (Throwable th2) {
                        this.f14211i = null;
                        throw th2;
                    }
                }
            } catch (Error e) {
                mo12971a((Throwable) e);
            } catch (CancellationException e2) {
                cancel(false);
            } catch (RuntimeException e3) {
                mo12971a((Throwable) e3);
            } catch (ExecutionException e4) {
                mo12971a(e4.getCause());
            }
        }
    }
}

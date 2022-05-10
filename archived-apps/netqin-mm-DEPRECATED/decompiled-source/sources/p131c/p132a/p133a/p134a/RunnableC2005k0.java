package p131c.p132a.p133a.p134a;

import com.google.android.gms.internal.play_billing.zza;
/* renamed from: c.a.a.a.k0 */
/* loaded from: classes-dex2jar.jar:c/a/a/a/k0.class */
public final class RunnableC2005k0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Exception f7857a;

    /* renamed from: b */
    public final /* synthetic */ CallableC2010m0 f7858b;

    public RunnableC2005k0(CallableC2010m0 m0Var, Exception exc) {
        this.f7858b = m0Var;
        this.f7857a = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String valueOf = String.valueOf(this.f7857a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 32);
        sb.append("Error acknowledge purchase; ex: ");
        sb.append(valueOf);
        zza.m9442b("BillingClient", sb.toString());
        this.f7858b.f7867b.mo19796a(C2029y.f7914l);
    }
}

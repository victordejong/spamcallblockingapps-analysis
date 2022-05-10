package p131c.p161d.p170b.p224d.p252g.p256d;

import com.google.android.gms.internal.common.zzl;
import com.google.android.gms.internal.common.zzo;
/* renamed from: c.d.b.d.g.d.c */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/d/c.class */
public final class C4445c<T> implements zzo<T> {

    /* renamed from: a */
    public volatile zzo<T> f16667a;

    /* renamed from: b */
    public volatile boolean f16668b;

    /* renamed from: c */
    public T f16669c;

    public C4445c(zzo<T> zzoVar) {
        zzl.m10512a(zzoVar);
        this.f16667a = zzoVar;
    }

    public final String toString() {
        zzo<T> zzoVar = this.f16667a;
        String str = zzoVar;
        if (zzoVar == null) {
            String valueOf = String.valueOf(this.f16669c);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            str = sb.toString();
        }
        String valueOf2 = String.valueOf(str);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.common.zzo
    public final T zza() {
        if (!this.f16668b) {
            synchronized (this) {
                if (!this.f16668b) {
                    T zza = this.f16667a.zza();
                    this.f16669c = zza;
                    this.f16668b = true;
                    this.f16667a = null;
                    return zza;
                }
            }
        }
        return this.f16669c;
    }
}

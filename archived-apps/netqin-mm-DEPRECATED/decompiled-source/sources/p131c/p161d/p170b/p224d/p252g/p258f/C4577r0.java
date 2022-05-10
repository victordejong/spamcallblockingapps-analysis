package p131c.p161d.p170b.p224d.p252g.p258f;

import android.content.Context;
import com.google.android.gms.internal.measurement.zzdd;
import com.google.android.gms.internal.measurement.zzdy;
import com.google.android.gms.internal.measurement.zzec;
/* renamed from: c.d.b.d.g.f.r0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/r0.class */
public final class C4577r0 extends AbstractC4483e1 {

    /* renamed from: a */
    public final Context f16859a;

    /* renamed from: b */
    public final zzec<zzdy<zzdd>> f16860b;

    public C4577r0(Context context, zzec<zzdy<zzdd>> zzecVar) {
        if (context != null) {
            this.f16859a = context;
            this.f16860b = zzecVar;
            return;
        }
        throw new NullPointerException("Null context");
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4483e1
    /* renamed from: a */
    public final Context mo25255a() {
        return this.f16859a;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4483e1
    /* renamed from: b */
    public final zzec<zzdy<zzdd>> mo25254b() {
        return this.f16860b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4483e1)) {
            return false;
        }
        AbstractC4483e1 e1Var = (AbstractC4483e1) obj;
        if (!this.f16859a.equals(e1Var.mo25255a())) {
            return false;
        }
        zzec<zzdy<zzdd>> zzecVar = this.f16860b;
        return zzecVar == null ? e1Var.mo25254b() == null : zzecVar.equals(e1Var.mo25254b());
    }

    public final int hashCode() {
        int hashCode = this.f16859a.hashCode();
        zzec<zzdy<zzdd>> zzecVar = this.f16860b;
        return ((hashCode ^ 1000003) * 1000003) ^ (zzecVar == null ? 0 : zzecVar.hashCode());
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f16859a);
        String valueOf2 = String.valueOf(this.f16860b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 46 + String.valueOf(valueOf2).length());
        sb.append("FlagsContext{context=");
        sb.append(valueOf);
        sb.append(", hermeticFileOverrides=");
        sb.append(valueOf2);
        sb.append("}");
        return sb.toString();
    }
}

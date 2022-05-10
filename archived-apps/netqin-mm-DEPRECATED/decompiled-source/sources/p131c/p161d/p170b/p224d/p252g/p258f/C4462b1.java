package p131c.p161d.p170b.p224d.p252g.p258f;

import android.util.Log;
import com.google.android.gms.internal.measurement.zzdh;
import com.google.android.gms.internal.measurement.zzdm;
/* renamed from: c.d.b.d.g.f.b1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/b1.class */
public final class C4462b1 extends zzdh<Double> {
    public C4462b1(zzdm zzdmVar, String str, Double d, boolean z) {
        super(zzdmVar, str, d, true, null);
    }

    /* renamed from: b */
    public final Double mo9840a(Object obj) {
        if (obj instanceof Double) {
            return (Double) obj;
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if (obj instanceof String) {
            try {
                return Double.valueOf(Double.parseDouble((String) obj));
            } catch (NumberFormatException e) {
            }
        }
        String a = super.m9846a();
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 27 + String.valueOf(valueOf).length());
        sb.append("Invalid double value for ");
        sb.append(a);
        sb.append(": ");
        sb.append(valueOf);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}

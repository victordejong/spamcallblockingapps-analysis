package p081h.p203i.p204a.p224e.p259j.p276q;

import android.util.Log;
/* renamed from: h.i.a.e.j.q.t1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/t1.class */
public final class C8735t1 extends AbstractC8671m1<Double> {
    public C8735t1(C8762w1 w1Var, String str, Double d) {
        super(w1Var, str, d, null);
    }

    /* renamed from: b */
    public final Double mo17121a(String str) {
        try {
            return Double.valueOf(Double.parseDouble(str));
        } catch (NumberFormatException e) {
            String str2 = this.f19846b;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 27 + String.valueOf(str).length());
            sb.append("Invalid double value for ");
            sb.append(str2);
            sb.append(": ");
            sb.append(str);
            Log.e("PhenotypeFlag", sb.toString());
            return null;
        }
    }
}

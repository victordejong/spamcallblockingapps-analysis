package p081h.p203i.p204a.p224e.p235d.p236k;

import com.google.android.gms.common.Feature;
/* renamed from: h.i.a.e.d.k.p */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/p.class */
public final class C6840p extends UnsupportedOperationException {

    /* renamed from: a */
    public final Feature f16740a;

    public C6840p(Feature feature) {
        this.f16740a = feature;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String valueOf = String.valueOf(this.f16740a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 8);
        sb.append("Missing ");
        sb.append(valueOf);
        return sb.toString();
    }
}

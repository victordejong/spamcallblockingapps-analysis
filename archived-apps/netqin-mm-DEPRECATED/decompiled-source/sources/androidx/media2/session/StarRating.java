package androidx.media2.session;

import androidx.media2.common.Rating;
import p012b.p042i.p053o.C0943c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/StarRating.class */
public final class StarRating implements Rating {

    /* renamed from: a */
    public int f2233a;

    /* renamed from: b */
    public float f2234b;

    /* renamed from: e */
    public boolean m37715e() {
        return this.f2234b >= 0.0f;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof StarRating)) {
            return false;
        }
        StarRating starRating = (StarRating) obj;
        boolean z = false;
        if (this.f2233a == starRating.f2233a) {
            z = false;
            if (this.f2234b == starRating.f2234b) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        return C0943c.m35447a(Integer.valueOf(this.f2233a), Float.valueOf(this.f2234b));
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("StarRating: maxStars=");
        sb.append(this.f2233a);
        if (m37715e()) {
            str = ", starRating=" + this.f2234b;
        } else {
            str = ", unrated";
        }
        sb.append(str);
        return sb.toString();
    }
}

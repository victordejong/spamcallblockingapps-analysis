package androidx.media2.session;

import androidx.media2.common.Rating;
import p012b.p042i.p053o.C0943c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/HeartRating.class */
public final class HeartRating implements Rating {

    /* renamed from: a */
    public boolean f2181a = false;

    /* renamed from: b */
    public boolean f2182b;

    public boolean equals(Object obj) {
        if (!(obj instanceof HeartRating)) {
            return false;
        }
        HeartRating heartRating = (HeartRating) obj;
        boolean z = false;
        if (this.f2182b == heartRating.f2182b) {
            z = false;
            if (this.f2181a == heartRating.f2181a) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        return C0943c.m35447a(Boolean.valueOf(this.f2181a), Boolean.valueOf(this.f2182b));
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("HeartRating: ");
        if (this.f2181a) {
            str = "hasHeart=" + this.f2182b;
        } else {
            str = "unrated";
        }
        sb.append(str);
        return sb.toString();
    }
}

package p012b.p076s.p112c;

import androidx.media2.common.VideoSize;
/* renamed from: b.s.c.e */
/* loaded from: classes-dex2jar.jar:b/s/c/e.class */
public final class C1714e {

    /* renamed from: a */
    public final VideoSize f6995a;

    public C1714e(VideoSize videoSize) {
        this.f6995a = videoSize;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1714e) {
            return this.f6995a.equals(((C1714e) obj).f6995a);
        }
        return false;
    }

    public int hashCode() {
        return this.f6995a.hashCode();
    }

    public String toString() {
        return this.f6995a.toString();
    }
}

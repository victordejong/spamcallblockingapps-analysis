package p081h.p082a.p083a.p088n;

import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
/* renamed from: h.a.a.n.h */
/* loaded from: classes-dex2jar.jar:h/a/a/n/h.class */
public class C5413h<T> {
    @Nullable

    /* renamed from: a */
    public T f13562a;
    @Nullable

    /* renamed from: b */
    public T f13563b;

    /* renamed from: b */
    public static boolean m25482b(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: a */
    public void m25483a(T t, T t2) {
        this.f13562a = t;
        this.f13563b = t2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        boolean z = false;
        if (m25482b(pair.first, this.f13562a)) {
            z = false;
            if (m25482b(pair.second, this.f13563b)) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        T t = this.f13562a;
        int i = 0;
        int hashCode = t == null ? 0 : t.hashCode();
        T t2 = this.f13563b;
        if (t2 != null) {
            i = t2.hashCode();
        }
        return hashCode ^ i;
    }

    public String toString() {
        return "Pair{" + String.valueOf(this.f13562a) + " " + String.valueOf(this.f13563b) + CssParser.BLOCK_END;
    }
}

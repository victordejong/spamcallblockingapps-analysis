package p131c.p161d.p282e.p315q.p318p0.p319i.p320a;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.LinkedHashMap;
/* renamed from: c.d.e.q.p0.i.a.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/i/a/a.class */
public final class C5542a {
    /* renamed from: a */
    public static int m23594a(int i) {
        return i < 3 ? i + 1 : i < 1073741824 ? (int) ((i / 0.75f) + 1.0f) : MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
    }

    /* renamed from: b */
    public static <K, V> LinkedHashMap<K, V> m23593b(int i) {
        return new LinkedHashMap<>(m23594a(i));
    }
}

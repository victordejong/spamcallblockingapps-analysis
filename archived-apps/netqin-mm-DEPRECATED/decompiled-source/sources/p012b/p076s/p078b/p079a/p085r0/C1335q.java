package p012b.p076s.p078b.p079a.p085r0;

import android.util.Pair;
import androidx.media2.exoplayer.external.drm.DrmSession;
import java.util.Map;
/* renamed from: b.s.b.a.r0.q */
/* loaded from: classes-dex2jar.jar:b/s/b/a/r0/q.class */
public final class C1335q {
    /* renamed from: a */
    public static long m33674a(Map<String, String> map, String str) {
        if (map == null) {
            return -9223372036854775807L;
        }
        try {
            String str2 = map.get(str);
            if (str2 != null) {
                return Long.parseLong(str2);
            }
            return -9223372036854775807L;
        } catch (NumberFormatException e) {
            return -9223372036854775807L;
        }
    }

    /* renamed from: a */
    public static Pair<Long, Long> m33675a(DrmSession<?> drmSession) {
        Map<String, String> f = drmSession.mo33687f();
        if (f == null) {
            return null;
        }
        return new Pair<>(Long.valueOf(m33674a(f, "LicenseDurationRemaining")), Long.valueOf(m33674a(f, "PlaybackDurationRemaining")));
    }
}

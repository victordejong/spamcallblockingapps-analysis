package p645m;

import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import javax.annotation.Nullable;
/* renamed from: m.p */
/* loaded from: classes3-dex2jar.jar:m/p.class */
public final class C15190p {
    @Nullable

    /* renamed from: a */
    public static C15189o f33198a;

    /* renamed from: b */
    public static long f33199b;

    /* renamed from: a */
    public static C15189o m281a() {
        synchronized (C15190p.class) {
            try {
                if (f33198a == null) {
                    return new C15189o();
                }
                C15189o oVar = f33198a;
                f33198a = oVar.f33196f;
                oVar.f33196f = null;
                f33199b -= PsExtractor.MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND;
                return oVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m280a(C15189o oVar) {
        if (oVar.f33196f != null || oVar.f33197g != null) {
            throw new IllegalArgumentException();
        } else if (!oVar.f33194d) {
            synchronized (C15190p.class) {
                try {
                    if (f33199b + PsExtractor.MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND <= 65536) {
                        f33199b += PsExtractor.MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND;
                        oVar.f33196f = f33198a;
                        oVar.f33193c = 0;
                        oVar.f33192b = 0;
                        f33198a = oVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}

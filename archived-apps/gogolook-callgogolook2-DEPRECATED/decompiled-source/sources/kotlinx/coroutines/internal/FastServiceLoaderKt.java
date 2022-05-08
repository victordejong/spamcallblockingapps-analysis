package kotlinx.coroutines.internal;

import kotlin.Metadata;
import p626l.C14979k;
import p626l.C14982l;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\"\u0014\u0010��\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, m815d2 = {"ANDROID_DETECTED", "", "getANDROID_DETECTED", "()Z", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/FastServiceLoaderKt.class */
public final class FastServiceLoaderKt {
    public static final boolean ANDROID_DETECTED;

    static {
        Object obj;
        try {
            C14979k.C14980a aVar = C14979k.f33013a;
            obj = Class.forName("android.os.Build");
            C14979k.m657a(obj);
        } catch (Throwable th) {
            C14979k.C14980a aVar2 = C14979k.f33013a;
            obj = C14982l.m652a(th);
            C14979k.m657a(obj);
        }
        ANDROID_DETECTED = C14979k.m654d(obj);
    }

    public static final boolean getANDROID_DETECTED() {
        return ANDROID_DETECTED;
    }
}

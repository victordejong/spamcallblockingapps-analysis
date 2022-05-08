package okhttp3.logging;

import java.io.EOFException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020��H��¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokio/Buffer;", "", "isProbablyUtf8", "(Lokio/Buffer;)Z", "okhttp-logging-interceptor"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/logging/Utf8Kt.class */
public final class Utf8Kt {
    public static final boolean isProbablyUtf8(@NotNull Buffer isProbablyUtf8) {
        long e;
        Intrinsics.m1830e(isProbablyUtf8, "$this$isProbablyUtf8");
        try {
            Buffer buffer = new Buffer();
            e = RangesKt___RangesKt.m1710e(isProbablyUtf8.m188v0(), 64L);
            isProbablyUtf8.m196l(buffer, 0L, e);
            for (int i = 0; i < 16; i++) {
                if (buffer.mo60z()) {
                    return true;
                }
                int o0 = buffer.m193o0();
                if (Character.isISOControl(o0) && !Character.isWhitespace(o0)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException e2) {
            return false;
        }
    }
}

package okio;

import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a/\u0010\u0005\u001a\u00028��\"\u0004\b��\u0010��2\u0006\u0010\u0002\u001a\u00020\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003H\u0080\bø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0013\u0010\t\u001a\u00020\b*\u00020\u0007H��¢\u0006\u0004\b\t\u0010\n\u001a\u0013\u0010\u000b\u001a\u00020\u0007*\u00020\bH��¢\u0006\u0004\b\u000b\u0010\f*\n\u0010\u000e\"\u00020\r2\u00020\r*\n\u0010\u0010\"\u00020\u000f2\u00020\u000f*\n\u0010\u0012\"\u00020\u00112\u00020\u0011\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0013"}, d2 = {"R", "", "lock", "Lkotlin/Function0;", "block", "synchronized", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "", "", "asUtf8ToByteArray", "(Ljava/lang/String;)[B", "toUtf8String", "([B)Ljava/lang/String;", "Ljava/lang/ArrayIndexOutOfBoundsException;", "ArrayIndexOutOfBoundsException", "Ljava/io/EOFException;", "EOFException", "Ljava/io/IOException;", "IOException", "okio"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@JvmName
/* loaded from: classes2-dex2jar.jar:okio/_Platform.class */
public final class _Platform {
    @NotNull
    /* renamed from: a */
    public static final byte[] m26a(@NotNull String asUtf8ToByteArray) {
        Intrinsics.m1830e(asUtf8ToByteArray, "$this$asUtf8ToByteArray");
        byte[] bytes = asUtf8ToByteArray.getBytes(Charsets.f21018a);
        Intrinsics.m1831d(bytes, "(this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    @NotNull
    /* renamed from: b */
    public static final String m25b(@NotNull byte[] toUtf8String) {
        Intrinsics.m1830e(toUtf8String, "$this$toUtf8String");
        return new String(toUtf8String, Charsets.f21018a);
    }
}

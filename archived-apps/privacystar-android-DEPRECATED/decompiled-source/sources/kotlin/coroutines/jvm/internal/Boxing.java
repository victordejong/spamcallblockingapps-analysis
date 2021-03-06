package kotlin.coroutines.jvm.internal;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��T\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n��\n\u0002\u0018\u0002\n\u0002\u0010\f\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\u0010\n\n��\u001a\u0010\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u001a\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0006H\u0001\u001a\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\tH\u0001\u001a\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\fH\u0001\u001a\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u000fH\u0001\u001a\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u0012H\u0001\u001a\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u0015H\u0001\u001a\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0002\u001a\u00020\u0018H\u0001¨\u0006\u0019"}, m254d2 = {"boxBoolean", "Ljava/lang/Boolean;", "primitive", "", "boxByte", "Ljava/lang/Byte;", "", "boxChar", "Ljava/lang/Character;", "", "boxDouble", "Ljava/lang/Double;", "", "boxFloat", "Ljava/lang/Float;", "", "boxInt", "Ljava/lang/Integer;", "", "boxLong", "Ljava/lang/Long;", "", "boxShort", "Ljava/lang/Short;", "", "kotlin-stdlib"}, m253k = 2, m252mv = {1, 1, 13})
@JvmName(name = "Boxing")
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/jvm/internal/Boxing.class */
public final class Boxing {
    @SinceKotlin(version = "1.3")
    @PublishedApi
    @NotNull
    public static final Boolean boxBoolean(boolean z) {
        return Boolean.valueOf(z);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    @NotNull
    public static final Byte boxByte(byte b) {
        return Byte.valueOf(b);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    @NotNull
    public static final Character boxChar(char c) {
        return new Character(c);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    @NotNull
    public static final Double boxDouble(double d) {
        return new Double(d);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    @NotNull
    public static final Float boxFloat(float f) {
        return new Float(f);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    @NotNull
    public static final Integer boxInt(int i) {
        return new Integer(i);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    @NotNull
    public static final Long boxLong(long j) {
        return new Long(j);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    @NotNull
    public static final Short boxShort(short s) {
        return new Short(s);
    }
}

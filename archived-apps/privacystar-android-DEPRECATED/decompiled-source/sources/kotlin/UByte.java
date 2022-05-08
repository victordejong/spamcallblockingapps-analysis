package kotlin;

import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.UIntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin(version = "1.3")
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0010\u0005\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\u0010��\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0087@\u0018�� ^2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001^B\u0014\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\b\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020��H\u0097\nø\u0001��¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b\u0011\u0010\u0012J\u001b\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0013H\u0087\nø\u0001��¢\u0006\u0004\b\u0014\u0010\u0015J\u001b\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0016H\u0087\nø\u0001��¢\u0006\u0004\b\u0017\u0010\u0018J\u0013\u0010\u0019\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b\u001a\u0010\u0005J\u001b\u0010\u001b\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b\u001c\u0010\u000fJ\u001b\u0010\u001b\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b\u001d\u0010\u0012J\u001b\u0010\u001b\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0013H\u0087\nø\u0001��¢\u0006\u0004\b\u001e\u0010\u001fJ\u001b\u0010\u001b\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0016H\u0087\nø\u0001��¢\u0006\u0004\b \u0010\u0018J\u0013\u0010!\u001a\u00020\"2\b\u0010\t\u001a\u0004\u0018\u00010#HÖ\u0003J\t\u0010$\u001a\u00020\rHÖ\u0001J\u0013\u0010%\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b&\u0010\u0005J\u0013\u0010'\u001a\u00020��H\u0087\bø\u0001��¢\u0006\u0004\b(\u0010\u0005J\u001b\u0010)\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b*\u0010\u000fJ\u001b\u0010)\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b+\u0010\u0012J\u001b\u0010)\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0013H\u0087\nø\u0001��¢\u0006\u0004\b,\u0010\u001fJ\u001b\u0010)\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0016H\u0087\nø\u0001��¢\u0006\u0004\b-\u0010\u0018J\u001b\u0010.\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b/\u0010\u000bJ\u001b\u00100\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b1\u0010\u000fJ\u001b\u00100\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b2\u0010\u0012J\u001b\u00100\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0013H\u0087\nø\u0001��¢\u0006\u0004\b3\u0010\u001fJ\u001b\u00100\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0016H\u0087\nø\u0001��¢\u0006\u0004\b4\u0010\u0018J\u001b\u00105\u001a\u0002062\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b7\u00108J\u001b\u00109\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b:\u0010\u000fJ\u001b\u00109\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b;\u0010\u0012J\u001b\u00109\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0013H\u0087\nø\u0001��¢\u0006\u0004\b<\u0010\u001fJ\u001b\u00109\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0016H\u0087\nø\u0001��¢\u0006\u0004\b=\u0010\u0018J\u001b\u0010>\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b?\u0010\u000fJ\u001b\u0010>\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b@\u0010\u0012J\u001b\u0010>\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0013H\u0087\nø\u0001��¢\u0006\u0004\bA\u0010\u001fJ\u001b\u0010>\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0016H\u0087\nø\u0001��¢\u0006\u0004\bB\u0010\u0018J\u0010\u0010C\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\bD\u0010\u0005J\u0010\u0010E\u001a\u00020\rH\u0087\b¢\u0006\u0004\bF\u0010GJ\u0010\u0010H\u001a\u00020IH\u0087\b¢\u0006\u0004\bJ\u0010KJ\u0010\u0010L\u001a\u00020MH\u0087\b¢\u0006\u0004\bN\u0010OJ\u000f\u0010P\u001a\u00020QH\u0016¢\u0006\u0004\bR\u0010SJ\u0013\u0010T\u001a\u00020��H\u0087\bø\u0001��¢\u0006\u0004\bU\u0010\u0005J\u0013\u0010V\u001a\u00020\u0010H\u0087\bø\u0001��¢\u0006\u0004\bW\u0010GJ\u0013\u0010X\u001a\u00020\u0013H\u0087\bø\u0001��¢\u0006\u0004\bY\u0010KJ\u0013\u0010Z\u001a\u00020\u0016H\u0087\bø\u0001��¢\u0006\u0004\b[\u0010OJ\u001b\u0010\\\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b]\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038��X\u0081\u0004¢\u0006\b\n��\u0012\u0004\b\u0006\u0010\u0007ø\u0001��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006_"}, m254d2 = {"Lkotlin/UByte;", "", "data", "", "constructor-impl", "(B)B", "data$annotations", "()V", "and", "other", "and-7apg3OU", "(BB)B", "compareTo", "", "compareTo-7apg3OU", "(BB)I", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(BI)I", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(BJ)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(BS)I", "dec", "dec-impl", "div", "div-7apg3OU", "div-WZ4Q5Ns", "div-VKZWuLQ", "(BJ)J", "div-xj2QHRw", "equals", "", "", "hashCode", "inc", "inc-impl", "inv", "inv-impl", "minus", "minus-7apg3OU", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "minus-xj2QHRw", "or", "or-7apg3OU", "plus", "plus-7apg3OU", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "plus-xj2QHRw", "rangeTo", "Lkotlin/ranges/UIntRange;", "rangeTo-7apg3OU", "(BB)Lkotlin/ranges/UIntRange;", "rem", "rem-7apg3OU", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "rem-xj2QHRw", "times", "times-7apg3OU", "times-WZ4Q5Ns", "times-VKZWuLQ", "times-xj2QHRw", "toByte", "toByte-impl", "toInt", "toInt-impl", "(B)I", "toLong", "", "toLong-impl", "(B)J", "toShort", "", "toShort-impl", "(B)S", "toString", "", "toString-impl", "(B)Ljava/lang/String;", "toUByte", "toUByte-impl", "toUInt", "toUInt-impl", "toULong", "toULong-impl", "toUShort", "toUShort-impl", "xor", "xor-7apg3OU", "Companion", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
@ExperimentalUnsignedTypes
/* loaded from: classes2-dex2jar.jar:kotlin/UByte.class */
public final class UByte implements Comparable<UByte> {
    public static final Companion Companion = new Companion(null);
    public static final byte MAX_VALUE = -1;
    public static final byte MIN_VALUE = 0;
    public static final int SIZE_BITS = 8;
    public static final int SIZE_BYTES = 1;
    private final byte data;

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u00020\u0004X\u0086Tø\u0001��¢\u0006\u0004\n\u0002\u0010\u0005R\u0013\u0010\u0006\u001a\u00020\u0004X\u0086Tø\u0001��¢\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\bX\u0086T¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n"}, m254d2 = {"Lkotlin/UByte$Companion;", "", "()V", "MAX_VALUE", "Lkotlin/UByte;", "B", "MIN_VALUE", "SIZE_BITS", "", "SIZE_BYTES", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:kotlin/UByte$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @PublishedApi
    private /* synthetic */ UByte(byte b) {
        this.data = b;
    }

    @InlineOnly
    /* renamed from: and-7apg3OU  reason: not valid java name */
    private static final byte m2821and7apg3OU(byte b, byte b2) {
        return m2828constructorimpl((byte) (b & b2));
    }

    @NotNull
    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ UByte m2822boximpl(byte b) {
        return new UByte(b);
    }

    @InlineOnly
    /* renamed from: compareTo-7apg3OU  reason: not valid java name */
    private int m2823compareTo7apg3OU(byte b) {
        return m2824compareTo7apg3OU(this.data, b);
    }

    @InlineOnly
    /* renamed from: compareTo-7apg3OU  reason: not valid java name */
    private static int m2824compareTo7apg3OU(byte b, byte b2) {
        return Intrinsics.compare(b & 255, b2 & 255);
    }

    @InlineOnly
    /* renamed from: compareTo-VKZWuLQ  reason: not valid java name */
    private static final int m2825compareToVKZWuLQ(byte b, long j) {
        return UnsignedKt.ulongCompare(ULong.m2962constructorimpl(b & 255), j);
    }

    @InlineOnly
    /* renamed from: compareTo-WZ4Q5Ns  reason: not valid java name */
    private static final int m2826compareToWZ4Q5Ns(byte b, int i) {
        return UnsignedKt.uintCompare(UInt.m2894constructorimpl(b & 255), i);
    }

    @InlineOnly
    /* renamed from: compareTo-xj2QHRw  reason: not valid java name */
    private static final int m2827compareToxj2QHRw(byte b, short s) {
        return Intrinsics.compare(b & 255, s & 65535);
    }

    @PublishedApi
    /* renamed from: constructor-impl  reason: not valid java name */
    public static byte m2828constructorimpl(byte b) {
        return b;
    }

    @PublishedApi
    public static /* synthetic */ void data$annotations() {
    }

    @InlineOnly
    /* renamed from: dec-impl  reason: not valid java name */
    private static final byte m2829decimpl(byte b) {
        return m2828constructorimpl((byte) (b - 1));
    }

    @InlineOnly
    /* renamed from: div-7apg3OU  reason: not valid java name */
    private static final int m2830div7apg3OU(byte b, byte b2) {
        return UnsignedKt.m3090uintDivideJ1ME1BU(UInt.m2894constructorimpl(b & 255), UInt.m2894constructorimpl(b2 & 255));
    }

    @InlineOnly
    /* renamed from: div-VKZWuLQ  reason: not valid java name */
    private static final long m2831divVKZWuLQ(byte b, long j) {
        return UnsignedKt.m3092ulongDivideeb3DHEI(ULong.m2962constructorimpl(b & 255), j);
    }

    @InlineOnly
    /* renamed from: div-WZ4Q5Ns  reason: not valid java name */
    private static final int m2832divWZ4Q5Ns(byte b, int i) {
        return UnsignedKt.m3090uintDivideJ1ME1BU(UInt.m2894constructorimpl(b & 255), i);
    }

    @InlineOnly
    /* renamed from: div-xj2QHRw  reason: not valid java name */
    private static final int m2833divxj2QHRw(byte b, short s) {
        return UnsignedKt.m3090uintDivideJ1ME1BU(UInt.m2894constructorimpl(b & 255), UInt.m2894constructorimpl(s & 65535));
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2834equalsimpl(byte b, @Nullable Object obj) {
        if (!(obj instanceof UByte)) {
            return false;
        }
        return b == ((UByte) obj).m2867unboximpl();
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2835equalsimpl0(byte b, byte b2) {
        throw null;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2836hashCodeimpl(byte b) {
        return b;
    }

    @InlineOnly
    /* renamed from: inc-impl  reason: not valid java name */
    private static final byte m2837incimpl(byte b) {
        return m2828constructorimpl((byte) (b + 1));
    }

    @InlineOnly
    /* renamed from: inv-impl  reason: not valid java name */
    private static final byte m2838invimpl(byte b) {
        return m2828constructorimpl((byte) (b ^ (-1)));
    }

    @InlineOnly
    /* renamed from: minus-7apg3OU  reason: not valid java name */
    private static final int m2839minus7apg3OU(byte b, byte b2) {
        return UInt.m2894constructorimpl(UInt.m2894constructorimpl(b & 255) - UInt.m2894constructorimpl(b2 & 255));
    }

    @InlineOnly
    /* renamed from: minus-VKZWuLQ  reason: not valid java name */
    private static final long m2840minusVKZWuLQ(byte b, long j) {
        return ULong.m2962constructorimpl(ULong.m2962constructorimpl(b & 255) - j);
    }

    @InlineOnly
    /* renamed from: minus-WZ4Q5Ns  reason: not valid java name */
    private static final int m2841minusWZ4Q5Ns(byte b, int i) {
        return UInt.m2894constructorimpl(UInt.m2894constructorimpl(b & 255) - i);
    }

    @InlineOnly
    /* renamed from: minus-xj2QHRw  reason: not valid java name */
    private static final int m2842minusxj2QHRw(byte b, short s) {
        return UInt.m2894constructorimpl(UInt.m2894constructorimpl(b & 255) - UInt.m2894constructorimpl(s & 65535));
    }

    @InlineOnly
    /* renamed from: or-7apg3OU  reason: not valid java name */
    private static final byte m2843or7apg3OU(byte b, byte b2) {
        return m2828constructorimpl((byte) (b | b2));
    }

    @InlineOnly
    /* renamed from: plus-7apg3OU  reason: not valid java name */
    private static final int m2844plus7apg3OU(byte b, byte b2) {
        return UInt.m2894constructorimpl(UInt.m2894constructorimpl(b & 255) + UInt.m2894constructorimpl(b2 & 255));
    }

    @InlineOnly
    /* renamed from: plus-VKZWuLQ  reason: not valid java name */
    private static final long m2845plusVKZWuLQ(byte b, long j) {
        return ULong.m2962constructorimpl(ULong.m2962constructorimpl(b & 255) + j);
    }

    @InlineOnly
    /* renamed from: plus-WZ4Q5Ns  reason: not valid java name */
    private static final int m2846plusWZ4Q5Ns(byte b, int i) {
        return UInt.m2894constructorimpl(UInt.m2894constructorimpl(b & 255) + i);
    }

    @InlineOnly
    /* renamed from: plus-xj2QHRw  reason: not valid java name */
    private static final int m2847plusxj2QHRw(byte b, short s) {
        return UInt.m2894constructorimpl(UInt.m2894constructorimpl(b & 255) + UInt.m2894constructorimpl(s & 65535));
    }

    @InlineOnly
    /* renamed from: rangeTo-7apg3OU  reason: not valid java name */
    private static final UIntRange m2848rangeTo7apg3OU(byte b, byte b2) {
        return new UIntRange(UInt.m2894constructorimpl(b & 255), UInt.m2894constructorimpl(b2 & 255), null);
    }

    @InlineOnly
    /* renamed from: rem-7apg3OU  reason: not valid java name */
    private static final int m2849rem7apg3OU(byte b, byte b2) {
        return UnsignedKt.m3091uintRemainderJ1ME1BU(UInt.m2894constructorimpl(b & 255), UInt.m2894constructorimpl(b2 & 255));
    }

    @InlineOnly
    /* renamed from: rem-VKZWuLQ  reason: not valid java name */
    private static final long m2850remVKZWuLQ(byte b, long j) {
        return UnsignedKt.m3093ulongRemaindereb3DHEI(ULong.m2962constructorimpl(b & 255), j);
    }

    @InlineOnly
    /* renamed from: rem-WZ4Q5Ns  reason: not valid java name */
    private static final int m2851remWZ4Q5Ns(byte b, int i) {
        return UnsignedKt.m3091uintRemainderJ1ME1BU(UInt.m2894constructorimpl(b & 255), i);
    }

    @InlineOnly
    /* renamed from: rem-xj2QHRw  reason: not valid java name */
    private static final int m2852remxj2QHRw(byte b, short s) {
        return UnsignedKt.m3091uintRemainderJ1ME1BU(UInt.m2894constructorimpl(b & 255), UInt.m2894constructorimpl(s & 65535));
    }

    @InlineOnly
    /* renamed from: times-7apg3OU  reason: not valid java name */
    private static final int m2853times7apg3OU(byte b, byte b2) {
        return UInt.m2894constructorimpl(UInt.m2894constructorimpl(b & 255) * UInt.m2894constructorimpl(b2 & 255));
    }

    @InlineOnly
    /* renamed from: times-VKZWuLQ  reason: not valid java name */
    private static final long m2854timesVKZWuLQ(byte b, long j) {
        return ULong.m2962constructorimpl(ULong.m2962constructorimpl(b & 255) * j);
    }

    @InlineOnly
    /* renamed from: times-WZ4Q5Ns  reason: not valid java name */
    private static final int m2855timesWZ4Q5Ns(byte b, int i) {
        return UInt.m2894constructorimpl(UInt.m2894constructorimpl(b & 255) * i);
    }

    @InlineOnly
    /* renamed from: times-xj2QHRw  reason: not valid java name */
    private static final int m2856timesxj2QHRw(byte b, short s) {
        return UInt.m2894constructorimpl(UInt.m2894constructorimpl(b & 255) * UInt.m2894constructorimpl(s & 65535));
    }

    @InlineOnly
    /* renamed from: toByte-impl  reason: not valid java name */
    private static final byte m2857toByteimpl(byte b) {
        return b;
    }

    @InlineOnly
    /* renamed from: toInt-impl  reason: not valid java name */
    private static final int m2858toIntimpl(byte b) {
        return b & 255;
    }

    @InlineOnly
    /* renamed from: toLong-impl  reason: not valid java name */
    private static final long m2859toLongimpl(byte b) {
        return b & 255;
    }

    @InlineOnly
    /* renamed from: toShort-impl  reason: not valid java name */
    private static final short m2860toShortimpl(byte b) {
        return (short) (b & 255);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2861toStringimpl(byte b) {
        return String.valueOf(b & 255);
    }

    @InlineOnly
    /* renamed from: toUByte-impl  reason: not valid java name */
    private static final byte m2862toUByteimpl(byte b) {
        return b;
    }

    @InlineOnly
    /* renamed from: toUInt-impl  reason: not valid java name */
    private static final int m2863toUIntimpl(byte b) {
        return UInt.m2894constructorimpl(b & 255);
    }

    @InlineOnly
    /* renamed from: toULong-impl  reason: not valid java name */
    private static final long m2864toULongimpl(byte b) {
        return ULong.m2962constructorimpl(b & 255);
    }

    @InlineOnly
    /* renamed from: toUShort-impl  reason: not valid java name */
    private static final short m2865toUShortimpl(byte b) {
        return UShort.m3031constructorimpl((short) (b & 255));
    }

    @InlineOnly
    /* renamed from: xor-7apg3OU  reason: not valid java name */
    private static final byte m2866xor7apg3OU(byte b, byte b2) {
        return m2828constructorimpl((byte) (b ^ b2));
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UByte uByte) {
        return m2823compareTo7apg3OU(uByte.m2867unboximpl());
    }

    public boolean equals(Object obj) {
        return m2834equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m2836hashCodeimpl(this.data);
    }

    @NotNull
    public String toString() {
        return m2861toStringimpl(this.data);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ byte m2867unboximpl() {
        return this.data;
    }
}

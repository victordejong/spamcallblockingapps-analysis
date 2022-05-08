package kotlin;

import kotlin.internal.InlineOnly;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010��\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0014\b\u0087@\u0018�� m2\u00020\u0001:\u0001mB\u0014\b\u0001\u0012\u0006\u0010h\u001a\u00020\u0007ø\u0001��¢\u0006\u0004\bl\u0010\u0013J\u001b\u0010\u0005\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\n\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001��¢\u0006\u0004\b\b\u0010\tJ\u001b\u0010\n\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020��H\u0097\nø\u0001��¢\u0006\u0004\b\u000b\u0010\u0004J\u001b\u0010\n\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\fH\u0087\nø\u0001��¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\n\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u000fH\u0087\nø\u0001��¢\u0006\u0004\b\u0010\u0010\u0011J\u0016\u0010\u0014\u001a\u00020��H\u0087\nø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0016\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001��¢\u0006\u0004\b\u0015\u0010\tJ\u001b\u0010\u0016\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b\u0017\u0010\u0004J\u001b\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\fH\u0087\nø\u0001��¢\u0006\u0004\b\u0018\u0010\u0019J\u001b\u0010\u0016\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u000fH\u0087\nø\u0001��¢\u0006\u0004\b\u001a\u0010\u0011J\u001a\u0010\u001d\u001a\u00020\u001c2\b\u0010\u0002\u001a\u0004\u0018\u00010\u001bHÖ\u0003¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\u001f\u0010 J\u0016\u0010\"\u001a\u00020��H\u0087\nø\u0001��ø\u0001\u0001¢\u0006\u0004\b!\u0010\u0013J\u0016\u0010$\u001a\u00020��H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b#\u0010\u0013J\u001b\u0010&\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001��¢\u0006\u0004\b%\u0010\tJ\u001b\u0010&\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b'\u0010\u0004J\u001b\u0010&\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\fH\u0087\nø\u0001��¢\u0006\u0004\b(\u0010\u0019J\u001b\u0010&\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u000fH\u0087\nø\u0001��¢\u0006\u0004\b)\u0010\u0011J\u001b\u0010+\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b*\u0010\u0004J\u001b\u0010-\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001��¢\u0006\u0004\b,\u0010\tJ\u001b\u0010-\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b.\u0010\u0004J\u001b\u0010-\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\fH\u0087\nø\u0001��¢\u0006\u0004\b/\u0010\u0019J\u001b\u0010-\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u000fH\u0087\nø\u0001��¢\u0006\u0004\b0\u0010\u0011J\u001b\u00104\u001a\u0002012\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b2\u00103J\u001b\u00106\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001��¢\u0006\u0004\b5\u0010\tJ\u001b\u00106\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b7\u0010\u0004J\u001b\u00106\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\fH\u0087\nø\u0001��¢\u0006\u0004\b8\u0010\u0019J\u001b\u00106\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u000fH\u0087\nø\u0001��¢\u0006\u0004\b9\u0010\u0011J\u001e\u0010<\u001a\u00020��2\u0006\u0010:\u001a\u00020\u0007H\u0087\fø\u0001��ø\u0001\u0001¢\u0006\u0004\b;\u0010\u0004J\u001e\u0010>\u001a\u00020��2\u0006\u0010:\u001a\u00020\u0007H\u0087\fø\u0001��ø\u0001\u0001¢\u0006\u0004\b=\u0010\u0004J\u001b\u0010@\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001��¢\u0006\u0004\b?\u0010\tJ\u001b\u0010@\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\bA\u0010\u0004J\u001b\u0010@\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\fH\u0087\nø\u0001��¢\u0006\u0004\bB\u0010\u0019J\u001b\u0010@\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u000fH\u0087\nø\u0001��¢\u0006\u0004\bC\u0010\u0011J\u0010\u0010G\u001a\u00020DH\u0087\b¢\u0006\u0004\bE\u0010FJ\u0010\u0010K\u001a\u00020HH\u0087\b¢\u0006\u0004\bI\u0010JJ\u0010\u0010O\u001a\u00020LH\u0087\b¢\u0006\u0004\bM\u0010NJ\u0010\u0010Q\u001a\u00020\u0007H\u0087\b¢\u0006\u0004\bP\u0010\u0013J\u0010\u0010U\u001a\u00020RH\u0087\b¢\u0006\u0004\bS\u0010TJ\u0010\u0010Y\u001a\u00020VH\u0087\b¢\u0006\u0004\bW\u0010XJ\u000f\u0010]\u001a\u00020ZH\u0016¢\u0006\u0004\b[\u0010\\J\u0016\u0010_\u001a\u00020\u0006H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b^\u0010FJ\u0016\u0010a\u001a\u00020��H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b`\u0010\u0013J\u0016\u0010c\u001a\u00020\fH\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\bb\u0010TJ\u0016\u0010e\u001a\u00020\u000fH\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\bd\u0010XJ\u001b\u0010g\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\bf\u0010\u0004R\u001c\u0010h\u001a\u00020\u00078��@\u0001X\u0081\u0004¢\u0006\f\n\u0004\bh\u0010i\u0012\u0004\bj\u0010kø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006n"}, d2 = {"Lkotlin/UInt;", "Ljava/lang/Comparable;", "other", "and-WZ4Q5Ns", "(II)I", "and", "Lkotlin/UByte;", "", "compareTo-7apg3OU", "(IB)I", "compareTo", "compareTo-WZ4Q5Ns", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(IJ)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(IS)I", "dec-pVg5ArA", "(I)I", "dec", "div-7apg3OU", "div", "div-WZ4Q5Ns", "div-VKZWuLQ", "(IJ)J", "div-xj2QHRw", "", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "inc-pVg5ArA", "inc", "inv-pVg5ArA", "inv", "minus-7apg3OU", "minus", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "minus-xj2QHRw", "or-WZ4Q5Ns", "or", "plus-7apg3OU", "plus", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "plus-xj2QHRw", "Lkotlin/ranges/UIntRange;", "rangeTo-WZ4Q5Ns", "(II)Lkotlin/ranges/UIntRange;", "rangeTo", "rem-7apg3OU", "rem", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "rem-xj2QHRw", "bitCount", "shl-pVg5ArA", "shl", "shr-pVg5ArA", "shr", "times-7apg3OU", "times", "times-WZ4Q5Ns", "times-VKZWuLQ", "times-xj2QHRw", "", "toByte-impl", "(I)B", "toByte", "", "toDouble-impl", "(I)D", "toDouble", "", "toFloat-impl", "(I)F", "toFloat", "toInt-impl", "toInt", "", "toLong-impl", "(I)J", "toLong", "", "toShort-impl", "(I)S", "toShort", "", "toString-impl", "(I)Ljava/lang/String;", "toString", "toUByte-w2LRezQ", "toUByte", "toUInt-pVg5ArA", "toUInt", "toULong-s-VKNKU", "toULong", "toUShort-Mh2AYeg", "toUShort", "xor-WZ4Q5Ns", "xor", "data", "I", "getData$annotations", "()V", "constructor-impl", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalUnsignedTypes
/* loaded from: classes2-dex2jar.jar:kotlin/UInt.class */
public final class UInt implements Comparable<UInt> {

    /* renamed from: f */
    private final int f20434f;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\b\u0010\tR\u001c\u0010\u0002\u001a\u00020\u00018\u0006@\u0006X\u0086Tø\u0001��ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u00020\u00018\u0006@\u0006X\u0086Tø\u0001��ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0004\u0010\u0003R\u0016\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0003R\u0016\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0003\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\n"}, d2 = {"Lkotlin/UInt$Companion;", "Lkotlin/UInt;", "MAX_VALUE", "I", "MIN_VALUE", "", "SIZE_BITS", "SIZE_BYTES", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/UInt$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    @PublishedApi
    private /* synthetic */ UInt(int i) {
        this.f20434f = i;
    }

    @NotNull
    /* renamed from: a */
    public static final /* synthetic */ UInt m2447a(int i) {
        return new UInt(i);
    }

    @InlineOnly
    /* renamed from: b */
    private int m2446b(int i) {
        return m2445e(this.f20434f, i);
    }

    @InlineOnly
    /* renamed from: e */
    private static int m2445e(int i, int i2) {
        return UnsignedKt.m2383a(i, i2);
    }

    @PublishedApi
    /* renamed from: g */
    public static int m2444g(int i) {
        return i;
    }

    /* renamed from: h */
    public static boolean m2443h(int i, @Nullable Object obj) {
        return (obj instanceof UInt) && i == ((UInt) obj).m2440l();
    }

    /* renamed from: i */
    public static int m2442i(int i) {
        return i;
    }

    @NotNull
    /* renamed from: k */
    public static String m2441k(int i) {
        return String.valueOf(i & 4294967295L);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UInt uInt) {
        return m2446b(uInt.m2440l());
    }

    public boolean equals(Object obj) {
        return m2443h(this.f20434f, obj);
    }

    public int hashCode() {
        int i = this.f20434f;
        m2442i(i);
        return i;
    }

    /* renamed from: l */
    public final /* synthetic */ int m2440l() {
        return this.f20434f;
    }

    @NotNull
    public String toString() {
        return m2441k(this.f20434f);
    }
}

package kotlin;

import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010��\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0014\b\u0087@\u0018�� i2\u00020\u0001:\u0001iB\u0014\b\u0001\u0012\u0006\u0010d\u001a\u00020Sø\u0001��¢\u0006\u0004\bh\u0010\u0014J\u001b\u0010\u0005\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\n\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001��¢\u0006\u0004\b\b\u0010\tJ\u001b\u0010\n\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u000bH\u0087\nø\u0001��¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\n\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u000eH\u0087\nø\u0001��¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\n\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020��H\u0097\nø\u0001��¢\u0006\u0004\b\u0011\u0010\u0012J\u0016\u0010\u0015\u001a\u00020��H\u0087\nø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001��¢\u0006\u0004\b\u0016\u0010\tJ\u001b\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000bH\u0087\nø\u0001��¢\u0006\u0004\b\u0018\u0010\rJ\u001b\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u000eH\u0087\nø\u0001��¢\u0006\u0004\b\u0019\u0010\u001aJ\u001b\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b\u001b\u0010\u0012J\u001a\u0010\u001e\u001a\u00020\u001d2\b\u0010\u0002\u001a\u0004\u0018\u00010\u001cHÖ\u0003¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b \u0010!J\u0016\u0010#\u001a\u00020��H\u0087\nø\u0001��ø\u0001\u0001¢\u0006\u0004\b\"\u0010\u0014J\u0016\u0010%\u001a\u00020��H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b$\u0010\u0014J\u001b\u0010'\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001��¢\u0006\u0004\b&\u0010\tJ\u001b\u0010'\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000bH\u0087\nø\u0001��¢\u0006\u0004\b(\u0010\rJ\u001b\u0010'\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u000eH\u0087\nø\u0001��¢\u0006\u0004\b)\u0010\u001aJ\u001b\u0010'\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b*\u0010\u0012J\u001b\u0010,\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b+\u0010\u0004J\u001b\u0010.\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001��¢\u0006\u0004\b-\u0010\tJ\u001b\u0010.\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000bH\u0087\nø\u0001��¢\u0006\u0004\b/\u0010\rJ\u001b\u0010.\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u000eH\u0087\nø\u0001��¢\u0006\u0004\b0\u0010\u001aJ\u001b\u0010.\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b1\u0010\u0012J\u001b\u00105\u001a\u0002022\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b3\u00104J\u001b\u00107\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001��¢\u0006\u0004\b6\u0010\tJ\u001b\u00107\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000bH\u0087\nø\u0001��¢\u0006\u0004\b8\u0010\rJ\u001b\u00107\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u000eH\u0087\nø\u0001��¢\u0006\u0004\b9\u0010\u001aJ\u001b\u00107\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b:\u0010\u0012J\u001b\u0010<\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001��¢\u0006\u0004\b;\u0010\tJ\u001b\u0010<\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000bH\u0087\nø\u0001��¢\u0006\u0004\b=\u0010\rJ\u001b\u0010<\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u000eH\u0087\nø\u0001��¢\u0006\u0004\b>\u0010\u001aJ\u001b\u0010<\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b?\u0010\u0012J\u0010\u0010C\u001a\u00020@H\u0087\b¢\u0006\u0004\bA\u0010BJ\u0010\u0010G\u001a\u00020DH\u0087\b¢\u0006\u0004\bE\u0010FJ\u0010\u0010K\u001a\u00020HH\u0087\b¢\u0006\u0004\bI\u0010JJ\u0010\u0010N\u001a\u00020\u0007H\u0087\b¢\u0006\u0004\bL\u0010MJ\u0010\u0010R\u001a\u00020OH\u0087\b¢\u0006\u0004\bP\u0010QJ\u0010\u0010U\u001a\u00020SH\u0087\b¢\u0006\u0004\bT\u0010\u0014J\u000f\u0010Y\u001a\u00020VH\u0016¢\u0006\u0004\bW\u0010XJ\u0016\u0010[\u001a\u00020\u0006H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\bZ\u0010BJ\u0016\u0010]\u001a\u00020\u000bH\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b\\\u0010MJ\u0016\u0010_\u001a\u00020\u000eH\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b^\u0010QJ\u0016\u0010a\u001a\u00020��H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b`\u0010\u0014J\u001b\u0010c\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\bb\u0010\u0004R\u001c\u0010d\u001a\u00020S8��@\u0001X\u0081\u0004¢\u0006\f\n\u0004\bd\u0010e\u0012\u0004\bf\u0010gø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006j"}, d2 = {"Lkotlin/UShort;", "Ljava/lang/Comparable;", "other", "and-xj2QHRw", "(SS)S", "and", "Lkotlin/UByte;", "", "compareTo-7apg3OU", "(SB)I", "compareTo", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(SI)I", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(SJ)I", "compareTo-xj2QHRw", "(SS)I", "dec-Mh2AYeg", "(S)S", "dec", "div-7apg3OU", "div", "div-WZ4Q5Ns", "div-VKZWuLQ", "(SJ)J", "div-xj2QHRw", "", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "inc-Mh2AYeg", "inc", "inv-Mh2AYeg", "inv", "minus-7apg3OU", "minus", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "minus-xj2QHRw", "or-xj2QHRw", "or", "plus-7apg3OU", "plus", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "plus-xj2QHRw", "Lkotlin/ranges/UIntRange;", "rangeTo-xj2QHRw", "(SS)Lkotlin/ranges/UIntRange;", "rangeTo", "rem-7apg3OU", "rem", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "rem-xj2QHRw", "times-7apg3OU", "times", "times-WZ4Q5Ns", "times-VKZWuLQ", "times-xj2QHRw", "", "toByte-impl", "(S)B", "toByte", "", "toDouble-impl", "(S)D", "toDouble", "", "toFloat-impl", "(S)F", "toFloat", "toInt-impl", "(S)I", "toInt", "", "toLong-impl", "(S)J", "toLong", "", "toShort-impl", "toShort", "", "toString-impl", "(S)Ljava/lang/String;", "toString", "toUByte-w2LRezQ", "toUByte", "toUInt-pVg5ArA", "toUInt", "toULong-s-VKNKU", "toULong", "toUShort-Mh2AYeg", "toUShort", "xor-xj2QHRw", "xor", "data", "S", "getData$annotations", "()V", "constructor-impl", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalUnsignedTypes
/* loaded from: classes2-dex2jar.jar:kotlin/UShort.class */
public final class UShort implements Comparable<UShort> {

    /* renamed from: f */
    private final short f20443f;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\t\u0010\nR\u001c\u0010\u0002\u001a\u00020\u00018\u0006@\u0006X\u0086Tø\u0001��ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u00020\u00018\u0006@\u0006X\u0086Tø\u0001��ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0004\u0010\u0003R\u0016\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0007\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u000b"}, d2 = {"Lkotlin/UShort$Companion;", "Lkotlin/UShort;", "MAX_VALUE", "S", "MIN_VALUE", "", "SIZE_BITS", "I", "SIZE_BYTES", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/UShort$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    @PublishedApi
    private /* synthetic */ UShort(short s) {
        this.f20443f = s;
    }

    @NotNull
    /* renamed from: a */
    public static final /* synthetic */ UShort m2405a(short s) {
        return new UShort(s);
    }

    @InlineOnly
    /* renamed from: b */
    private int m2404b(short s) {
        return m2403e(this.f20443f, s);
    }

    @InlineOnly
    /* renamed from: e */
    private static int m2403e(short s, short s2) {
        return Intrinsics.m1828g(s & 65535, s2 & 65535);
    }

    @PublishedApi
    /* renamed from: g */
    public static short m2402g(short s) {
        return s;
    }

    /* renamed from: h */
    public static boolean m2401h(short s, @Nullable Object obj) {
        return (obj instanceof UShort) && s == ((UShort) obj).m2398l();
    }

    /* renamed from: i */
    public static int m2400i(short s) {
        return s;
    }

    @NotNull
    /* renamed from: k */
    public static String m2399k(short s) {
        return String.valueOf(s & 65535);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UShort uShort) {
        return m2404b(uShort.m2398l());
    }

    public boolean equals(Object obj) {
        return m2401h(this.f20443f, obj);
    }

    public int hashCode() {
        short s = this.f20443f;
        m2400i(s);
        return s;
    }

    /* renamed from: l */
    public final /* synthetic */ short m2398l() {
        return this.f20443f;
    }

    @NotNull
    public String toString() {
        return m2399k(this.f20443f);
    }
}

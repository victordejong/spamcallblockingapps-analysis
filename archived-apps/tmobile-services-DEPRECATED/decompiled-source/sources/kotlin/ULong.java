package kotlin;

import kotlin.internal.InlineOnly;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010��\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0014\b\u0087@\u0018�� p2\u00020\u0001:\u0001pB\u0014\b\u0001\u0012\u0006\u0010k\u001a\u00020Vø\u0001��¢\u0006\u0004\bo\u0010\u0014J\u001b\u0010\u0005\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\n\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001��¢\u0006\u0004\b\b\u0010\tJ\u001b\u0010\n\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u000bH\u0087\nø\u0001��¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\n\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020��H\u0097\nø\u0001��¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\n\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b\u0011\u0010\u0012J\u0016\u0010\u0015\u001a\u00020��H\u0087\nø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0018\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001��¢\u0006\u0004\b\u0016\u0010\u0017J\u001b\u0010\u0018\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u000bH\u0087\nø\u0001��¢\u0006\u0004\b\u0019\u0010\u001aJ\u001b\u0010\u0018\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b\u001b\u0010\u0004J\u001b\u0010\u0018\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b\u001c\u0010\u001dJ\u001a\u0010 \u001a\u00020\u001f2\b\u0010\u0002\u001a\u0004\u0018\u00010\u001eHÖ\u0003¢\u0006\u0004\b \u0010!J\u0010\u0010\"\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\"\u0010#J\u0016\u0010%\u001a\u00020��H\u0087\nø\u0001��ø\u0001\u0001¢\u0006\u0004\b$\u0010\u0014J\u0016\u0010'\u001a\u00020��H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b&\u0010\u0014J\u001b\u0010)\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001��¢\u0006\u0004\b(\u0010\u0017J\u001b\u0010)\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u000bH\u0087\nø\u0001��¢\u0006\u0004\b*\u0010\u001aJ\u001b\u0010)\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b+\u0010\u0004J\u001b\u0010)\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b,\u0010\u001dJ\u001b\u0010.\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b-\u0010\u0004J\u001b\u00100\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001��¢\u0006\u0004\b/\u0010\u0017J\u001b\u00100\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u000bH\u0087\nø\u0001��¢\u0006\u0004\b1\u0010\u001aJ\u001b\u00100\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b2\u0010\u0004J\u001b\u00100\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b3\u0010\u001dJ\u001b\u00107\u001a\u0002042\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b5\u00106J\u001b\u00109\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001��¢\u0006\u0004\b8\u0010\u0017J\u001b\u00109\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u000bH\u0087\nø\u0001��¢\u0006\u0004\b:\u0010\u001aJ\u001b\u00109\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b;\u0010\u0004J\u001b\u00109\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b<\u0010\u001dJ\u001e\u0010?\u001a\u00020��2\u0006\u0010=\u001a\u00020\u0007H\u0087\fø\u0001��ø\u0001\u0001¢\u0006\u0004\b>\u0010\u001aJ\u001e\u0010A\u001a\u00020��2\u0006\u0010=\u001a\u00020\u0007H\u0087\fø\u0001��ø\u0001\u0001¢\u0006\u0004\b@\u0010\u001aJ\u001b\u0010C\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001��¢\u0006\u0004\bB\u0010\u0017J\u001b\u0010C\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u000bH\u0087\nø\u0001��¢\u0006\u0004\bD\u0010\u001aJ\u001b\u0010C\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\bE\u0010\u0004J\u001b\u0010C\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\bF\u0010\u001dJ\u0010\u0010J\u001a\u00020GH\u0087\b¢\u0006\u0004\bH\u0010IJ\u0010\u0010N\u001a\u00020KH\u0087\b¢\u0006\u0004\bL\u0010MJ\u0010\u0010R\u001a\u00020OH\u0087\b¢\u0006\u0004\bP\u0010QJ\u0010\u0010U\u001a\u00020\u0007H\u0087\b¢\u0006\u0004\bS\u0010TJ\u0010\u0010X\u001a\u00020VH\u0087\b¢\u0006\u0004\bW\u0010\u0014J\u0010\u0010\\\u001a\u00020YH\u0087\b¢\u0006\u0004\bZ\u0010[J\u000f\u0010`\u001a\u00020]H\u0016¢\u0006\u0004\b^\u0010_J\u0016\u0010b\u001a\u00020\u0006H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\ba\u0010IJ\u0016\u0010d\u001a\u00020\u000bH\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\bc\u0010TJ\u0016\u0010f\u001a\u00020��H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\be\u0010\u0014J\u0016\u0010h\u001a\u00020\u0010H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\bg\u0010[J\u001b\u0010j\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\bi\u0010\u0004R\u001c\u0010k\u001a\u00020V8��@\u0001X\u0081\u0004¢\u0006\f\n\u0004\bk\u0010l\u0012\u0004\bm\u0010nø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006q"}, d2 = {"Lkotlin/ULong;", "Ljava/lang/Comparable;", "other", "and-VKZWuLQ", "(JJ)J", "and", "Lkotlin/UByte;", "", "compareTo-7apg3OU", "(JB)I", "compareTo", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(JI)I", "compareTo-VKZWuLQ", "(JJ)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(JS)I", "dec-s-VKNKU", "(J)J", "dec", "div-7apg3OU", "(JB)J", "div", "div-WZ4Q5Ns", "(JI)J", "div-VKZWuLQ", "div-xj2QHRw", "(JS)J", "", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "inc-s-VKNKU", "inc", "inv-s-VKNKU", "inv", "minus-7apg3OU", "minus", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "minus-xj2QHRw", "or-VKZWuLQ", "or", "plus-7apg3OU", "plus", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "plus-xj2QHRw", "Lkotlin/ranges/ULongRange;", "rangeTo-VKZWuLQ", "(JJ)Lkotlin/ranges/ULongRange;", "rangeTo", "rem-7apg3OU", "rem", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "rem-xj2QHRw", "bitCount", "shl-s-VKNKU", "shl", "shr-s-VKNKU", "shr", "times-7apg3OU", "times", "times-WZ4Q5Ns", "times-VKZWuLQ", "times-xj2QHRw", "", "toByte-impl", "(J)B", "toByte", "", "toDouble-impl", "(J)D", "toDouble", "", "toFloat-impl", "(J)F", "toFloat", "toInt-impl", "(J)I", "toInt", "", "toLong-impl", "toLong", "", "toShort-impl", "(J)S", "toShort", "", "toString-impl", "(J)Ljava/lang/String;", "toString", "toUByte-w2LRezQ", "toUByte", "toUInt-pVg5ArA", "toUInt", "toULong-s-VKNKU", "toULong", "toUShort-Mh2AYeg", "toUShort", "xor-VKZWuLQ", "xor", "data", "J", "getData$annotations", "()V", "constructor-impl", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalUnsignedTypes
/* loaded from: classes2-dex2jar.jar:kotlin/ULong.class */
public final class ULong implements Comparable<ULong> {

    /* renamed from: f */
    private final long f20438f;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\t\u0010\nR\u001c\u0010\u0002\u001a\u00020\u00018\u0006@\u0006X\u0086Tø\u0001��ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u00020\u00018\u0006@\u0006X\u0086Tø\u0001��ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0004\u0010\u0003R\u0016\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0007\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u000b"}, d2 = {"Lkotlin/ULong$Companion;", "Lkotlin/ULong;", "MAX_VALUE", "J", "MIN_VALUE", "", "SIZE_BITS", "I", "SIZE_BYTES", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/ULong$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    @PublishedApi
    private /* synthetic */ ULong(long j) {
        this.f20438f = j;
    }

    @NotNull
    /* renamed from: a */
    public static final /* synthetic */ ULong m2426a(long j) {
        return new ULong(j);
    }

    @InlineOnly
    /* renamed from: b */
    private int m2425b(long j) {
        return m2424e(this.f20438f, j);
    }

    @InlineOnly
    /* renamed from: e */
    private static int m2424e(long j, long j2) {
        return UnsignedKt.m2381c(j, j2);
    }

    @PublishedApi
    /* renamed from: g */
    public static long m2423g(long j) {
        return j;
    }

    /* renamed from: h */
    public static boolean m2422h(long j, @Nullable Object obj) {
        return (obj instanceof ULong) && j == ((ULong) obj).m2419l();
    }

    /* renamed from: i */
    public static int m2421i(long j) {
        return (int) (j ^ (j >>> 32));
    }

    @NotNull
    /* renamed from: k */
    public static String m2420k(long j) {
        return UnsignedKt.m2379e(j);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(ULong uLong) {
        return m2425b(uLong.m2419l());
    }

    public boolean equals(Object obj) {
        return m2422h(this.f20438f, obj);
    }

    public int hashCode() {
        return m2421i(this.f20438f);
    }

    /* renamed from: l */
    public final /* synthetic */ long m2419l() {
        return this.f20438f;
    }

    @NotNull
    public String toString() {
        return m2420k(this.f20438f);
    }
}

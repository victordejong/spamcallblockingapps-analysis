package p081h.p203i.p204a.p224e.p259j.p271l;
/* renamed from: h.i.a.e.j.l.z7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/z7.class */
public enum EnumC8480z7 implements AbstractC8286o9 {
    UNRECOGNIZED(0),
    CODE_128(1),
    CODE_39(2),
    CODE_93(3),
    CODABAR(4),
    DATA_MATRIX(5),
    EAN_13(6),
    EAN_8(7),
    ITF(8),
    QR_CODE(9),
    UPC_A(10),
    UPC_E(11),
    PDF417(12),
    AZTEC(13),
    DATABAR(14),
    TEZ_CODE(16);
    

    /* renamed from: a */
    public final int f19520a;

    static {
        new AbstractC8338r9<EnumC8480z7>() { // from class: h.i.a.e.j.l.b8
        };
    }

    EnumC8480z7(int i) {
        this.f19520a = i;
    }

    /* renamed from: b */
    public static AbstractC8319q9 m17909b() {
        return C8009a8.f18736a;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
    /* renamed from: a */
    public final int mo17910a() {
        return this.f19520a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + EnumC8480z7.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f19520a + " name=" + name() + '>';
    }
}

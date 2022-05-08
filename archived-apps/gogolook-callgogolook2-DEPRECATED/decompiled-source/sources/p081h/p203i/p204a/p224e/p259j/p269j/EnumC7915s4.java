package p081h.p203i.p204a.p224e.p259j.p269j;
/* JADX WARN: Init of enum k can be incorrect */
/* JADX WARN: Init of enum l can be incorrect */
/* JADX WARN: Init of enum m can be incorrect */
/* JADX WARN: Init of enum n can be incorrect */
/* renamed from: h.i.a.e.j.j.s4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/s4.class */
public enum EnumC7915s4 {
    DOUBLE(EnumC7955x4.DOUBLE, 1),
    FLOAT(EnumC7955x4.FLOAT, 5),
    INT64(EnumC7955x4.LONG, 0),
    UINT64(EnumC7955x4.LONG, 0),
    INT32(EnumC7955x4.INT, 0),
    FIXED64(EnumC7955x4.LONG, 1),
    FIXED32(EnumC7955x4.INT, 5),
    BOOL(EnumC7955x4.BOOLEAN, 0),
    STRING(r4, 2) { // from class: h.i.a.e.j.j.t4
    },
    GROUP(r4, 3) { // from class: h.i.a.e.j.j.u4
    },
    MESSAGE(r4, 2) { // from class: h.i.a.e.j.j.v4
    },
    BYTES(r4, 2) { // from class: h.i.a.e.j.j.w4
    },
    UINT32(EnumC7955x4.INT, 0),
    ENUM(EnumC7955x4.ENUM, 0),
    SFIXED32(EnumC7955x4.INT, 5),
    SFIXED64(EnumC7955x4.LONG, 1),
    SINT32(EnumC7955x4.INT, 0),
    SINT64(EnumC7955x4.LONG, 0);
    

    /* renamed from: a */
    public final EnumC7955x4 f18564a;

    /* renamed from: b */
    public final int f18565b;

    static {
        final EnumC7955x4 x4Var = EnumC7955x4.STRING;
        final EnumC7955x4 x4Var2 = EnumC7955x4.MESSAGE;
        final EnumC7955x4 x4Var3 = EnumC7955x4.MESSAGE;
        final EnumC7955x4 x4Var4 = EnumC7955x4.BYTE_STRING;
    }

    EnumC7915s4(EnumC7955x4 x4Var, int i) {
        this.f18564a = x4Var;
        this.f18565b = i;
    }

    /* synthetic */ EnumC7915s4(EnumC7955x4 x4Var, int i, C7908r4 r4Var) {
        this(x4Var, i);
    }

    /* renamed from: a */
    public final EnumC7955x4 m18994a() {
        return this.f18564a;
    }
}

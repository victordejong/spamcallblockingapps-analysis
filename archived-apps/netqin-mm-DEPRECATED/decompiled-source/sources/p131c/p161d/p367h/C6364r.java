package p131c.p161d.p367h;

import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.WireFormat;
import com.google.protobuf.Writer;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.h.r */
/* loaded from: classes2-dex2jar.jar:c/d/h/r.class */
public final class C6364r extends AbstractC6361q<GeneratedMessageLite.C7950e> {

    /* renamed from: c.d.h.r$a */
    /* loaded from: classes2-dex2jar.jar:c/d/h/r$a.class */
    public static /* synthetic */ class C6365a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20028a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00dd -> B:91:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00e1 -> B:85:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e5 -> B:63:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e9 -> B:59:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00ed -> B:71:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00f1 -> B:67:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00f5 -> B:81:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f9 -> B:75:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00fd -> B:89:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0101 -> B:83:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0105 -> B:61:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0109 -> B:57:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x010d -> B:69:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0111 -> B:65:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0115 -> B:79:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x0119 -> B:73:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x011d -> B:87:0x00d0). Please submit an issue!!! */
        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f20028a = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f20028a[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f20028a[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f20028a[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f20028a[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f20028a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f20028a[WireFormat.FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f20028a[WireFormat.FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f20028a[WireFormat.FieldType.UINT32.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f20028a[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f20028a[WireFormat.FieldType.SFIXED64.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f20028a[WireFormat.FieldType.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f20028a[WireFormat.FieldType.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f20028a[WireFormat.FieldType.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f20028a[WireFormat.FieldType.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f20028a[WireFormat.FieldType.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f20028a[WireFormat.FieldType.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f20028a[WireFormat.FieldType.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6361q
    /* renamed from: a */
    public int mo21092a(Map.Entry<?, ?> entry) {
        return ((GeneratedMessageLite.C7950e) entry.getKey()).getNumber();
    }

    @Override // p131c.p161d.p367h.AbstractC6361q
    /* renamed from: a */
    public C6371u<GeneratedMessageLite.C7950e> mo21093a(Object obj) {
        return ((GeneratedMessageLite.AbstractC7948c) obj).extensions;
    }

    @Override // p131c.p161d.p367h.AbstractC6361q
    /* renamed from: a */
    public <UT, UB> UB mo21098a(AbstractC6284b1 b1Var, Object obj, C6358p pVar, C6371u<GeneratedMessageLite.C7950e> uVar, UB ub, AbstractC6326i1<UT, UB> i1Var) throws IOException {
        Object obj2;
        ArrayList arrayList;
        GeneratedMessageLite.C7951f fVar = (GeneratedMessageLite.C7951f) obj;
        int c = fVar.m6915c();
        if (!fVar.f31138b.mo6919k() || !fVar.f31138b.isPacked()) {
            Object obj3 = null;
            if (fVar.m6917a() != WireFormat.FieldType.ENUM) {
                switch (C6365a.f20028a[fVar.m6917a().ordinal()]) {
                    case 1:
                        obj3 = Double.valueOf(b1Var.readDouble());
                        break;
                    case 2:
                        obj3 = Float.valueOf(b1Var.readFloat());
                        break;
                    case 3:
                        obj3 = Long.valueOf(b1Var.mo21312q());
                        break;
                    case 4:
                        obj3 = Long.valueOf(b1Var.mo21344c());
                        break;
                    case 5:
                        obj3 = Integer.valueOf(b1Var.mo21318n());
                        break;
                    case 6:
                        obj3 = Long.valueOf(b1Var.mo21340d());
                        break;
                    case 7:
                        obj3 = Integer.valueOf(b1Var.mo21336e());
                        break;
                    case 8:
                        obj3 = Boolean.valueOf(b1Var.mo21334f());
                        break;
                    case 9:
                        obj3 = Integer.valueOf(b1Var.mo21330h());
                        break;
                    case 10:
                        obj3 = Integer.valueOf(b1Var.mo21314p());
                        break;
                    case 11:
                        obj3 = Long.valueOf(b1Var.mo21332g());
                        break;
                    case 12:
                        obj3 = Integer.valueOf(b1Var.mo21326j());
                        break;
                    case 13:
                        obj3 = Long.valueOf(b1Var.mo21324k());
                        break;
                    case 14:
                        throw new IllegalStateException("Shouldn't reach here.");
                    case 15:
                        obj3 = b1Var.mo21320m();
                        break;
                    case 16:
                        obj3 = b1Var.mo21350b();
                        break;
                    case 17:
                        obj3 = b1Var.mo21347b(fVar.m6916b().getClass(), pVar);
                        break;
                    case 18:
                        obj3 = b1Var.mo21355a(fVar.m6916b().getClass(), pVar);
                        break;
                }
            } else {
                int n = b1Var.mo21318n();
                if (fVar.f31138b.m6922a().mo6797a(n) == null) {
                    return (UB) C6298e1.m21619a(c, n, ub, i1Var);
                }
                obj3 = Integer.valueOf(n);
            }
            if (fVar.m6914d()) {
                uVar.m21066a((C6371u<GeneratedMessageLite.C7950e>) fVar.f31138b, obj3);
            } else {
                int i = C6365a.f20028a[fVar.m6917a().ordinal()];
                if (i == 17 || i == 18) {
                    Object a = uVar.m21067a((C6371u<GeneratedMessageLite.C7950e>) fVar.f31138b);
                    obj2 = obj3;
                    if (a != null) {
                        obj2 = C6381y.m21008a(a, obj3);
                    }
                } else {
                    obj2 = obj3;
                }
                uVar.m21056b((C6371u<GeneratedMessageLite.C7950e>) fVar.f31138b, obj2);
            }
        } else {
            switch (C6365a.f20028a[fVar.m6917a().ordinal()]) {
                case 1:
                    ArrayList arrayList2 = new ArrayList();
                    b1Var.mo21313p(arrayList2);
                    arrayList = arrayList2;
                    break;
                case 2:
                    ArrayList arrayList3 = new ArrayList();
                    b1Var.mo21317n(arrayList3);
                    arrayList = arrayList3;
                    break;
                case 3:
                    ArrayList arrayList4 = new ArrayList();
                    b1Var.mo21331g(arrayList4);
                    arrayList = arrayList4;
                    break;
                case 4:
                    ArrayList arrayList5 = new ArrayList();
                    b1Var.mo21335e(arrayList5);
                    arrayList = arrayList5;
                    break;
                case 5:
                    ArrayList arrayList6 = new ArrayList();
                    b1Var.mo21327i(arrayList6);
                    arrayList = arrayList6;
                    break;
                case 6:
                    ArrayList arrayList7 = new ArrayList();
                    b1Var.mo21311q(arrayList7);
                    arrayList = arrayList7;
                    break;
                case 7:
                    ArrayList arrayList8 = new ArrayList();
                    b1Var.mo21323k(arrayList8);
                    arrayList = arrayList8;
                    break;
                case 8:
                    ArrayList arrayList9 = new ArrayList();
                    b1Var.mo21321l(arrayList9);
                    arrayList = arrayList9;
                    break;
                case 9:
                    ArrayList arrayList10 = new ArrayList();
                    b1Var.mo21337d(arrayList10);
                    arrayList = arrayList10;
                    break;
                case 10:
                    ArrayList arrayList11 = new ArrayList();
                    b1Var.mo21346b(arrayList11);
                    arrayList = arrayList11;
                    break;
                case 11:
                    ArrayList arrayList12 = new ArrayList();
                    b1Var.mo21329h(arrayList12);
                    arrayList = arrayList12;
                    break;
                case 12:
                    ArrayList arrayList13 = new ArrayList();
                    b1Var.mo21354a(arrayList13);
                    arrayList = arrayList13;
                    break;
                case 13:
                    ArrayList arrayList14 = new ArrayList();
                    b1Var.mo21341c(arrayList14);
                    arrayList = arrayList14;
                    break;
                case 14:
                    ArrayList arrayList15 = new ArrayList();
                    b1Var.mo21325j(arrayList15);
                    ub = (UB) C6298e1.m21615a(c, arrayList15, fVar.f31138b.m6922a(), ub, i1Var);
                    arrayList = arrayList15;
                    break;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + fVar.f31138b.mo6918n());
            }
            uVar.m21056b((C6371u<GeneratedMessageLite.C7950e>) fVar.f31138b, arrayList);
        }
        return ub;
    }

    @Override // p131c.p161d.p367h.AbstractC6361q
    /* renamed from: a */
    public Object mo21096a(C6358p pVar, AbstractC6354n0 n0Var, int i) {
        return pVar.m21172a(n0Var, i);
    }

    @Override // p131c.p161d.p367h.AbstractC6361q
    /* renamed from: a */
    public void mo21099a(AbstractC6284b1 b1Var, Object obj, C6358p pVar, C6371u<GeneratedMessageLite.C7950e> uVar) throws IOException {
        GeneratedMessageLite.C7951f fVar = (GeneratedMessageLite.C7951f) obj;
        uVar.m21056b((C6371u<GeneratedMessageLite.C7950e>) fVar.f31138b, b1Var.mo21355a(fVar.m6916b().getClass(), pVar));
    }

    @Override // p131c.p161d.p367h.AbstractC6361q
    /* renamed from: a */
    public void mo21095a(ByteString byteString, Object obj, C6358p pVar, C6371u<GeneratedMessageLite.C7950e> uVar) throws IOException {
        GeneratedMessageLite.C7951f fVar = (GeneratedMessageLite.C7951f) obj;
        AbstractC6354n0 B = fVar.m6916b().mo6925q().mo6938B();
        AbstractC6299f a = AbstractC6299f.m21563a(ByteBuffer.wrap(byteString.toByteArray()), true);
        C6380x0.m21016a().m21012a(B, a, pVar);
        uVar.m21056b((C6371u<GeneratedMessageLite.C7950e>) fVar.f31138b, B);
        if (a.mo21322l() != Integer.MAX_VALUE) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6361q
    /* renamed from: a */
    public void mo21094a(Writer writer, Map.Entry<?, ?> entry) throws IOException {
        GeneratedMessageLite.C7950e eVar = (GeneratedMessageLite.C7950e) entry.getKey();
        if (eVar.mo6919k()) {
            switch (C6365a.f20028a[eVar.mo6918n().ordinal()]) {
                case 1:
                    C6298e1.m21597b(eVar.getNumber(), (List) entry.getValue(), writer, eVar.isPacked());
                    return;
                case 2:
                    C6298e1.m21582f(eVar.getNumber(), (List) entry.getValue(), writer, eVar.isPacked());
                    return;
                case 3:
                    C6298e1.m21576h(eVar.getNumber(), (List) entry.getValue(), writer, eVar.isPacked());
                    return;
                case 4:
                    C6298e1.m21564n(eVar.getNumber(), (List) entry.getValue(), writer, eVar.isPacked());
                    return;
                case 5:
                    C6298e1.m21579g(eVar.getNumber(), (List) entry.getValue(), writer, eVar.isPacked());
                    return;
                case 6:
                    C6298e1.m21585e(eVar.getNumber(), (List) entry.getValue(), writer, eVar.isPacked());
                    return;
                case 7:
                    C6298e1.m21589d(eVar.getNumber(), (List) entry.getValue(), writer, eVar.isPacked());
                    return;
                case 8:
                    C6298e1.m21611a(eVar.getNumber(), (List) entry.getValue(), writer, eVar.isPacked());
                    return;
                case 9:
                    C6298e1.m21565m(eVar.getNumber(), (List) entry.getValue(), writer, eVar.isPacked());
                    return;
                case 10:
                    C6298e1.m21573i(eVar.getNumber(), (List) entry.getValue(), writer, eVar.isPacked());
                    return;
                case 11:
                    C6298e1.m21570j(eVar.getNumber(), (List) entry.getValue(), writer, eVar.isPacked());
                    return;
                case 12:
                    C6298e1.m21567k(eVar.getNumber(), (List) entry.getValue(), writer, eVar.isPacked());
                    return;
                case 13:
                    C6298e1.m21566l(eVar.getNumber(), (List) entry.getValue(), writer, eVar.isPacked());
                    return;
                case 14:
                    C6298e1.m21579g(eVar.getNumber(), (List) entry.getValue(), writer, eVar.isPacked());
                    return;
                case 15:
                    C6298e1.m21613a(eVar.getNumber(), (List) entry.getValue(), writer);
                    return;
                case 16:
                    C6298e1.m21599b(eVar.getNumber(), (List) entry.getValue(), writer);
                    return;
                case 17:
                    List list = (List) entry.getValue();
                    if (list != null && !list.isEmpty()) {
                        C6298e1.m21612a(eVar.getNumber(), (List) entry.getValue(), writer, C6380x0.m21016a().m21015a((Class) list.get(0).getClass()));
                        return;
                    }
                    return;
                case 18:
                    List list2 = (List) entry.getValue();
                    if (list2 != null && !list2.isEmpty()) {
                        C6298e1.m21598b(eVar.getNumber(), (List) entry.getValue(), writer, C6380x0.m21016a().m21015a((Class) list2.get(0).getClass()));
                        return;
                    }
                    return;
                default:
                    return;
            }
        } else {
            switch (C6365a.f20028a[eVar.mo6918n().ordinal()]) {
                case 1:
                    writer.mo6836a(eVar.getNumber(), ((Double) entry.getValue()).doubleValue());
                    return;
                case 2:
                    writer.mo6835a(eVar.getNumber(), ((Float) entry.getValue()).floatValue());
                    return;
                case 3:
                    writer.mo6815c(eVar.getNumber(), ((Long) entry.getValue()).longValue());
                    return;
                case 4:
                    writer.mo6821b(eVar.getNumber(), ((Long) entry.getValue()).longValue());
                    return;
                case 5:
                    writer.mo6813d(eVar.getNumber(), ((Integer) entry.getValue()).intValue());
                    return;
                case 6:
                    writer.mo6833a(eVar.getNumber(), ((Long) entry.getValue()).longValue());
                    return;
                case 7:
                    writer.mo6822b(eVar.getNumber(), ((Integer) entry.getValue()).intValue());
                    return;
                case 8:
                    writer.mo6824a(eVar.getNumber(), ((Boolean) entry.getValue()).booleanValue());
                    return;
                case 9:
                    writer.mo6834a(eVar.getNumber(), ((Integer) entry.getValue()).intValue());
                    return;
                case 10:
                    writer.mo6816c(eVar.getNumber(), ((Integer) entry.getValue()).intValue());
                    return;
                case 11:
                    writer.mo6812d(eVar.getNumber(), ((Long) entry.getValue()).longValue());
                    return;
                case 12:
                    writer.mo6807f(eVar.getNumber(), ((Integer) entry.getValue()).intValue());
                    return;
                case 13:
                    writer.mo6809e(eVar.getNumber(), ((Long) entry.getValue()).longValue());
                    return;
                case 14:
                    writer.mo6813d(eVar.getNumber(), ((Integer) entry.getValue()).intValue());
                    return;
                case 15:
                    writer.mo6831a(eVar.getNumber(), (ByteString) entry.getValue());
                    return;
                case 16:
                    writer.mo6828a(eVar.getNumber(), (String) entry.getValue());
                    return;
                case 17:
                    writer.mo6820b(eVar.getNumber(), entry.getValue(), C6380x0.m21016a().m21015a((Class) entry.getValue().getClass()));
                    return;
                case 18:
                    writer.mo6829a(eVar.getNumber(), entry.getValue(), C6380x0.m21016a().m21015a((Class) entry.getValue().getClass()));
                    return;
                default:
                    return;
            }
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6361q
    /* renamed from: a */
    public boolean mo21097a(AbstractC6354n0 n0Var) {
        return n0Var instanceof GeneratedMessageLite.AbstractC7948c;
    }

    @Override // p131c.p161d.p367h.AbstractC6361q
    /* renamed from: b */
    public C6371u<GeneratedMessageLite.C7950e> mo21091b(Object obj) {
        return ((GeneratedMessageLite.AbstractC7948c) obj).m6924v();
    }

    @Override // p131c.p161d.p367h.AbstractC6361q
    /* renamed from: c */
    public void mo21090c(Object obj) {
        mo21093a(obj).m21045h();
    }
}

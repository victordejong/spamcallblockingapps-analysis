package p131c.p161d.p367h;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.WireFormat;
import com.google.protobuf.Writer;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import p131c.p161d.p367h.C6319h0;
/* renamed from: c.d.h.l */
/* loaded from: classes2-dex2jar.jar:c/d/h/l.class */
public final class C6339l implements Writer {

    /* renamed from: a */
    public final CodedOutputStream f19978a;

    /* renamed from: c.d.h.l$a */
    /* loaded from: classes2-dex2jar.jar:c/d/h/l$a.class */
    public static /* synthetic */ class C6340a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19979a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0095 -> B:49:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0099 -> B:43:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:61:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:53:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:47:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a9 -> B:41:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ad -> B:59:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b1 -> B:51:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b5 -> B:45:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:39:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00bd -> B:57:0x0088). Please submit an issue!!! */
        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f19979a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19979a[WireFormat.FieldType.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19979a[WireFormat.FieldType.INT32.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19979a[WireFormat.FieldType.SFIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19979a[WireFormat.FieldType.SINT32.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19979a[WireFormat.FieldType.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19979a[WireFormat.FieldType.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f19979a[WireFormat.FieldType.INT64.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f19979a[WireFormat.FieldType.SFIXED64.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f19979a[WireFormat.FieldType.SINT64.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f19979a[WireFormat.FieldType.UINT64.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f19979a[WireFormat.FieldType.STRING.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    public C6339l(CodedOutputStream codedOutputStream) {
        C6381y.m21007a(codedOutputStream, "output");
        CodedOutputStream codedOutputStream2 = codedOutputStream;
        this.f19978a = codedOutputStream2;
        codedOutputStream2.f31107a = this;
    }

    /* renamed from: a */
    public static C6339l m21274a(CodedOutputStream codedOutputStream) {
        C6339l lVar = codedOutputStream.f31107a;
        return lVar != null ? lVar : new C6339l(codedOutputStream);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: a */
    public Writer.FieldOrder mo6838a() {
        return Writer.FieldOrder.ASCENDING;
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: a */
    public void mo6837a(int i) throws IOException {
        this.f19978a.mo6965f(i, 3);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: a */
    public void mo6836a(int i, double d) throws IOException {
        this.f19978a.m7080a(i, d);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: a */
    public void mo6835a(int i, float f) throws IOException {
        this.f19978a.m7079a(i, f);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: a */
    public void mo6834a(int i, int i2) throws IOException {
        this.f19978a.mo6964g(i, i2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: a */
    public void mo6833a(int i, long j) throws IOException {
        this.f19978a.mo6992a(i, j);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: a */
    public <K, V> void mo6832a(int i, C6319h0.C6320a<K, V> aVar, Map<K, V> map) throws IOException {
        if (this.f19978a.m7053c()) {
            m21270d(i, aVar, map);
            return;
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f19978a.mo6965f(i, 2);
            this.f19978a.mo6966f(C6319h0.m21478a(aVar, entry.getKey(), entry.getValue()));
            C6319h0.m21477a(this.f19978a, aVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: a */
    public void mo6831a(int i, ByteString byteString) throws IOException {
        this.f19978a.mo6991a(i, byteString);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: a */
    public final void mo6830a(int i, Object obj) throws IOException {
        if (obj instanceof ByteString) {
            this.f19978a.mo6978b(i, (ByteString) obj);
        } else {
            this.f19978a.mo6980b(i, (AbstractC6354n0) obj);
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: a */
    public void mo6829a(int i, Object obj, AbstractC6287c1 c1Var) throws IOException {
        this.f19978a.mo6979b(i, (AbstractC6354n0) obj, c1Var);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: a */
    public void mo6828a(int i, String str) throws IOException {
        this.f19978a.mo6990a(i, str);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: a */
    public void mo6827a(int i, List<String> list) throws IOException {
        if (list instanceof AbstractC6289d0) {
            AbstractC6289d0 d0Var = (AbstractC6289d0) list;
            for (int i2 = 0; i2 < list.size(); i2++) {
                m21272b(i, d0Var.mo21262d(i2));
            }
            return;
        }
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f19978a.mo6990a(i, list.get(i3));
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: a */
    public void mo6826a(int i, List<?> list, AbstractC6287c1 c1Var) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo6829a(i, list.get(i2), c1Var);
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: a */
    public void mo6825a(int i, List<Float> list, boolean z) throws IOException {
        if (z) {
            this.f19978a.mo6965f(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m7066b(list.get(i3).floatValue());
            }
            this.f19978a.mo6966f(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19978a.m7082a(list.get(i4).floatValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19978a.m7079a(i, list.get(i5).floatValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: a */
    public void mo6824a(int i, boolean z) throws IOException {
        this.f19978a.mo6989a(i, z);
    }

    /* renamed from: a */
    public final <V> void m21275a(int i, boolean z, V v, C6319h0.C6320a<Boolean, V> aVar) throws IOException {
        this.f19978a.mo6965f(i, 2);
        this.f19978a.mo6966f(C6319h0.m21478a(aVar, Boolean.valueOf(z), v));
        C6319h0.m21477a(this.f19978a, aVar, Boolean.valueOf(z), v);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: b */
    public void mo6823b(int i) throws IOException {
        this.f19978a.mo6965f(i, 4);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: b */
    public void mo6822b(int i, int i2) throws IOException {
        this.f19978a.mo6981b(i, i2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: b */
    public void mo6821b(int i, long j) throws IOException {
        this.f19978a.mo6970e(i, j);
    }

    /* renamed from: b */
    public final <V> void m21273b(int i, C6319h0.C6320a<Integer, V> aVar, Map<Integer, V> map) throws IOException {
        int size = map.size();
        int[] iArr = new int[size];
        int i2 = 0;
        for (Integer num : map.keySet()) {
            iArr[i2] = num.intValue();
            i2++;
        }
        Arrays.sort(iArr);
        for (int i3 = 0; i3 < size; i3++) {
            int i4 = iArr[i3];
            V v = map.get(Integer.valueOf(i4));
            this.f19978a.mo6965f(i, 2);
            this.f19978a.mo6966f(C6319h0.m21478a(aVar, Integer.valueOf(i4), v));
            C6319h0.m21477a(this.f19978a, aVar, Integer.valueOf(i4), v);
        }
    }

    /* renamed from: b */
    public final void m21272b(int i, Object obj) throws IOException {
        if (obj instanceof String) {
            this.f19978a.mo6990a(i, (String) obj);
        } else {
            this.f19978a.mo6991a(i, (ByteString) obj);
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: b */
    public void mo6820b(int i, Object obj, AbstractC6287c1 c1Var) throws IOException {
        this.f19978a.m7075a(i, (AbstractC6354n0) obj, c1Var);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: b */
    public void mo6819b(int i, List<ByteString> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f19978a.mo6991a(i, list.get(i2));
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: b */
    public void mo6818b(int i, List<?> list, AbstractC6287c1 c1Var) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo6820b(i, list.get(i2), c1Var);
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: b */
    public void mo6817b(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f19978a.mo6965f(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m7024h(list.get(i3).longValue());
            }
            this.f19978a.mo6966f(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19978a.m7048c(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19978a.m7052c(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: c */
    public void mo6816c(int i, int i2) throws IOException {
        this.f19978a.m7042d(i, i2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: c */
    public void mo6815c(int i, long j) throws IOException {
        this.f19978a.m7063b(i, j);
    }

    /* renamed from: c */
    public final <V> void m21271c(int i, C6319h0.C6320a<Long, V> aVar, Map<Long, V> map) throws IOException {
        int size = map.size();
        long[] jArr = new long[size];
        int i2 = 0;
        for (Long l : map.keySet()) {
            jArr[i2] = l.longValue();
            i2++;
        }
        Arrays.sort(jArr);
        for (int i3 = 0; i3 < size; i3++) {
            long j = jArr[i3];
            V v = map.get(Long.valueOf(j));
            this.f19978a.mo6965f(i, 2);
            this.f19978a.mo6966f(C6319h0.m21478a(aVar, Long.valueOf(j), v));
            C6319h0.m21477a(this.f19978a, aVar, Long.valueOf(j), v);
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: c */
    public void mo6814c(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f19978a.mo6965f(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m7016j(list.get(i3).longValue());
            }
            this.f19978a.mo6966f(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19978a.mo6968e(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19978a.mo6970e(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: d */
    public void mo6813d(int i, int i2) throws IOException {
        this.f19978a.mo6973c(i, i2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: d */
    public void mo6812d(int i, long j) throws IOException {
        this.f19978a.m7052c(i, j);
    }

    /* renamed from: d */
    public final <K, V> void m21270d(int i, C6319h0.C6320a<K, V> aVar, Map<K, V> map) throws IOException {
        switch (C6340a.f19979a[aVar.f19928a.ordinal()]) {
            case 1:
                V v = map.get(Boolean.FALSE);
                if (v != null) {
                    m21275a(i, false, v, aVar);
                }
                V v2 = map.get(Boolean.TRUE);
                if (v2 != null) {
                    m21275a(i, true, v2, aVar);
                    return;
                }
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                m21273b(i, aVar, map);
                return;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                m21271c(i, aVar, map);
                return;
            case 12:
                m21269e(i, aVar, map);
                return;
            default:
                throw new IllegalArgumentException("does not support key type: " + aVar.f19928a);
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: d */
    public void mo6811d(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f19978a.mo6965f(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m7023i(list.get(i3).intValue());
            }
            this.f19978a.mo6966f(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19978a.mo6974c(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19978a.mo6973c(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: e */
    public void mo6810e(int i, int i2) throws IOException {
        this.f19978a.m7078a(i, i2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: e */
    public void mo6809e(int i, long j) throws IOException {
        this.f19978a.m7041d(i, j);
    }

    /* renamed from: e */
    public final <V> void m21269e(int i, C6319h0.C6320a<String, V> aVar, Map<String, V> map) throws IOException {
        int size = map.size();
        String[] strArr = new String[size];
        int i2 = 0;
        for (String str : map.keySet()) {
            strArr[i2] = str;
            i2++;
        }
        Arrays.sort(strArr);
        for (int i3 = 0; i3 < size; i3++) {
            String str2 = strArr[i3];
            V v = map.get(str2);
            this.f19978a.mo6965f(i, 2);
            this.f19978a.mo6966f(C6319h0.m21478a(aVar, str2, v));
            C6319h0.m21477a(this.f19978a, aVar, str2, v);
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: e */
    public void mo6808e(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f19978a.mo6965f(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m7031f(list.get(i3).longValue());
            }
            this.f19978a.mo6966f(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19978a.mo6988a(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19978a.mo6992a(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: f */
    public void mo6807f(int i, int i2) throws IOException {
        this.f19978a.m7033e(i, i2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: f */
    public void mo6806f(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f19978a.mo6965f(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m7010m(list.get(i3).intValue());
            }
            this.f19978a.mo6966f(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19978a.m7043d(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19978a.m7042d(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: g */
    public void mo6805g(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f19978a.mo6965f(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m7027h(list.get(i3).intValue());
            }
            this.f19978a.mo6966f(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19978a.mo6982b(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19978a.mo6981b(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: h */
    public void mo6804h(int i, List<Boolean> list, boolean z) throws IOException {
        if (z) {
            this.f19978a.mo6965f(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m7055b(list.get(i3).booleanValue());
            }
            this.f19978a.mo6966f(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19978a.m7069a(list.get(i4).booleanValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19978a.mo6989a(i, list.get(i5).booleanValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: i */
    public void mo6803i(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f19978a.mo6965f(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m7006p(list.get(i3).intValue());
            }
            this.f19978a.mo6966f(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19978a.mo6966f(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19978a.mo6964g(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: j */
    public void mo6802j(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f19978a.mo6965f(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m7020i(list.get(i3).longValue());
            }
            this.f19978a.mo6966f(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19978a.m7037d(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19978a.m7041d(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: k */
    public void mo6801k(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f19978a.mo6965f(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m7008n(list.get(i3).intValue());
            }
            this.f19978a.mo6966f(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19978a.m7034e(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19978a.m7033e(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: l */
    public void mo6800l(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f19978a.mo6965f(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m7028g(list.get(i3).longValue());
            }
            this.f19978a.mo6966f(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19978a.m7059b(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19978a.m7063b(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: m */
    public void mo6799m(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f19978a.mo6965f(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m7030g(list.get(i3).intValue());
            }
            this.f19978a.mo6966f(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19978a.m7081a(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19978a.m7078a(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: n */
    public void mo6798n(int i, List<Double> list, boolean z) throws IOException {
        if (z) {
            this.f19978a.mo6965f(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m7067b(list.get(i3).doubleValue());
            }
            this.f19978a.mo6966f(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19978a.m7083a(list.get(i4).doubleValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19978a.m7080a(i, list.get(i5).doubleValue());
        }
    }
}

package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzbb;
import com.google.android.gms.internal.clearcut.zzbn;
import com.google.android.gms.internal.clearcut.zzca;
import com.google.android.gms.internal.clearcut.zzci;
import com.google.android.gms.internal.clearcut.zzcj;
import com.google.android.gms.internal.clearcut.zzcr;
import com.google.android.gms.internal.clearcut.zzdo;
import com.google.android.gms.internal.clearcut.zzdv;
import com.google.android.gms.internal.clearcut.zzfl;
import com.google.android.gms.internal.clearcut.zzfq;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.c.f0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/f0.class */
public final class C4341f0<FieldDescriptorType extends zzca<FieldDescriptorType>> {

    /* renamed from: d */
    public static final C4341f0 f16509d = new C4341f0(true);

    /* renamed from: b */
    public boolean f16511b;

    /* renamed from: c */
    public boolean f16512c = false;

    /* renamed from: a */
    public final C4406r1<FieldDescriptorType, Object> f16510a = C4406r1.m25657c(16);

    public C4341f0() {
    }

    public C4341f0(boolean z) {
        m25921h();
    }

    /* renamed from: a */
    public static int m25935a(zzfl zzflVar, int i, Object obj) {
        int e = zzbn.m10793e(i);
        int i2 = e;
        if (zzflVar == zzfl.GROUP) {
            zzci.m10702a((zzdo) obj);
            i2 = e << 1;
        }
        return i2 + m25929b(zzflVar, obj);
    }

    /* renamed from: a */
    public static Object m25933a(Object obj) {
        if (obj instanceof zzdv) {
            return ((zzdv) obj).m10675y();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* renamed from: a */
    public static void m25938a(zzbn zzbnVar, zzfl zzflVar, int i, Object obj) throws IOException {
        if (zzflVar == zzfl.GROUP) {
            zzdo zzdoVar = (zzdo) obj;
            zzci.m10702a(zzdoVar);
            zzbnVar.mo10763a(i, 3);
            zzdoVar.mo10684a(zzbnVar);
            zzbnVar.mo10763a(i, 4);
            return;
        }
        zzbnVar.mo10763a(i, zzflVar.zzel());
        switch (C4346g0.f16518b[zzflVar.ordinal()]) {
            case 1:
                zzbnVar.m10830a(((Double) obj).doubleValue());
                return;
            case 2:
                zzbnVar.m10829a(((Float) obj).floatValue());
                return;
            case 3:
                zzbnVar.mo10756a(((Long) obj).longValue());
                return;
            case 4:
                zzbnVar.mo10756a(((Long) obj).longValue());
                return;
            case 5:
                zzbnVar.mo10764a(((Integer) obj).intValue());
                return;
            case 6:
                zzbnVar.mo10742c(((Long) obj).longValue());
                return;
            case 7:
                zzbnVar.mo10740d(((Integer) obj).intValue());
                return;
            case 8:
                zzbnVar.m10821a(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzdo) obj).mo10684a(zzbnVar);
                return;
            case 10:
                zzbnVar.mo10754a((zzdo) obj);
                return;
            case 11:
                if (obj instanceof zzbb) {
                    zzbnVar.mo10755a((zzbb) obj);
                    return;
                } else {
                    zzbnVar.mo10753a((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzbb) {
                    zzbnVar.mo10755a((zzbb) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzbnVar.mo10741c(bArr, 0, bArr.length);
                return;
            case 13:
                zzbnVar.mo10750b(((Integer) obj).intValue());
                return;
            case 14:
                zzbnVar.mo10740d(((Integer) obj).intValue());
                return;
            case 15:
                zzbnVar.mo10742c(((Long) obj).longValue());
                return;
            case 16:
                zzbnVar.m10803c(((Integer) obj).intValue());
                return;
            case 17:
                zzbnVar.m10810b(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzcj) {
                    zzbnVar.mo10764a(((zzcj) obj).zzc());
                    return;
                } else {
                    zzbnVar.mo10764a(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* renamed from: a */
    public static void m25934a(zzfl zzflVar, Object obj) {
        zzci.m10701a(obj);
        boolean z = false;
        switch (C4346g0.f16517a[zzflVar.zzek().ordinal()]) {
            case 1:
                z = obj instanceof Integer;
                break;
            case 2:
                z = obj instanceof Long;
                break;
            case 3:
                z = obj instanceof Float;
                break;
            case 4:
                z = obj instanceof Double;
                break;
            case 5:
                z = obj instanceof Boolean;
                break;
            case 6:
                z = obj instanceof String;
                break;
            case 7:
                z = true;
                if (!(obj instanceof zzbb)) {
                    if (obj instanceof byte[]) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 8:
                z = true;
                if (!(obj instanceof Integer)) {
                    if (obj instanceof zzcj) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 9:
                z = true;
                if (!(obj instanceof zzdo)) {
                    if (obj instanceof zzcr) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
        }
        if (!z) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    /* renamed from: b */
    public static int m25930b(zzca<?> zzcaVar, Object obj) {
        zzfl C = zzcaVar.mo10718C();
        int zzc = zzcaVar.zzc();
        if (!zzcaVar.mo10713t()) {
            return m25935a(C, zzc, obj);
        }
        int i = 0;
        int i2 = 0;
        List<Object> list = (List) obj;
        if (zzcaVar.mo10715m()) {
            for (Object obj2 : list) {
                i2 += m25929b(C, obj2);
            }
            return zzbn.m10793e(zzc) + i2 + zzbn.m10770m(i2);
        }
        for (Object obj3 : list) {
            i += m25935a(C, zzc, obj3);
        }
        return i;
    }

    /* renamed from: b */
    public static int m25929b(zzfl zzflVar, Object obj) {
        switch (C4346g0.f16518b[zzflVar.ordinal()]) {
            case 1:
                return zzbn.m10819b(((Double) obj).doubleValue());
            case 2:
                return zzbn.m10818b(((Float) obj).floatValue());
            case 3:
                return zzbn.m10794d(((Long) obj).longValue());
            case 4:
                return zzbn.m10791e(((Long) obj).longValue());
            case 5:
                return zzbn.m10790f(((Integer) obj).intValue());
            case 6:
                return zzbn.m10783g(((Long) obj).longValue());
            case 7:
                return zzbn.m10778i(((Integer) obj).intValue());
            case 8:
                return zzbn.m10806b(((Boolean) obj).booleanValue());
            case 9:
                return zzbn.m10799c((zzdo) obj);
            case 10:
                return obj instanceof zzcr ? zzbn.m10825a((zzcr) obj) : zzbn.m10808b((zzdo) obj);
            case 11:
                return obj instanceof zzbb ? zzbn.m10809b((zzbb) obj) : zzbn.m10807b((String) obj);
            case 12:
                return obj instanceof zzbb ? zzbn.m10809b((zzbb) obj) : zzbn.m10805b((byte[]) obj);
            case 13:
                return zzbn.m10786g(((Integer) obj).intValue());
            case 14:
                return zzbn.m10775j(((Integer) obj).intValue());
            case 15:
                return zzbn.m10779h(((Long) obj).longValue());
            case 16:
                return zzbn.m10782h(((Integer) obj).intValue());
            case 17:
                return zzbn.m10787f(((Long) obj).longValue());
            case 18:
                return obj instanceof zzcj ? zzbn.m10773k(((zzcj) obj).zzc()) : zzbn.m10773k(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: b */
    public static boolean m25928b(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.mo10714q() != zzfq.MESSAGE) {
            return true;
        }
        boolean t = key.mo10713t();
        Object value = entry.getValue();
        if (t) {
            for (zzdo zzdoVar : (List) value) {
                if (!zzdoVar.isInitialized()) {
                    return false;
                }
            }
            return true;
        } else if (value instanceof zzdo) {
            return ((zzdo) value).isInitialized();
        } else {
            if (value instanceof zzcr) {
                return true;
            }
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    /* renamed from: c */
    public static int m25926c(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (key.mo10714q() != zzfq.MESSAGE || key.mo10713t() || key.mo10715m()) {
            return m25930b((zzca<?>) key, value);
        }
        boolean z = value instanceof zzcr;
        int zzc = entry.getKey().zzc();
        return z ? zzbn.m10814b(zzc, (zzcr) value) : zzbn.m10795d(zzc, (zzdo) value);
    }

    /* renamed from: i */
    public static <T extends zzca<T>> C4341f0<T> m25920i() {
        return f16509d;
    }

    /* renamed from: a */
    public final Object m25937a(FieldDescriptorType fielddescriptortype) {
        Object obj = this.f16510a.get(fielddescriptortype);
        if (!(obj instanceof zzcr)) {
            return obj;
        }
        zzcr.m10693c();
        throw null;
    }

    /* renamed from: a */
    public final Iterator<Map.Entry<FieldDescriptorType, Object>> m25940a() {
        return this.f16512c ? new C4385n0(this.f16510a.m25655d().iterator()) : this.f16510a.m25655d().iterator();
    }

    /* renamed from: a */
    public final void m25939a(C4341f0<FieldDescriptorType> f0Var) {
        for (int i = 0; i < f0Var.f16510a.m25661b(); i++) {
            m25932a((Map.Entry) f0Var.f16510a.m25666a(i));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : f0Var.f16510a.m25658c()) {
            m25932a((Map.Entry) entry);
        }
    }

    /* renamed from: a */
    public final void m25936a(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.mo10713t()) {
            m25934a(fielddescriptortype.mo10718C(), obj);
        } else if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                m25934a(fielddescriptortype.mo10718C(), obj2);
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof zzcr) {
            this.f16512c = true;
        }
        this.f16510a.m25662a((C4406r1<FieldDescriptorType, Object>) fielddescriptortype, (FieldDescriptorType) obj);
    }

    /* renamed from: a */
    public final void m25932a(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof zzcr) {
            zzcr.m10693c();
            throw null;
        } else if (key.mo10713t()) {
            Object a = m25937a((C4341f0<FieldDescriptorType>) key);
            Object obj = a;
            if (a == null) {
                obj = new ArrayList();
            }
            for (Object obj2 : (List) value) {
                ((List) obj).add(m25933a(obj2));
            }
            this.f16510a.m25662a((C4406r1<FieldDescriptorType, Object>) key, (FieldDescriptorType) obj);
        } else if (key.mo10714q() == zzfq.MESSAGE) {
            Object a2 = m25937a((C4341f0<FieldDescriptorType>) key);
            if (a2 == null) {
                this.f16510a.m25662a((C4406r1<FieldDescriptorType, Object>) key, (FieldDescriptorType) m25933a(value));
            } else {
                this.f16510a.m25662a((C4406r1<FieldDescriptorType, Object>) key, (FieldDescriptorType) (a2 instanceof zzdv ? key.mo10716a((zzdv) a2, (zzdv) value) : key.mo10717a(((zzdo) a2).mo10683c(), (zzdo) value).mo10678d()));
            }
        } else {
            this.f16510a.m25662a((C4406r1<FieldDescriptorType, Object>) key, (FieldDescriptorType) m25933a(value));
        }
    }

    /* renamed from: b */
    public final boolean m25931b() {
        return this.f16510a.isEmpty();
    }

    /* renamed from: c */
    public final boolean m25927c() {
        return this.f16511b;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        C4341f0 f0Var = new C4341f0();
        for (int i = 0; i < this.f16510a.m25661b(); i++) {
            Map.Entry<FieldDescriptorType, Object> a = this.f16510a.m25666a(i);
            f0Var.m25936a((C4341f0) a.getKey(), a.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f16510a.m25658c()) {
            f0Var.m25936a((C4341f0) entry.getKey(), entry.getValue());
        }
        f0Var.f16512c = this.f16512c;
        return f0Var;
    }

    /* renamed from: d */
    public final boolean m25925d() {
        for (int i = 0; i < this.f16510a.m25661b(); i++) {
            if (!m25928b(this.f16510a.m25666a(i))) {
                return false;
            }
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f16510a.m25658c()) {
            if (!m25928b(entry)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: e */
    public final Iterator<Map.Entry<FieldDescriptorType, Object>> m25924e() {
        return this.f16512c ? new C4385n0(this.f16510a.entrySet().iterator()) : this.f16510a.entrySet().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4341f0)) {
            return false;
        }
        return this.f16510a.equals(((C4341f0) obj).f16510a);
    }

    /* renamed from: f */
    public final int m25923f() {
        int i = 0;
        for (int i2 = 0; i2 < this.f16510a.m25661b(); i2++) {
            Map.Entry<FieldDescriptorType, Object> a = this.f16510a.m25666a(i2);
            i += m25930b((zzca<?>) a.getKey(), a.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f16510a.m25658c()) {
            i += m25930b((zzca<?>) entry.getKey(), entry.getValue());
        }
        return i;
    }

    /* renamed from: g */
    public final int m25922g() {
        int i = 0;
        for (int i2 = 0; i2 < this.f16510a.m25661b(); i2++) {
            i += m25926c(this.f16510a.m25666a(i2));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f16510a.m25658c()) {
            i += m25926c(entry);
        }
        return i;
    }

    /* renamed from: h */
    public final void m25921h() {
        if (!this.f16511b) {
            this.f16510a.mo25645g();
            this.f16511b = true;
        }
    }

    public final int hashCode() {
        return this.f16510a.hashCode();
    }
}

package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzgp;
import com.google.android.gms.internal.measurement.zzhi;
import com.google.android.gms.internal.measurement.zzht;
import com.google.android.gms.internal.measurement.zzia;
import com.google.android.gms.internal.measurement.zzid;
import com.google.android.gms.internal.measurement.zzik;
import com.google.android.gms.internal.measurement.zzjj;
import com.google.android.gms.internal.measurement.zzjo;
import com.google.android.gms.internal.measurement.zzlg;
import com.google.android.gms.internal.measurement.zzln;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.f.d3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/d3.class */
public final class C4478d3<T extends zzht<T>> {

    /* renamed from: d */
    public static final C4478d3 f16726d = new C4478d3(true);

    /* renamed from: a */
    public final C4567p4<T, Object> f16727a;

    /* renamed from: b */
    public boolean f16728b;

    /* renamed from: c */
    public boolean f16729c;

    public C4478d3() {
        this.f16727a = C4567p4.m25327c(16);
    }

    public C4478d3(C4567p4<T, Object> p4Var) {
        this.f16727a = p4Var;
        m25518a();
    }

    public C4478d3(boolean z) {
        this(C4567p4.m25327c(0));
        m25518a();
    }

    /* renamed from: a */
    public static int m25513a(zzlg zzlgVar, int i, Object obj) {
        int e = zzhi.m9725e(i);
        int i2 = e;
        if (zzlgVar == zzlg.GROUP) {
            zzia.m9639a((zzjj) obj);
            i2 = e << 1;
        }
        return i2 + m25507b(zzlgVar, obj);
    }

    /* renamed from: a */
    public static Object m25511a(Object obj) {
        if (obj instanceof zzjo) {
            return ((zzjo) obj).zza();
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
    public static void m25516a(zzhi zzhiVar, zzlg zzlgVar, int i, Object obj) throws IOException {
        if (zzlgVar == zzlg.GROUP) {
            zzjj zzjjVar = (zzjj) obj;
            zzia.m9639a(zzjjVar);
            zzhiVar.mo9698a(i, 3);
            zzjjVar.mo9616a(zzhiVar);
            zzhiVar.mo9698a(i, 4);
            return;
        }
        zzhiVar.mo9698a(i, zzlgVar.zzb());
        switch (C4471c3.f16700b[zzlgVar.ordinal()]) {
            case 1:
                zzhiVar.m9761a(((Double) obj).doubleValue());
                return;
            case 2:
                zzhiVar.m9760a(((Float) obj).floatValue());
                return;
            case 3:
                zzhiVar.mo9691a(((Long) obj).longValue());
                return;
            case 4:
                zzhiVar.mo9691a(((Long) obj).longValue());
                return;
            case 5:
                zzhiVar.mo9699a(((Integer) obj).intValue());
                return;
            case 6:
                zzhiVar.mo9680c(((Long) obj).longValue());
                return;
            case 7:
                zzhiVar.mo9678d(((Integer) obj).intValue());
                return;
            case 8:
                zzhiVar.m9753a(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzjj) obj).mo9616a(zzhiVar);
                return;
            case 10:
                zzhiVar.mo9689a((zzjj) obj);
                return;
            case 11:
                if (obj instanceof zzgp) {
                    zzhiVar.mo9690a((zzgp) obj);
                    return;
                } else {
                    zzhiVar.mo9688a((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzgp) {
                    zzhiVar.mo9690a((zzgp) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzhiVar.mo9683b(bArr, 0, bArr.length);
                return;
            case 13:
                zzhiVar.mo9686b(((Integer) obj).intValue());
                return;
            case 14:
                zzhiVar.mo9678d(((Integer) obj).intValue());
                return;
            case 15:
                zzhiVar.mo9680c(((Long) obj).longValue());
                return;
            case 16:
                zzhiVar.m9733c(((Integer) obj).intValue());
                return;
            case 17:
                zzhiVar.m9740b(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzid) {
                    zzhiVar.mo9699a(((zzid) obj).zza());
                    return;
                } else {
                    zzhiVar.mo9699a(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static void m25512a(zzlg zzlgVar, Object obj) {
        boolean z;
        zzia.m9638a(obj);
        switch (C4471c3.f16699a[zzlgVar.zza().ordinal()]) {
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
                if (!(obj instanceof zzgp)) {
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
                    if (obj instanceof zzid) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 9:
                z = true;
                if (!(obj instanceof zzjj)) {
                    if (obj instanceof zzik) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            default:
                z = false;
                break;
        }
        if (!z) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    /* renamed from: b */
    public static int m25508b(zzht<?> zzhtVar, Object obj) {
        zzlg zzb = zzhtVar.zzb();
        int zza = zzhtVar.zza();
        if (!zzhtVar.zzd()) {
            return m25513a(zzb, zza, obj);
        }
        int i = 0;
        int i2 = 0;
        if (zzhtVar.mo9656c()) {
            for (Object obj2 : (List) obj) {
                i2 += m25507b(zzb, obj2);
            }
            return zzhi.m9725e(zza) + i2 + zzhi.m9703l(i2);
        }
        for (Object obj3 : (List) obj) {
            i += m25513a(zzb, zza, obj3);
        }
        return i;
    }

    /* renamed from: b */
    public static int m25507b(zzlg zzlgVar, Object obj) {
        switch (C4471c3.f16700b[zzlgVar.ordinal()]) {
            case 1:
                return zzhi.m9750b(((Double) obj).doubleValue());
            case 2:
                return zzhi.m9749b(((Float) obj).floatValue());
            case 3:
                return zzhi.m9726d(((Long) obj).longValue());
            case 4:
                return zzhi.m9723e(((Long) obj).longValue());
            case 5:
                return zzhi.m9722f(((Integer) obj).intValue());
            case 6:
                return zzhi.m9715g(((Long) obj).longValue());
            case 7:
                return zzhi.m9710i(((Integer) obj).intValue());
            case 8:
                return zzhi.m9736b(((Boolean) obj).booleanValue());
            case 9:
                return zzhi.m9730c((zzjj) obj);
            case 10:
                return obj instanceof zzik ? zzhi.m9756a((zzik) obj) : zzhi.m9738b((zzjj) obj);
            case 11:
                return obj instanceof zzgp ? zzhi.m9739b((zzgp) obj) : zzhi.m9737b((String) obj);
            case 12:
                return obj instanceof zzgp ? zzhi.m9739b((zzgp) obj) : zzhi.m9735b((byte[]) obj);
            case 13:
                return zzhi.m9718g(((Integer) obj).intValue());
            case 14:
                return zzhi.m9707j(((Integer) obj).intValue());
            case 15:
                return zzhi.m9711h(((Long) obj).longValue());
            case 16:
                return zzhi.m9714h(((Integer) obj).intValue());
            case 17:
                return zzhi.m9719f(((Long) obj).longValue());
            case 18:
                return obj instanceof zzid ? zzhi.m9705k(((zzid) obj).zza()) : zzhi.m9705k(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: b */
    public static <T extends zzht<T>> boolean m25506b(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zzc() != zzln.MESSAGE) {
            return true;
        }
        if (key.zzd()) {
            for (zzjj zzjjVar : (List) entry.getValue()) {
                if (!zzjjVar.mo9611g()) {
                    return false;
                }
            }
            return true;
        }
        Object value = entry.getValue();
        if (value instanceof zzjj) {
            return ((zzjj) value).mo9611g();
        }
        if (value instanceof zzik) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    /* renamed from: c */
    public static int m25504c(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.zzc() != zzln.MESSAGE || key.zzd() || key.mo9656c()) ? m25508b((zzht<?>) key, value) : value instanceof zzik ? zzhi.m9745b(entry.getKey().zza(), (zzik) value) : zzhi.m9744b(entry.getKey().zza(), (zzjj) value);
    }

    /* renamed from: g */
    public static <T extends zzht<T>> C4478d3<T> m25500g() {
        return f16726d;
    }

    /* renamed from: a */
    public final Object m25515a(T t) {
        Object obj = this.f16727a.get(t);
        if (!(obj instanceof zzik)) {
            return obj;
        }
        zzik zzikVar = (zzik) obj;
        zzik.m9630c();
        throw null;
    }

    /* renamed from: a */
    public final void m25518a() {
        if (!this.f16728b) {
            this.f16727a.mo25240a();
            this.f16728b = true;
        }
    }

    /* renamed from: a */
    public final void m25517a(C4478d3<T> d3Var) {
        for (int i = 0; i < d3Var.f16727a.m25328c(); i++) {
            m25510a((Map.Entry) d3Var.f16727a.m25336a(i));
        }
        for (Map.Entry<T, Object> entry : d3Var.f16727a.m25325d()) {
            m25510a((Map.Entry) entry);
        }
    }

    /* renamed from: a */
    public final void m25514a(T t, Object obj) {
        if (!t.zzd()) {
            m25512a(t.zzb(), obj);
        } else if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                m25512a(t.zzb(), obj2);
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof zzik) {
            this.f16729c = true;
        }
        this.f16727a.m25332a((C4567p4<T, Object>) t, (T) obj);
    }

    /* renamed from: a */
    public final void m25510a(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof zzik) {
            zzik zzikVar = (zzik) value;
            zzik.m9630c();
            throw null;
        } else if (key.zzd()) {
            Object a = m25515a((C4478d3<T>) key);
            Object obj = a;
            if (a == null) {
                obj = new ArrayList();
            }
            for (Object obj2 : (List) value) {
                ((List) obj).add(m25511a(obj2));
            }
            this.f16727a.m25332a((C4567p4<T, Object>) key, (T) obj);
        } else if (key.zzc() == zzln.MESSAGE) {
            Object a2 = m25515a((C4478d3<T>) key);
            if (a2 == null) {
                this.f16727a.m25332a((C4567p4<T, Object>) key, (T) m25511a(value));
            } else {
                this.f16727a.m25332a((C4567p4<T, Object>) key, (T) (a2 instanceof zzjo ? key.mo9657a((zzjo) a2, (zzjo) value) : key.mo9658a(((zzjj) a2).mo9613e(), (zzjj) value).mo9619b()));
            }
        } else {
            this.f16727a.m25332a((C4567p4<T, Object>) key, (T) m25511a(value));
        }
    }

    /* renamed from: b */
    public final boolean m25509b() {
        return this.f16728b;
    }

    /* renamed from: c */
    public final Iterator<Map.Entry<T, Object>> m25505c() {
        return this.f16729c ? new C4538l3(this.f16727a.entrySet().iterator()) : this.f16727a.entrySet().iterator();
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        C4478d3 d3Var = new C4478d3();
        for (int i = 0; i < this.f16727a.m25328c(); i++) {
            Map.Entry<T, Object> a = this.f16727a.m25336a(i);
            d3Var.m25514a((C4478d3) a.getKey(), a.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f16727a.m25325d()) {
            d3Var.m25514a((C4478d3) entry.getKey(), entry.getValue());
        }
        d3Var.f16729c = this.f16729c;
        return d3Var;
    }

    /* renamed from: d */
    public final Iterator<Map.Entry<T, Object>> m25503d() {
        return this.f16729c ? new C4538l3(this.f16727a.m25323e().iterator()) : this.f16727a.m25323e().iterator();
    }

    /* renamed from: e */
    public final boolean m25502e() {
        for (int i = 0; i < this.f16727a.m25328c(); i++) {
            if (!m25506b(this.f16727a.m25336a(i))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.f16727a.m25325d()) {
            if (!m25506b(entry)) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4478d3)) {
            return false;
        }
        return this.f16727a.equals(((C4478d3) obj).f16727a);
    }

    /* renamed from: f */
    public final int m25501f() {
        int i = 0;
        for (int i2 = 0; i2 < this.f16727a.m25328c(); i2++) {
            i += m25504c(this.f16727a.m25336a(i2));
        }
        for (Map.Entry<T, Object> entry : this.f16727a.m25325d()) {
            i += m25504c(entry);
        }
        return i;
    }

    public final int hashCode() {
        return this.f16727a.hashCode();
    }
}

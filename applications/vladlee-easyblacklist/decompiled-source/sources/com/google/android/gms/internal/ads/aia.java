package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdro;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aia.class */
public final class aia<T extends zzdro<T>> {

    /* renamed from: d */
    private static final aia f7397d = new aia((byte) 0);

    /* renamed from: a */
    final ajp<T, Object> f7398a;

    /* renamed from: b */
    private boolean f7399b;

    /* renamed from: c */
    private boolean f7400c;

    private aia() {
        this.f7398a = ajp.m5174a(16);
    }

    private aia(byte b) {
        this(ajp.m5174a(0));
        m5344b();
    }

    private aia(ajp<T, Object> ajpVar) {
        this.f7398a = ajpVar;
        m5344b();
    }

    /* renamed from: a */
    public static int m5349a(zzdro<?> zzdroVar, Object obj) {
        zzdvf zzazo = zzdroVar.zzazo();
        int zzae = zzdroVar.zzae();
        if (!zzdroVar.zzazq()) {
            return m5348a(zzazo, zzae, obj);
        }
        int i = 0;
        int i2 = 0;
        List<Object> list = (List) obj;
        if (zzdroVar.zzazr()) {
            for (Object obj2 : list) {
                i2 += m5342b(zzazo, obj2);
            }
            return zzdrb.zzfz(zzae) + i2 + zzdrb.zzgh(i2);
        }
        for (Object obj3 : list) {
            i += m5348a(zzazo, zzae, obj3);
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m5348a(zzdvf zzdvfVar, int i, Object obj) {
        int zzfz = zzdrb.zzfz(i);
        int i2 = zzfz;
        if (zzdvfVar == zzdvf.GROUP) {
            zzdrv.m3353a();
            i2 = zzfz << 1;
        }
        return i2 + m5342b(zzdvfVar, obj);
    }

    /* renamed from: a */
    public static <T extends zzdro<T>> aia<T> m5353a() {
        return f7397d;
    }

    /* renamed from: a */
    private final Object m5350a(T t) {
        Object obj = this.f7398a.get(t);
        Object obj2 = obj;
        if (obj instanceof zzdsf) {
            obj2 = zzdsf.zzbas();
        }
        return obj2;
    }

    /* renamed from: a */
    private static Object m5346a(Object obj) {
        if (obj instanceof zzdtj) {
            return ((zzdtj) obj).zzaxm();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m5351a(zzdrb zzdrbVar, zzdvf zzdvfVar, int i, Object obj) {
        if (zzdvfVar == zzdvf.GROUP) {
            zzdrv.m3353a();
            zzdrbVar.zzaa(i, 3);
            ((zzdte) obj).zzb(zzdrbVar);
            zzdrbVar.zzaa(i, 4);
            return;
        }
        zzdrbVar.zzaa(i, zzdvfVar.zzbcq());
        switch (ahz.f7394b[zzdvfVar.ordinal()]) {
            case 1:
                zzdrbVar.zzb(((Double) obj).doubleValue());
                return;
            case 2:
                zzdrbVar.zzf(((Float) obj).floatValue());
                return;
            case 3:
                zzdrbVar.zzfg(((Long) obj).longValue());
                return;
            case 4:
                zzdrbVar.zzfg(((Long) obj).longValue());
                return;
            case 5:
                zzdrbVar.zzfv(((Integer) obj).intValue());
                return;
            case 6:
                zzdrbVar.zzfi(((Long) obj).longValue());
                return;
            case 7:
                zzdrbVar.zzfy(((Integer) obj).intValue());
                return;
            case 8:
                zzdrbVar.zzbn(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzdte) obj).zzb(zzdrbVar);
                return;
            case 10:
                zzdrbVar.zzg((zzdte) obj);
                return;
            case 11:
                if (obj instanceof zzdqk) {
                    zzdrbVar.zzbe((zzdqk) obj);
                    return;
                } else {
                    zzdrbVar.zzhg((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzdqk) {
                    zzdrbVar.zzbe((zzdqk) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzdrbVar.mo3379a(bArr, bArr.length);
                return;
            case 13:
                zzdrbVar.zzfw(((Integer) obj).intValue());
                return;
            case 14:
                zzdrbVar.zzfy(((Integer) obj).intValue());
                return;
            case 15:
                zzdrbVar.zzfi(((Long) obj).longValue());
                return;
            case 16:
                zzdrbVar.zzfx(((Integer) obj).intValue());
                return;
            case 17:
                zzdrbVar.zzfh(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzdry) {
                    zzdrbVar.zzfv(((zzdry) obj).zzae());
                    return;
                } else {
                    zzdrbVar.zzfv(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    private static void m5347a(zzdvf zzdvfVar, Object obj) {
        boolean z;
        zzdrv.m3351a(obj);
        switch (ahz.f7393a[zzdvfVar.zzbcp().ordinal()]) {
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
                if (!(obj instanceof zzdqk)) {
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
                    if (obj instanceof zzdry) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 9:
                z = true;
                if (!(obj instanceof zzdte)) {
                    if (obj instanceof zzdsf) {
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

    /* renamed from: a */
    private static <T extends zzdro<T>> boolean m5345a(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zzazp() != zzdvm.MESSAGE) {
            return true;
        }
        boolean zzazq = key.zzazq();
        Object value = entry.getValue();
        if (zzazq) {
            for (zzdte zzdteVar : (List) value) {
                if (!zzdteVar.isInitialized()) {
                    return false;
                }
            }
            return true;
        } else if (value instanceof zzdte) {
            return ((zzdte) value).isInitialized();
        } else {
            if (value instanceof zzdsf) {
                return true;
            }
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    /* renamed from: b */
    private static int m5342b(zzdvf zzdvfVar, Object obj) {
        switch (ahz.f7394b[zzdvfVar.ordinal()]) {
            case 1:
                return zzdrb.zzc(((Double) obj).doubleValue());
            case 2:
                return zzdrb.zzg(((Float) obj).floatValue());
            case 3:
                return zzdrb.zzfj(((Long) obj).longValue());
            case 4:
                return zzdrb.zzfk(((Long) obj).longValue());
            case 5:
                return zzdrb.zzga(((Integer) obj).intValue());
            case 6:
                return zzdrb.zzfm(((Long) obj).longValue());
            case 7:
                return zzdrb.zzgd(((Integer) obj).intValue());
            case 8:
                return zzdrb.zzbo(((Boolean) obj).booleanValue());
            case 9:
                return zzdrb.zzi((zzdte) obj);
            case 10:
                return obj instanceof zzdsf ? zzdrb.zza((zzdsf) obj) : zzdrb.zzh((zzdte) obj);
            case 11:
                return obj instanceof zzdqk ? zzdrb.zzbf((zzdqk) obj) : zzdrb.zzhh((String) obj);
            case 12:
                return obj instanceof zzdqk ? zzdrb.zzbf((zzdqk) obj) : zzdrb.zzx((byte[]) obj);
            case 13:
                return zzdrb.zzgb(((Integer) obj).intValue());
            case 14:
                return zzdrb.zzge(((Integer) obj).intValue());
            case 15:
                return zzdrb.zzfn(((Long) obj).longValue());
            case 16:
                return zzdrb.zzgc(((Integer) obj).intValue());
            case 17:
                return zzdrb.zzfl(((Long) obj).longValue());
            case 18:
                return obj instanceof zzdry ? zzdrb.zzgf(((zzdry) obj).zzae()) : zzdrb.zzgf(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: b */
    private final void m5343b(T t, Object obj) {
        if (!t.zzazq()) {
            m5347a(t.zzazo(), obj);
        } else if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList2.get(i);
                i++;
                m5347a(t.zzazo(), obj2);
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof zzdsf) {
            this.f7400c = true;
        }
        this.f7398a.m5170a((ajp<T, Object>) t, (T) obj);
    }

    /* renamed from: b */
    private final void m5341b(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        Object obj = value;
        if (value instanceof zzdsf) {
            obj = zzdsf.zzbas();
        }
        if (key.zzazq()) {
            Object a = m5350a((aia<T>) key);
            Object obj2 = a;
            if (a == null) {
                obj2 = new ArrayList();
            }
            for (Object obj3 : (List) obj) {
                ((List) obj2).add(m5346a(obj3));
            }
            this.f7398a.m5170a((ajp<T, Object>) key, (T) obj2);
        } else if (key.zzazp() == zzdvm.MESSAGE) {
            Object a2 = m5350a((aia<T>) key);
            if (a2 == null) {
                this.f7398a.m5170a((ajp<T, Object>) key, (T) m5346a(obj));
            } else {
                this.f7398a.m5170a((ajp<T, Object>) key, (T) (a2 instanceof zzdtj ? key.zza((zzdtj) a2, (zzdtj) obj) : key.zza(((zzdte) a2).zzazx(), (zzdte) obj).zzbaf()));
            }
        } else {
            this.f7398a.m5170a((ajp<T, Object>) key, (T) m5346a(obj));
        }
    }

    /* renamed from: c */
    private static int m5339c(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.zzazp() != zzdvm.MESSAGE || key.zzazq() || key.zzazr()) {
            return m5349a((zzdro<?>) key, value);
        }
        boolean z = value instanceof zzdsf;
        int zzae = entry.getKey().zzae();
        return z ? zzdrb.zzb(zzae, (zzdsf) value) : zzdrb.zzd(zzae, (zzdte) value);
    }

    /* renamed from: a */
    public final void m5352a(aia<T> aiaVar) {
        for (int i = 0; i < aiaVar.f7398a.m5166c(); i++) {
            m5341b(aiaVar.f7398a.m5168b(i));
        }
        for (Map.Entry<T, Object> entry : aiaVar.f7398a.m5163d()) {
            m5341b(entry);
        }
    }

    /* renamed from: b */
    public final void m5344b() {
        if (!this.f7399b) {
            this.f7398a.mo5101a();
            this.f7399b = true;
        }
    }

    /* renamed from: c */
    public final boolean m5340c() {
        return this.f7399b;
    }

    public final /* synthetic */ Object clone() {
        aia aiaVar = new aia();
        for (int i = 0; i < this.f7398a.m5166c(); i++) {
            Map.Entry<T, Object> b = this.f7398a.m5168b(i);
            aiaVar.m5343b((aia) b.getKey(), b.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f7398a.m5163d()) {
            aiaVar.m5343b((aia) entry.getKey(), entry.getValue());
        }
        aiaVar.f7400c = this.f7400c;
        return aiaVar;
    }

    /* renamed from: d */
    public final Iterator<Map.Entry<T, Object>> m5338d() {
        return this.f7400c ? new aii(this.f7398a.entrySet().iterator()) : this.f7398a.entrySet().iterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final Iterator<Map.Entry<T, Object>> m5337e() {
        return this.f7400c ? new aii(this.f7398a.m5161e().iterator()) : this.f7398a.m5161e().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof aia)) {
            return false;
        }
        return this.f7398a.equals(((aia) obj).f7398a);
    }

    /* renamed from: f */
    public final boolean m5336f() {
        for (int i = 0; i < this.f7398a.m5166c(); i++) {
            if (!m5345a((Map.Entry) this.f7398a.m5168b(i))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.f7398a.m5163d()) {
            if (!m5345a((Map.Entry) entry)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final int m5335g() {
        int i = 0;
        for (int i2 = 0; i2 < this.f7398a.m5166c(); i2++) {
            i += m5339c(this.f7398a.m5168b(i2));
        }
        for (Map.Entry<T, Object> entry : this.f7398a.m5163d()) {
            i += m5339c(entry);
        }
        return i;
    }

    public final int hashCode() {
        return this.f7398a.hashCode();
    }
}

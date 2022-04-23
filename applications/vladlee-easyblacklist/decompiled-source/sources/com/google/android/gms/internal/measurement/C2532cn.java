package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzey;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.cn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cn.class */
public final class C2532cn<T extends zzey<T>> {

    /* renamed from: d */
    private static final C2532cn f15934d = new C2532cn((byte) 0);

    /* renamed from: a */
    final C2571dz<T, Object> f15935a;

    /* renamed from: b */
    private boolean f15936b;

    /* renamed from: c */
    private boolean f15937c;

    private C2532cn() {
        this.f15935a = C2571dz.m2631a(16);
    }

    private C2532cn(byte b) {
        this(C2571dz.m2631a(0));
        m2845b();
    }

    private C2532cn(C2571dz<T, Object> dzVar) {
        this.f15935a = dzVar;
        m2845b();
    }

    /* renamed from: a */
    public static int m2850a(zzey<?> zzeyVar, Object obj) {
        zzim zzb = zzeyVar.zzb();
        int zza = zzeyVar.zza();
        if (!zzeyVar.zzd()) {
            return m2849a(zzb, zza, obj);
        }
        int i = 0;
        int i2 = 0;
        List<Object> list = (List) obj;
        if (zzeyVar.zze()) {
            for (Object obj2 : list) {
                i2 += m2843b(zzb, obj2);
            }
            return zzen.zze(zza) + i2 + zzen.zzl(i2);
        }
        for (Object obj3 : list) {
            i += m2849a(zzb, zza, obj3);
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2849a(zzim zzimVar, int i, Object obj) {
        int zze = zzen.zze(i);
        int i2 = zze;
        if (zzimVar == zzim.GROUP) {
            zzff.m2273a();
            i2 = zze << 1;
        }
        return i2 + m2843b(zzimVar, obj);
    }

    /* renamed from: a */
    public static <T extends zzey<T>> C2532cn<T> m2854a() {
        return f15934d;
    }

    /* renamed from: a */
    private final Object m2851a(T t) {
        Object obj = this.f15935a.get(t);
        Object obj2 = obj;
        if (obj instanceof zzfp) {
            obj2 = zzfp.zza();
        }
        return obj2;
    }

    /* renamed from: a */
    private static Object m2847a(Object obj) {
        if (obj instanceof zzgt) {
            return ((zzgt) obj).zza();
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
    public static void m2852a(zzen zzenVar, zzim zzimVar, int i, Object obj) {
        if (zzimVar == zzim.GROUP) {
            zzff.m2273a();
            zzenVar.zza(i, 3);
            ((zzgo) obj).zza(zzenVar);
            zzenVar.zza(i, 4);
            return;
        }
        zzenVar.zza(i, zzimVar.zzb());
        switch (C2531cm.f15933b[zzimVar.ordinal()]) {
            case 1:
                zzenVar.zza(((Double) obj).doubleValue());
                return;
            case 2:
                zzenVar.zza(((Float) obj).floatValue());
                return;
            case 3:
                zzenVar.zza(((Long) obj).longValue());
                return;
            case 4:
                zzenVar.zza(((Long) obj).longValue());
                return;
            case 5:
                zzenVar.zza(((Integer) obj).intValue());
                return;
            case 6:
                zzenVar.zzc(((Long) obj).longValue());
                return;
            case 7:
                zzenVar.zzd(((Integer) obj).intValue());
                return;
            case 8:
                zzenVar.zza(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzgo) obj).zza(zzenVar);
                return;
            case 10:
                zzenVar.zza((zzgo) obj);
                return;
            case 11:
                if (obj instanceof zzdu) {
                    zzenVar.zza((zzdu) obj);
                    return;
                } else {
                    zzenVar.zza((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzdu) {
                    zzenVar.zza((zzdu) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzenVar.mo2292a(bArr, bArr.length);
                return;
            case 13:
                zzenVar.zzb(((Integer) obj).intValue());
                return;
            case 14:
                zzenVar.zzd(((Integer) obj).intValue());
                return;
            case 15:
                zzenVar.zzc(((Long) obj).longValue());
                return;
            case 16:
                zzenVar.zzc(((Integer) obj).intValue());
                return;
            case 17:
                zzenVar.zzb(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzfi) {
                    zzenVar.zza(((zzfi) obj).zza());
                    return;
                } else {
                    zzenVar.zza(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    private static void m2848a(zzim zzimVar, Object obj) {
        boolean z;
        zzff.m2271a(obj);
        switch (C2531cm.f15932a[zzimVar.zza().ordinal()]) {
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
                if (!(obj instanceof zzdu)) {
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
                    if (obj instanceof zzfi) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 9:
                z = true;
                if (!(obj instanceof zzgo)) {
                    if (obj instanceof zzfp) {
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
    private static <T extends zzey<T>> boolean m2846a(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zzc() != zzip.MESSAGE) {
            return true;
        }
        boolean zzd = key.zzd();
        Object value = entry.getValue();
        if (zzd) {
            for (zzgo zzgoVar : (List) value) {
                if (!zzgoVar.zzbl()) {
                    return false;
                }
            }
            return true;
        } else if (value instanceof zzgo) {
            return ((zzgo) value).zzbl();
        } else {
            if (value instanceof zzfp) {
                return true;
            }
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    /* renamed from: b */
    private static int m2843b(zzim zzimVar, Object obj) {
        switch (C2531cm.f15933b[zzimVar.ordinal()]) {
            case 1:
                return zzen.zzb(((Double) obj).doubleValue());
            case 2:
                return zzen.zzb(((Float) obj).floatValue());
            case 3:
                return zzen.zzd(((Long) obj).longValue());
            case 4:
                return zzen.zze(((Long) obj).longValue());
            case 5:
                return zzen.zzf(((Integer) obj).intValue());
            case 6:
                return zzen.zzg(((Long) obj).longValue());
            case 7:
                return zzen.zzi(((Integer) obj).intValue());
            case 8:
                return zzen.zzb(((Boolean) obj).booleanValue());
            case 9:
                return zzen.zzc((zzgo) obj);
            case 10:
                return obj instanceof zzfp ? zzen.zza((zzfp) obj) : zzen.zzb((zzgo) obj);
            case 11:
                return obj instanceof zzdu ? zzen.zzb((zzdu) obj) : zzen.zzb((String) obj);
            case 12:
                return obj instanceof zzdu ? zzen.zzb((zzdu) obj) : zzen.zzb((byte[]) obj);
            case 13:
                return zzen.zzg(((Integer) obj).intValue());
            case 14:
                return zzen.zzj(((Integer) obj).intValue());
            case 15:
                return zzen.zzh(((Long) obj).longValue());
            case 16:
                return zzen.zzh(((Integer) obj).intValue());
            case 17:
                return zzen.zzf(((Long) obj).longValue());
            case 18:
                return obj instanceof zzfi ? zzen.zzk(((zzfi) obj).zza()) : zzen.zzk(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: b */
    private final void m2844b(T t, Object obj) {
        if (!t.zzd()) {
            m2848a(t.zzb(), obj);
        } else if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList2.get(i);
                i++;
                m2848a(t.zzb(), obj2);
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof zzfp) {
            this.f15937c = true;
        }
        this.f15935a.m2627a((C2571dz<T, Object>) t, (T) obj);
    }

    /* renamed from: b */
    private final void m2842b(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        Object obj = value;
        if (value instanceof zzfp) {
            obj = zzfp.zza();
        }
        if (key.zzd()) {
            Object a = m2851a((C2532cn<T>) key);
            Object obj2 = a;
            if (a == null) {
                obj2 = new ArrayList();
            }
            for (Object obj3 : (List) obj) {
                ((List) obj2).add(m2847a(obj3));
            }
            this.f15935a.m2627a((C2571dz<T, Object>) key, (T) obj2);
        } else if (key.zzc() == zzip.MESSAGE) {
            Object a2 = m2851a((C2532cn<T>) key);
            if (a2 == null) {
                this.f15935a.m2627a((C2571dz<T, Object>) key, (T) m2847a(obj));
            } else {
                this.f15935a.m2627a((C2571dz<T, Object>) key, (T) (a2 instanceof zzgt ? key.zza((zzgt) a2, (zzgt) obj) : key.zza(((zzgo) a2).zzbr(), (zzgo) obj).zzu()));
            }
        } else {
            this.f15935a.m2627a((C2571dz<T, Object>) key, (T) m2847a(obj));
        }
    }

    /* renamed from: c */
    private static int m2840c(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.zzc() != zzip.MESSAGE || key.zzd() || key.zze()) {
            return m2850a((zzey<?>) key, value);
        }
        boolean z = value instanceof zzfp;
        int zza = entry.getKey().zza();
        return z ? zzen.zzb(zza, (zzfp) value) : zzen.zzb(zza, (zzgo) value);
    }

    /* renamed from: a */
    public final void m2853a(C2532cn<T> cnVar) {
        for (int i = 0; i < cnVar.f15935a.m2623c(); i++) {
            m2842b(cnVar.f15935a.m2625b(i));
        }
        for (Map.Entry<T, Object> entry : cnVar.f15935a.m2620d()) {
            m2842b(entry);
        }
    }

    /* renamed from: b */
    public final void m2845b() {
        if (!this.f15936b) {
            this.f15935a.mo2632a();
            this.f15936b = true;
        }
    }

    /* renamed from: c */
    public final boolean m2841c() {
        return this.f15936b;
    }

    public final /* synthetic */ Object clone() {
        C2532cn cnVar = new C2532cn();
        for (int i = 0; i < this.f15935a.m2623c(); i++) {
            Map.Entry<T, Object> b = this.f15935a.m2625b(i);
            cnVar.m2844b((C2532cn) b.getKey(), b.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f15935a.m2620d()) {
            cnVar.m2844b((C2532cn) entry.getKey(), entry.getValue());
        }
        cnVar.f15937c = this.f15937c;
        return cnVar;
    }

    /* renamed from: d */
    public final Iterator<Map.Entry<T, Object>> m2839d() {
        return this.f15937c ? new C2540cv(this.f15935a.entrySet().iterator()) : this.f15935a.entrySet().iterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final Iterator<Map.Entry<T, Object>> m2838e() {
        return this.f15937c ? new C2540cv(this.f15935a.m2618e().iterator()) : this.f15935a.m2618e().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2532cn)) {
            return false;
        }
        return this.f15935a.equals(((C2532cn) obj).f15935a);
    }

    /* renamed from: f */
    public final boolean m2837f() {
        for (int i = 0; i < this.f15935a.m2623c(); i++) {
            if (!m2846a((Map.Entry) this.f15935a.m2625b(i))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.f15935a.m2620d()) {
            if (!m2846a((Map.Entry) entry)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final int m2836g() {
        int i = 0;
        for (int i2 = 0; i2 < this.f15935a.m2623c(); i2++) {
            i += m2840c(this.f15935a.m2625b(i2));
        }
        for (Map.Entry<T, Object> entry : this.f15935a.m2620d()) {
            i += m2840c(entry);
        }
        return i;
    }

    public final int hashCode() {
        return this.f15935a.hashCode();
    }
}

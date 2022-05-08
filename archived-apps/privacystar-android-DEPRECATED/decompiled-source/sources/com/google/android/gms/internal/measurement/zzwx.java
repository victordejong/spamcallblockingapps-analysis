package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.spongycastle.asn1.cmp.PKIFailureInfo;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzwx.class */
final class zzwx<T> implements zzxj<T> {
    private static final int[] zzcax = new int[0];
    private static final Unsafe zzcay = zzyh.zzyk();
    private final int[] zzcaz;
    private final Object[] zzcba;
    private final int zzcbb;
    private final int zzcbc;
    private final zzwt zzcbd;
    private final boolean zzcbe;
    private final boolean zzcbf;
    private final boolean zzcbg;
    private final boolean zzcbh;
    private final int[] zzcbi;
    private final int zzcbj;
    private final int zzcbk;
    private final zzxa zzcbl;
    private final zzwd zzcbm;
    private final zzyb<?, ?> zzcbn;
    private final zzva<?> zzcbo;
    private final zzwo zzcbp;

    private zzwx(int[] iArr, Object[] objArr, int i, int i2, zzwt zzwtVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzxa zzxaVar, zzwd zzwdVar, zzyb<?, ?> zzybVar, zzva<?> zzvaVar, zzwo zzwoVar) {
        this.zzcaz = iArr;
        this.zzcba = objArr;
        this.zzcbb = i;
        this.zzcbc = i2;
        this.zzcbf = zzwtVar instanceof zzvm;
        this.zzcbg = z;
        this.zzcbe = zzvaVar != null && zzvaVar.zze(zzwtVar);
        this.zzcbh = false;
        this.zzcbi = iArr2;
        this.zzcbj = i3;
        this.zzcbk = i4;
        this.zzcbl = zzxaVar;
        this.zzcbm = zzwdVar;
        this.zzcbn = zzybVar;
        this.zzcbo = zzvaVar;
        this.zzcbd = zzwtVar;
        this.zzcbp = zzwoVar;
    }

    private static <UT, UB> int zza(zzyb<UT, UB> zzybVar, T t) {
        return zzybVar.zzae(zzybVar.zzah(t));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:164:0x08b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.measurement.zzwx<T> zza(java.lang.Class<T> r18, com.google.android.gms.internal.measurement.zzwr r19, com.google.android.gms.internal.measurement.zzxa r20, com.google.android.gms.internal.measurement.zzwd r21, com.google.android.gms.internal.measurement.zzyb<?, ?> r22, com.google.android.gms.internal.measurement.zzva<?> r23, com.google.android.gms.internal.measurement.zzwo r24) {
        /*
            Method dump skipped, instructions count: 2658
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzwx.zza(java.lang.Class, com.google.android.gms.internal.measurement.zzwr, com.google.android.gms.internal.measurement.zzxa, com.google.android.gms.internal.measurement.zzwd, com.google.android.gms.internal.measurement.zzyb, com.google.android.gms.internal.measurement.zzva, com.google.android.gms.internal.measurement.zzwo):com.google.android.gms.internal.measurement.zzwx");
    }

    private final <K, V, UT, UB> UB zza(int i, int i2, Map<K, V> map, zzvr zzvrVar, UB ub, zzyb<UT, UB> zzybVar) {
        zzwm<?, ?> zzad = this.zzcbp.zzad(zzbo(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzvrVar.zzb(((Integer) next.getValue()).intValue())) {
                UB ub2 = ub;
                if (ub == null) {
                    ub2 = zzybVar.zzye();
                }
                zzuk zzam = zzud.zzam(zzwl.zza(zzad, next.getKey(), next.getValue()));
                try {
                    zzwl.zza(zzam.zzuf(), zzad, next.getKey(), next.getValue());
                    zzybVar.zza((zzyb<UT, UB>) ub2, i2, zzam.zzue());
                    it.remove();
                    ub = ub2;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    private final <UT, UB> UB zza(Object obj, int i, UB ub, zzyb<UT, UB> zzybVar) {
        zzvr zzbp;
        int i2 = this.zzcaz[i];
        Object zzp = zzyh.zzp(obj, zzbq(i) & 1048575);
        if (!(zzp == null || (zzbp = zzbp(i)) == null)) {
            return (UB) zza(i, i2, this.zzcbp.zzy(zzp), zzbp, ub, zzybVar);
        }
        return ub;
    }

    private static Field zza(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString());
        }
    }

    private static void zza(int i, Object obj, zzyw zzywVar) throws IOException {
        if (obj instanceof String) {
            zzywVar.zzb(i, (String) obj);
        } else {
            zzywVar.zza(i, (zzud) obj);
        }
    }

    private static <UT, UB> void zza(zzyb<UT, UB> zzybVar, T t, zzyw zzywVar) throws IOException {
        zzybVar.zza((zzyb<UT, UB>) zzybVar.zzah(t), zzywVar);
    }

    private final <K, V> void zza(zzyw zzywVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzywVar.zza(i, this.zzcbp.zzad(zzbo(i2)), this.zzcbp.zzz(obj));
        }
    }

    private final void zza(Object obj, int i, zzxi zzxiVar) throws IOException {
        if (zzbs(i)) {
            zzyh.zza(obj, i & 1048575, zzxiVar.zzun());
        } else if (this.zzcbf) {
            zzyh.zza(obj, i & 1048575, zzxiVar.readString());
        } else {
            zzyh.zza(obj, i & 1048575, zzxiVar.zzuo());
        }
    }

    private final void zza(T t, T t2, int i) {
        long zzbq = zzbq(i) & 1048575;
        if (zzb((zzwx<T>) t2, i)) {
            Object zzp = zzyh.zzp(t, zzbq);
            Object zzp2 = zzyh.zzp(t2, zzbq);
            if (zzp != null && zzp2 != null) {
                zzyh.zza(t, zzbq, zzvo.zzb(zzp, zzp2));
                zzc(t, i);
            } else if (zzp2 != null) {
                zzyh.zza(t, zzbq, zzp2);
                zzc(t, i);
            }
        }
    }

    private final boolean zza(T t, int i, int i2) {
        return zzyh.zzk(t, (long) (zzbr(i2) & 1048575)) == i;
    }

    private final boolean zza(T t, int i, int i2, int i3) {
        return this.zzcbg ? zzb((zzwx<T>) t, i) : (i2 & i3) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzxj zzxjVar) {
        return zzxjVar.zzaf(zzyh.zzp(obj, i & 1048575));
    }

    private final void zzb(T t, int i, int i2) {
        zzyh.zzb(t, zzbr(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x09b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzb(T r9, com.google.android.gms.internal.measurement.zzyw r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2533
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzwx.zzb(java.lang.Object, com.google.android.gms.internal.measurement.zzyw):void");
    }

    private final void zzb(T t, T t2, int i) {
        int zzbq = zzbq(i);
        int i2 = this.zzcaz[i];
        long j = zzbq & 1048575;
        if (zza((zzwx<T>) t2, i2, i)) {
            Object zzp = zzyh.zzp(t, j);
            Object zzp2 = zzyh.zzp(t2, j);
            if (zzp != null && zzp2 != null) {
                zzyh.zza(t, j, zzvo.zzb(zzp, zzp2));
                zzb((zzwx<T>) t, i2, i);
            } else if (zzp2 != null) {
                zzyh.zza(t, j, zzp2);
                zzb((zzwx<T>) t, i2, i);
            }
        }
    }

    private final boolean zzb(T t, int i) {
        if (this.zzcbg) {
            int zzbq = zzbq(i);
            long j = zzbq & 1048575;
            switch ((zzbq & 267386880) >>> 20) {
                case 0:
                    return zzyh.zzo(t, j) != 0.0d;
                case 1:
                    return zzyh.zzn(t, j) != 0.0f;
                case 2:
                    return zzyh.zzl(t, j) != 0;
                case 3:
                    return zzyh.zzl(t, j) != 0;
                case 4:
                    return zzyh.zzk(t, j) != 0;
                case 5:
                    return zzyh.zzl(t, j) != 0;
                case 6:
                    return zzyh.zzk(t, j) != 0;
                case 7:
                    return zzyh.zzm(t, j);
                case 8:
                    Object zzp = zzyh.zzp(t, j);
                    if (zzp instanceof String) {
                        return !((String) zzp).isEmpty();
                    }
                    if (zzp instanceof zzud) {
                        return !zzud.zzbtz.equals(zzp);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return zzyh.zzp(t, j) != null;
                case 10:
                    return !zzud.zzbtz.equals(zzyh.zzp(t, j));
                case 11:
                    return zzyh.zzk(t, j) != 0;
                case 12:
                    return zzyh.zzk(t, j) != 0;
                case 13:
                    return zzyh.zzk(t, j) != 0;
                case 14:
                    return zzyh.zzl(t, j) != 0;
                case 15:
                    return zzyh.zzk(t, j) != 0;
                case 16:
                    return zzyh.zzl(t, j) != 0;
                case 17:
                    return zzyh.zzp(t, j) != null;
                default:
                    throw new IllegalArgumentException();
            }
        } else {
            int zzbr = zzbr(i);
            return (zzyh.zzk(t, (long) (zzbr & 1048575)) & (1 << (zzbr >>> 20))) != 0;
        }
    }

    private final zzxj zzbn(int i) {
        int i2 = (i / 3) << 1;
        zzxj zzxjVar = (zzxj) this.zzcba[i2];
        if (zzxjVar != null) {
            return zzxjVar;
        }
        zzxj<T> zzi = zzxf.zzxn().zzi((Class) this.zzcba[i2 + 1]);
        this.zzcba[i2] = zzi;
        return zzi;
    }

    private final Object zzbo(int i) {
        return this.zzcba[(i / 3) << 1];
    }

    private final zzvr zzbp(int i) {
        return (zzvr) this.zzcba[((i / 3) << 1) + 1];
    }

    private final int zzbq(int i) {
        return this.zzcaz[i + 1];
    }

    private final int zzbr(int i) {
        return this.zzcaz[i + 2];
    }

    private static boolean zzbs(int i) {
        return (i & PKIFailureInfo.duplicateCertReq) != 0;
    }

    private final void zzc(T t, int i) {
        if (!this.zzcbg) {
            int zzbr = zzbr(i);
            long j = zzbr & 1048575;
            zzyh.zzb(t, j, zzyh.zzk(t, j) | (1 << (zzbr >>> 20)));
        }
    }

    private final boolean zzc(T t, T t2, int i) {
        return zzb((zzwx<T>) t, i) == zzb((zzwx<T>) t2, i);
    }

    private static <E> List<E> zze(Object obj, long j) {
        return (List) zzyh.zzp(obj, j);
    }

    private static <T> double zzf(T t, long j) {
        return ((Double) zzyh.zzp(t, j)).doubleValue();
    }

    private static <T> float zzg(T t, long j) {
        return ((Float) zzyh.zzp(t, j)).floatValue();
    }

    private static <T> int zzh(T t, long j) {
        return ((Integer) zzyh.zzp(t, j)).intValue();
    }

    private static <T> long zzi(T t, long j) {
        return ((Long) zzyh.zzp(t, j)).longValue();
    }

    private static <T> boolean zzj(T t, long j) {
        return ((Boolean) zzyh.zzp(t, j)).booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x017e, code lost:
        if (com.google.android.gms.internal.measurement.zzxl.zze(com.google.android.gms.internal.measurement.zzyh.zzp(r7, r0), com.google.android.gms.internal.measurement.zzyh.zzp(r8, r0)) != false) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x01c6, code lost:
        if (com.google.android.gms.internal.measurement.zzxl.zze(com.google.android.gms.internal.measurement.zzyh.zzp(r7, r0), com.google.android.gms.internal.measurement.zzyh.zzp(r8, r0)) != false) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01e4, code lost:
        if (com.google.android.gms.internal.measurement.zzyh.zzl(r7, r0) == com.google.android.gms.internal.measurement.zzyh.zzl(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0201, code lost:
        if (com.google.android.gms.internal.measurement.zzyh.zzk(r7, r0) == com.google.android.gms.internal.measurement.zzyh.zzk(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x021f, code lost:
        if (com.google.android.gms.internal.measurement.zzyh.zzl(r7, r0) == com.google.android.gms.internal.measurement.zzyh.zzl(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x023c, code lost:
        if (com.google.android.gms.internal.measurement.zzyh.zzk(r7, r0) == com.google.android.gms.internal.measurement.zzyh.zzk(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0259, code lost:
        if (com.google.android.gms.internal.measurement.zzyh.zzk(r7, r0) == com.google.android.gms.internal.measurement.zzyh.zzk(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0276, code lost:
        if (com.google.android.gms.internal.measurement.zzyh.zzk(r7, r0) == com.google.android.gms.internal.measurement.zzyh.zzk(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0296, code lost:
        if (com.google.android.gms.internal.measurement.zzxl.zze(com.google.android.gms.internal.measurement.zzyh.zzp(r7, r0), com.google.android.gms.internal.measurement.zzyh.zzp(r8, r0)) != false) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x02b6, code lost:
        if (com.google.android.gms.internal.measurement.zzxl.zze(com.google.android.gms.internal.measurement.zzyh.zzp(r7, r0), com.google.android.gms.internal.measurement.zzyh.zzp(r8, r0)) != false) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x02d6, code lost:
        if (com.google.android.gms.internal.measurement.zzxl.zze(com.google.android.gms.internal.measurement.zzyh.zzp(r7, r0), com.google.android.gms.internal.measurement.zzyh.zzp(r8, r0)) != false) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02f3, code lost:
        if (com.google.android.gms.internal.measurement.zzyh.zzm(r7, r0) == com.google.android.gms.internal.measurement.zzyh.zzm(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0310, code lost:
        if (com.google.android.gms.internal.measurement.zzyh.zzk(r7, r0) == com.google.android.gms.internal.measurement.zzyh.zzk(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x032e, code lost:
        if (com.google.android.gms.internal.measurement.zzyh.zzl(r7, r0) == com.google.android.gms.internal.measurement.zzyh.zzl(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x034b, code lost:
        if (com.google.android.gms.internal.measurement.zzyh.zzk(r7, r0) == com.google.android.gms.internal.measurement.zzyh.zzk(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0369, code lost:
        if (com.google.android.gms.internal.measurement.zzyh.zzl(r7, r0) == com.google.android.gms.internal.measurement.zzyh.zzl(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0387, code lost:
        if (com.google.android.gms.internal.measurement.zzyh.zzl(r7, r0) == com.google.android.gms.internal.measurement.zzyh.zzl(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03a4, code lost:
        if (com.google.android.gms.internal.measurement.zzyh.zzk(r7, r0) == com.google.android.gms.internal.measurement.zzyh.zzk(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x03c2, code lost:
        if (com.google.android.gms.internal.measurement.zzyh.zzl(r7, r0) == com.google.android.gms.internal.measurement.zzyh.zzl(r8, r0)) goto L_0x03c8;
     */
    @Override // com.google.android.gms.internal.measurement.zzxj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1034
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzwx.equals(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final int hashCode(T t) {
        int length = this.zzcaz.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2 += 3) {
            int zzbq = zzbq(i2);
            int i3 = this.zzcaz[i2];
            long j = 1048575 & zzbq;
            int i4 = 37;
            switch ((zzbq & 267386880) >>> 20) {
                case 0:
                    i = (i * 53) + zzvo.zzbf(Double.doubleToLongBits(zzyh.zzo(t, j)));
                    break;
                case 1:
                    i = (i * 53) + Float.floatToIntBits(zzyh.zzn(t, j));
                    break;
                case 2:
                    i = (i * 53) + zzvo.zzbf(zzyh.zzl(t, j));
                    break;
                case 3:
                    i = (i * 53) + zzvo.zzbf(zzyh.zzl(t, j));
                    break;
                case 4:
                    i = (i * 53) + zzyh.zzk(t, j);
                    break;
                case 5:
                    i = (i * 53) + zzvo.zzbf(zzyh.zzl(t, j));
                    break;
                case 6:
                    i = (i * 53) + zzyh.zzk(t, j);
                    break;
                case 7:
                    i = (i * 53) + zzvo.zzw(zzyh.zzm(t, j));
                    break;
                case 8:
                    i = (i * 53) + ((String) zzyh.zzp(t, j)).hashCode();
                    break;
                case 9:
                    Object zzp = zzyh.zzp(t, j);
                    if (zzp != null) {
                        i4 = zzp.hashCode();
                    }
                    i = (i * 53) + i4;
                    break;
                case 10:
                    i = (i * 53) + zzyh.zzp(t, j).hashCode();
                    break;
                case 11:
                    i = (i * 53) + zzyh.zzk(t, j);
                    break;
                case 12:
                    i = (i * 53) + zzyh.zzk(t, j);
                    break;
                case 13:
                    i = (i * 53) + zzyh.zzk(t, j);
                    break;
                case 14:
                    i = (i * 53) + zzvo.zzbf(zzyh.zzl(t, j));
                    break;
                case 15:
                    i = (i * 53) + zzyh.zzk(t, j);
                    break;
                case 16:
                    i = (i * 53) + zzvo.zzbf(zzyh.zzl(t, j));
                    break;
                case 17:
                    Object zzp2 = zzyh.zzp(t, j);
                    if (zzp2 != null) {
                        i4 = zzp2.hashCode();
                    }
                    i = (i * 53) + i4;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = (i * 53) + zzyh.zzp(t, j).hashCode();
                    break;
                case 50:
                    i = (i * 53) + zzyh.zzp(t, j).hashCode();
                    break;
                case 51:
                    i = i;
                    if (zza((zzwx<T>) t, i3, i2)) {
                        i = (i * 53) + zzvo.zzbf(Double.doubleToLongBits(zzf(t, j)));
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i = i;
                    if (zza((zzwx<T>) t, i3, i2)) {
                        i = (i * 53) + Float.floatToIntBits(zzg(t, j));
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i = i;
                    if (zza((zzwx<T>) t, i3, i2)) {
                        i = (i * 53) + zzvo.zzbf(zzi(t, j));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i = i;
                    if (zza((zzwx<T>) t, i3, i2)) {
                        i = (i * 53) + zzvo.zzbf(zzi(t, j));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i = i;
                    if (zza((zzwx<T>) t, i3, i2)) {
                        i = (i * 53) + zzh(t, j);
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i = i;
                    if (zza((zzwx<T>) t, i3, i2)) {
                        i = (i * 53) + zzvo.zzbf(zzi(t, j));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i = i;
                    if (zza((zzwx<T>) t, i3, i2)) {
                        i = (i * 53) + zzh(t, j);
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i = i;
                    if (zza((zzwx<T>) t, i3, i2)) {
                        i = (i * 53) + zzvo.zzw(zzj(t, j));
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i = i;
                    if (zza((zzwx<T>) t, i3, i2)) {
                        i = (i * 53) + ((String) zzyh.zzp(t, j)).hashCode();
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i = i;
                    if (zza((zzwx<T>) t, i3, i2)) {
                        i = (i * 53) + zzyh.zzp(t, j).hashCode();
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i = i;
                    if (zza((zzwx<T>) t, i3, i2)) {
                        i = (i * 53) + zzyh.zzp(t, j).hashCode();
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i = i;
                    if (zza((zzwx<T>) t, i3, i2)) {
                        i = (i * 53) + zzh(t, j);
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i = i;
                    if (zza((zzwx<T>) t, i3, i2)) {
                        i = (i * 53) + zzh(t, j);
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i = i;
                    if (zza((zzwx<T>) t, i3, i2)) {
                        i = (i * 53) + zzh(t, j);
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i = i;
                    if (zza((zzwx<T>) t, i3, i2)) {
                        i = (i * 53) + zzvo.zzbf(zzi(t, j));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i = i;
                    if (zza((zzwx<T>) t, i3, i2)) {
                        i = (i * 53) + zzh(t, j);
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i = i;
                    if (zza((zzwx<T>) t, i3, i2)) {
                        i = (i * 53) + zzvo.zzbf(zzi(t, j));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i = i;
                    if (zza((zzwx<T>) t, i3, i2)) {
                        i = (i * 53) + zzyh.zzp(t, j).hashCode();
                        break;
                    } else {
                        break;
                    }
                default:
                    i = i;
                    break;
            }
        }
        int hashCode = (i * 53) + this.zzcbn.zzah(t).hashCode();
        int i5 = hashCode;
        if (this.zzcbe) {
            i5 = (hashCode * 53) + this.zzcbo.zzs(t).hashCode();
        }
        return i5;
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final T newInstance() {
        return (T) this.zzcbl.newInstance(this.zzcbd);
    }

    /* JADX WARN: Removed duplicated region for block: B:429:0x01ab A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:502:0x00a9 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.zzxj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r9, com.google.android.gms.internal.measurement.zzxi r10, com.google.android.gms.internal.measurement.zzuz r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 4442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzwx.zza(java.lang.Object, com.google.android.gms.internal.measurement.zzxi, com.google.android.gms.internal.measurement.zzuz):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0a5b  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0ad1  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x14cf  */
    @Override // com.google.android.gms.internal.measurement.zzxj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r8, com.google.android.gms.internal.measurement.zzyw r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 5382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzwx.zza(java.lang.Object, com.google.android.gms.internal.measurement.zzyw):void");
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final int zzae(T t) {
        int i;
        int i2;
        if (this.zzcbg) {
            Unsafe unsafe = zzcay;
            int i3 = 0;
            for (int i4 = 0; i4 < this.zzcaz.length; i4 += 3) {
                int zzbq = zzbq(i4);
                int i5 = (zzbq & 267386880) >>> 20;
                int i6 = this.zzcaz[i4];
                long j = zzbq & 1048575;
                int i7 = (i5 < zzvg.DOUBLE_LIST_PACKED.m332id() || i5 > zzvg.SINT64_LIST_PACKED.m332id()) ? 0 : this.zzcaz[i4 + 2] & 1048575;
                switch (i5) {
                    case 0:
                        i3 = i3;
                        if (zzb((zzwx<T>) t, i4)) {
                            i3 += zzut.zzb(i6, 0.0d);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        i3 = i3;
                        if (zzb((zzwx<T>) t, i4)) {
                            i3 += zzut.zzb(i6, 0.0f);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        i3 = i3;
                        if (zzb((zzwx<T>) t, i4)) {
                            i3 += zzut.zzd(i6, zzyh.zzl(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        i3 = i3;
                        if (zzb((zzwx<T>) t, i4)) {
                            i3 += zzut.zze(i6, zzyh.zzl(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        i3 = i3;
                        if (zzb((zzwx<T>) t, i4)) {
                            i3 += zzut.zzh(i6, zzyh.zzk(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        i3 = i3;
                        if (zzb((zzwx<T>) t, i4)) {
                            i3 += zzut.zzg(i6, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        i3 = i3;
                        if (zzb((zzwx<T>) t, i4)) {
                            i3 += zzut.zzk(i6, 0);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        i3 = i3;
                        if (zzb((zzwx<T>) t, i4)) {
                            i3 += zzut.zzc(i6, true);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        i3 = i3;
                        if (zzb((zzwx<T>) t, i4)) {
                            Object zzp = zzyh.zzp(t, j);
                            if (zzp instanceof zzud) {
                                i3 += zzut.zzc(i6, (zzud) zzp);
                                break;
                            } else {
                                i3 += zzut.zzc(i6, (String) zzp);
                                break;
                            }
                        } else {
                            break;
                        }
                    case 9:
                        i3 = i3;
                        if (zzb((zzwx<T>) t, i4)) {
                            i3 += zzxl.zzc(i6, zzyh.zzp(t, j), zzbn(i4));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        i3 = i3;
                        if (zzb((zzwx<T>) t, i4)) {
                            i3 += zzut.zzc(i6, (zzud) zzyh.zzp(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        i3 = i3;
                        if (zzb((zzwx<T>) t, i4)) {
                            i3 += zzut.zzi(i6, zzyh.zzk(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        i3 = i3;
                        if (zzb((zzwx<T>) t, i4)) {
                            i3 += zzut.zzm(i6, zzyh.zzk(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        i3 = i3;
                        if (zzb((zzwx<T>) t, i4)) {
                            i3 += zzut.zzl(i6, 0);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        i3 = i3;
                        if (zzb((zzwx<T>) t, i4)) {
                            i3 += zzut.zzh(i6, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        i3 = i3;
                        if (zzb((zzwx<T>) t, i4)) {
                            i3 += zzut.zzj(i6, zzyh.zzk(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        i3 = i3;
                        if (zzb((zzwx<T>) t, i4)) {
                            i3 += zzut.zzf(i6, zzyh.zzl(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        i3 = i3;
                        if (zzb((zzwx<T>) t, i4)) {
                            i3 += zzut.zzc(i6, (zzwt) zzyh.zzp(t, j), zzbn(i4));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        i3 += zzxl.zzw(i6, zze(t, j), false);
                        break;
                    case 19:
                        i3 += zzxl.zzv(i6, zze(t, j), false);
                        break;
                    case 20:
                        i3 += zzxl.zzo(i6, zze(t, j), false);
                        break;
                    case 21:
                        i3 += zzxl.zzp(i6, zze(t, j), false);
                        break;
                    case 22:
                        i3 += zzxl.zzs(i6, zze(t, j), false);
                        break;
                    case 23:
                        i3 += zzxl.zzw(i6, zze(t, j), false);
                        break;
                    case 24:
                        i3 += zzxl.zzv(i6, zze(t, j), false);
                        break;
                    case 25:
                        i3 += zzxl.zzx(i6, zze(t, j), false);
                        break;
                    case 26:
                        i3 += zzxl.zzc(i6, zze(t, j));
                        break;
                    case 27:
                        i3 += zzxl.zzc(i6, (List<?>) zze(t, j), zzbn(i4));
                        break;
                    case 28:
                        i3 += zzxl.zzd(i6, zze(t, j));
                        break;
                    case 29:
                        i3 += zzxl.zzt(i6, zze(t, j), false);
                        break;
                    case 30:
                        i3 += zzxl.zzr(i6, zze(t, j), false);
                        break;
                    case 31:
                        i3 += zzxl.zzv(i6, zze(t, j), false);
                        break;
                    case 32:
                        i3 += zzxl.zzw(i6, zze(t, j), false);
                        break;
                    case 33:
                        i3 += zzxl.zzu(i6, zze(t, j), false);
                        break;
                    case 34:
                        i3 += zzxl.zzq(i6, zze(t, j), false);
                        break;
                    case 35:
                        int zzaf = zzxl.zzaf((List) unsafe.getObject(t, j));
                        i3 = i3;
                        if (zzaf <= 0) {
                            break;
                        } else {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, zzaf);
                            }
                            i3 += zzut.zzbb(i6) + zzut.zzbd(zzaf) + zzaf;
                            break;
                        }
                    case 36:
                        int zzae = zzxl.zzae((List) unsafe.getObject(t, j));
                        i3 = i3;
                        if (zzae <= 0) {
                            break;
                        } else {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, zzae);
                            }
                            i3 += zzut.zzbb(i6) + zzut.zzbd(zzae) + zzae;
                            break;
                        }
                    case 37:
                        int zzx = zzxl.zzx((List) unsafe.getObject(t, j));
                        i3 = i3;
                        if (zzx <= 0) {
                            break;
                        } else {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, zzx);
                            }
                            i3 += zzut.zzbb(i6) + zzut.zzbd(zzx) + zzx;
                            break;
                        }
                    case 38:
                        int zzy = zzxl.zzy((List) unsafe.getObject(t, j));
                        i3 = i3;
                        if (zzy <= 0) {
                            break;
                        } else {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, zzy);
                            }
                            i3 += zzut.zzbb(i6) + zzut.zzbd(zzy) + zzy;
                            break;
                        }
                    case 39:
                        int zzab = zzxl.zzab((List) unsafe.getObject(t, j));
                        i3 = i3;
                        if (zzab <= 0) {
                            break;
                        } else {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, zzab);
                            }
                            i3 += zzut.zzbb(i6) + zzut.zzbd(zzab) + zzab;
                            break;
                        }
                    case 40:
                        int zzaf2 = zzxl.zzaf((List) unsafe.getObject(t, j));
                        i3 = i3;
                        if (zzaf2 <= 0) {
                            break;
                        } else {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, zzaf2);
                            }
                            i3 += zzut.zzbb(i6) + zzut.zzbd(zzaf2) + zzaf2;
                            break;
                        }
                    case 41:
                        int zzae2 = zzxl.zzae((List) unsafe.getObject(t, j));
                        i3 = i3;
                        if (zzae2 <= 0) {
                            break;
                        } else {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, zzae2);
                            }
                            i3 += zzut.zzbb(i6) + zzut.zzbd(zzae2) + zzae2;
                            break;
                        }
                    case 42:
                        int zzag = zzxl.zzag((List) unsafe.getObject(t, j));
                        i3 = i3;
                        if (zzag <= 0) {
                            break;
                        } else {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, zzag);
                            }
                            i3 += zzut.zzbb(i6) + zzut.zzbd(zzag) + zzag;
                            break;
                        }
                    case 43:
                        int zzac = zzxl.zzac((List) unsafe.getObject(t, j));
                        i3 = i3;
                        if (zzac <= 0) {
                            break;
                        } else {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, zzac);
                            }
                            i3 += zzut.zzbb(i6) + zzut.zzbd(zzac) + zzac;
                            break;
                        }
                    case 44:
                        int zzaa = zzxl.zzaa((List) unsafe.getObject(t, j));
                        i3 = i3;
                        if (zzaa <= 0) {
                            break;
                        } else {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, zzaa);
                            }
                            i3 += zzut.zzbb(i6) + zzut.zzbd(zzaa) + zzaa;
                            break;
                        }
                    case 45:
                        int zzae3 = zzxl.zzae((List) unsafe.getObject(t, j));
                        i3 = i3;
                        if (zzae3 <= 0) {
                            break;
                        } else {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, zzae3);
                            }
                            i3 += zzut.zzbb(i6) + zzut.zzbd(zzae3) + zzae3;
                            break;
                        }
                    case 46:
                        int zzaf3 = zzxl.zzaf((List) unsafe.getObject(t, j));
                        i3 = i3;
                        if (zzaf3 <= 0) {
                            break;
                        } else {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, zzaf3);
                            }
                            i3 += zzut.zzbb(i6) + zzut.zzbd(zzaf3) + zzaf3;
                            break;
                        }
                    case 47:
                        int zzad = zzxl.zzad((List) unsafe.getObject(t, j));
                        i3 = i3;
                        if (zzad <= 0) {
                            break;
                        } else {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, zzad);
                            }
                            i3 += zzut.zzbb(i6) + zzut.zzbd(zzad) + zzad;
                            break;
                        }
                    case 48:
                        int zzz = zzxl.zzz((List) unsafe.getObject(t, j));
                        i3 = i3;
                        if (zzz <= 0) {
                            break;
                        } else {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, zzz);
                            }
                            i3 += zzut.zzbb(i6) + zzut.zzbd(zzz) + zzz;
                            break;
                        }
                    case 49:
                        i3 += zzxl.zzd(i6, zze(t, j), zzbn(i4));
                        break;
                    case 50:
                        i3 += this.zzcbp.zzb(i6, zzyh.zzp(t, j), zzbo(i4));
                        break;
                    case 51:
                        i3 = i3;
                        if (zza((zzwx<T>) t, i6, i4)) {
                            i3 += zzut.zzb(i6, 0.0d);
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        i3 = i3;
                        if (zza((zzwx<T>) t, i6, i4)) {
                            i3 += zzut.zzb(i6, 0.0f);
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        i3 = i3;
                        if (zza((zzwx<T>) t, i6, i4)) {
                            i3 += zzut.zzd(i6, zzi(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        i3 = i3;
                        if (zza((zzwx<T>) t, i6, i4)) {
                            i3 += zzut.zze(i6, zzi(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        i3 = i3;
                        if (zza((zzwx<T>) t, i6, i4)) {
                            i3 += zzut.zzh(i6, zzh(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        i3 = i3;
                        if (zza((zzwx<T>) t, i6, i4)) {
                            i3 += zzut.zzg(i6, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        i3 = i3;
                        if (zza((zzwx<T>) t, i6, i4)) {
                            i3 += zzut.zzk(i6, 0);
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        i3 = i3;
                        if (zza((zzwx<T>) t, i6, i4)) {
                            i3 += zzut.zzc(i6, true);
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        i3 = i3;
                        if (zza((zzwx<T>) t, i6, i4)) {
                            Object zzp2 = zzyh.zzp(t, j);
                            if (zzp2 instanceof zzud) {
                                i3 += zzut.zzc(i6, (zzud) zzp2);
                                break;
                            } else {
                                i3 += zzut.zzc(i6, (String) zzp2);
                                break;
                            }
                        } else {
                            break;
                        }
                    case 60:
                        i3 = i3;
                        if (zza((zzwx<T>) t, i6, i4)) {
                            i3 += zzxl.zzc(i6, zzyh.zzp(t, j), zzbn(i4));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        i3 = i3;
                        if (zza((zzwx<T>) t, i6, i4)) {
                            i3 += zzut.zzc(i6, (zzud) zzyh.zzp(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        i3 = i3;
                        if (zza((zzwx<T>) t, i6, i4)) {
                            i3 += zzut.zzi(i6, zzh(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        i3 = i3;
                        if (zza((zzwx<T>) t, i6, i4)) {
                            i3 += zzut.zzm(i6, zzh(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        i3 = i3;
                        if (zza((zzwx<T>) t, i6, i4)) {
                            i3 += zzut.zzl(i6, 0);
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        i3 = i3;
                        if (zza((zzwx<T>) t, i6, i4)) {
                            i3 += zzut.zzh(i6, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        i3 = i3;
                        if (zza((zzwx<T>) t, i6, i4)) {
                            i3 += zzut.zzj(i6, zzh(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        i3 = i3;
                        if (zza((zzwx<T>) t, i6, i4)) {
                            i3 += zzut.zzf(i6, zzi(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        i3 = i3;
                        if (zza((zzwx<T>) t, i6, i4)) {
                            i3 += zzut.zzc(i6, (zzwt) zzyh.zzp(t, j), zzbn(i4));
                            break;
                        } else {
                            break;
                        }
                    default:
                        i3 = i3;
                        break;
                }
            }
            return i3 + zza(this.zzcbn, t);
        }
        Unsafe unsafe2 = zzcay;
        int i8 = 0;
        int i9 = -1;
        int i10 = 0;
        for (int i11 = 0; i11 < this.zzcaz.length; i11 += 3) {
            int zzbq2 = zzbq(i11);
            int i12 = this.zzcaz[i11];
            int i13 = (zzbq2 & 267386880) >>> 20;
            if (i13 <= 17) {
                int i14 = this.zzcaz[i11 + 2];
                int i15 = i14 & 1048575;
                int i16 = 1 << (i14 >>> 20);
                i9 = i9;
                i2 = i14;
                i = i16;
                if (i15 != i9) {
                    i10 = unsafe2.getInt(t, i15);
                    i9 = i15;
                    i2 = i14;
                    i = i16;
                }
            } else {
                i2 = (!this.zzcbh || i13 < zzvg.DOUBLE_LIST_PACKED.m332id() || i13 > zzvg.SINT64_LIST_PACKED.m332id()) ? 0 : this.zzcaz[i11 + 2] & 1048575;
                i = 0;
                i9 = i9;
            }
            long j2 = zzbq2 & 1048575;
            switch (i13) {
                case 0:
                    i8 = i8;
                    if ((i10 & i) != 0) {
                        i8 += zzut.zzb(i12, 0.0d);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    i8 = i8;
                    if ((i10 & i) != 0) {
                        i8 += zzut.zzb(i12, 0.0f);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    i8 = i8;
                    if ((i10 & i) != 0) {
                        i8 += zzut.zzd(i12, unsafe2.getLong(t, j2));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    i8 = i8;
                    if ((i10 & i) != 0) {
                        i8 += zzut.zze(i12, unsafe2.getLong(t, j2));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    i8 = i8;
                    if ((i10 & i) != 0) {
                        i8 += zzut.zzh(i12, unsafe2.getInt(t, j2));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    i8 = i8;
                    if ((i10 & i) != 0) {
                        i8 += zzut.zzg(i12, 0L);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    i8 = i8;
                    if ((i10 & i) != 0) {
                        i8 += zzut.zzk(i12, 0);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    i8 = i8;
                    if ((i10 & i) != 0) {
                        i8 += zzut.zzc(i12, true);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    i8 = i8;
                    if ((i10 & i) != 0) {
                        Object object = unsafe2.getObject(t, j2);
                        if (object instanceof zzud) {
                            i8 += zzut.zzc(i12, (zzud) object);
                            break;
                        } else {
                            i8 += zzut.zzc(i12, (String) object);
                            break;
                        }
                    } else {
                        break;
                    }
                case 9:
                    i8 = i8;
                    if ((i10 & i) != 0) {
                        i8 += zzxl.zzc(i12, unsafe2.getObject(t, j2), zzbn(i11));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    i8 = i8;
                    if ((i10 & i) != 0) {
                        i8 += zzut.zzc(i12, (zzud) unsafe2.getObject(t, j2));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    i8 = i8;
                    if ((i10 & i) != 0) {
                        i8 += zzut.zzi(i12, unsafe2.getInt(t, j2));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    i8 = i8;
                    if ((i10 & i) != 0) {
                        i8 += zzut.zzm(i12, unsafe2.getInt(t, j2));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    i8 = i8;
                    if ((i10 & i) != 0) {
                        i8 += zzut.zzl(i12, 0);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    i8 = i8;
                    if ((i10 & i) != 0) {
                        i8 += zzut.zzh(i12, 0L);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    i8 = i8;
                    if ((i10 & i) != 0) {
                        i8 += zzut.zzj(i12, unsafe2.getInt(t, j2));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    i8 = i8;
                    if ((i10 & i) != 0) {
                        i8 += zzut.zzf(i12, unsafe2.getLong(t, j2));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    i8 = i8;
                    if ((i10 & i) != 0) {
                        i8 += zzut.zzc(i12, (zzwt) unsafe2.getObject(t, j2), zzbn(i11));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    i8 += zzxl.zzw(i12, (List) unsafe2.getObject(t, j2), false);
                    break;
                case 19:
                    i8 += zzxl.zzv(i12, (List) unsafe2.getObject(t, j2), false);
                    break;
                case 20:
                    i8 += zzxl.zzo(i12, (List) unsafe2.getObject(t, j2), false);
                    break;
                case 21:
                    i8 += zzxl.zzp(i12, (List) unsafe2.getObject(t, j2), false);
                    break;
                case 22:
                    i8 += zzxl.zzs(i12, (List) unsafe2.getObject(t, j2), false);
                    break;
                case 23:
                    i8 += zzxl.zzw(i12, (List) unsafe2.getObject(t, j2), false);
                    break;
                case 24:
                    i8 += zzxl.zzv(i12, (List) unsafe2.getObject(t, j2), false);
                    break;
                case 25:
                    i8 += zzxl.zzx(i12, (List) unsafe2.getObject(t, j2), false);
                    break;
                case 26:
                    i8 += zzxl.zzc(i12, (List) unsafe2.getObject(t, j2));
                    break;
                case 27:
                    i8 += zzxl.zzc(i12, (List<?>) unsafe2.getObject(t, j2), zzbn(i11));
                    break;
                case 28:
                    i8 += zzxl.zzd(i12, (List) unsafe2.getObject(t, j2));
                    break;
                case 29:
                    i8 += zzxl.zzt(i12, (List) unsafe2.getObject(t, j2), false);
                    break;
                case 30:
                    i8 += zzxl.zzr(i12, (List) unsafe2.getObject(t, j2), false);
                    break;
                case 31:
                    i8 += zzxl.zzv(i12, (List) unsafe2.getObject(t, j2), false);
                    break;
                case 32:
                    i8 += zzxl.zzw(i12, (List) unsafe2.getObject(t, j2), false);
                    break;
                case 33:
                    i8 += zzxl.zzu(i12, (List) unsafe2.getObject(t, j2), false);
                    break;
                case 34:
                    i8 += zzxl.zzq(i12, (List) unsafe2.getObject(t, j2), false);
                    break;
                case 35:
                    int zzaf4 = zzxl.zzaf((List) unsafe2.getObject(t, j2));
                    i8 = i8;
                    if (zzaf4 <= 0) {
                        break;
                    } else {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i2, zzaf4);
                        }
                        i8 += zzut.zzbb(i12) + zzut.zzbd(zzaf4) + zzaf4;
                        break;
                    }
                case 36:
                    int zzae4 = zzxl.zzae((List) unsafe2.getObject(t, j2));
                    i8 = i8;
                    if (zzae4 <= 0) {
                        break;
                    } else {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i2, zzae4);
                        }
                        i8 += zzut.zzbb(i12) + zzut.zzbd(zzae4) + zzae4;
                        break;
                    }
                case 37:
                    int zzx2 = zzxl.zzx((List) unsafe2.getObject(t, j2));
                    i8 = i8;
                    if (zzx2 <= 0) {
                        break;
                    } else {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i2, zzx2);
                        }
                        i8 += zzut.zzbb(i12) + zzut.zzbd(zzx2) + zzx2;
                        break;
                    }
                case 38:
                    int zzy2 = zzxl.zzy((List) unsafe2.getObject(t, j2));
                    i8 = i8;
                    if (zzy2 <= 0) {
                        break;
                    } else {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i2, zzy2);
                        }
                        i8 += zzut.zzbb(i12) + zzut.zzbd(zzy2) + zzy2;
                        break;
                    }
                case 39:
                    int zzab2 = zzxl.zzab((List) unsafe2.getObject(t, j2));
                    i8 = i8;
                    if (zzab2 <= 0) {
                        break;
                    } else {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i2, zzab2);
                        }
                        i8 += zzut.zzbb(i12) + zzut.zzbd(zzab2) + zzab2;
                        break;
                    }
                case 40:
                    int zzaf5 = zzxl.zzaf((List) unsafe2.getObject(t, j2));
                    i8 = i8;
                    if (zzaf5 <= 0) {
                        break;
                    } else {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i2, zzaf5);
                        }
                        i8 += zzut.zzbb(i12) + zzut.zzbd(zzaf5) + zzaf5;
                        break;
                    }
                case 41:
                    int zzae5 = zzxl.zzae((List) unsafe2.getObject(t, j2));
                    i8 = i8;
                    if (zzae5 <= 0) {
                        break;
                    } else {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i2, zzae5);
                        }
                        i8 += zzut.zzbb(i12) + zzut.zzbd(zzae5) + zzae5;
                        break;
                    }
                case 42:
                    int zzag2 = zzxl.zzag((List) unsafe2.getObject(t, j2));
                    i8 = i8;
                    if (zzag2 <= 0) {
                        break;
                    } else {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i2, zzag2);
                        }
                        i8 += zzut.zzbb(i12) + zzut.zzbd(zzag2) + zzag2;
                        break;
                    }
                case 43:
                    int zzac2 = zzxl.zzac((List) unsafe2.getObject(t, j2));
                    i8 = i8;
                    if (zzac2 <= 0) {
                        break;
                    } else {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i2, zzac2);
                        }
                        i8 += zzut.zzbb(i12) + zzut.zzbd(zzac2) + zzac2;
                        break;
                    }
                case 44:
                    int zzaa2 = zzxl.zzaa((List) unsafe2.getObject(t, j2));
                    i8 = i8;
                    if (zzaa2 <= 0) {
                        break;
                    } else {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i2, zzaa2);
                        }
                        i8 += zzut.zzbb(i12) + zzut.zzbd(zzaa2) + zzaa2;
                        break;
                    }
                case 45:
                    int zzae6 = zzxl.zzae((List) unsafe2.getObject(t, j2));
                    i8 = i8;
                    if (zzae6 <= 0) {
                        break;
                    } else {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i2, zzae6);
                        }
                        i8 += zzut.zzbb(i12) + zzut.zzbd(zzae6) + zzae6;
                        break;
                    }
                case 46:
                    int zzaf6 = zzxl.zzaf((List) unsafe2.getObject(t, j2));
                    i8 = i8;
                    if (zzaf6 <= 0) {
                        break;
                    } else {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i2, zzaf6);
                        }
                        i8 += zzut.zzbb(i12) + zzut.zzbd(zzaf6) + zzaf6;
                        break;
                    }
                case 47:
                    int zzad2 = zzxl.zzad((List) unsafe2.getObject(t, j2));
                    i8 = i8;
                    if (zzad2 <= 0) {
                        break;
                    } else {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i2, zzad2);
                        }
                        i8 += zzut.zzbb(i12) + zzut.zzbd(zzad2) + zzad2;
                        break;
                    }
                case 48:
                    int zzz2 = zzxl.zzz((List) unsafe2.getObject(t, j2));
                    i8 = i8;
                    if (zzz2 <= 0) {
                        break;
                    } else {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i2, zzz2);
                        }
                        i8 += zzut.zzbb(i12) + zzut.zzbd(zzz2) + zzz2;
                        break;
                    }
                case 49:
                    i8 += zzxl.zzd(i12, (List) unsafe2.getObject(t, j2), zzbn(i11));
                    break;
                case 50:
                    i8 += this.zzcbp.zzb(i12, unsafe2.getObject(t, j2), zzbo(i11));
                    break;
                case 51:
                    i8 = i8;
                    if (zza((zzwx<T>) t, i12, i11)) {
                        i8 += zzut.zzb(i12, 0.0d);
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i8 = i8;
                    if (zza((zzwx<T>) t, i12, i11)) {
                        i8 += zzut.zzb(i12, 0.0f);
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i8 = i8;
                    if (zza((zzwx<T>) t, i12, i11)) {
                        i8 += zzut.zzd(i12, zzi(t, j2));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i8 = i8;
                    if (zza((zzwx<T>) t, i12, i11)) {
                        i8 += zzut.zze(i12, zzi(t, j2));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i8 = i8;
                    if (zza((zzwx<T>) t, i12, i11)) {
                        i8 += zzut.zzh(i12, zzh(t, j2));
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i8 = i8;
                    if (zza((zzwx<T>) t, i12, i11)) {
                        i8 += zzut.zzg(i12, 0L);
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i8 = i8;
                    if (zza((zzwx<T>) t, i12, i11)) {
                        i8 += zzut.zzk(i12, 0);
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i8 = i8;
                    if (zza((zzwx<T>) t, i12, i11)) {
                        i8 += zzut.zzc(i12, true);
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i8 = i8;
                    if (zza((zzwx<T>) t, i12, i11)) {
                        Object object2 = unsafe2.getObject(t, j2);
                        if (object2 instanceof zzud) {
                            i8 += zzut.zzc(i12, (zzud) object2);
                            break;
                        } else {
                            i8 += zzut.zzc(i12, (String) object2);
                            break;
                        }
                    } else {
                        break;
                    }
                case 60:
                    i8 = i8;
                    if (zza((zzwx<T>) t, i12, i11)) {
                        i8 += zzxl.zzc(i12, unsafe2.getObject(t, j2), zzbn(i11));
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i8 = i8;
                    if (zza((zzwx<T>) t, i12, i11)) {
                        i8 += zzut.zzc(i12, (zzud) unsafe2.getObject(t, j2));
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i8 = i8;
                    if (zza((zzwx<T>) t, i12, i11)) {
                        i8 += zzut.zzi(i12, zzh(t, j2));
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i8 = i8;
                    if (zza((zzwx<T>) t, i12, i11)) {
                        i8 += zzut.zzm(i12, zzh(t, j2));
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i8 = i8;
                    if (zza((zzwx<T>) t, i12, i11)) {
                        i8 += zzut.zzl(i12, 0);
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i8 = i8;
                    if (zza((zzwx<T>) t, i12, i11)) {
                        i8 += zzut.zzh(i12, 0L);
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i8 = i8;
                    if (zza((zzwx<T>) t, i12, i11)) {
                        i8 += zzut.zzj(i12, zzh(t, j2));
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i8 = i8;
                    if (zza((zzwx<T>) t, i12, i11)) {
                        i8 += zzut.zzf(i12, zzi(t, j2));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i8 = i8;
                    if (zza((zzwx<T>) t, i12, i11)) {
                        i8 += zzut.zzc(i12, (zzwt) unsafe2.getObject(t, j2), zzbn(i11));
                        break;
                    } else {
                        break;
                    }
                default:
                    i8 = i8;
                    break;
            }
        }
        int zza = i8 + zza(this.zzcbn, t);
        int i17 = zza;
        if (this.zzcbe) {
            i17 = zza + this.zzcbo.zzs(t).zzvu();
        }
        return i17;
    }

    /* JADX WARN: Code restructure failed: missing block: B:89:0x0214, code lost:
        continue;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzxj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzaf(T r7) {
        /*
            Method dump skipped, instructions count: 566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzwx.zzaf(java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final void zzd(T t, T t2) {
        if (t2 == null) {
            throw new NullPointerException();
        }
        for (int i = 0; i < this.zzcaz.length; i += 3) {
            int zzbq = zzbq(i);
            long j = 1048575 & zzbq;
            int i2 = this.zzcaz[i];
            switch ((zzbq & 267386880) >>> 20) {
                case 0:
                    if (zzb((zzwx<T>) t2, i)) {
                        zzyh.zza(t, j, zzyh.zzo(t2, j));
                        zzc(t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzb((zzwx<T>) t2, i)) {
                        zzyh.zza((Object) t, j, zzyh.zzn(t2, j));
                        zzc(t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzb((zzwx<T>) t2, i)) {
                        zzyh.zza((Object) t, j, zzyh.zzl(t2, j));
                        zzc(t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzb((zzwx<T>) t2, i)) {
                        zzyh.zza((Object) t, j, zzyh.zzl(t2, j));
                        zzc(t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzb((zzwx<T>) t2, i)) {
                        zzyh.zzb(t, j, zzyh.zzk(t2, j));
                        zzc(t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzb((zzwx<T>) t2, i)) {
                        zzyh.zza((Object) t, j, zzyh.zzl(t2, j));
                        zzc(t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzb((zzwx<T>) t2, i)) {
                        zzyh.zzb(t, j, zzyh.zzk(t2, j));
                        zzc(t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzb((zzwx<T>) t2, i)) {
                        zzyh.zza(t, j, zzyh.zzm(t2, j));
                        zzc(t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzb((zzwx<T>) t2, i)) {
                        zzyh.zza(t, j, zzyh.zzp(t2, j));
                        zzc(t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zza(t, t2, i);
                    break;
                case 10:
                    if (zzb((zzwx<T>) t2, i)) {
                        zzyh.zza(t, j, zzyh.zzp(t2, j));
                        zzc(t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzb((zzwx<T>) t2, i)) {
                        zzyh.zzb(t, j, zzyh.zzk(t2, j));
                        zzc(t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzb((zzwx<T>) t2, i)) {
                        zzyh.zzb(t, j, zzyh.zzk(t2, j));
                        zzc(t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzb((zzwx<T>) t2, i)) {
                        zzyh.zzb(t, j, zzyh.zzk(t2, j));
                        zzc(t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzb((zzwx<T>) t2, i)) {
                        zzyh.zza((Object) t, j, zzyh.zzl(t2, j));
                        zzc(t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzb((zzwx<T>) t2, i)) {
                        zzyh.zzb(t, j, zzyh.zzk(t2, j));
                        zzc(t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzb((zzwx<T>) t2, i)) {
                        zzyh.zza((Object) t, j, zzyh.zzl(t2, j));
                        zzc(t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zza(t, t2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzcbm.zza(t, t2, j);
                    break;
                case 50:
                    zzxl.zza(this.zzcbp, t, t2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zza((zzwx<T>) t2, i2, i)) {
                        zzyh.zza(t, j, zzyh.zzp(t2, j));
                        zzb((zzwx<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzb(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zza((zzwx<T>) t2, i2, i)) {
                        zzyh.zza(t, j, zzyh.zzp(t2, j));
                        zzb((zzwx<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzb(t, t2, i);
                    break;
            }
        }
        if (!this.zzcbg) {
            zzxl.zza(this.zzcbn, t, t2);
            if (this.zzcbe) {
                zzxl.zza(this.zzcbo, t, t2);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final void zzu(T t) {
        for (int i = this.zzcbj; i < this.zzcbk; i++) {
            long zzbq = zzbq(this.zzcbi[i]) & 1048575;
            Object zzp = zzyh.zzp(t, zzbq);
            if (zzp != null) {
                zzyh.zza(t, zzbq, this.zzcbp.zzab(zzp));
            }
        }
        int length = this.zzcbi.length;
        for (int i2 = this.zzcbk; i2 < length; i2++) {
            this.zzcbm.zzb(t, this.zzcbi[i2]);
        }
        this.zzcbn.zzu(t);
        if (this.zzcbe) {
            this.zzcbo.zzu(t);
        }
    }
}

package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvf;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzvd.class */
final class zzvd<FieldDescriptorType extends zzvf<FieldDescriptorType>> {
    private static final zzvd zzbvs = new zzvd(true);
    private boolean zzbpo;
    private boolean zzbvr = false;
    private final zzxm<FieldDescriptorType, Object> zzbvq = zzxm.zzbt(16);

    private zzvd() {
    }

    private zzvd(boolean z) {
        zzsm();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(zzyq zzyqVar, int i, Object obj) {
        int zzbb = zzut.zzbb(i);
        int i2 = zzbb;
        if (zzyqVar == zzyq.GROUP) {
            zzvo.zzf((zzwt) obj);
            i2 = zzbb << 1;
        }
        return i2 + zzb(zzyqVar, obj);
    }

    private final Object zza(FieldDescriptorType fielddescriptortype) {
        Object obj = this.zzbvq.get(fielddescriptortype);
        return obj instanceof zzvw ? zzvw.zzwt() : obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzut zzutVar, zzyq zzyqVar, int i, Object obj) throws IOException {
        if (zzyqVar == zzyq.GROUP) {
            zzwt zzwtVar = (zzwt) obj;
            zzvo.zzf(zzwtVar);
            zzutVar.zzc(i, 3);
            zzwtVar.zzb(zzutVar);
            zzutVar.zzc(i, 4);
            return;
        }
        zzutVar.zzc(i, zzyqVar.zzyq());
        switch (zzve.zzbuu[zzyqVar.ordinal()]) {
            case 1:
                zzutVar.zzb(((Double) obj).doubleValue());
                return;
            case 2:
                zzutVar.zza(((Float) obj).floatValue());
                return;
            case 3:
                zzutVar.zzav(((Long) obj).longValue());
                return;
            case 4:
                zzutVar.zzav(((Long) obj).longValue());
                return;
            case 5:
                zzutVar.zzax(((Integer) obj).intValue());
                return;
            case 6:
                zzutVar.zzax(((Long) obj).longValue());
                return;
            case 7:
                zzutVar.zzba(((Integer) obj).intValue());
                return;
            case 8:
                zzutVar.zzu(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzwt) obj).zzb(zzutVar);
                return;
            case 10:
                zzutVar.zzb((zzwt) obj);
                return;
            case 11:
                if (obj instanceof zzud) {
                    zzutVar.zza((zzud) obj);
                    return;
                } else {
                    zzutVar.zzfw((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzud) {
                    zzutVar.zza((zzud) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzutVar.zze(bArr, 0, bArr.length);
                return;
            case 13:
                zzutVar.zzay(((Integer) obj).intValue());
                return;
            case 14:
                zzutVar.zzba(((Integer) obj).intValue());
                return;
            case 15:
                zzutVar.zzax(((Long) obj).longValue());
                return;
            case 16:
                zzutVar.zzaz(((Integer) obj).intValue());
                return;
            case 17:
                zzutVar.zzaw(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzvp) {
                    zzutVar.zzax(((zzvp) obj).zzc());
                    return;
                } else {
                    zzutVar.zzax(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    private final void zza(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.zzvy()) {
            zza(fielddescriptortype.zzvw(), obj);
        } else if (!(obj instanceof List)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList2.get(i);
                i++;
                zza(fielddescriptortype.zzvw(), obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof zzvw) {
            this.zzbvr = true;
        }
        this.zzbvq.zza((zzxm<FieldDescriptorType, Object>) fielddescriptortype, (FieldDescriptorType) obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0067, code lost:
        if ((r5 instanceof com.google.android.gms.internal.measurement.zzvp) == false) goto L_0x00ad;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x007a, code lost:
        if ((r5 instanceof byte[]) == false) goto L_0x00ad;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0056, code lost:
        if ((r5 instanceof com.google.android.gms.internal.measurement.zzvw) == false) goto L_0x00ad;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zza(com.google.android.gms.internal.measurement.zzyq r4, java.lang.Object r5) {
        /*
            r0 = r5
            java.lang.Object r0 = com.google.android.gms.internal.measurement.zzvo.checkNotNull(r0)
            int[] r0 = com.google.android.gms.internal.measurement.zzve.zzbvt
            r1 = r4
            com.google.android.gms.internal.measurement.zzyv r1 = r1.zzyp()
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            switch(r0) {
                case 1: goto L_0x00a8;
                case 2: goto L_0x00a0;
                case 3: goto L_0x0098;
                case 4: goto L_0x0090;
                case 5: goto L_0x0088;
                case 6: goto L_0x0080;
                case 7: goto L_0x006f;
                case 8: goto L_0x005c;
                case 9: goto L_0x004b;
                default: goto L_0x0048;
            }
        L_0x0048:
            goto L_0x00ad
        L_0x004b:
            r0 = r5
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.zzwt
            if (r0 != 0) goto L_0x006a
            r0 = r5
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.zzvw
            if (r0 == 0) goto L_0x00ad
            goto L_0x006a
        L_0x005c:
            r0 = r5
            boolean r0 = r0 instanceof java.lang.Integer
            if (r0 != 0) goto L_0x006a
            r0 = r5
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.zzvp
            if (r0 == 0) goto L_0x00ad
        L_0x006a:
            r0 = 1
            r7 = r0
            goto L_0x00ad
        L_0x006f:
            r0 = r5
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.zzud
            if (r0 != 0) goto L_0x006a
            r0 = r5
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L_0x00ad
            goto L_0x006a
        L_0x0080:
            r0 = r5
            boolean r0 = r0 instanceof java.lang.String
            r7 = r0
            goto L_0x00ad
        L_0x0088:
            r0 = r5
            boolean r0 = r0 instanceof java.lang.Boolean
            r7 = r0
            goto L_0x00ad
        L_0x0090:
            r0 = r5
            boolean r0 = r0 instanceof java.lang.Double
            r7 = r0
            goto L_0x00ad
        L_0x0098:
            r0 = r5
            boolean r0 = r0 instanceof java.lang.Float
            r7 = r0
            goto L_0x00ad
        L_0x00a0:
            r0 = r5
            boolean r0 = r0 instanceof java.lang.Long
            r7 = r0
            goto L_0x00ad
        L_0x00a8:
            r0 = r5
            boolean r0 = r0 instanceof java.lang.Integer
            r7 = r0
        L_0x00ad:
            r0 = r7
            if (r0 != 0) goto L_0x00bb
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Wrong object type used with protocol message reflection."
            r1.<init>(r2)
            throw r0
        L_0x00bb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzvd.zza(com.google.android.gms.internal.measurement.zzyq, java.lang.Object):void");
    }

    private static int zzb(zzvf<?> zzvfVar, Object obj) {
        zzyq zzvw = zzvfVar.zzvw();
        int zzc = zzvfVar.zzc();
        if (!zzvfVar.zzvy()) {
            return zza(zzvw, zzc, obj);
        }
        int i = 0;
        int i2 = 0;
        if (zzvfVar.zzvz()) {
            for (Object obj2 : (List) obj) {
                i2 += zzb(zzvw, obj2);
            }
            return zzut.zzbb(zzc) + i2 + zzut.zzbj(i2);
        }
        for (Object obj3 : (List) obj) {
            i += zza(zzvw, zzc, obj3);
        }
        return i;
    }

    private static int zzb(zzyq zzyqVar, Object obj) {
        switch (zzve.zzbuu[zzyqVar.ordinal()]) {
            case 1:
                return zzut.zzc(((Double) obj).doubleValue());
            case 2:
                return zzut.zzb(((Float) obj).floatValue());
            case 3:
                return zzut.zzay(((Long) obj).longValue());
            case 4:
                return zzut.zzaz(((Long) obj).longValue());
            case 5:
                return zzut.zzbc(((Integer) obj).intValue());
            case 6:
                return zzut.zzbb(((Long) obj).longValue());
            case 7:
                return zzut.zzbf(((Integer) obj).intValue());
            case 8:
                return zzut.zzv(((Boolean) obj).booleanValue());
            case 9:
                return zzut.zzd((zzwt) obj);
            case 10:
                return obj instanceof zzvw ? zzut.zza((zzvw) obj) : zzut.zzc((zzwt) obj);
            case 11:
                return obj instanceof zzud ? zzut.zzb((zzud) obj) : zzut.zzfx((String) obj);
            case 12:
                return obj instanceof zzud ? zzut.zzb((zzud) obj) : zzut.zzk((byte[]) obj);
            case 13:
                return zzut.zzbd(((Integer) obj).intValue());
            case 14:
                return zzut.zzbg(((Integer) obj).intValue());
            case 15:
                return zzut.zzbc(((Long) obj).longValue());
            case 16:
                return zzut.zzbe(((Integer) obj).intValue());
            case 17:
                return zzut.zzba(((Long) obj).longValue());
            case 18:
                return obj instanceof zzvp ? zzut.zzbh(((zzvp) obj).zzc()) : zzut.zzbh(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private static boolean zzc(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.zzvx() != zzyv.MESSAGE) {
            return true;
        }
        if (key.zzvy()) {
            for (zzwt zzwtVar : (List) entry.getValue()) {
                if (!zzwtVar.isInitialized()) {
                    return false;
                }
            }
            return true;
        }
        Object value = entry.getValue();
        if (value instanceof zzwt) {
            return ((zzwt) value).isInitialized();
        }
        if (value instanceof zzvw) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    private final void zzd(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        Object obj = value;
        if (value instanceof zzvw) {
            obj = zzvw.zzwt();
        }
        if (key.zzvy()) {
            Object zza = zza((zzvd<FieldDescriptorType>) key);
            Object obj2 = zza;
            if (zza == null) {
                obj2 = new ArrayList();
            }
            for (Object obj3 : (List) obj) {
                ((List) obj2).add(zzv(obj3));
            }
            this.zzbvq.zza((zzxm<FieldDescriptorType, Object>) key, (FieldDescriptorType) obj2);
        } else if (key.zzvx() == zzyv.MESSAGE) {
            Object zza2 = zza((zzvd<FieldDescriptorType>) key);
            if (zza2 == null) {
                this.zzbvq.zza((zzxm<FieldDescriptorType, Object>) key, (FieldDescriptorType) zzv(obj));
            } else {
                this.zzbvq.zza((zzxm<FieldDescriptorType, Object>) key, (FieldDescriptorType) (zza2 instanceof zzwz ? key.zza((zzwz) zza2, (zzwz) obj) : key.zza(((zzwt) zza2).zzwd(), (zzwt) obj).zzwj()));
            }
        } else {
            this.zzbvq.zza((zzxm<FieldDescriptorType, Object>) key, (FieldDescriptorType) zzv(obj));
        }
    }

    private static int zze(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        return (key.zzvx() != zzyv.MESSAGE || key.zzvy() || key.zzvz()) ? zzb((zzvf<?>) key, value) : value instanceof zzvw ? zzut.zzb(entry.getKey().zzc(), (zzvw) value) : zzut.zzd(entry.getKey().zzc(), (zzwt) value);
    }

    private static Object zzv(Object obj) {
        if (obj instanceof zzwz) {
            return ((zzwz) obj).zzxj();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static <T extends zzvf<T>> zzvd<T> zzvt() {
        return zzbvs;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzvd zzvdVar = new zzvd();
        for (int i = 0; i < this.zzbvq.zzxw(); i++) {
            Map.Entry<FieldDescriptorType, Object> zzbu = this.zzbvq.zzbu(i);
            zzvdVar.zza((zzvd) zzbu.getKey(), zzbu.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzbvq.zzxx()) {
            zzvdVar.zza((zzvd) entry.getKey(), entry.getValue());
        }
        zzvdVar.zzbvr = this.zzbvr;
        return zzvdVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Iterator<Map.Entry<FieldDescriptorType, Object>> descendingIterator() {
        return this.zzbvr ? new zzvz(this.zzbvq.zzxy().iterator()) : this.zzbvq.zzxy().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzvd)) {
            return false;
        }
        return this.zzbvq.equals(((zzvd) obj).zzbvq);
    }

    public final int hashCode() {
        return this.zzbvq.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isEmpty() {
        return this.zzbvq.isEmpty();
    }

    public final boolean isImmutable() {
        return this.zzbpo;
    }

    public final boolean isInitialized() {
        for (int i = 0; i < this.zzbvq.zzxw(); i++) {
            if (!zzc(this.zzbvq.zzbu(i))) {
                return false;
            }
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzbvq.zzxx()) {
            if (!zzc(entry)) {
                return false;
            }
        }
        return true;
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> iterator() {
        return this.zzbvr ? new zzvz(this.zzbvq.entrySet().iterator()) : this.zzbvq.entrySet().iterator();
    }

    public final void zza(zzvd<FieldDescriptorType> zzvdVar) {
        for (int i = 0; i < zzvdVar.zzbvq.zzxw(); i++) {
            zzd(zzvdVar.zzbvq.zzbu(i));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : zzvdVar.zzbvq.zzxx()) {
            zzd(entry);
        }
    }

    public final void zzsm() {
        if (!this.zzbpo) {
            this.zzbvq.zzsm();
            this.zzbpo = true;
        }
    }

    public final int zzvu() {
        int i = 0;
        for (int i2 = 0; i2 < this.zzbvq.zzxw(); i2++) {
            Map.Entry<FieldDescriptorType, Object> zzbu = this.zzbvq.zzbu(i2);
            i += zzb((zzvf<?>) zzbu.getKey(), zzbu.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzbvq.zzxx()) {
            i += zzb((zzvf<?>) entry.getKey(), entry.getValue());
        }
        return i;
    }

    public final int zzvv() {
        int i = 0;
        for (int i2 = 0; i2 < this.zzbvq.zzxw(); i2++) {
            i += zze(this.zzbvq.zzbu(i2));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzbvq.zzxx()) {
            i += zze(entry);
        }
        return i;
    }
}

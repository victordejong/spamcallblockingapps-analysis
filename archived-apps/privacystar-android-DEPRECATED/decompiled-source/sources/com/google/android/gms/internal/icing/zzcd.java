package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzcf;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzcd.class */
final class zzcd<FieldDescriptorType extends zzcf<FieldDescriptorType>> {
    private static final zzcd zzeu = new zzcd(true);
    private boolean zzes;
    private boolean zzet = false;
    private final zzei<FieldDescriptorType, Object> zzer = zzei.zzae(16);

    private zzcd() {
    }

    private zzcd(boolean z) {
        zzp();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(zzfl zzflVar, int i, Object obj) {
        int zzp = zzbu.zzp(i);
        int i2 = zzp;
        if (zzflVar == zzfl.GROUP) {
            zzcm.zzf((zzdr) obj);
            i2 = zzp << 1;
        }
        return i2 + zzb(zzflVar, obj);
    }

    private final Object zza(FieldDescriptorType fielddescriptortype) {
        Object obj = this.zzer.get(fielddescriptortype);
        Object obj2 = obj;
        if (obj instanceof zzcv) {
            obj2 = zzcv.zzbf();
        }
        return obj2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzbu zzbuVar, zzfl zzflVar, int i, Object obj) throws IOException {
        if (zzflVar == zzfl.GROUP) {
            zzdr zzdrVar = (zzdr) obj;
            zzcm.zzf(zzdrVar);
            zzbuVar.zzb(i, 3);
            zzdrVar.zzb(zzbuVar);
            zzbuVar.zzb(i, 4);
            return;
        }
        zzbuVar.zzb(i, zzflVar.zzcz());
        switch (zzce.zzew[zzflVar.ordinal()]) {
            case 1:
                zzbuVar.zza(((Double) obj).doubleValue());
                return;
            case 2:
                zzbuVar.zza(((Float) obj).floatValue());
                return;
            case 3:
                zzbuVar.zzb(((Long) obj).longValue());
                return;
            case 4:
                zzbuVar.zzb(((Long) obj).longValue());
                return;
            case 5:
                zzbuVar.zzl(((Integer) obj).intValue());
                return;
            case 6:
                zzbuVar.zzd(((Long) obj).longValue());
                return;
            case 7:
                zzbuVar.zzo(((Integer) obj).intValue());
                return;
            case 8:
                zzbuVar.zze(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzdr) obj).zzb(zzbuVar);
                return;
            case 10:
                zzbuVar.zzb((zzdr) obj);
                return;
            case 11:
                if (obj instanceof zzbi) {
                    zzbuVar.zza((zzbi) obj);
                    return;
                } else {
                    zzbuVar.zzh((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzbi) {
                    zzbuVar.zza((zzbi) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzbuVar.zzb(bArr, 0, bArr.length);
                return;
            case 13:
                zzbuVar.zzm(((Integer) obj).intValue());
                return;
            case 14:
                zzbuVar.zzo(((Integer) obj).intValue());
                return;
            case 15:
                zzbuVar.zzd(((Long) obj).longValue());
                return;
            case 16:
                zzbuVar.zzn(((Integer) obj).intValue());
                return;
            case 17:
                zzbuVar.zzc(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzcp) {
                    zzbuVar.zzl(((zzcp) obj).zzap());
                    return;
                } else {
                    zzbuVar.zzl(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    private final void zza(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.zzas()) {
            zza(fielddescriptortype.zzaq(), obj);
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
                zza(fielddescriptortype.zzaq(), obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof zzcv) {
            this.zzet = true;
        }
        this.zzer.zza((zzei<FieldDescriptorType, Object>) fielddescriptortype, (FieldDescriptorType) obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0067, code lost:
        if ((r5 instanceof com.google.android.gms.internal.icing.zzcp) == false) goto L_0x00ad;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x007a, code lost:
        if ((r5 instanceof byte[]) == false) goto L_0x00ad;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0056, code lost:
        if ((r5 instanceof com.google.android.gms.internal.icing.zzcv) == false) goto L_0x00ad;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zza(com.google.android.gms.internal.icing.zzfl r4, java.lang.Object r5) {
        /*
            r0 = r5
            java.lang.Object r0 = com.google.android.gms.internal.icing.zzcm.checkNotNull(r0)
            int[] r0 = com.google.android.gms.internal.icing.zzce.zzev
            r1 = r4
            com.google.android.gms.internal.icing.zzfq r1 = r1.zzcy()
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
            boolean r0 = r0 instanceof com.google.android.gms.internal.icing.zzdr
            if (r0 != 0) goto L_0x006a
            r0 = r5
            boolean r0 = r0 instanceof com.google.android.gms.internal.icing.zzcv
            if (r0 == 0) goto L_0x00ad
            goto L_0x006a
        L_0x005c:
            r0 = r5
            boolean r0 = r0 instanceof java.lang.Integer
            if (r0 != 0) goto L_0x006a
            r0 = r5
            boolean r0 = r0 instanceof com.google.android.gms.internal.icing.zzcp
            if (r0 == 0) goto L_0x00ad
        L_0x006a:
            r0 = 1
            r7 = r0
            goto L_0x00ad
        L_0x006f:
            r0 = r5
            boolean r0 = r0 instanceof com.google.android.gms.internal.icing.zzbi
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzcd.zza(com.google.android.gms.internal.icing.zzfl, java.lang.Object):void");
    }

    public static <T extends zzcf<T>> zzcd<T> zzam() {
        return zzeu;
    }

    private static int zzb(zzcf<?> zzcfVar, Object obj) {
        zzfl zzaq = zzcfVar.zzaq();
        int zzap = zzcfVar.zzap();
        if (!zzcfVar.zzas()) {
            return zza(zzaq, zzap, obj);
        }
        int i = 0;
        int i2 = 0;
        if (zzcfVar.zzat()) {
            for (Object obj2 : (List) obj) {
                i2 += zzb(zzaq, obj2);
            }
            return zzbu.zzp(zzap) + i2 + zzbu.zzx(i2);
        }
        for (Object obj3 : (List) obj) {
            i += zza(zzaq, zzap, obj3);
        }
        return i;
    }

    private static int zzb(zzfl zzflVar, Object obj) {
        switch (zzce.zzew[zzflVar.ordinal()]) {
            case 1:
                return zzbu.zzb(((Double) obj).doubleValue());
            case 2:
                return zzbu.zzb(((Float) obj).floatValue());
            case 3:
                return zzbu.zze(((Long) obj).longValue());
            case 4:
                return zzbu.zzf(((Long) obj).longValue());
            case 5:
                return zzbu.zzq(((Integer) obj).intValue());
            case 6:
                return zzbu.zzh(((Long) obj).longValue());
            case 7:
                return zzbu.zzt(((Integer) obj).intValue());
            case 8:
                return zzbu.zzf(((Boolean) obj).booleanValue());
            case 9:
                return zzbu.zzd((zzdr) obj);
            case 10:
                return obj instanceof zzcv ? zzbu.zza((zzcv) obj) : zzbu.zzc((zzdr) obj);
            case 11:
                return obj instanceof zzbi ? zzbu.zzb((zzbi) obj) : zzbu.zzi((String) obj);
            case 12:
                return obj instanceof zzbi ? zzbu.zzb((zzbi) obj) : zzbu.zzc((byte[]) obj);
            case 13:
                return zzbu.zzr(((Integer) obj).intValue());
            case 14:
                return zzbu.zzu(((Integer) obj).intValue());
            case 15:
                return zzbu.zzi(((Long) obj).longValue());
            case 16:
                return zzbu.zzs(((Integer) obj).intValue());
            case 17:
                return zzbu.zzg(((Long) obj).longValue());
            case 18:
                return obj instanceof zzcp ? zzbu.zzv(((zzcp) obj).zzap()) : zzbu.zzv(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private static boolean zzb(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.zzar() != zzfq.MESSAGE) {
            return true;
        }
        if (key.zzas()) {
            for (zzdr zzdrVar : (List) entry.getValue()) {
                if (!zzdrVar.isInitialized()) {
                    return false;
                }
            }
            return true;
        }
        Object value = entry.getValue();
        if (value instanceof zzdr) {
            return ((zzdr) value).isInitialized();
        }
        if (value instanceof zzcv) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    private final void zzc(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        Object obj = value;
        if (value instanceof zzcv) {
            obj = zzcv.zzbf();
        }
        if (key.zzas()) {
            Object zza = zza((zzcd<FieldDescriptorType>) key);
            Object obj2 = zza;
            if (zza == null) {
                obj2 = new ArrayList();
            }
            for (Object obj3 : (List) obj) {
                ((List) obj2).add(zzd(obj3));
            }
            this.zzer.zza((zzei<FieldDescriptorType, Object>) key, (FieldDescriptorType) obj2);
        } else if (key.zzar() == zzfq.MESSAGE) {
            Object zza2 = zza((zzcd<FieldDescriptorType>) key);
            if (zza2 == null) {
                this.zzer.zza((zzei<FieldDescriptorType, Object>) key, (FieldDescriptorType) zzd(obj));
            } else {
                this.zzer.zza((zzei<FieldDescriptorType, Object>) key, (FieldDescriptorType) (zza2 instanceof zzdx ? key.zza((zzdx) zza2, (zzdx) obj) : key.zza(((zzdr) zza2).zzaz(), (zzdr) obj).zzbc()));
            }
        } else {
            this.zzer.zza((zzei<FieldDescriptorType, Object>) key, (FieldDescriptorType) zzd(obj));
        }
    }

    private static int zzd(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        return (key.zzar() != zzfq.MESSAGE || key.zzas() || key.zzat()) ? zzb((zzcf<?>) key, value) : value instanceof zzcv ? zzbu.zzb(entry.getKey().zzap(), (zzcv) value) : zzbu.zzb(entry.getKey().zzap(), (zzdr) value);
    }

    private static Object zzd(Object obj) {
        if (obj instanceof zzdx) {
            return ((zzdx) obj).zzbv();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzcd zzcdVar = new zzcd();
        for (int i = 0; i < this.zzer.zzci(); i++) {
            Map.Entry<FieldDescriptorType, Object> zzaf = this.zzer.zzaf(i);
            zzcdVar.zza((zzcd) zzaf.getKey(), zzaf.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzer.zzcj()) {
            zzcdVar.zza((zzcd) entry.getKey(), entry.getValue());
        }
        zzcdVar.zzet = this.zzet;
        return zzcdVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Iterator<Map.Entry<FieldDescriptorType, Object>> descendingIterator() {
        return this.zzet ? new zzcy(this.zzer.zzck().iterator()) : this.zzer.zzck().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzcd)) {
            return false;
        }
        return this.zzer.equals(((zzcd) obj).zzer);
    }

    public final int hashCode() {
        return this.zzer.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isEmpty() {
        return this.zzer.isEmpty();
    }

    public final boolean isImmutable() {
        return this.zzes;
    }

    public final boolean isInitialized() {
        for (int i = 0; i < this.zzer.zzci(); i++) {
            if (!zzb(this.zzer.zzaf(i))) {
                return false;
            }
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzer.zzcj()) {
            if (!zzb(entry)) {
                return false;
            }
        }
        return true;
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> iterator() {
        return this.zzet ? new zzcy(this.zzer.entrySet().iterator()) : this.zzer.entrySet().iterator();
    }

    public final void zza(zzcd<FieldDescriptorType> zzcdVar) {
        for (int i = 0; i < zzcdVar.zzer.zzci(); i++) {
            zzc(zzcdVar.zzer.zzaf(i));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : zzcdVar.zzer.zzcj()) {
            zzc(entry);
        }
    }

    public final int zzan() {
        int i = 0;
        for (int i2 = 0; i2 < this.zzer.zzci(); i2++) {
            Map.Entry<FieldDescriptorType, Object> zzaf = this.zzer.zzaf(i2);
            i += zzb((zzcf<?>) zzaf.getKey(), zzaf.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzer.zzcj()) {
            i += zzb((zzcf<?>) entry.getKey(), entry.getValue());
        }
        return i;
    }

    public final int zzao() {
        int i = 0;
        for (int i2 = 0; i2 < this.zzer.zzci(); i2++) {
            i += zzd((Map.Entry) this.zzer.zzaf(i2));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzer.zzcj()) {
            i += zzd((Map.Entry) entry);
        }
        return i;
    }

    public final void zzp() {
        if (!this.zzes) {
            this.zzer.zzp();
            this.zzes = true;
        }
    }
}

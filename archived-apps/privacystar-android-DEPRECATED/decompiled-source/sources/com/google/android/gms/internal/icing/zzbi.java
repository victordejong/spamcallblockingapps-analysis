package com.google.android.gms.internal.icing;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbi.class */
public abstract class zzbi implements Serializable, Iterable<Byte> {
    public static final zzbi zzdq = new zzbp(zzcm.zzij);
    private static final zzbm zzdr;
    private int zzds = 0;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.google.android.gms.internal.icing.zzbk] */
    /* JADX WARN: Type inference failed for: r4v2, types: [com.google.android.gms.internal.icing.zzbq] */
    static {
        zzdr = zzbf.zzr() ? new zzbq(null) : new zzbk(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(32);
            sb.append("Beginning index: ");
            sb.append(i);
            sb.append(" < 0");
            throw new IndexOutOfBoundsException(sb.toString());
        } else if (i2 < i) {
            StringBuilder sb2 = new StringBuilder(66);
            sb2.append("Beginning index larger than ending index: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            throw new IndexOutOfBoundsException(sb2.toString());
        } else {
            StringBuilder sb3 = new StringBuilder(37);
            sb3.append("End index: ");
            sb3.append(i2);
            sb3.append(" >= ");
            sb3.append(i3);
            throw new IndexOutOfBoundsException(sb3.toString());
        }
    }

    public static zzbi zzg(String str) {
        return new zzbp(str.getBytes(zzcm.UTF_8));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzbn zzj(int i) {
        return new zzbn(i, null);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zzds;
        int i2 = i;
        if (i == 0) {
            int size = size();
            int zza = zza(size, 0, size);
            i2 = zza;
            if (zza == 0) {
                i2 = 1;
            }
            this.zzds = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zzbj(this);
    }

    public abstract int size();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    protected abstract int zza(int i, int i2, int i3);

    public abstract zzbi zza(int i, int i2);

    protected abstract String zza(Charset charset);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(zzbh zzbhVar) throws IOException;

    public abstract byte zzi(int i);

    public final String zzu() {
        return size() == 0 ? "" : zza(zzcm.UTF_8);
    }

    public abstract boolean zzv();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zzw() {
        return this.zzds;
    }
}

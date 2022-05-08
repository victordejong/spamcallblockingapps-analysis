package com.google.android.gms.internal.icing;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfx.class */
final class zzfx implements Cloneable {
    private Object value;
    private zzfv<?, ?> zzob;
    private List<Object> zzoc = new ArrayList();

    private final byte[] toByteArray() throws IOException {
        byte[] bArr = new byte[zze()];
        zza(zzfs.zzf(bArr));
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: zzdc */
    public final zzfx clone() {
        Object clone;
        zzfx zzfxVar = new zzfx();
        try {
            zzfxVar.zzob = this.zzob;
            if (this.zzoc == null) {
                zzfxVar.zzoc = null;
            } else {
                zzfxVar.zzoc.addAll(this.zzoc);
            }
            if (this.value != null) {
                if (this.value instanceof zzfz) {
                    clone = (zzfz) ((zzfz) this.value).clone();
                } else if (this.value instanceof byte[]) {
                    clone = ((byte[]) this.value).clone();
                } else {
                    if (this.value instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.value;
                        byte[] bArr2 = new byte[bArr.length];
                        zzfxVar.value = bArr2;
                        for (int i = 0; i < bArr.length; i++) {
                            bArr2[i] = (byte[]) bArr[i].clone();
                        }
                    } else if (this.value instanceof boolean[]) {
                        clone = ((boolean[]) this.value).clone();
                    } else if (this.value instanceof int[]) {
                        clone = ((int[]) this.value).clone();
                    } else if (this.value instanceof long[]) {
                        clone = ((long[]) this.value).clone();
                    } else if (this.value instanceof float[]) {
                        clone = ((float[]) this.value).clone();
                    } else if (this.value instanceof double[]) {
                        clone = ((double[]) this.value).clone();
                    } else if (this.value instanceof zzfz[]) {
                        zzfz[] zzfzVarArr = (zzfz[]) this.value;
                        zzfz[] zzfzVarArr2 = new zzfz[zzfzVarArr.length];
                        zzfxVar.value = zzfzVarArr2;
                        for (int i2 = 0; i2 < zzfzVarArr.length; i2++) {
                            zzfzVarArr2[i2] = (zzfz) zzfzVarArr[i2].clone();
                        }
                    }
                }
                zzfxVar.value = clone;
                return zzfxVar;
            }
            return zzfxVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfx)) {
            return false;
        }
        zzfx zzfxVar = (zzfx) obj;
        if (this.value == null || zzfxVar.value == null) {
            if (this.zzoc != null && zzfxVar.zzoc != null) {
                return this.zzoc.equals(zzfxVar.zzoc);
            }
            try {
                return Arrays.equals(toByteArray(), zzfxVar.toByteArray());
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        } else if (this.zzob != zzfxVar.zzob) {
            return false;
        } else {
            return !this.zzob.zznw.isArray() ? this.value.equals(zzfxVar.value) : this.value instanceof byte[] ? Arrays.equals((byte[]) this.value, (byte[]) zzfxVar.value) : this.value instanceof int[] ? Arrays.equals((int[]) this.value, (int[]) zzfxVar.value) : this.value instanceof long[] ? Arrays.equals((long[]) this.value, (long[]) zzfxVar.value) : this.value instanceof float[] ? Arrays.equals((float[]) this.value, (float[]) zzfxVar.value) : this.value instanceof double[] ? Arrays.equals((double[]) this.value, (double[]) zzfxVar.value) : this.value instanceof boolean[] ? Arrays.equals((boolean[]) this.value, (boolean[]) zzfxVar.value) : Arrays.deepEquals((Object[]) this.value, (Object[]) zzfxVar.value);
        }
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(toByteArray()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzfs zzfsVar) throws IOException {
        if (this.value != null) {
            throw new NoSuchMethodError();
        }
        Iterator<Object> it = this.zzoc.iterator();
        if (it.hasNext()) {
            it.next();
            throw new NoSuchMethodError();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zze() {
        if (this.value != null) {
            throw new NoSuchMethodError();
        }
        Iterator<Object> it = this.zzoc.iterator();
        if (!it.hasNext()) {
            return 0;
        }
        it.next();
        throw new NoSuchMethodError();
    }
}

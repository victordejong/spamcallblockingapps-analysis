package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akv.class */
final class akv implements Cloneable {

    /* renamed from: a */
    private zzdvp<?, ?> f7550a;

    /* renamed from: b */
    private Object f7551b;

    /* renamed from: c */
    private List<Object> f7552c = new ArrayList();

    /* renamed from: c */
    private final byte[] m4947c() {
        byte[] bArr = new byte[m4949a()];
        zzdvo.zzaa(bArr);
        m4948b();
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public final akv clone() {
        Object clone;
        akv akvVar = new akv();
        try {
            akvVar.f7550a = this.f7550a;
            if (this.f7552c == null) {
                akvVar.f7552c = null;
            } else {
                akvVar.f7552c.addAll(this.f7552c);
            }
            if (this.f7551b != null) {
                if (this.f7551b instanceof zzdvt) {
                    clone = (zzdvt) ((zzdvt) this.f7551b).clone();
                } else if (this.f7551b instanceof byte[]) {
                    clone = ((byte[]) this.f7551b).clone();
                } else {
                    if (this.f7551b instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.f7551b;
                        byte[] bArr2 = new byte[bArr.length];
                        akvVar.f7551b = bArr2;
                        for (int i = 0; i < bArr.length; i++) {
                            bArr2[i] = (byte[]) bArr[i].clone();
                        }
                    } else if (this.f7551b instanceof boolean[]) {
                        clone = ((boolean[]) this.f7551b).clone();
                    } else if (this.f7551b instanceof int[]) {
                        clone = ((int[]) this.f7551b).clone();
                    } else if (this.f7551b instanceof long[]) {
                        clone = ((long[]) this.f7551b).clone();
                    } else if (this.f7551b instanceof float[]) {
                        clone = ((float[]) this.f7551b).clone();
                    } else if (this.f7551b instanceof double[]) {
                        clone = ((double[]) this.f7551b).clone();
                    } else if (this.f7551b instanceof zzdvt[]) {
                        zzdvt[] zzdvtVarArr = (zzdvt[]) this.f7551b;
                        zzdvt[] zzdvtVarArr2 = new zzdvt[zzdvtVarArr.length];
                        akvVar.f7551b = zzdvtVarArr2;
                        for (int i2 = 0; i2 < zzdvtVarArr.length; i2++) {
                            zzdvtVarArr2[i2] = (zzdvt) zzdvtVarArr[i2].clone();
                        }
                    }
                }
                akvVar.f7551b = clone;
            }
            return akvVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final int m4949a() {
        if (this.f7551b == null) {
            Iterator<Object> it = this.f7552c.iterator();
            if (!it.hasNext()) {
                return 0;
            }
            it.next();
            throw new NoSuchMethodError();
        }
        throw new NoSuchMethodError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m4948b() {
        if (this.f7551b == null) {
            Iterator<Object> it = this.f7552c.iterator();
            if (it.hasNext()) {
                it.next();
                throw new NoSuchMethodError();
            }
            return;
        }
        throw new NoSuchMethodError();
    }

    public final boolean equals(Object obj) {
        List<Object> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof akv)) {
            return false;
        }
        akv akvVar = (akv) obj;
        if (this.f7551b == null || akvVar.f7551b == null) {
            List<Object> list2 = this.f7552c;
            if (list2 != null && (list = akvVar.f7552c) != null) {
                return list2.equals(list);
            }
            try {
                return Arrays.equals(m4947c(), akvVar.m4947c());
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        } else {
            zzdvp<?, ?> zzdvpVar = this.f7550a;
            if (zzdvpVar != akvVar.f7550a) {
                return false;
            }
            boolean isArray = zzdvpVar.f14600a.isArray();
            Object obj2 = this.f7551b;
            return !isArray ? obj2.equals(akvVar.f7551b) : obj2 instanceof byte[] ? Arrays.equals((byte[]) obj2, (byte[]) akvVar.f7551b) : obj2 instanceof int[] ? Arrays.equals((int[]) obj2, (int[]) akvVar.f7551b) : obj2 instanceof long[] ? Arrays.equals((long[]) obj2, (long[]) akvVar.f7551b) : obj2 instanceof float[] ? Arrays.equals((float[]) obj2, (float[]) akvVar.f7551b) : obj2 instanceof double[] ? Arrays.equals((double[]) obj2, (double[]) akvVar.f7551b) : obj2 instanceof boolean[] ? Arrays.equals((boolean[]) obj2, (boolean[]) akvVar.f7551b) : Arrays.deepEquals((Object[]) obj2, (Object[]) akvVar.f7551b);
        }
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(m4947c()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }
}

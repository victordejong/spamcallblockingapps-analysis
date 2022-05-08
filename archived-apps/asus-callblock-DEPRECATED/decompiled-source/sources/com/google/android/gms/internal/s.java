package com.google.android.gms.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/s.class */
public final class s implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    q<?, ?> f4222a;

    /* renamed from: b  reason: collision with root package name */
    Object f4223b;
    List<x> c = new ArrayList();

    private byte[] b() {
        byte[] bArr = new byte[a()];
        a(o.a(bArr, bArr.length));
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public s clone() {
        s sVar = new s();
        try {
            sVar.f4222a = this.f4222a;
            if (this.c == null) {
                sVar.c = null;
            } else {
                sVar.c.addAll(this.c);
            }
            if (this.f4223b != null) {
                if (this.f4223b instanceof v) {
                    sVar.f4223b = (v) ((v) this.f4223b).clone();
                } else if (this.f4223b instanceof byte[]) {
                    sVar.f4223b = ((byte[]) this.f4223b).clone();
                } else if (this.f4223b instanceof byte[][]) {
                    byte[][] bArr = (byte[][]) this.f4223b;
                    byte[] bArr2 = new byte[bArr.length];
                    sVar.f4223b = bArr2;
                    for (int i = 0; i < bArr.length; i++) {
                        bArr2[i] = (byte[]) bArr[i].clone();
                    }
                } else if (this.f4223b instanceof boolean[]) {
                    sVar.f4223b = ((boolean[]) this.f4223b).clone();
                } else if (this.f4223b instanceof int[]) {
                    sVar.f4223b = ((int[]) this.f4223b).clone();
                } else if (this.f4223b instanceof long[]) {
                    sVar.f4223b = ((long[]) this.f4223b).clone();
                } else if (this.f4223b instanceof float[]) {
                    sVar.f4223b = ((float[]) this.f4223b).clone();
                } else if (this.f4223b instanceof double[]) {
                    sVar.f4223b = ((double[]) this.f4223b).clone();
                } else if (this.f4223b instanceof v[]) {
                    v[] vVarArr = (v[]) this.f4223b;
                    v[] vVarArr2 = new v[vVarArr.length];
                    sVar.f4223b = vVarArr2;
                    for (int i2 = 0; i2 < vVarArr.length; i2++) {
                        vVarArr2[i2] = (v) vVarArr[i2].clone();
                    }
                }
            }
            return sVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        int i;
        if (this.f4223b == null) {
            Iterator<x> it = this.c.iterator();
            int i2 = 0;
            while (true) {
                i = i2;
                if (!it.hasNext()) {
                    break;
                }
                x next = it.next();
                i2 = next.f4227b.length + o.d(next.f4226a) + 0 + i2;
            }
        } else {
            i = this.f4222a.a(this.f4223b);
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(o oVar) {
        if (this.f4223b != null) {
            this.f4222a.a(this.f4223b, oVar);
            return;
        }
        for (x xVar : this.c) {
            oVar.c(xVar.f4226a);
            oVar.b(xVar.f4227b);
        }
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            z = true;
        } else {
            z = false;
            if (obj instanceof s) {
                s sVar = (s) obj;
                if (this.f4223b != null && sVar.f4223b != null) {
                    z = false;
                    if (this.f4222a == sVar.f4222a) {
                        z = !this.f4222a.f4219b.isArray() ? this.f4223b.equals(sVar.f4223b) : this.f4223b instanceof byte[] ? Arrays.equals((byte[]) this.f4223b, (byte[]) sVar.f4223b) : this.f4223b instanceof int[] ? Arrays.equals((int[]) this.f4223b, (int[]) sVar.f4223b) : this.f4223b instanceof long[] ? Arrays.equals((long[]) this.f4223b, (long[]) sVar.f4223b) : this.f4223b instanceof float[] ? Arrays.equals((float[]) this.f4223b, (float[]) sVar.f4223b) : this.f4223b instanceof double[] ? Arrays.equals((double[]) this.f4223b, (double[]) sVar.f4223b) : this.f4223b instanceof boolean[] ? Arrays.equals((boolean[]) this.f4223b, (boolean[]) sVar.f4223b) : Arrays.deepEquals((Object[]) this.f4223b, (Object[]) sVar.f4223b);
                    }
                } else if (this.c == null || sVar.c == null) {
                    try {
                        z = Arrays.equals(b(), sVar.b());
                    } catch (IOException e) {
                        throw new IllegalStateException(e);
                    }
                } else {
                    z = this.c.equals(sVar.c);
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(b()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }
}

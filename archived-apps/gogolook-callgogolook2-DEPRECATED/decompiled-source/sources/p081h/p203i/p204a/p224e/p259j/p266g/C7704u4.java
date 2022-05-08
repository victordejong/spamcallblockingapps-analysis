package p081h.p203i.p204a.p224e.p259j.p266g;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* renamed from: h.i.a.e.j.g.u4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/u4.class */
public final class C7704u4 implements Cloneable {

    /* renamed from: a */
    public C7690s4<?, ?> f18044a;

    /* renamed from: b */
    public Object f18045b;

    /* renamed from: c */
    public List<Object> f18046c = new ArrayList();

    /* renamed from: a */
    public final void m19774a(C7669p4 p4Var) throws IOException {
        if (this.f18045b == null) {
            Iterator<Object> it = this.f18046c.iterator();
            if (it.hasNext()) {
                it.next();
                throw new NoSuchMethodError();
            }
            return;
        }
        throw new NoSuchMethodError();
    }

    /* renamed from: d */
    public final byte[] m19773d() throws IOException {
        byte[] bArr = new byte[m19772e()];
        m19774a(C7669p4.m19843a(bArr));
        return bArr;
    }

    /* renamed from: e */
    public final int m19772e() {
        if (this.f18045b == null) {
            Iterator<Object> it = this.f18046c.iterator();
            if (!it.hasNext()) {
                return 0;
            }
            it.next();
            throw new NoSuchMethodError();
        }
        throw new NoSuchMethodError();
    }

    public final boolean equals(Object obj) {
        List<Object> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7704u4)) {
            return false;
        }
        C7704u4 u4Var = (C7704u4) obj;
        if (this.f18045b == null || u4Var.f18045b == null) {
            List<Object> list2 = this.f18046c;
            if (list2 != null && (list = u4Var.f18046c) != null) {
                return list2.equals(list);
            }
            try {
                return Arrays.equals(m19773d(), u4Var.m19773d());
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        } else {
            C7690s4<?, ?> s4Var = this.f18044a;
            if (s4Var != u4Var.f18044a) {
                return false;
            }
            if (!s4Var.f18026a.isArray()) {
                return this.f18045b.equals(u4Var.f18045b);
            }
            Object obj2 = this.f18045b;
            return obj2 instanceof byte[] ? Arrays.equals((byte[]) obj2, (byte[]) u4Var.f18045b) : obj2 instanceof int[] ? Arrays.equals((int[]) obj2, (int[]) u4Var.f18045b) : obj2 instanceof long[] ? Arrays.equals((long[]) obj2, (long[]) u4Var.f18045b) : obj2 instanceof float[] ? Arrays.equals((float[]) obj2, (float[]) u4Var.f18045b) : obj2 instanceof double[] ? Arrays.equals((double[]) obj2, (double[]) u4Var.f18045b) : obj2 instanceof boolean[] ? Arrays.equals((boolean[]) obj2, (boolean[]) u4Var.f18045b) : Arrays.deepEquals((Object[]) obj2, (Object[]) u4Var.f18045b);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    public final C7704u4 clone() {
        Object clone;
        C7704u4 u4Var = new C7704u4();
        try {
            u4Var.f18044a = this.f18044a;
            if (this.f18046c == null) {
                u4Var.f18046c = null;
            } else {
                u4Var.f18046c.addAll(this.f18046c);
            }
            if (this.f18045b != null) {
                if (this.f18045b instanceof C7718w4) {
                    clone = (C7718w4) ((C7718w4) this.f18045b).clone();
                } else if (this.f18045b instanceof byte[]) {
                    clone = ((byte[]) this.f18045b).clone();
                } else {
                    if (this.f18045b instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.f18045b;
                        byte[] bArr2 = new byte[bArr.length];
                        u4Var.f18045b = bArr2;
                        for (int i = 0; i < bArr.length; i++) {
                            bArr2[i] = (byte[]) bArr[i].clone();
                        }
                    } else if (this.f18045b instanceof boolean[]) {
                        clone = ((boolean[]) this.f18045b).clone();
                    } else if (this.f18045b instanceof int[]) {
                        clone = ((int[]) this.f18045b).clone();
                    } else if (this.f18045b instanceof long[]) {
                        clone = ((long[]) this.f18045b).clone();
                    } else if (this.f18045b instanceof float[]) {
                        clone = ((float[]) this.f18045b).clone();
                    } else if (this.f18045b instanceof double[]) {
                        clone = ((double[]) this.f18045b).clone();
                    } else if (this.f18045b instanceof C7718w4[]) {
                        C7718w4[] w4VarArr = (C7718w4[]) this.f18045b;
                        C7718w4[] w4VarArr2 = new C7718w4[w4VarArr.length];
                        u4Var.f18045b = w4VarArr2;
                        for (int i2 = 0; i2 < w4VarArr.length; i2++) {
                            w4VarArr2[i2] = (C7718w4) w4VarArr[i2].clone();
                        }
                    }
                }
                u4Var.f18045b = clone;
            }
            return u4Var;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(m19773d()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }
}

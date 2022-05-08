package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: h.i.a.e.j.j.g5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/g5.class */
public final class C7813g5 implements Cloneable {

    /* renamed from: a */
    public C7796e5<?, ?> f18267a;

    /* renamed from: b */
    public Object f18268b;

    /* renamed from: c */
    public List<C7859l5> f18269c = new ArrayList();

    /* renamed from: a */
    public final void m19373a(C7764a5 a5Var) throws IOException {
        if (this.f18268b == null) {
            for (C7859l5 l5Var : this.f18269c) {
                a5Var.m19532b(l5Var.f18405a);
                a5Var.m19534a(l5Var.f18406b);
            }
            return;
        }
        throw new NoSuchMethodError();
    }

    /* renamed from: a */
    public final void m19372a(C7859l5 l5Var) throws IOException {
        List<C7859l5> list = this.f18269c;
        if (list != null) {
            list.add(l5Var);
            return;
        }
        Object obj = this.f18268b;
        if (obj instanceof AbstractC7843j5) {
            byte[] bArr = l5Var.f18406b;
            C7970z4 a = C7970z4.m18730a(bArr, 0, bArr.length);
            int d = a.m18724d();
            if (d == bArr.length - C7764a5.m19526c(d)) {
                AbstractC7843j5 a2 = ((AbstractC7843j5) this.f18268b).mo18860a(a);
                this.f18267a = this.f18267a;
                this.f18268b = a2;
                this.f18269c = null;
                return;
            }
            throw C7830i5.m19342a();
        } else if (obj instanceof AbstractC7843j5[]) {
            Collections.singletonList(l5Var);
            throw new NoSuchMethodError();
        } else {
            Collections.singletonList(l5Var);
            throw new NoSuchMethodError();
        }
    }

    /* renamed from: d */
    public final byte[] m19371d() throws IOException {
        byte[] bArr = new byte[m19370e()];
        m19373a(C7764a5.m19527b(bArr));
        return bArr;
    }

    /* renamed from: e */
    public final int m19370e() {
        if (this.f18268b == null) {
            int i = 0;
            for (C7859l5 l5Var : this.f18269c) {
                i += C7764a5.m19524d(l5Var.f18405a) + 0 + l5Var.f18406b.length;
            }
            return i;
        }
        throw new NoSuchMethodError();
    }

    public final boolean equals(Object obj) {
        List<C7859l5> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7813g5)) {
            return false;
        }
        C7813g5 g5Var = (C7813g5) obj;
        if (this.f18268b == null || g5Var.f18268b == null) {
            List<C7859l5> list2 = this.f18269c;
            if (list2 != null && (list = g5Var.f18269c) != null) {
                return list2.equals(list);
            }
            try {
                return Arrays.equals(m19371d(), g5Var.m19371d());
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        } else {
            C7796e5<?, ?> e5Var = this.f18267a;
            if (e5Var != g5Var.f18267a) {
                return false;
            }
            if (!e5Var.f18235a.isArray()) {
                return this.f18268b.equals(g5Var.f18268b);
            }
            Object obj2 = this.f18268b;
            return obj2 instanceof byte[] ? Arrays.equals((byte[]) obj2, (byte[]) g5Var.f18268b) : obj2 instanceof int[] ? Arrays.equals((int[]) obj2, (int[]) g5Var.f18268b) : obj2 instanceof long[] ? Arrays.equals((long[]) obj2, (long[]) g5Var.f18268b) : obj2 instanceof float[] ? Arrays.equals((float[]) obj2, (float[]) g5Var.f18268b) : obj2 instanceof double[] ? Arrays.equals((double[]) obj2, (double[]) g5Var.f18268b) : obj2 instanceof boolean[] ? Arrays.equals((boolean[]) obj2, (boolean[]) g5Var.f18268b) : Arrays.deepEquals((Object[]) obj2, (Object[]) g5Var.f18268b);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    public final C7813g5 clone() {
        C7813g5 g5Var = new C7813g5();
        try {
            g5Var.f18267a = this.f18267a;
            if (this.f18269c == null) {
                g5Var.f18269c = null;
            } else {
                g5Var.f18269c.addAll(this.f18269c);
            }
            if (this.f18268b != null) {
                if (this.f18268b instanceof AbstractC7843j5) {
                    g5Var.f18268b = (AbstractC7843j5) ((AbstractC7843j5) this.f18268b).clone();
                } else if (this.f18268b instanceof byte[]) {
                    g5Var.f18268b = ((byte[]) this.f18268b).clone();
                } else {
                    if (this.f18268b instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.f18268b;
                        byte[] bArr2 = new byte[bArr.length];
                        g5Var.f18268b = bArr2;
                        for (int i = 0; i < bArr.length; i++) {
                            bArr2[i] = (byte[]) bArr[i].clone();
                        }
                    } else if (this.f18268b instanceof boolean[]) {
                        g5Var.f18268b = ((boolean[]) this.f18268b).clone();
                    } else if (this.f18268b instanceof int[]) {
                        g5Var.f18268b = ((int[]) this.f18268b).clone();
                    } else if (this.f18268b instanceof long[]) {
                        g5Var.f18268b = ((long[]) this.f18268b).clone();
                    } else if (this.f18268b instanceof float[]) {
                        g5Var.f18268b = ((float[]) this.f18268b).clone();
                    } else if (this.f18268b instanceof double[]) {
                        g5Var.f18268b = ((double[]) this.f18268b).clone();
                    } else if (this.f18268b instanceof AbstractC7843j5[]) {
                        AbstractC7843j5[] j5VarArr = (AbstractC7843j5[]) this.f18268b;
                        AbstractC7843j5[] j5VarArr2 = new AbstractC7843j5[j5VarArr.length];
                        g5Var.f18268b = j5VarArr2;
                        for (int i2 = 0; i2 < j5VarArr.length; i2++) {
                            j5VarArr2[i2] = (AbstractC7843j5) j5VarArr[i2].clone();
                        }
                    }
                }
            }
            return g5Var;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(m19371d()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }
}

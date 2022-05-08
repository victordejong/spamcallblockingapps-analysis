package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: h.i.a.e.j.q.t7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/t7.class */
public final class C8741t7 implements Cloneable {

    /* renamed from: a */
    public C8723r7<?, ?> f19991a;

    /* renamed from: b */
    public Object f19992b;

    /* renamed from: c */
    public List<C8790y7> f19993c = new ArrayList();

    /* renamed from: a */
    public final void m17127a(C8696o7 o7Var) throws IOException {
        Object obj = this.f19992b;
        if (obj != null) {
            C8723r7<?, ?> r7Var = this.f19991a;
            if (r7Var.f19948b) {
                int length = Array.getLength(obj);
                for (int i = 0; i < length; i++) {
                    Object obj2 = Array.get(obj, i);
                    if (obj2 != null) {
                        r7Var.m17211a(obj2, o7Var);
                        throw null;
                    }
                }
                return;
            }
            r7Var.m17211a(obj, o7Var);
            throw null;
        }
        for (C8790y7 y7Var : this.f19993c) {
            o7Var.m17258b(y7Var.f20150a);
            o7Var.m17261a(y7Var.f20151b);
        }
    }

    /* renamed from: a */
    public final void m17126a(C8790y7 y7Var) throws IOException {
        List<C8790y7> list = this.f19993c;
        if (list != null) {
            list.add(y7Var);
            return;
        }
        Object obj = this.f19992b;
        if (obj instanceof AbstractC8768w7) {
            byte[] bArr = y7Var.f20151b;
            C8686n7 a = C8686n7.m17304a(bArr, 0, bArr.length);
            int e = a.m17296e();
            if (e == bArr.length - C8696o7.m17248d(e)) {
                AbstractC8768w7 a2 = ((AbstractC8768w7) this.f19992b).mo16953a(a);
                this.f19991a = this.f19991a;
                this.f19992b = a2;
                this.f19993c = null;
                return;
            }
            throw C8759v7.m17095a();
        } else if (obj instanceof AbstractC8768w7[]) {
            this.f19991a.m17210a(Collections.singletonList(y7Var));
            throw null;
        } else {
            this.f19991a.m17210a(Collections.singletonList(y7Var));
            throw null;
        }
    }

    /* renamed from: d */
    public final byte[] m17125d() throws IOException {
        byte[] bArr = new byte[m17124e()];
        m17127a(C8696o7.m17252b(bArr));
        return bArr;
    }

    /* renamed from: e */
    public final int m17124e() {
        Object obj = this.f19992b;
        int i = 0;
        if (obj != null) {
            C8723r7<?, ?> r7Var = this.f19991a;
            if (r7Var.f19948b) {
                int length = Array.getLength(obj);
                for (int i2 = 0; i2 < length; i2++) {
                    if (Array.get(obj, i2) != null) {
                        r7Var.m17212a(Array.get(obj, i2));
                        throw null;
                    }
                }
            } else {
                r7Var.m17212a(obj);
                throw null;
            }
        } else {
            int i3 = 0;
            for (C8790y7 y7Var : this.f19993c) {
                i3 += C8696o7.m17247e(y7Var.f20150a) + 0 + y7Var.f20151b.length;
            }
            i = i3;
        }
        return i;
    }

    public final boolean equals(Object obj) {
        List<C8790y7> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8741t7)) {
            return false;
        }
        C8741t7 t7Var = (C8741t7) obj;
        if (this.f19992b == null || t7Var.f19992b == null) {
            List<C8790y7> list2 = this.f19993c;
            if (list2 != null && (list = t7Var.f19993c) != null) {
                return list2.equals(list);
            }
            try {
                return Arrays.equals(m17125d(), t7Var.m17125d());
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        } else {
            C8723r7<?, ?> r7Var = this.f19991a;
            if (r7Var != t7Var.f19991a) {
                return false;
            }
            if (!r7Var.f19947a.isArray()) {
                return this.f19992b.equals(t7Var.f19992b);
            }
            Object obj2 = this.f19992b;
            return obj2 instanceof byte[] ? Arrays.equals((byte[]) obj2, (byte[]) t7Var.f19992b) : obj2 instanceof int[] ? Arrays.equals((int[]) obj2, (int[]) t7Var.f19992b) : obj2 instanceof long[] ? Arrays.equals((long[]) obj2, (long[]) t7Var.f19992b) : obj2 instanceof float[] ? Arrays.equals((float[]) obj2, (float[]) t7Var.f19992b) : obj2 instanceof double[] ? Arrays.equals((double[]) obj2, (double[]) t7Var.f19992b) : obj2 instanceof boolean[] ? Arrays.equals((boolean[]) obj2, (boolean[]) t7Var.f19992b) : Arrays.deepEquals((Object[]) obj2, (Object[]) t7Var.f19992b);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    public final C8741t7 clone() {
        C8741t7 t7Var = new C8741t7();
        try {
            t7Var.f19991a = this.f19991a;
            if (this.f19993c == null) {
                t7Var.f19993c = null;
            } else {
                t7Var.f19993c.addAll(this.f19993c);
            }
            if (this.f19992b != null) {
                if (this.f19992b instanceof AbstractC8768w7) {
                    t7Var.f19992b = (AbstractC8768w7) ((AbstractC8768w7) this.f19992b).clone();
                } else if (this.f19992b instanceof byte[]) {
                    t7Var.f19992b = ((byte[]) this.f19992b).clone();
                } else {
                    if (this.f19992b instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.f19992b;
                        byte[] bArr2 = new byte[bArr.length];
                        t7Var.f19992b = bArr2;
                        for (int i = 0; i < bArr.length; i++) {
                            bArr2[i] = (byte[]) bArr[i].clone();
                        }
                    } else if (this.f19992b instanceof boolean[]) {
                        t7Var.f19992b = ((boolean[]) this.f19992b).clone();
                    } else if (this.f19992b instanceof int[]) {
                        t7Var.f19992b = ((int[]) this.f19992b).clone();
                    } else if (this.f19992b instanceof long[]) {
                        t7Var.f19992b = ((long[]) this.f19992b).clone();
                    } else if (this.f19992b instanceof float[]) {
                        t7Var.f19992b = ((float[]) this.f19992b).clone();
                    } else if (this.f19992b instanceof double[]) {
                        t7Var.f19992b = ((double[]) this.f19992b).clone();
                    } else if (this.f19992b instanceof AbstractC8768w7[]) {
                        AbstractC8768w7[] w7VarArr = (AbstractC8768w7[]) this.f19992b;
                        AbstractC8768w7[] w7VarArr2 = new AbstractC8768w7[w7VarArr.length];
                        t7Var.f19992b = w7VarArr2;
                        for (int i2 = 0; i2 < w7VarArr.length; i2++) {
                            w7VarArr2[i2] = (AbstractC8768w7) w7VarArr[i2].clone();
                        }
                    }
                }
            }
            return t7Var;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(m17125d()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }
}

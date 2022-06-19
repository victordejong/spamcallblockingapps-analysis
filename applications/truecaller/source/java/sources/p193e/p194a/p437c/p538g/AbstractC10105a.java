package p193e.p194a.p437c.p538g;

import s1.z.c.f;
/* renamed from: e.a.c.g.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/a.class */
public abstract class AbstractC10105a {

    /* renamed from: a */
    public final float f30023a;

    /* renamed from: b */
    public final int f30024b;

    /* renamed from: e.a.c.g.a$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/a$a.class */
    public static final class C10106a extends AbstractC10105a {
        public C10106a(float f, int i) {
            super(f, i, null);
        }

        public C10106a(float f, int i, int i2) {
            super((i2 & 1) != 0 ? 0.0f : f, (i2 & 2) != 0 ? 0 : i, null);
        }

        public String toString() {
            return "Ham";
        }
    }

    /* renamed from: e.a.c.g.a$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/a$b.class */
    public static final class C10107b extends AbstractC10105a {
        public C10107b(float f, int i) {
            super(f, i, null);
        }

        public C10107b(float f, int i, int i2) {
            super((i2 & 1) != 0 ? 0.0f : f, (i2 & 2) != 0 ? 0 : i, null);
        }

        public String toString() {
            return "Spam";
        }
    }

    public AbstractC10105a(float f, int i, f fVar) {
        this.f30023a = f;
        this.f30024b = i;
    }
}

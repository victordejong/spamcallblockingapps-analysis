package p193e.p194a.p678d4;

import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.d4.e */
/* loaded from: classes11-dex2jar.jar:e/a/d4/e.class */
public abstract class AbstractC12603e {

    /* renamed from: a */
    public final String f36735a;

    /* renamed from: b */
    public final int f36736b;

    /* renamed from: e.a.d4.e$a */
    /* loaded from: classes11-dex2jar.jar:e/a/d4/e$a.class */
    public static final class C12604a extends AbstractC12603e {

        /* renamed from: c */
        public static final C12604a f36737c = new C12604a();

        public C12604a() {
            super("Google Play Services", 0, null);
        }

        @Override // p193e.p194a.p678d4.AbstractC12603e
        /* renamed from: a */
        public boolean mo22835a(int i) {
            return i == 0;
        }

        @Override // p193e.p194a.p678d4.AbstractC12603e
        /* renamed from: b */
        public boolean mo22834b(int i) {
            return i == 2;
        }
    }

    /* renamed from: e.a.d4.e$b */
    /* loaded from: classes11-dex2jar.jar:e/a/d4/e$b.class */
    public static final class C12605b extends AbstractC12603e {

        /* renamed from: c */
        public static final C12605b f36738c = new C12605b();

        public C12605b() {
            super("Huawei Mobile Services", 1, null);
        }

        @Override // p193e.p194a.p678d4.AbstractC12603e
        /* renamed from: a */
        public boolean mo22835a(int i) {
            return i == 0;
        }

        @Override // p193e.p194a.p678d4.AbstractC12603e
        /* renamed from: b */
        public boolean mo22834b(int i) {
            return i == 2;
        }
    }

    public AbstractC12603e(String str, int i, f fVar) {
        this.f36735a = str;
        this.f36736b = i;
    }

    /* renamed from: a */
    public abstract boolean mo22835a(int i);

    /* renamed from: b */
    public abstract boolean mo22834b(int i);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbstractC12603e)) {
            return false;
        }
        return l.a(this.f36735a, ((AbstractC12603e) obj).f36735a);
    }

    public int hashCode() {
        return this.f36735a.hashCode();
    }
}

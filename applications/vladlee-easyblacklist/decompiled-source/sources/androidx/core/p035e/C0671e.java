package androidx.core.p035e;

import java.util.Locale;
/* renamed from: androidx.core.e.e */
/* loaded from: classes-dex2jar.jar:androidx/core/e/e.class */
public final class C0671e {

    /* renamed from: a */
    public static final AbstractC0670d f2991a = new C0676e(null, false);

    /* renamed from: b */
    public static final AbstractC0670d f2992b = new C0676e(null, true);

    /* renamed from: c */
    public static final AbstractC0670d f2993c = new C0676e(C0673b.f2999a, false);

    /* renamed from: d */
    public static final AbstractC0670d f2994d = new C0676e(C0673b.f2999a, true);

    /* renamed from: e */
    public static final AbstractC0670d f2995e = new C0676e(C0672a.f2997a, false);

    /* renamed from: f */
    public static final AbstractC0670d f2996f = C0677f.f3002a;

    /* renamed from: androidx.core.e.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/e$a.class */
    private static final class C0672a implements AbstractC0674c {

        /* renamed from: a */
        static final C0672a f2997a = new C0672a();

        /* renamed from: b */
        private final boolean f2998b = true;

        private C0672a() {
        }

        @Override // androidx.core.p035e.C0671e.AbstractC0674c
        /* renamed from: a */
        public final int mo8560a(CharSequence charSequence, int i) {
            boolean z = false;
            for (int i2 = 0; i2 < i + 0; i2++) {
                int a = C0671e.m8562a(Character.getDirectionality(charSequence.charAt(i2)));
                if (a != 0) {
                    if (a != 1) {
                        continue;
                    } else if (!this.f2998b) {
                        return 1;
                    }
                } else if (this.f2998b) {
                    return 0;
                }
                z = true;
            }
            if (z) {
                return this.f2998b ? 1 : 0;
            }
            return 2;
        }
    }

    /* renamed from: androidx.core.e.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/e$b.class */
    private static final class C0673b implements AbstractC0674c {

        /* renamed from: a */
        static final C0673b f2999a = new C0673b();

        private C0673b() {
        }

        @Override // androidx.core.p035e.C0671e.AbstractC0674c
        /* renamed from: a */
        public final int mo8560a(CharSequence charSequence, int i) {
            int i2 = 2;
            for (int i3 = 0; i3 < i + 0 && i2 == 2; i3++) {
                i2 = C0671e.m8561b(Character.getDirectionality(charSequence.charAt(i3)));
            }
            return i2;
        }
    }

    /* renamed from: androidx.core.e.e$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/e$c.class */
    private interface AbstractC0674c {
        /* renamed from: a */
        int mo8560a(CharSequence charSequence, int i);
    }

    /* renamed from: androidx.core.e.e$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/e$d.class */
    private static abstract class AbstractC0675d implements AbstractC0670d {

        /* renamed from: a */
        private final AbstractC0674c f3000a;

        AbstractC0675d(AbstractC0674c cVar) {
            this.f3000a = cVar;
        }

        /* renamed from: a */
        protected abstract boolean mo8558a();

        @Override // androidx.core.p035e.AbstractC0670d
        /* renamed from: a */
        public final boolean mo8559a(CharSequence charSequence, int i) {
            if (charSequence == null || i < 0 || charSequence.length() - i < 0) {
                throw new IllegalArgumentException();
            }
            AbstractC0674c cVar = this.f3000a;
            if (cVar == null) {
                return mo8558a();
            }
            int a = cVar.mo8560a(charSequence, i);
            if (a == 0) {
                return true;
            }
            if (a != 1) {
                return mo8558a();
            }
            return false;
        }
    }

    /* renamed from: androidx.core.e.e$e */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/e$e.class */
    private static final class C0676e extends AbstractC0675d {

        /* renamed from: a */
        private final boolean f3001a;

        C0676e(AbstractC0674c cVar, boolean z) {
            super(cVar);
            this.f3001a = z;
        }

        @Override // androidx.core.p035e.C0671e.AbstractC0675d
        /* renamed from: a */
        protected final boolean mo8558a() {
            return this.f3001a;
        }
    }

    /* renamed from: androidx.core.e.e$f */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/e$f.class */
    private static final class C0677f extends AbstractC0675d {

        /* renamed from: a */
        static final C0677f f3002a = new C0677f();

        C0677f() {
            super(null);
        }

        @Override // androidx.core.p035e.C0671e.AbstractC0675d
        /* renamed from: a */
        protected final boolean mo8558a() {
            return C0678f.m8557a(Locale.getDefault()) == 1;
        }
    }

    /* renamed from: a */
    static int m8562a(int i) {
        if (i != 0) {
            return (i == 1 || i == 2) ? 0 : 2;
        }
        return 1;
    }

    /* renamed from: b */
    static int m8561b(int i) {
        if (i == 0) {
            return 1;
        }
        if (i == 1 || i == 2) {
            return 0;
        }
        switch (i) {
            case 14:
            case 15:
                return 1;
            case 16:
            case 17:
                return 0;
            default:
                return 2;
        }
    }
}

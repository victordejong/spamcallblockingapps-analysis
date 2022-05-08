package androidx.fragment.app;

import androidx.lifecycle.AbstractC0927f;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.ab */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/ab.class */
public abstract class AbstractC0867ab {

    /* renamed from: e */
    int f3662e;

    /* renamed from: f */
    int f3663f;

    /* renamed from: g */
    int f3664g;

    /* renamed from: h */
    int f3665h;

    /* renamed from: i */
    int f3666i;

    /* renamed from: j */
    int f3667j;

    /* renamed from: k */
    boolean f3668k;

    /* renamed from: m */
    String f3670m;

    /* renamed from: n */
    int f3671n;

    /* renamed from: o */
    CharSequence f3672o;

    /* renamed from: p */
    int f3673p;

    /* renamed from: q */
    CharSequence f3674q;

    /* renamed from: r */
    ArrayList<String> f3675r;

    /* renamed from: s */
    ArrayList<String> f3676s;

    /* renamed from: u */
    ArrayList<Runnable> f3678u;

    /* renamed from: d */
    ArrayList<C0868a> f3661d = new ArrayList<>();

    /* renamed from: l */
    boolean f3669l = true;

    /* renamed from: t */
    boolean f3677t = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.ab$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/ab$a.class */
    public static final class C0868a {

        /* renamed from: a */
        int f3679a;

        /* renamed from: b */
        Fragment f3680b;

        /* renamed from: c */
        int f3681c;

        /* renamed from: d */
        int f3682d;

        /* renamed from: e */
        int f3683e;

        /* renamed from: f */
        int f3684f;

        /* renamed from: g */
        AbstractC0927f.EnumC0929b f3685g;

        /* renamed from: h */
        AbstractC0927f.EnumC0929b f3686h;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0868a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0868a(int i, Fragment fragment) {
            this.f3679a = i;
            this.f3680b = fragment;
            this.f3685g = AbstractC0927f.EnumC0929b.RESUMED;
            this.f3686h = AbstractC0927f.EnumC0929b.RESUMED;
        }

        C0868a(Fragment fragment, AbstractC0927f.EnumC0929b bVar) {
            this.f3679a = 10;
            this.f3680b = fragment;
            this.f3685g = fragment.f3571Z;
            this.f3686h = bVar;
        }
    }

    /* renamed from: a */
    public final AbstractC0867ab m7833a(int i, Fragment fragment) {
        mo7831a(i, fragment, null, 1);
        return this;
    }

    /* renamed from: a */
    public final AbstractC0867ab m7832a(int i, Fragment fragment, String str) {
        mo7831a(i, fragment, str, 1);
        return this;
    }

    /* renamed from: a */
    public AbstractC0867ab mo7830a(Fragment fragment) {
        m7827a(new C0868a(3, fragment));
        return this;
    }

    /* renamed from: a */
    public AbstractC0867ab mo7829a(Fragment fragment, AbstractC0927f.EnumC0929b bVar) {
        m7827a(new C0868a(fragment, bVar));
        return this;
    }

    /* renamed from: a */
    public final AbstractC0867ab m7828a(Fragment fragment, String str) {
        mo7831a(0, fragment, str, 1);
        return this;
    }

    /* renamed from: a */
    public final AbstractC0867ab m7826a(String str) {
        if (this.f3669l) {
            this.f3668k = true;
            this.f3670m = str;
            return this;
        }
        throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void mo7831a(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            if (fragment.f3552G == null || str.equals(fragment.f3552G)) {
                fragment.f3552G = str;
            } else {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.f3552G + " now " + str);
            }
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            } else if (fragment.f3550E == 0 || fragment.f3550E == i) {
                fragment.f3550E = i;
                fragment.f3551F = i;
            } else {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.f3550E + " now " + i);
            }
        }
        m7827a(new C0868a(i2, fragment));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7827a(C0868a aVar) {
        this.f3661d.add(aVar);
        aVar.f3681c = this.f3662e;
        aVar.f3682d = this.f3663f;
        aVar.f3683e = this.f3664g;
        aVar.f3684f = this.f3665h;
    }

    /* renamed from: b */
    public abstract int mo7825b();

    /* renamed from: b */
    public final AbstractC0867ab m7824b(int i, Fragment fragment) {
        if (i != 0) {
            mo7831a(i, fragment, null, 2);
            return this;
        }
        throw new IllegalArgumentException("Must use non-zero containerViewId");
    }

    /* renamed from: b */
    public AbstractC0867ab mo7823b(Fragment fragment) {
        m7827a(new C0868a(6, fragment));
        return this;
    }

    /* renamed from: c */
    public abstract int mo7822c();

    /* renamed from: c */
    public final AbstractC0867ab m7821c(Fragment fragment) {
        m7827a(new C0868a(7, fragment));
        return this;
    }

    /* renamed from: d */
    public abstract void mo7820d();

    /* renamed from: e */
    public abstract void mo7819e();

    /* renamed from: h */
    public final AbstractC0867ab m7818h() {
        if (!this.f3668k) {
            this.f3669l = false;
            return this;
        }
        throw new IllegalStateException("This transaction is already being added to the back stack");
    }
}

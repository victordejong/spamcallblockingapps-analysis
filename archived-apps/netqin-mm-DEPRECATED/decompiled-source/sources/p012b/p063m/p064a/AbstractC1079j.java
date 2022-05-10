package p012b.p063m.p064a;

import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
/* renamed from: b.m.a.j */
/* loaded from: classes-dex2jar.jar:b/m/a/j.class */
public abstract class AbstractC1079j {

    /* renamed from: b */
    public int f4515b;

    /* renamed from: c */
    public int f4516c;

    /* renamed from: d */
    public int f4517d;

    /* renamed from: e */
    public int f4518e;

    /* renamed from: f */
    public int f4519f;

    /* renamed from: g */
    public int f4520g;

    /* renamed from: h */
    public boolean f4521h;

    /* renamed from: i */
    public String f4522i;

    /* renamed from: j */
    public int f4523j;

    /* renamed from: k */
    public CharSequence f4524k;

    /* renamed from: l */
    public int f4525l;

    /* renamed from: m */
    public CharSequence f4526m;

    /* renamed from: n */
    public ArrayList<String> f4527n;

    /* renamed from: o */
    public ArrayList<String> f4528o;

    /* renamed from: q */
    public ArrayList<Runnable> f4530q;

    /* renamed from: a */
    public ArrayList<C1080a> f4514a = new ArrayList<>();

    /* renamed from: p */
    public boolean f4529p = false;

    /* renamed from: b.m.a.j$a */
    /* loaded from: classes-dex2jar.jar:b/m/a/j$a.class */
    public static final class C1080a {

        /* renamed from: a */
        public int f4531a;

        /* renamed from: b */
        public Fragment f4532b;

        /* renamed from: c */
        public int f4533c;

        /* renamed from: d */
        public int f4534d;

        /* renamed from: e */
        public int f4535e;

        /* renamed from: f */
        public int f4536f;

        /* renamed from: g */
        public Lifecycle.State f4537g;

        /* renamed from: h */
        public Lifecycle.State f4538h;

        public C1080a() {
        }

        public C1080a(int i, Fragment fragment) {
            this.f4531a = i;
            this.f4532b = fragment;
            Lifecycle.State state = Lifecycle.State.RESUMED;
            this.f4537g = state;
            this.f4538h = state;
        }
    }

    /* renamed from: a */
    public abstract int mo34750a();

    /* renamed from: a */
    public AbstractC1079j m34749a(int i, Fragment fragment, String str) {
        mo34748a(i, fragment, str, 1);
        return this;
    }

    /* renamed from: a */
    public AbstractC1079j m34747a(Fragment fragment) {
        m34745a(new C1080a(7, fragment));
        return this;
    }

    /* renamed from: a */
    public AbstractC1079j m34746a(Fragment fragment, String str) {
        mo34748a(0, fragment, str, 1);
        return this;
    }

    /* renamed from: a */
    public void mo34748a(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str2 = fragment.f1305x;
            if (str2 == null || str.equals(str2)) {
                fragment.f1305x = str;
            } else {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.f1305x + " now " + str);
            }
        }
        if (i != 0) {
            if (i != -1) {
                int i3 = fragment.f1303v;
                if (i3 == 0 || i3 == i) {
                    fragment.f1303v = i;
                    fragment.f1304w = i;
                } else {
                    throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.f1303v + " now " + i);
                }
            } else {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
        }
        m34745a(new C1080a(i2, fragment));
    }

    /* renamed from: a */
    public void m34745a(C1080a aVar) {
        this.f4514a.add(aVar);
        aVar.f4533c = this.f4515b;
        aVar.f4534d = this.f4516c;
        aVar.f4535e = this.f4517d;
        aVar.f4536f = this.f4518e;
    }

    /* renamed from: b */
    public abstract int mo34744b();

    /* renamed from: b */
    public AbstractC1079j mo34743b(Fragment fragment) {
        m34745a(new C1080a(6, fragment));
        return this;
    }

    /* renamed from: c */
    public AbstractC1079j mo34741c(Fragment fragment) {
        m34745a(new C1080a(3, fragment));
        return this;
    }

    /* renamed from: c */
    public abstract void mo34742c();

    /* renamed from: d */
    public AbstractC1079j m34740d() {
        if (!this.f4521h) {
            return this;
        }
        throw new IllegalStateException("This transaction is already being added to the back stack");
    }
}

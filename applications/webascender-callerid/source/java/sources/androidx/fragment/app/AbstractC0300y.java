package androidx.fragment.app;

import android.view.ViewGroup;
import androidx.lifecycle.AbstractC0329h;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.y */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/y.class */
public abstract class AbstractC0300y {

    /* renamed from: b */
    int f1605b;

    /* renamed from: c */
    int f1606c;

    /* renamed from: d */
    int f1607d;

    /* renamed from: e */
    int f1608e;

    /* renamed from: f */
    int f1609f;

    /* renamed from: g */
    boolean f1610g;

    /* renamed from: i */
    String f1612i;

    /* renamed from: j */
    int f1613j;

    /* renamed from: k */
    CharSequence f1614k;

    /* renamed from: l */
    int f1615l;

    /* renamed from: m */
    CharSequence f1616m;

    /* renamed from: n */
    ArrayList<String> f1617n;

    /* renamed from: o */
    ArrayList<String> f1618o;

    /* renamed from: q */
    ArrayList<Runnable> f1620q;

    /* renamed from: a */
    ArrayList<C0301a> f1604a = new ArrayList<>();

    /* renamed from: h */
    boolean f1611h = true;

    /* renamed from: p */
    boolean f1619p = false;

    /* renamed from: androidx.fragment.app.y$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/y$a.class */
    public static final class C0301a {

        /* renamed from: a */
        int f1621a;

        /* renamed from: b */
        Fragment f1622b;

        /* renamed from: c */
        int f1623c;

        /* renamed from: d */
        int f1624d;

        /* renamed from: e */
        int f1625e;

        /* renamed from: f */
        int f1626f;

        /* renamed from: g */
        AbstractC0329h.EnumC0332c f1627g;

        /* renamed from: h */
        AbstractC0329h.EnumC0332c f1628h;

        public C0301a() {
        }

        C0301a(int i, Fragment fragment) {
            this.f1621a = i;
            this.f1622b = fragment;
            AbstractC0329h.EnumC0332c enumC0332c = AbstractC0329h.EnumC0332c.RESUMED;
            this.f1627g = enumC0332c;
            this.f1628h = enumC0332c;
        }

        C0301a(int i, Fragment fragment, AbstractC0329h.EnumC0332c enumC0332c) {
            this.f1621a = i;
            this.f1622b = fragment;
            this.f1627g = fragment.mMaxState;
            this.f1628h = enumC0332c;
        }
    }

    AbstractC0300y(C0277j c0277j, ClassLoader classLoader) {
    }

    /* renamed from: b */
    public AbstractC0300y m5540b(int i, Fragment fragment) {
        m5527o(i, fragment, null, 1);
        return this;
    }

    /* renamed from: c */
    public AbstractC0300y m5539c(int i, Fragment fragment, String str) {
        m5527o(i, fragment, str, 1);
        return this;
    }

    /* renamed from: d */
    public AbstractC0300y m5538d(ViewGroup viewGroup, Fragment fragment, String str) {
        fragment.mContainer = viewGroup;
        m5539c(viewGroup.getId(), fragment, str);
        return this;
    }

    /* renamed from: e */
    public AbstractC0300y m5537e(Fragment fragment, String str) {
        m5527o(0, fragment, str, 1);
        return this;
    }

    /* renamed from: f */
    public void m5536f(C0301a c0301a) {
        this.f1604a.add(c0301a);
        c0301a.f1623c = this.f1605b;
        c0301a.f1624d = this.f1606c;
        c0301a.f1625e = this.f1607d;
        c0301a.f1626f = this.f1608e;
    }

    /* renamed from: g */
    public AbstractC0300y m5535g(String str) {
        if (this.f1611h) {
            this.f1610g = true;
            this.f1612i = str;
            return this;
        }
        throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
    }

    /* renamed from: h */
    public AbstractC0300y m5534h(Fragment fragment) {
        m5536f(new C0301a(7, fragment));
        return this;
    }

    /* renamed from: i */
    public abstract int m5533i();

    /* renamed from: j */
    public abstract int m5532j();

    /* renamed from: k */
    public abstract void m5531k();

    /* renamed from: l */
    public abstract void m5530l();

    /* renamed from: m */
    public AbstractC0300y m5529m(Fragment fragment) {
        m5536f(new C0301a(6, fragment));
        return this;
    }

    /* renamed from: n */
    public AbstractC0300y m5528n() {
        if (!this.f1610g) {
            this.f1611h = false;
            return this;
        }
        throw new IllegalStateException("This transaction is already being added to the back stack");
    }

    /* renamed from: o */
    void m5527o(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str2 = fragment.mTag;
            if (str2 != null && !str.equals(str2)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
            fragment.mTag = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i3 = fragment.mFragmentId;
            if (i3 != 0 && i3 != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i);
            }
            fragment.mFragmentId = i;
            fragment.mContainerId = i;
        }
        m5536f(new C0301a(i2, fragment));
    }

    /* renamed from: p */
    public AbstractC0300y m5526p(Fragment fragment) {
        m5536f(new C0301a(4, fragment));
        return this;
    }

    /* renamed from: q */
    public AbstractC0300y m5525q(Fragment fragment) {
        m5536f(new C0301a(3, fragment));
        return this;
    }

    /* renamed from: r */
    public AbstractC0300y m5524r(int i, Fragment fragment) {
        m5523s(i, fragment, null);
        return this;
    }

    /* renamed from: s */
    public AbstractC0300y m5523s(int i, Fragment fragment, String str) {
        if (i != 0) {
            m5527o(i, fragment, str, 2);
            return this;
        }
        throw new IllegalArgumentException("Must use non-zero containerViewId");
    }

    /* renamed from: t */
    public AbstractC0300y m5522t(Fragment fragment, AbstractC0329h.EnumC0332c enumC0332c) {
        m5536f(new C0301a(10, fragment, enumC0332c));
        return this;
    }

    /* renamed from: u */
    public AbstractC0300y m5521u(boolean z) {
        this.f1619p = z;
        return this;
    }

    /* renamed from: v */
    public AbstractC0300y m5520v(int i) {
        this.f1609f = i;
        return this;
    }

    /* renamed from: w */
    public AbstractC0300y m5519w(Fragment fragment) {
        m5536f(new C0301a(5, fragment));
        return this;
    }
}

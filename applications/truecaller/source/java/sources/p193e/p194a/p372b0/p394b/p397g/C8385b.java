package p193e.p194a.p372b0.p394b.p397g;

import com.truecaller.common.network.interceptor.useragent.UserAgentType;
import com.truecaller.common.network.util.AuthRequirement;
import java.util.SortedSet;
import java.util.TreeSet;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p394b.p397g.AbstractC8376a;
import s1.z.c.l;
/* renamed from: e.a.b0.b.g.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/g/b.class */
public class C8385b {

    /* renamed from: g */
    public static final C8385b f25756g = new C8386a();

    /* renamed from: a */
    public AbstractC8376a.C8377a f25757a;

    /* renamed from: b */
    public AbstractC8376a.C8381e f25758b;

    /* renamed from: c */
    public AbstractC8376a.C8378b f25759c;

    /* renamed from: d */
    public AbstractC8376a.C8379c f25760d;

    /* renamed from: e */
    public AbstractC8376a.C8383g f25761e;

    /* renamed from: f */
    public AbstractC8376a.C8384h f25762f;

    /* renamed from: e.a.b0.b.g.b$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/b/g/b$a.class */
    public static final class C8386a extends C8385b {
        @Override // p193e.p194a.p372b0.p394b.p397g.C8385b
        /* renamed from: a */
        public SortedSet<AbstractC8376a> mo28623a() {
            AbstractC8376a[] abstractC8376aArr = {AbstractC8376a.C8382f.f25753d};
            l.e(abstractC8376aArr, "elements");
            TreeSet treeSet = new TreeSet();
            C25225a.m3927b3(abstractC8376aArr, treeSet);
            return treeSet;
        }
    }

    /* renamed from: c */
    public static /* synthetic */ C8385b m28627c(C8385b c8385b, AuthRequirement authRequirement, String str, int i, Object obj) {
        c8385b.m28628b(authRequirement, null);
        return c8385b;
    }

    /* renamed from: a */
    public SortedSet<AbstractC8376a> mo28623a() {
        AbstractC8376a[] abstractC8376aArr = new AbstractC8376a[8];
        AbstractC8376a.C8377a c8377a = this.f25757a;
        if (c8377a == null) {
            c8377a = new AbstractC8376a.C8377a(AuthRequirement.NONE, null, 2);
        }
        abstractC8376aArr[0] = c8377a;
        AbstractC8376a.C8381e c8381e = this.f25758b;
        if (c8381e == null) {
            c8381e = new AbstractC8376a.C8381e(true);
        }
        abstractC8376aArr[1] = c8381e;
        AbstractC8376a.C8378b c8378b = this.f25759c;
        if (c8378b == null) {
            c8378b = new AbstractC8376a.C8378b(true);
        }
        abstractC8376aArr[2] = c8378b;
        AbstractC8376a.C8379c c8379c = this.f25760d;
        if (c8379c == null) {
            c8379c = new AbstractC8376a.C8379c(UserAgentType.TRUECALLER_VERSION);
        }
        abstractC8376aArr[3] = c8379c;
        AbstractC8376a.C8384h c8384h = this.f25762f;
        if (c8384h == null) {
            c8384h = new AbstractC8376a.C8384h(true);
        }
        abstractC8376aArr[4] = c8384h;
        AbstractC8376a.C8383g c8383g = this.f25761e;
        if (c8383g == null) {
            c8383g = new AbstractC8376a.C8383g(true);
        }
        abstractC8376aArr[5] = c8383g;
        abstractC8376aArr[6] = AbstractC8376a.C8380d.f25751d;
        abstractC8376aArr[7] = AbstractC8376a.C8382f.f25753d;
        l.e(abstractC8376aArr, "elements");
        TreeSet treeSet = new TreeSet();
        C25225a.m3927b3(abstractC8376aArr, treeSet);
        return treeSet;
    }

    /* renamed from: b */
    public final C8385b m28628b(AuthRequirement authRequirement, String str) {
        l.e(authRequirement, "authRequirement");
        this.f25757a = new AbstractC8376a.C8377a(authRequirement, str);
        return this;
    }

    /* renamed from: d */
    public final C8385b m28626d(boolean z) {
        this.f25759c = new AbstractC8376a.C8378b(z);
        return this;
    }

    /* renamed from: e */
    public final C8385b m28625e(boolean z) {
        this.f25758b = new AbstractC8376a.C8381e(z);
        return this;
    }

    /* renamed from: f */
    public final C8385b m28624f(UserAgentType userAgentType) {
        l.e(userAgentType, "type");
        this.f25760d = new AbstractC8376a.C8379c(userAgentType);
        return this;
    }
}

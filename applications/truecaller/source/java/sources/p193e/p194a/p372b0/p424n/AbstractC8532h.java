package p193e.p194a.p372b0.p424n;

import com.truecaller.common.profile.ProfileSaveError;
import java.util.List;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.b0.n.h */
/* loaded from: classes7-dex2jar.jar:e/a/b0/n/h.class */
public abstract class AbstractC8532h {

    /* renamed from: a */
    public final boolean f26322a;

    /* renamed from: b */
    public final int f26323b;

    /* renamed from: e.a.b0.n.h$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/n/h$a.class */
    public static final class C8533a extends AbstractC8532h {

        /* renamed from: c */
        public static final C8533a f26324c = new C8533a();

        public C8533a() {
            super(400, null);
        }
    }

    /* renamed from: e.a.b0.n.h$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/n/h$b.class */
    public static final class C8534b extends AbstractC8532h {

        /* renamed from: c */
        public static final C8534b f26325c = new C8534b();

        public C8534b() {
            super(403, null);
        }
    }

    /* renamed from: e.a.b0.n.h$c */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/n/h$c.class */
    public static final class C8535c extends AbstractC8532h {

        /* renamed from: c */
        public static final C8535c f26326c = new C8535c();

        public C8535c() {
            super(500, null);
        }
    }

    /* renamed from: e.a.b0.n.h$d */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/n/h$d.class */
    public static final class C8536d extends AbstractC8532h {

        /* renamed from: c */
        public static final C8536d f26327c = new C8536d();

        public C8536d() {
            super(0, null);
        }
    }

    /* renamed from: e.a.b0.n.h$e */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/n/h$e.class */
    public static final class C8537e extends AbstractC8532h {

        /* renamed from: c */
        public static final C8537e f26328c = new C8537e();

        public C8537e() {
            super(204, null);
        }
    }

    /* renamed from: e.a.b0.n.h$f */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/n/h$f.class */
    public static final class C8538f extends AbstractC8532h {
        public C8538f(int i) {
            super(i, null);
        }

        public C8538f(int i, int i2) {
            super((i2 & 1) != 0 ? 0 : i, null);
        }
    }

    /* renamed from: e.a.b0.n.h$g */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/n/h$g.class */
    public static final class C8539g extends AbstractC8532h {

        /* renamed from: c */
        public final List<ProfileSaveError> f26329c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8539g(List<ProfileSaveError> list) {
            super(422, null);
            l.e(list, "errors");
            this.f26329c = list;
        }
    }

    public AbstractC8532h(int i, f fVar) {
        this.f26323b = i;
        this.f26322a = 200 <= i && 299 >= i;
    }
}

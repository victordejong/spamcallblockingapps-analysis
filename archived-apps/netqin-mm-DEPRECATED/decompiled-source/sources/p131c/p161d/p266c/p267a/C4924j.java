package p131c.p161d.p266c.p267a;

import java.util.Arrays;
/* renamed from: c.d.c.a.j */
/* loaded from: classes2-dex2jar.jar:c/d/c/a/j.class */
public final class C4924j {

    /* renamed from: c.d.c.a.j$b */
    /* loaded from: classes2-dex2jar.jar:c/d/c/a/j$b.class */
    public static final class C4926b {

        /* renamed from: a */
        public final String f17560a;

        /* renamed from: b */
        public final C4927a f17561b;

        /* renamed from: c */
        public C4927a f17562c;

        /* renamed from: d */
        public boolean f17563d;

        /* renamed from: c.d.c.a.j$b$a */
        /* loaded from: classes2-dex2jar.jar:c/d/c/a/j$b$a.class */
        public static final class C4927a {

            /* renamed from: a */
            public String f17564a;

            /* renamed from: b */
            public Object f17565b;

            /* renamed from: c */
            public C4927a f17566c;

            public C4927a() {
            }
        }

        public C4926b(String str) {
            C4927a aVar = new C4927a();
            this.f17561b = aVar;
            this.f17562c = aVar;
            this.f17563d = false;
            C4933n.m24795a(str);
            this.f17560a = str;
        }

        /* renamed from: a */
        public final C4927a m24818a() {
            C4927a aVar = new C4927a();
            this.f17562c.f17566c = aVar;
            this.f17562c = aVar;
            return aVar;
        }

        /* renamed from: a */
        public final C4926b m24817a(Object obj) {
            m24818a().f17565b = obj;
            return this;
        }

        /* renamed from: a */
        public C4926b m24816a(String str, double d) {
            m24809b(str, String.valueOf(d));
            return this;
        }

        /* renamed from: a */
        public C4926b m24815a(String str, int i) {
            m24809b(str, String.valueOf(i));
            return this;
        }

        /* renamed from: a */
        public C4926b m24814a(String str, long j) {
            m24809b(str, String.valueOf(j));
            return this;
        }

        /* renamed from: a */
        public C4926b m24813a(String str, Object obj) {
            m24809b(str, obj);
            return this;
        }

        /* renamed from: a */
        public C4926b m24812a(String str, boolean z) {
            m24809b(str, String.valueOf(z));
            return this;
        }

        /* renamed from: b */
        public C4926b m24811b() {
            this.f17563d = true;
            return this;
        }

        /* renamed from: b */
        public C4926b m24810b(Object obj) {
            m24817a(obj);
            return this;
        }

        /* renamed from: b */
        public final C4926b m24809b(String str, Object obj) {
            C4927a a = m24818a();
            a.f17565b = obj;
            C4933n.m24795a(str);
            a.f17564a = str;
            return this;
        }

        public String toString() {
            boolean z = this.f17563d;
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.f17560a);
            sb.append('{');
            String str = "";
            for (C4927a aVar = this.f17561b.f17566c; aVar != null; aVar = aVar.f17566c) {
                Object obj = aVar.f17565b;
                if (z) {
                    str = str;
                    if (obj == null) {
                    }
                }
                sb.append(str);
                String str2 = aVar.f17564a;
                if (str2 != null) {
                    sb.append(str2);
                    sb.append('=');
                }
                if (obj == null || !obj.getClass().isArray()) {
                    sb.append(obj);
                } else {
                    String deepToString = Arrays.deepToString(new Object[]{obj});
                    sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
                }
                str = ", ";
            }
            sb.append('}');
            return sb.toString();
        }
    }

    /* renamed from: a */
    public static C4926b m24821a(Class<?> cls) {
        return new C4926b(cls.getSimpleName());
    }

    /* renamed from: a */
    public static C4926b m24820a(Object obj) {
        return new C4926b(obj.getClass().getSimpleName());
    }

    /* renamed from: a */
    public static <T> T m24819a(T t, T t2) {
        if (t != null) {
            return t;
        }
        if (t2 != null) {
            return t2;
        }
        throw new NullPointerException("Both parameters are null");
    }
}

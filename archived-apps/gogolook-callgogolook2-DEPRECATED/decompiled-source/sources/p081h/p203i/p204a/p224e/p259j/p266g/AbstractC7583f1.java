package p081h.p203i.p204a.p224e.p259j.p266g;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7583f1;
import p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7583f1.C7584a;
/* renamed from: h.i.a.e.j.g.f1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/f1.class */
public abstract class AbstractC7583f1<MessageType extends AbstractC7583f1<MessageType, BuilderType>, BuilderType extends C7584a<MessageType, BuilderType>> extends AbstractC7671q<MessageType, BuilderType> {
    public static Map<Object, AbstractC7583f1<?, ?>> zzjr = new ConcurrentHashMap();
    public C7703u3 zzjp = C7703u3.m19776d();
    public int zzjq = -1;

    /* renamed from: h.i.a.e.j.g.f1$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/f1$a.class */
    public static class C7584a<MessageType extends AbstractC7583f1<MessageType, BuilderType>, BuilderType extends C7584a<MessageType, BuilderType>> extends AbstractC7678r<MessageType, BuilderType> {

        /* renamed from: a */
        public final MessageType f17836a;

        /* renamed from: b */
        public MessageType f17837b;

        /* renamed from: c */
        public boolean f17838c = false;

        public C7584a(MessageType messagetype) {
            this.f17836a = messagetype;
            this.f17837b = (MessageType) ((AbstractC7583f1) messagetype.mo20118a(C7588e.f17844d, null, null));
        }

        /* renamed from: a */
        public static void m20166a(MessageType messagetype, MessageType messagetype2) {
            C7716w2.m19701a().m19699a((C7716w2) messagetype).mo19860b(messagetype, messagetype2);
        }

        /* renamed from: a */
        public final BuilderType m20167a(MessageType messagetype) {
            m20165h();
            m20166a(this.f17837b, messagetype);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7678r
        /* renamed from: a */
        public final /* synthetic */ AbstractC7678r mo19816a(AbstractC7671q qVar) {
            m20167a((C7584a<MessageType, BuilderType>) ((AbstractC7583f1) qVar));
            return this;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7634l2
        /* renamed from: b */
        public final /* synthetic */ AbstractC7627k2 mo20073b() {
            AbstractC7583f1 f1Var = (AbstractC7583f1) mo20074a();
            boolean booleanValue = Boolean.TRUE.booleanValue();
            byte byteValue = ((Byte) f1Var.mo20118a(C7588e.f17841a, (Object) null, (Object) null)).byteValue();
            boolean z = true;
            if (byteValue != 1) {
                if (byteValue == 0) {
                    z = false;
                } else {
                    boolean d = C7716w2.m19701a().m19699a((C7716w2) f1Var).mo19858d(f1Var);
                    z = d;
                    if (booleanValue) {
                        f1Var.mo20118a(C7588e.f17842b, d ? f1Var : null, (Object) null);
                        z = d;
                    }
                }
            }
            if (z) {
                return f1Var;
            }
            throw new C7689s3(f1Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7646m2
        /* renamed from: c */
        public final /* synthetic */ AbstractC7627k2 mo19972c() {
            return this.f17836a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            C7584a aVar = (C7584a) this.f17836a.mo20118a(C7588e.f17845e, null, null);
            aVar.m20167a((C7584a) ((AbstractC7583f1) mo20074a()));
            return aVar;
        }

        /* renamed from: h */
        public void m20165h() {
            if (this.f17838c) {
                MessageType messagetype = (MessageType) ((AbstractC7583f1) this.f17837b.mo20118a(C7588e.f17844d, null, null));
                m20166a(messagetype, this.f17837b);
                this.f17837b = messagetype;
                this.f17838c = false;
            }
        }

        /* renamed from: i */
        public MessageType mo20074a() {
            if (this.f17838c) {
                return this.f17837b;
            }
            MessageType messagetype = this.f17837b;
            C7716w2.m19701a().m19699a((C7716w2) messagetype).mo19861b(messagetype);
            this.f17838c = true;
            return this.f17837b;
        }

        /* renamed from: j */
        public final MessageType m20163j() {
            MessageType messagetype = (MessageType) ((AbstractC7583f1) mo20074a());
            boolean booleanValue = Boolean.TRUE.booleanValue();
            byte byteValue = ((Byte) messagetype.mo20118a(C7588e.f17841a, null, null)).byteValue();
            boolean z = true;
            if (byteValue != 1) {
                if (byteValue == 0) {
                    z = false;
                } else {
                    boolean d = C7716w2.m19701a().m19699a((C7716w2) messagetype).mo19858d(messagetype);
                    z = d;
                    if (booleanValue) {
                        messagetype.mo20118a(C7588e.f17842b, d ? messagetype : null, null);
                        z = d;
                    }
                }
            }
            if (z) {
                return messagetype;
            }
            throw new C7689s3(messagetype);
        }
    }

    /* renamed from: h.i.a.e.j.g.f1$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/f1$b.class */
    public static final class C7585b<T extends AbstractC7583f1<T, ?>> extends C7685s<T> {
        public C7585b(T t) {
        }
    }

    /* renamed from: h.i.a.e.j.g.f1$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/f1$c.class */
    public static abstract class AbstractC7586c<MessageType extends AbstractC7586c<MessageType, BuilderType>, BuilderType extends Object<MessageType, BuilderType>> extends AbstractC7583f1<MessageType, BuilderType> implements AbstractC7646m2 {
        public C7714w0<C7587d> zzjv = C7714w0.m19702i();
    }

    /* renamed from: h.i.a.e.j.g.f1$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/f1$d.class */
    public static final class C7587d implements AbstractC7735z0<C7587d> {

        /* renamed from: a */
        public final int f17839a;

        /* renamed from: b */
        public final EnumC7615i4 f17840b;

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7735z0
        /* renamed from: C */
        public final int mo19640C() {
            return this.f17839a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7735z0
        /* renamed from: G */
        public final boolean mo19639G() {
            return false;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7735z0
        /* renamed from: P */
        public final EnumC7655n4 mo19638P() {
            return this.f17840b.m20097a();
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7735z0
        /* renamed from: Q */
        public final boolean mo19637Q() {
            return false;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7735z0
        /* renamed from: T */
        public final EnumC7615i4 mo19636T() {
            return this.f17840b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7735z0
        /* renamed from: a */
        public final AbstractC7634l2 mo19635a(AbstractC7634l2 l2Var, AbstractC7627k2 k2Var) {
            return ((C7584a) l2Var).m20167a((C7584a) ((AbstractC7583f1) k2Var));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7735z0
        /* renamed from: a */
        public final AbstractC7674q2 mo19634a(AbstractC7674q2 q2Var, AbstractC7674q2 q2Var2) {
            throw new UnsupportedOperationException();
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            return this.f17839a - ((C7587d) obj).f17839a;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: h.i.a.e.j.g.f1$e */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/f1$e.class */
    public static final class C7588e {

        /* renamed from: a */
        public static final int f17841a = 1;

        /* renamed from: b */
        public static final int f17842b = 2;

        /* renamed from: c */
        public static final int f17843c = 3;

        /* renamed from: d */
        public static final int f17844d = 4;

        /* renamed from: e */
        public static final int f17845e = 5;

        /* renamed from: f */
        public static final int f17846f = 6;

        /* renamed from: g */
        public static final int f17847g = 7;

        /* renamed from: h */
        public static final /* synthetic */ int[] f17848h = {f17841a, f17842b, f17843c, f17844d, f17845e, f17846f, f17847g};

        /* renamed from: i */
        public static final int f17849i = 1;

        /* renamed from: j */
        public static final int f17850j = 2;

        /* renamed from: k */
        public static final int f17851k = 1;

        /* renamed from: l */
        public static final int f17852l = 2;

        static {
            int i = f17849i;
            int i2 = f17850j;
            int i3 = f17851k;
            int i4 = f17852l;
        }

        /* renamed from: a */
        public static int[] m20162a() {
            return (int[]) f17848h.clone();
        }
    }

    /* renamed from: a */
    public static <T extends AbstractC7583f1<T, ?>> T m20174a(T t, byte[] bArr) throws C7633l1 {
        T t2 = (T) ((AbstractC7583f1) t.mo20118a(C7588e.f17844d, null, null));
        try {
            C7716w2.m19701a().m19699a((C7716w2) t2).mo19862a(t2, bArr, 0, bArr.length, new C7713w());
            C7716w2.m19701a().m19699a((C7716w2) t2).mo19861b(t2);
            if (t2.zzex == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (IOException e) {
            if (e.getCause() instanceof C7633l1) {
                throw ((C7633l1) e.getCause());
            }
            C7633l1 l1Var = new C7633l1(e.getMessage());
            l1Var.m20079a(t2);
            throw l1Var;
        } catch (IndexOutOfBoundsException e2) {
            C7633l1 a = C7633l1.m20080a();
            a.m20079a(t2);
            throw a;
        }
    }

    /* renamed from: a */
    public static <T extends AbstractC7583f1<?, ?>> T m20172a(Class<T> cls) {
        AbstractC7583f1<?, ?> f1Var = zzjr.get(cls);
        T t = (T) f1Var;
        if (f1Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                t = (T) zzjr.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (t != null) {
            return t;
        }
        String valueOf = String.valueOf(cls.getName());
        throw new IllegalStateException(valueOf.length() != 0 ? "Unable to get default instance for: ".concat(valueOf) : new String("Unable to get default instance for: "));
    }

    /* renamed from: a */
    public static Object m20173a(AbstractC7627k2 k2Var, String str, Object[] objArr) {
        return new C7730y2(k2Var, str, objArr);
    }

    /* renamed from: a */
    public static Object m20170a(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else if (cause instanceof Error) {
                throw ((Error) cause);
            } else {
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
        }
    }

    /* renamed from: a */
    public static <T extends AbstractC7583f1<?, ?>> void m20171a(Class<T> cls, T t) {
        zzjr.put(cls, t);
    }

    /* renamed from: b */
    public static <T extends AbstractC7583f1<T, ?>> T m20169b(T t, byte[] bArr) throws C7633l1 {
        T t2 = (T) m20174a(t, bArr);
        if (t2 != null) {
            boolean booleanValue = Boolean.TRUE.booleanValue();
            byte byteValue = ((Byte) t2.mo20118a(C7588e.f17841a, null, null)).byteValue();
            boolean z = true;
            if (byteValue != 1) {
                if (byteValue == 0) {
                    z = false;
                } else {
                    boolean d = C7716w2.m19701a().m19699a((C7716w2) t2).mo19858d(t2);
                    z = d;
                    if (booleanValue) {
                        t2.mo20118a(C7588e.f17842b, d ? t2 : null, null);
                        z = d;
                    }
                }
            }
            if (!z) {
                C7633l1 l1Var = new C7633l1(new C7689s3(t2).getMessage());
                l1Var.m20079a(t2);
                throw l1Var;
            }
        }
        return t2;
    }

    /* renamed from: i */
    public static <E> AbstractC7626k1<E> m20168i() {
        return C7723x2.m19686c();
    }

    /* renamed from: a */
    public abstract Object mo20118a(int i, Object obj, Object obj2);

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7671q
    /* renamed from: a */
    public final void mo19829a(int i) {
        this.zzjq = i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7627k2
    /* renamed from: a */
    public final void mo20088a(AbstractC7639m0 m0Var) throws IOException {
        C7716w2.m19701a().m19700a((Class) getClass()).mo19864a((AbstractC7554b3) this, (AbstractC7662o4) C7658o0.m19961a(m0Var));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7646m2
    /* renamed from: c */
    public final /* synthetic */ AbstractC7627k2 mo19972c() {
        return (AbstractC7583f1) mo20118a(C7588e.f17846f, (Object) null, (Object) null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7627k2
    /* renamed from: d */
    public final /* synthetic */ AbstractC7634l2 mo20087d() {
        C7584a aVar = (C7584a) mo20118a(C7588e.f17845e, (Object) null, (Object) null);
        aVar.m20167a((C7584a) this);
        return aVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!((AbstractC7583f1) mo20118a(C7588e.f17846f, (Object) null, (Object) null)).getClass().isInstance(obj)) {
            return false;
        }
        return C7716w2.m19701a().m19699a((C7716w2) this).mo19863a(this, (AbstractC7583f1) obj);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7627k2
    /* renamed from: f */
    public final /* synthetic */ AbstractC7634l2 mo20086f() {
        return (C7584a) mo20118a(C7588e.f17845e, (Object) null, (Object) null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7627k2
    /* renamed from: g */
    public final int mo20085g() {
        if (this.zzjq == -1) {
            this.zzjq = C7716w2.m19701a().m19699a((C7716w2) this).mo19859c(this);
        }
        return this.zzjq;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7671q
    /* renamed from: h */
    public final int mo19827h() {
        return this.zzjq;
    }

    public int hashCode() {
        int i = this.zzex;
        if (i != 0) {
            return i;
        }
        this.zzex = C7716w2.m19701a().m19699a((C7716w2) this).mo19865a(this);
        return this.zzex;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7646m2
    public final boolean isInitialized() {
        boolean booleanValue = Boolean.TRUE.booleanValue();
        byte byteValue = ((Byte) mo20118a(C7588e.f17841a, (Object) null, (Object) null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean d = C7716w2.m19701a().m19699a((C7716w2) this).mo19858d(this);
        if (booleanValue) {
            mo20118a(C7588e.f17842b, d ? this : null, (Object) null);
        }
        return d;
    }

    public String toString() {
        return C7653n2.m19967a(this, super.toString());
    }
}

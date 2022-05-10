package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite.AbstractC7946a;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p131c.p161d.p367h.AbstractC6275a;
import p131c.p161d.p367h.AbstractC6282b;
import p131c.p161d.p367h.AbstractC6287c1;
import p131c.p161d.p367h.AbstractC6327j;
import p131c.p161d.p367h.AbstractC6353n;
import p131c.p161d.p367h.AbstractC6354n0;
import p131c.p161d.p367h.AbstractC6357o0;
import p131c.p161d.p367h.AbstractC6376v0;
import p131c.p161d.p367h.C6281a1;
import p131c.p161d.p367h.C6291e;
import p131c.p161d.p367h.C6334j1;
import p131c.p161d.p367h.C6335k;
import p131c.p161d.p367h.C6339l;
import p131c.p161d.p367h.C6347m1;
import p131c.p161d.p367h.C6358p;
import p131c.p161d.p367h.C6360p0;
import p131c.p161d.p367h.C6371u;
import p131c.p161d.p367h.C6379x;
import p131c.p161d.p367h.C6380x0;
import p131c.p161d.p367h.C6381y;
import p131c.p161d.p367h.C6391y0;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/GeneratedMessageLite.class */
public abstract class GeneratedMessageLite<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends AbstractC7946a<MessageType, BuilderType>> extends AbstractC6275a<MessageType, BuilderType> {
    public static Map<Object, GeneratedMessageLite<?, ?>> defaultInstanceMap = new ConcurrentHashMap();
    public C6334j1 unknownFields = C6334j1.m21362f();
    public int memoizedSerializedSize = -1;

    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/GeneratedMessageLite$MethodToInvoke.class */
    public enum MethodToInvoke {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        GET_PARSER
    }

    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/GeneratedMessageLite$SerializedForm.class */
    public static final class SerializedForm implements Serializable {
        public static final long serialVersionUID = 0;
        public final byte[] asBytes;
        public final Class<?> messageClass;
        public final String messageClassName;

        public SerializedForm(AbstractC6354n0 n0Var) {
            Class<?> cls = n0Var.getClass();
            this.messageClass = cls;
            this.messageClassName = cls.getName();
            this.asBytes = n0Var.mo21180c();
        }

        /* renamed from: of */
        public static SerializedForm m6939of(AbstractC6354n0 n0Var) {
            return new SerializedForm(n0Var);
        }

        @Deprecated
        private Object readResolveFallback() throws ObjectStreamException {
            try {
                Field declaredField = resolveMessageClass().getDeclaredField("defaultInstance");
                declaredField.setAccessible(true);
                AbstractC6354n0.AbstractC6355a q = ((AbstractC6354n0) declaredField.get(null)).mo6925q();
                q.mo21177a(this.asBytes);
                return q.mo6938B();
            } catch (InvalidProtocolBufferException e) {
                throw new RuntimeException("Unable to understand proto buffer", e);
            } catch (ClassNotFoundException e2) {
                throw new RuntimeException("Unable to find proto buffer class: " + this.messageClassName, e2);
            } catch (IllegalAccessException e3) {
                throw new RuntimeException("Unable to call parsePartialFrom", e3);
            } catch (NoSuchFieldException e4) {
                throw new RuntimeException("Unable to find defaultInstance in " + this.messageClassName, e4);
            } catch (SecurityException e5) {
                throw new RuntimeException("Unable to call defaultInstance in " + this.messageClassName, e5);
            }
        }

        private Class<?> resolveMessageClass() throws ClassNotFoundException {
            Class<?> cls = this.messageClass;
            if (cls == null) {
                cls = Class.forName(this.messageClassName);
            }
            return cls;
        }

        public Object readResolve() throws ObjectStreamException {
            try {
                Field declaredField = resolveMessageClass().getDeclaredField("DEFAULT_INSTANCE");
                declaredField.setAccessible(true);
                AbstractC6354n0.AbstractC6355a q = ((AbstractC6354n0) declaredField.get(null)).mo6925q();
                q.mo21177a(this.asBytes);
                return q.mo6938B();
            } catch (InvalidProtocolBufferException e) {
                throw new RuntimeException("Unable to understand proto buffer", e);
            } catch (ClassNotFoundException e2) {
                throw new RuntimeException("Unable to find proto buffer class: " + this.messageClassName, e2);
            } catch (IllegalAccessException e3) {
                throw new RuntimeException("Unable to call parsePartialFrom", e3);
            } catch (NoSuchFieldException e4) {
                return readResolveFallback();
            } catch (SecurityException e5) {
                throw new RuntimeException("Unable to call DEFAULT_INSTANCE in " + this.messageClassName, e5);
            }
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/GeneratedMessageLite$a.class */
    public static abstract class AbstractC7946a<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends AbstractC7946a<MessageType, BuilderType>> extends AbstractC6275a.AbstractC6276a<MessageType, BuilderType> {

        /* renamed from: a */
        public final MessageType f31128a;

        /* renamed from: b */
        public MessageType f31129b;

        /* renamed from: c */
        public boolean f31130c = false;

        public AbstractC7946a(MessageType messagetype) {
            this.f31128a = messagetype;
            this.f31129b = (MessageType) ((GeneratedMessageLite) messagetype.m6956a(MethodToInvoke.NEW_MUTABLE_INSTANCE));
        }

        @Override // p131c.p161d.p367h.AbstractC6354n0.AbstractC6355a
        /* renamed from: B */
        public MessageType mo6938B() {
            if (this.f31130c) {
                return this.f31129b;
            }
            this.f31129b.m6942s();
            this.f31130c = true;
            return this.f31129b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p131c.p161d.p367h.AbstractC6275a.AbstractC6276a
        /* renamed from: a */
        public /* bridge */ /* synthetic */ AbstractC6275a.AbstractC6276a mo6936a(AbstractC6275a aVar) {
            m6935a((AbstractC7946a<MessageType, BuilderType>) ((GeneratedMessageLite) aVar));
            return this;
        }

        /* renamed from: a */
        public BuilderType m6935a(MessageType messagetype) {
            m6931b((AbstractC7946a<MessageType, BuilderType>) messagetype);
            return this;
        }

        @Override // p131c.p161d.p367h.AbstractC6275a.AbstractC6276a
        /* renamed from: a */
        public BuilderType mo6933a(byte[] bArr, int i, int i2) throws InvalidProtocolBufferException {
            m6932a(bArr, i, i2, C6358p.m21173a());
            return this;
        }

        /* renamed from: a */
        public BuilderType m6932a(byte[] bArr, int i, int i2, C6358p pVar) throws InvalidProtocolBufferException {
            m6930s();
            try {
                C6380x0.m21016a().m21013a((C6380x0) this.f31129b).mo21079a(this.f31129b, bArr, i, i + i2, new C6291e.C6293b(pVar));
                return this;
            } catch (InvalidProtocolBufferException e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
            } catch (IndexOutOfBoundsException e3) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6354n0.AbstractC6355a
        /* renamed from: a */
        public final MessageType mo6937a() {
            MessageType B = mo6938B();
            if (B.isInitialized()) {
                return B;
            }
            throw AbstractC6275a.AbstractC6276a.m21691b(B);
        }

        /* renamed from: a */
        public final void m6934a(MessageType messagetype, MessageType messagetype2) {
            C6380x0.m21016a().m21013a((C6380x0) messagetype).mo21077b(messagetype, messagetype2);
        }

        /* renamed from: b */
        public BuilderType m6931b(MessageType messagetype) {
            m6930s();
            m6934a(this.f31129b, messagetype);
            return this;
        }

        public BuilderType clone() {
            BuilderType buildertype = (BuilderType) mo6927g().mo6925q();
            buildertype.m6931b(mo6938B());
            return buildertype;
        }

        @Override // p131c.p161d.p367h.AbstractC6357o0
        /* renamed from: g */
        public MessageType mo6927g() {
            return this.f31128a;
        }

        @Override // p131c.p161d.p367h.AbstractC6357o0
        public final boolean isInitialized() {
            return GeneratedMessageLite.m6951a(this.f31129b, false);
        }

        /* renamed from: s */
        public final void m6930s() {
            if (this.f31130c) {
                m6929t();
                this.f31130c = false;
            }
        }

        /* renamed from: t */
        public void m6929t() {
            MessageType messagetype = (MessageType) ((GeneratedMessageLite) this.f31129b.m6956a(MethodToInvoke.NEW_MUTABLE_INSTANCE));
            m6934a(messagetype, this.f31129b);
            this.f31129b = messagetype;
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/GeneratedMessageLite$b.class */
    public static class C7947b<T extends GeneratedMessageLite<T, ?>> extends AbstractC6282b<T> {

        /* renamed from: b */
        public final T f31131b;

        public C7947b(T t) {
            this.f31131b = t;
        }

        @Override // p131c.p161d.p367h.AbstractC6376v0
        /* renamed from: b */
        public T mo6928b(AbstractC6327j jVar, C6358p pVar) throws InvalidProtocolBufferException {
            return (T) GeneratedMessageLite.m6952a(this.f31131b, jVar, pVar);
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$c */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/GeneratedMessageLite$c.class */
    public static abstract class AbstractC7948c<MessageType extends AbstractC7948c<MessageType, BuilderType>, BuilderType extends Object<MessageType, BuilderType>> extends GeneratedMessageLite<MessageType, BuilderType> implements AbstractC7949d<MessageType, BuilderType> {
        public C6371u<C7950e> extensions = C6371u.m21044i();

        @Override // com.google.protobuf.GeneratedMessageLite, p131c.p161d.p367h.AbstractC6357o0
        /* renamed from: g */
        public /* bridge */ /* synthetic */ AbstractC6354n0 mo6927g() {
            return GeneratedMessageLite.super.mo6927g();
        }

        @Override // com.google.protobuf.GeneratedMessageLite, p131c.p161d.p367h.AbstractC6354n0
        /* renamed from: h */
        public /* bridge */ /* synthetic */ AbstractC6354n0.AbstractC6355a mo6926h() {
            return GeneratedMessageLite.super.mo6926h();
        }

        @Override // com.google.protobuf.GeneratedMessageLite, p131c.p161d.p367h.AbstractC6354n0
        /* renamed from: q */
        public /* bridge */ /* synthetic */ AbstractC6354n0.AbstractC6355a mo6925q() {
            return GeneratedMessageLite.super.mo6925q();
        }

        /* renamed from: v */
        public C6371u<C7950e> m6924v() {
            if (this.extensions.m21048e()) {
                this.extensions = this.extensions.clone();
            }
            return this.extensions;
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$d */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/GeneratedMessageLite$d.class */
    public interface AbstractC7949d<MessageType extends AbstractC7948c<MessageType, BuilderType>, BuilderType extends Object<MessageType, BuilderType>> extends AbstractC6357o0 {
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$e */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/GeneratedMessageLite$e.class */
    public static final class C7950e implements C6371u.AbstractC6373b<C7950e> {

        /* renamed from: a */
        public final C6381y.AbstractC6385d<?> f31132a;

        /* renamed from: b */
        public final int f31133b;

        /* renamed from: c */
        public final WireFormat.FieldType f31134c;

        /* renamed from: d */
        public final boolean f31135d;

        /* renamed from: e */
        public final boolean f31136e;

        @Override // p131c.p161d.p367h.C6371u.AbstractC6373b
        /* renamed from: J */
        public WireFormat.JavaType mo6923J() {
            return this.f31134c.getJavaType();
        }

        /* renamed from: a */
        public int compareTo(C7950e eVar) {
            return this.f31133b - eVar.f31133b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p131c.p161d.p367h.C6371u.AbstractC6373b
        /* renamed from: a */
        public AbstractC6354n0.AbstractC6355a mo6921a(AbstractC6354n0.AbstractC6355a aVar, AbstractC6354n0 n0Var) {
            AbstractC7946a aVar2 = (AbstractC7946a) aVar;
            aVar2.m6931b((AbstractC7946a) ((GeneratedMessageLite) n0Var));
            return aVar2;
        }

        /* renamed from: a */
        public C6381y.AbstractC6385d<?> m6922a() {
            return this.f31132a;
        }

        @Override // p131c.p161d.p367h.C6371u.AbstractC6373b
        public int getNumber() {
            return this.f31133b;
        }

        @Override // p131c.p161d.p367h.C6371u.AbstractC6373b
        public boolean isPacked() {
            return this.f31136e;
        }

        @Override // p131c.p161d.p367h.C6371u.AbstractC6373b
        /* renamed from: k */
        public boolean mo6919k() {
            return this.f31135d;
        }

        @Override // p131c.p161d.p367h.C6371u.AbstractC6373b
        /* renamed from: n */
        public WireFormat.FieldType mo6918n() {
            return this.f31134c;
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$f */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/GeneratedMessageLite$f.class */
    public static class C7951f<ContainingType extends AbstractC6354n0, Type> extends AbstractC6353n<ContainingType, Type> {

        /* renamed from: a */
        public final AbstractC6354n0 f31137a;

        /* renamed from: b */
        public final C7950e f31138b;

        /* renamed from: a */
        public WireFormat.FieldType m6917a() {
            return this.f31138b.mo6918n();
        }

        /* renamed from: b */
        public AbstractC6354n0 m6916b() {
            return this.f31137a;
        }

        /* renamed from: c */
        public int m6915c() {
            return this.f31138b.getNumber();
        }

        /* renamed from: d */
        public boolean m6914d() {
            return this.f31138b.f31135d;
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [c.d.h.y$g] */
    /* renamed from: a */
    public static C6381y.AbstractC6388g m6959a(C6381y.AbstractC6388g gVar) {
        int size = gVar.size();
        return gVar.mo20996b(size == 0 ? 10 : size * 2);
    }

    /* renamed from: a */
    public static <E> C6381y.AbstractC6390i<E> m6958a(C6381y.AbstractC6390i<E> iVar) {
        int size = iVar.size();
        return iVar.mo20996b(size == 0 ? 10 : size * 2);
    }

    /* renamed from: a */
    public static <T extends GeneratedMessageLite<T, ?>> T m6952a(T t, AbstractC6327j jVar, C6358p pVar) throws InvalidProtocolBufferException {
        T t2 = (T) ((GeneratedMessageLite) t.m6956a(MethodToInvoke.NEW_MUTABLE_INSTANCE));
        try {
            AbstractC6287c1 a = C6380x0.m21016a().m21013a((C6380x0) t2);
            a.mo21082a(t2, C6335k.m21357a(jVar), pVar);
            a.mo21083a(t2);
            return t2;
        } catch (IOException e) {
            if (e.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e.getCause());
            }
            throw new InvalidProtocolBufferException(e.getMessage()).setUnfinishedMessage(t2);
        } catch (RuntimeException e2) {
            if (e2.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e2.getCause());
            }
            throw e2;
        }
    }

    /* renamed from: a */
    public static <T extends GeneratedMessageLite<?, ?>> T m6950a(Class<T> cls) {
        GeneratedMessageLite<?, ?> generatedMessageLite = defaultInstanceMap.get(cls);
        GeneratedMessageLite<?, ?> generatedMessageLite2 = generatedMessageLite;
        if (generatedMessageLite == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                generatedMessageLite2 = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        T t = (T) generatedMessageLite2;
        if (generatedMessageLite2 == null) {
            t = (T) ((GeneratedMessageLite) C6347m1.m21246a(cls)).mo6927g();
            if (t != null) {
                defaultInstanceMap.put(cls, t);
            } else {
                throw new IllegalStateException();
            }
        }
        return t;
    }

    /* renamed from: a */
    public static Object m6960a(AbstractC6354n0 n0Var, String str, Object[] objArr) {
        return new C6281a1(n0Var, str, objArr);
    }

    /* renamed from: a */
    public static Object m6948a(Method method, Object obj, Object... objArr) {
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
    public static <T extends GeneratedMessageLite<?, ?>> void m6949a(Class<T> cls, T t) {
        defaultInstanceMap.put(cls, t);
    }

    /* renamed from: a */
    public static final <T extends GeneratedMessageLite<T, ?>> boolean m6951a(T t, boolean z) {
        byte byteValue = ((Byte) t.m6956a(MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean c = C6380x0.m21016a().m21013a((C6380x0) t).mo21076c(t);
        if (z) {
            t.m6955a(MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED, c ? t : null);
        }
        return c;
    }

    /* renamed from: t */
    public static C6381y.AbstractC6388g m6941t() {
        return C6379x.m21020b();
    }

    /* renamed from: u */
    public static <E> C6381y.AbstractC6390i<E> m6940u() {
        return C6391y0.m20997b();
    }

    /* renamed from: a */
    public final <MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends AbstractC7946a<MessageType, BuilderType>> BuilderType m6953a(MessageType messagetype) {
        BuilderType i = m6945i();
        i.m6931b(messagetype);
        return i;
    }

    /* renamed from: a */
    public Object m6956a(MethodToInvoke methodToInvoke) {
        return mo6954a(methodToInvoke, (Object) null, (Object) null);
    }

    /* renamed from: a */
    public Object m6955a(MethodToInvoke methodToInvoke, Object obj) {
        return mo6954a(methodToInvoke, obj, (Object) null);
    }

    /* renamed from: a */
    public abstract Object mo6954a(MethodToInvoke methodToInvoke, Object obj, Object obj2);

    @Override // p131c.p161d.p367h.AbstractC6275a
    /* renamed from: a */
    public void mo6961a(int i) {
        this.memoizedSerializedSize = i;
    }

    @Override // p131c.p161d.p367h.AbstractC6354n0
    /* renamed from: a */
    public void mo6957a(CodedOutputStream codedOutputStream) throws IOException {
        C6380x0.m21016a().m21013a((C6380x0) this).mo21081a((AbstractC6287c1) this, (Writer) C6339l.m21274a(codedOutputStream));
    }

    @Override // p131c.p161d.p367h.AbstractC6275a
    /* renamed from: b */
    public int mo6947b() {
        return this.memoizedSerializedSize;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!mo6927g().getClass().isInstance(obj)) {
            return false;
        }
        return C6380x0.m21016a().m21013a((C6380x0) this).mo21080a(this, (GeneratedMessageLite) obj);
    }

    /* renamed from: f */
    public Object m6946f() throws Exception {
        return m6956a(MethodToInvoke.BUILD_MESSAGE_INFO);
    }

    @Override // p131c.p161d.p367h.AbstractC6357o0
    /* renamed from: g */
    public final MessageType mo6927g() {
        return (MessageType) ((GeneratedMessageLite) m6956a(MethodToInvoke.GET_DEFAULT_INSTANCE));
    }

    @Override // p131c.p161d.p367h.AbstractC6354n0
    /* renamed from: h */
    public final BuilderType mo6926h() {
        BuilderType buildertype = (BuilderType) ((AbstractC7946a) m6956a(MethodToInvoke.NEW_BUILDER));
        buildertype.m6931b(this);
        return buildertype;
    }

    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int b = C6380x0.m21016a().m21013a((C6380x0) this).mo21078b(this);
        this.memoizedHashCode = b;
        return b;
    }

    /* renamed from: i */
    public final <MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends AbstractC7946a<MessageType, BuilderType>> BuilderType m6945i() {
        return (BuilderType) ((AbstractC7946a) m6956a(MethodToInvoke.NEW_BUILDER));
    }

    @Override // p131c.p161d.p367h.AbstractC6357o0
    public final boolean isInitialized() {
        return m6951a(this, Boolean.TRUE.booleanValue());
    }

    @Override // p131c.p161d.p367h.AbstractC6354n0
    /* renamed from: o */
    public int mo6944o() {
        if (this.memoizedSerializedSize == -1) {
            this.memoizedSerializedSize = C6380x0.m21016a().m21013a((C6380x0) this).mo21075d(this);
        }
        return this.memoizedSerializedSize;
    }

    @Override // p131c.p161d.p367h.AbstractC6354n0
    /* renamed from: q */
    public final BuilderType mo6925q() {
        return (BuilderType) ((AbstractC7946a) m6956a(MethodToInvoke.NEW_BUILDER));
    }

    @Override // p131c.p161d.p367h.AbstractC6354n0
    /* renamed from: r */
    public final AbstractC6376v0<MessageType> mo6943r() {
        return (AbstractC6376v0) m6956a(MethodToInvoke.GET_PARSER);
    }

    /* renamed from: s */
    public void m6942s() {
        C6380x0.m21016a().m21013a((C6380x0) this).mo21083a(this);
    }

    public String toString() {
        return C6360p0.m21171a(this, super.toString());
    }
}

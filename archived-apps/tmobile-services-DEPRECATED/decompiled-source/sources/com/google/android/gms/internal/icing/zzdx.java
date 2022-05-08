package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzdx;
import com.google.android.gms.internal.icing.zzdx.zzb;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdx.class */
public abstract class zzdx<MessageType extends zzdx<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzcm<MessageType, BuilderType> {
    private static Map<Object, zzdx<?, ?>> zzke = new ConcurrentHashMap();
    protected zzgp zzkc = zzgp.m13600h();
    private int zzkd = -1;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdx$zza.class */
    public static final class zza<T extends zzdx<T, ?>> extends zzcq<T> {
        public zza(T t) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdx$zzb.class */
    public static class zzb<MessageType extends zzdx<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzco<MessageType, BuilderType> {

        /* renamed from: f */
        private final MessageType f7995f;

        /* renamed from: g */
        protected MessageType f7996g;

        /* renamed from: h */
        protected boolean f7997h = false;

        /* JADX INFO: Access modifiers changed from: protected */
        public zzb(MessageType messagetype) {
            this.f7995f = messagetype;
            this.f7996g = (MessageType) ((zzdx) messagetype.mo13474g(zze.f8001d, null, null));
        }

        /* renamed from: g */
        private static void m13822g(MessageType messagetype, MessageType messagetype2) {
            zzft.m13709a().m13707c(messagetype).mo13704d(messagetype, messagetype2);
        }

        @Override // com.google.android.gms.internal.icing.zzfj
        /* renamed from: a */
        public final /* synthetic */ zzfh mo13746a() {
            return this.f7995f;
        }

        @Override // com.google.android.gms.internal.icing.zzfj
        /* renamed from: b */
        public final boolean mo13745b() {
            return zzdx.m13830k(this.f7996g, false);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.icing.zzco
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zzb zzbVar = (zzb) this.f7995f.mo13474g(zze.f8002e, null, null);
            zzbVar.mo13825c((zzdx) mo13757W());
            return zzbVar;
        }

        @Override // com.google.android.gms.internal.icing.zzco
        /* renamed from: d */
        public final /* synthetic */ zzco mo13824d() {
            return (zzb) clone();
        }

        /* renamed from: f */
        public final BuilderType mo13825c(MessageType messagetype) {
            if (this.f7997h) {
                m13821i();
                this.f7997h = false;
            }
            m13822g(this.f7996g, messagetype);
            return this;
        }

        /* renamed from: i */
        protected void m13821i() {
            MessageType messagetype = (MessageType) ((zzdx) this.f7996g.mo13474g(zze.f8001d, null, null));
            m13822g(messagetype, this.f7996g);
            this.f7996g = messagetype;
        }

        /* renamed from: j */
        public MessageType mo13757W() {
            if (this.f7997h) {
                return this.f7996g;
            }
            MessageType messagetype = this.f7996g;
            zzft.m13709a().m13707c(messagetype).mo13706b(messagetype);
            this.f7997h = true;
            return this.f7996g;
        }

        /* renamed from: l */
        public final MessageType mo13755d0() {
            MessageType messagetype = (MessageType) ((zzdx) mo13757W());
            if (messagetype.mo13745b()) {
                return messagetype;
            }
            throw new zzgn(messagetype);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdx$zzc.class */
    static final class zzc implements zzdu<zzc> {
        @Override // com.google.android.gms.internal.icing.zzdu
        /* renamed from: c */
        public final boolean mo13818c() {
            throw new NoSuchMethodError();
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.icing.zzdu
        /* renamed from: d */
        public final int mo13817d() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.icing.zzdu
        /* renamed from: j */
        public final zzhh mo13816j() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.icing.zzdu
        /* renamed from: n */
        public final zzfn mo13815n(zzfn zzfnVar, zzfn zzfnVar2) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.icing.zzdu
        /* renamed from: r */
        public final zzfg mo13814r(zzfg zzfgVar, zzfh zzfhVar) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.icing.zzdu
        /* renamed from: s */
        public final boolean mo13813s() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.icing.zzdu
        /* renamed from: v */
        public final zzha mo13812v() {
            throw new NoSuchMethodError();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdx$zzd.class */
    public static abstract class zzd<MessageType extends zzd<MessageType, BuilderType>, BuilderType> extends zzdx<MessageType, BuilderType> implements zzfj {
        protected zzds<zzc> zzkj = zzds.m13842o();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdx$zze.class */
    public static final class zze {

        /* renamed from: a */
        public static final int f7998a = 1;

        /* renamed from: b */
        public static final int f7999b = 2;

        /* renamed from: c */
        public static final int f8000c = 3;

        /* renamed from: d */
        public static final int f8001d = 4;

        /* renamed from: e */
        public static final int f8002e = 5;

        /* renamed from: f */
        public static final int f8003f = 6;

        /* renamed from: g */
        public static final int f8004g = 7;

        /* renamed from: h */
        private static final /* synthetic */ int[] f8005h = {1, 2, 3, 4, 5, 6, 7};

        /* renamed from: i */
        public static final int f8006i = 1;

        /* renamed from: j */
        public static final int f8007j = 2;

        /* renamed from: k */
        public static final int f8008k = 1;

        /* renamed from: l */
        public static final int f8009l = 2;

        /* renamed from: a */
        public static int[] m13811a() {
            return (int[]) f8005h.clone();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static <T extends zzdx<?, ?>> T m13834f(Class<T> cls) {
        zzdx<?, ?> zzdxVar = zzke.get(cls);
        zzdx<?, ?> zzdxVar2 = zzdxVar;
        if (zzdxVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzdxVar2 = zzke.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        T t = (T) zzdxVar2;
        if (zzdxVar2 == null) {
            t = (T) ((zzdx) ((zzdx) zzgs.m13556x(cls)).mo13474g(zze.f8003f, null, null));
            if (t != null) {
                zzke.put(cls, t);
            } else {
                throw new IllegalStateException();
            }
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public static Object m13833h(zzfh zzfhVar, String str, Object[] objArr) {
        return new zzfv(zzfhVar, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static Object m13832i(Method method, Object obj, Object... objArr) {
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

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: j */
    public static <T extends zzdx<?, ?>> void m13831j(Class<T> cls, T t) {
        zzke.put(cls, t);
    }

    /* renamed from: k */
    protected static final <T extends zzdx<T, ?>> boolean m13830k(T t, boolean z) {
        byte byteValue = ((Byte) t.mo13474g(zze.f7998a, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean e = zzft.m13709a().m13707c(t).mo13703e(t);
        if (z) {
            t.mo13474g(zze.f7999b, e ? t : null, null);
        }
        return e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.icing.zzev, com.google.android.gms.internal.icing.zzef] */
    /* renamed from: l */
    public static zzef m13829l() {
        return zzev.m13776e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.icing.zzed, com.google.android.gms.internal.icing.zzdl] */
    /* renamed from: m */
    public static zzed m13828m() {
        return zzdl.m13870d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.icing.zzcr, com.google.android.gms.internal.icing.zzea] */
    /* renamed from: n */
    public static zzea m13827n() {
        return zzcr.m13985d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: o */
    public static <E> zzee<E> m13826o() {
        return zzfs.m13712d();
    }

    @Override // com.google.android.gms.internal.icing.zzfj
    /* renamed from: a */
    public final /* synthetic */ zzfh mo13746a() {
        return (zzdx) mo13474g(zze.f8003f, null, null);
    }

    @Override // com.google.android.gms.internal.icing.zzfj
    /* renamed from: b */
    public final boolean mo13745b() {
        return m13830k(this, true);
    }

    @Override // com.google.android.gms.internal.icing.zzcm
    /* renamed from: c */
    final int mo13836c() {
        return this.zzkd;
    }

    @Override // com.google.android.gms.internal.icing.zzcm
    /* renamed from: d */
    final void mo13835d(int i) {
        this.zzkd = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return zzft.m13709a().m13707c(this).mo13702f(this, (zzdx) obj);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public abstract Object mo13474g(int i, Object obj, Object obj2);

    public int hashCode() {
        int i = this.zzga;
        if (i != 0) {
            return i;
        }
        int h = zzft.m13709a().m13707c(this).mo13700h(this);
        this.zzga = h;
        return h;
    }

    @Override // com.google.android.gms.internal.icing.zzfh
    /* renamed from: s */
    public final int mo13753s() {
        if (this.zzkd == -1) {
            this.zzkd = zzft.m13709a().m13707c(this).mo13705c(this);
        }
        return this.zzkd;
    }

    @Override // com.google.android.gms.internal.icing.zzfh
    /* renamed from: t */
    public final /* synthetic */ zzfg mo13752t() {
        zzb zzbVar = (zzb) mo13474g(zze.f8002e, null, null);
        zzbVar.mo13825c(this);
        return zzbVar;
    }

    public String toString() {
        return zzfi.m13750a(this, super.toString());
    }

    @Override // com.google.android.gms.internal.icing.zzfh
    /* renamed from: u */
    public final void mo13751u(zzdk zzdkVar) throws IOException {
        zzft.m13709a().m13707c(this).mo13701g(this, zzdm.m13867a(zzdkVar));
    }
}

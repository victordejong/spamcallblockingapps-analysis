package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzfd;
import com.google.android.gms.internal.measurement.zzfd.zzb;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfd.class */
public abstract class zzfd<MessageType extends zzfd<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzdl<MessageType, BuilderType> {
    private static Map<Object, zzfd<?, ?>> zzd = new ConcurrentHashMap();
    protected zzhy zzb = zzhy.zza();
    private int zzc = -1;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfd$zza.class */
    public static final class zza<T extends zzfd<T, ?>> extends zzdp<T> {

        /* renamed from: a */
        private final T f16279a;

        public zza(T t) {
            this.f16279a = t;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfd$zzb.class */
    public static class zzb<MessageType extends zzfd<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzdn<MessageType, BuilderType> {

        /* renamed from: a */
        protected MessageType f16280a;

        /* renamed from: b */
        protected boolean f16281b = false;

        /* renamed from: c */
        private final MessageType f16282c;

        /* JADX INFO: Access modifiers changed from: protected */
        public zzb(MessageType messagetype) {
            this.f16282c = messagetype;
            this.f16280a = (MessageType) ((zzfd) messagetype.mo2290a(zze.zzd));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public final BuilderType zza(zzeg zzegVar, zzeq zzeqVar) {
            if (this.f16281b) {
                m2279a();
                this.f16281b = false;
            }
            try {
                C2562dq.m2749a().m2747a((C2562dq) this.f16280a).mo2739a(this.f16280a, C2525cg.m2879a(zzegVar), zzeqVar);
                return this;
            } catch (RuntimeException e) {
                if (e.getCause() instanceof IOException) {
                    throw ((IOException) e.getCause());
                }
                throw e;
            }
        }

        /* renamed from: a */
        private final BuilderType m2275a(byte[] bArr, int i, zzeq zzeqVar) {
            if (this.f16281b) {
                m2279a();
                this.f16281b = false;
            }
            try {
                C2562dq.m2749a().m2747a((C2562dq) this.f16280a).mo2736a(this.f16280a, bArr, 0, i + 0, new C2511bt(zzeqVar));
                return this;
            } catch (zzfo e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
            } catch (IndexOutOfBoundsException e3) {
                throw zzfo.m2267a();
            }
        }

        /* renamed from: a */
        private static void m2276a(MessageType messagetype, MessageType messagetype2) {
            C2562dq.m2749a().m2747a((C2562dq) messagetype).mo2734b(messagetype, messagetype2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.measurement.zzdn
        /* renamed from: a */
        protected final /* synthetic */ zzdn mo2278a(zzdl zzdlVar) {
            return zza((zzb<MessageType, BuilderType>) ((zzfd) zzdlVar));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public final void m2279a() {
            MessageType messagetype = (MessageType) ((zzfd) this.f16280a.mo2290a(zze.zzd));
            m2276a(messagetype, this.f16280a);
            this.f16280a = messagetype;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.measurement.zzdn
        public /* synthetic */ Object clone() {
            zzb zzbVar = (zzb) this.f16282c.mo2290a(zze.zze);
            zzbVar.zza((zzb) ((zzfd) zzt()));
            return zzbVar;
        }

        @Override // com.google.android.gms.internal.measurement.zzdn
        public final /* synthetic */ zzdn zza(byte[] bArr, int i, int i2) {
            return m2275a(bArr, i2, zzeq.zza());
        }

        @Override // com.google.android.gms.internal.measurement.zzdn
        public final /* synthetic */ zzdn zza(byte[] bArr, int i, int i2, zzeq zzeqVar) {
            return m2275a(bArr, i2, zzeqVar);
        }

        public final BuilderType zza(MessageType messagetype) {
            if (this.f16281b) {
                m2279a();
                this.f16281b = false;
            }
            m2276a(this.f16280a, messagetype);
            return this;
        }

        @Override // com.google.android.gms.internal.measurement.zzgq
        public final boolean zzbl() {
            return zzfd.m2289a(this.f16280a, false);
        }

        @Override // com.google.android.gms.internal.measurement.zzgq
        public final /* synthetic */ zzgo zzbt() {
            return this.f16282c;
        }

        @Override // com.google.android.gms.internal.measurement.zzdn
        public final /* synthetic */ zzdn zzp() {
            return (zzb) clone();
        }

        /* renamed from: zzr */
        public MessageType zzt() {
            if (this.f16281b) {
                return this.f16280a;
            }
            MessageType messagetype = this.f16280a;
            C2562dq.m2749a().m2747a((C2562dq) messagetype).mo2733c(messagetype);
            this.f16281b = true;
            return this.f16280a;
        }

        /* renamed from: zzs */
        public final MessageType zzu() {
            MessageType messagetype = (MessageType) ((zzfd) zzt());
            if (messagetype.zzbl()) {
                return messagetype;
            }
            throw new zzhw(messagetype);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfd$zzd.class */
    public static abstract class zzd<MessageType extends zzd<MessageType, BuilderType>, BuilderType> extends zzfd<MessageType, BuilderType> implements zzgq {
        protected C2532cn<Object> zzc = C2532cn.m2854a();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final C2532cn<Object> m2274a() {
            if (this.zzc.m2841c()) {
                this.zzc = (C2532cn) this.zzc.clone();
            }
            return this.zzc;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfd$zze.class */
    public static final class zze {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        public static final int zzg = 7;

        /* renamed from: a */
        private static final /* synthetic */ int[] f16283a = {zza, zzb, zzc, zzd, zze, zzf, zzg};
        public static final int zzh = 1;
        public static final int zzi = 2;

        /* renamed from: b */
        private static final /* synthetic */ int[] f16284b = {zzh, zzi};
        public static final int zzj = 1;
        public static final int zzk = 2;

        /* renamed from: c */
        private static final /* synthetic */ int[] f16285c = {zzj, zzk};

        public static int[] zza() {
            return (int[]) f16283a.clone();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfd$zzf.class */
    public static final class zzf<ContainingType extends zzgo, Type> extends zzer<ContainingType, Type> {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T extends zzfd<?, ?>> T m2285a(Class<T> cls) {
        zzfd<?, ?> zzfdVar = zzd.get(cls);
        zzfd<?, ?> zzfdVar2 = zzfdVar;
        if (zzfdVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzfdVar2 = zzd.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        T t = (T) zzfdVar2;
        if (zzfdVar2 == null) {
            t = (T) ((zzfd) ((zzfd) C2588ep.m2584a(cls)).mo2290a(zze.zzf));
            if (t != null) {
                zzd.put(cls, t);
            } else {
                throw new IllegalStateException();
            }
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static <E> zzfl<E> m2288a(zzfl<E> zzflVar) {
        int size = zzflVar.size();
        return zzflVar.zza(size == 0 ? 10 : size << 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static zzfm m2287a(zzfm zzfmVar) {
        int size = zzfmVar.size();
        return zzfmVar.zzc(size == 0 ? 10 : size << 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static Object m2286a(zzgo zzgoVar, String str, Object[] objArr) {
        return new C2564ds(zzgoVar, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Object m2283a(Method method, Object obj, Object... objArr) {
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
    /* renamed from: a */
    public static <T extends zzfd<?, ?>> void m2284a(Class<T> cls, T t) {
        zzd.put(cls, t);
    }

    /* renamed from: a */
    protected static final <T extends zzfd<T, ?>> boolean m2289a(T t, boolean z) {
        byte byteValue = ((Byte) t.mo2290a(zze.zza)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean d = C2562dq.m2749a().m2747a((C2562dq) t).mo2732d(t);
        if (z) {
            t.mo2290a(zze.zzb);
        }
        return d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract Object mo2290a(int i);

    @Override // com.google.android.gms.internal.measurement.zzdl
    /* renamed from: b */
    final int mo2282b() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzdl
    /* renamed from: b */
    final void mo2281b(int i) {
        this.zzc = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final <MessageType extends zzfd<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> BuilderType m2280c() {
        return (BuilderType) ((zzb) mo2290a(zze.zze));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!((zzfd) mo2290a(zze.zzf)).getClass().isInstance(obj)) {
            return false;
        }
        return C2562dq.m2749a().m2747a((C2562dq) this).mo2737a(this, (zzfd) obj);
    }

    public int hashCode() {
        if (this.zza != 0) {
            return this.zza;
        }
        this.zza = C2562dq.m2749a().m2747a((C2562dq) this).mo2740a(this);
        return this.zza;
    }

    public String toString() {
        return C2555dj.m2797a(this, super.toString());
    }

    @Override // com.google.android.gms.internal.measurement.zzgo
    public final void zza(zzen zzenVar) {
        C2562dq.m2749a().m2747a((C2562dq) this).mo2738a((AbstractC2566du) this, (AbstractC2606fc) C2527ci.m2868a(zzenVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzgq
    public final boolean zzbl() {
        return m2289a(this, true);
    }

    public final BuilderType zzbm() {
        BuilderType buildertype = (BuilderType) ((zzb) mo2290a(zze.zze));
        buildertype.zza(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.measurement.zzgo
    public final int zzbn() {
        if (this.zzc == -1) {
            this.zzc = C2562dq.m2749a().m2747a((C2562dq) this).mo2735b(this);
        }
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzgo
    public final /* synthetic */ zzgn zzbr() {
        zzb zzbVar = (zzb) mo2290a(zze.zze);
        zzbVar.zza((zzb) this);
        return zzbVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzgo
    public final /* synthetic */ zzgn zzbs() {
        return (zzb) mo2290a(zze.zze);
    }

    @Override // com.google.android.gms.internal.measurement.zzgq
    public final /* synthetic */ zzgo zzbt() {
        return (zzfd) mo2290a(zze.zzf);
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
import com.google.android.gms.internal.ads.zzdrt.zzb;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrt.class */
public abstract class zzdrt<MessageType extends zzdrt<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzdqa<MessageType, BuilderType> {
    private static Map<Object, zzdrt<?, ?>> zzhmm = new ConcurrentHashMap();
    protected zzdur zzhmk = zzdur.zzbcf();
    private int zzhml = -1;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrt$zza.class */
    public static final class zza<T extends zzdrt<T, ?>> extends zzdqb<T> {

        /* renamed from: a */
        private final T f14555a;

        public zza(T t) {
            this.f14555a = t;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrt$zzb.class */
    public static class zzb<MessageType extends zzdrt<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzdpz<MessageType, BuilderType> {

        /* renamed from: a */
        protected MessageType f14556a;

        /* renamed from: b */
        protected boolean f14557b = false;

        /* renamed from: c */
        private final MessageType f14558c;

        /* JADX INFO: Access modifiers changed from: protected */
        public zzb(MessageType messagetype) {
            this.f14558c = messagetype;
            this.f14556a = (MessageType) ((zzdrt) messagetype.mo3009a(zze.zzhmv, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public final BuilderType zza(zzdqw zzdqwVar, zzdrg zzdrgVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            try {
                ajd.m5247a().m5245a((ajd) this.f14556a).mo5182a(this.f14556a, ahr.m5378a(zzdqwVar), zzdrgVar);
                return this;
            } catch (RuntimeException e) {
                if (e.getCause() instanceof IOException) {
                    throw ((IOException) e.getCause());
                }
                throw e;
            }
        }

        /* renamed from: a */
        private final BuilderType m3355a(byte[] bArr, int i, zzdrg zzdrgVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            try {
                ajd.m5247a().m5245a((ajd) this.f14556a).mo5179a(this.f14556a, bArr, 0, i + 0, new ahc(zzdrgVar));
                return this;
            } catch (zzdse e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
            } catch (IndexOutOfBoundsException e3) {
                throw zzdse.m3347a();
            }
        }

        /* renamed from: a */
        private static void m3356a(MessageType messagetype, MessageType messagetype2) {
            ajd.m5247a().m5245a((ajd) messagetype).mo5177b(messagetype, messagetype2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public final void m3359a() {
            MessageType messagetype = (MessageType) ((zzdrt) this.f14556a.mo3009a(zze.zzhmv, null));
            m3356a(messagetype, this.f14556a);
            this.f14556a = messagetype;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.ads.zzdpz
        public /* synthetic */ Object clone() {
            zzb zzbVar = (zzb) this.f14558c.mo3009a(zze.zzhmw, null);
            zzbVar.mo3358a((zzdrt) zzbae());
            return zzbVar;
        }

        @Override // com.google.android.gms.internal.ads.zzdtg
        public final boolean isInitialized() {
            return zzdrt.m3372a(this.f14556a, false);
        }

        @Override // com.google.android.gms.internal.ads.zzdpz
        public final /* synthetic */ zzdpz zza(byte[] bArr, int i, int i2, zzdrg zzdrgVar) {
            return m3355a(bArr, i2, zzdrgVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdpz
        public final /* synthetic */ zzdpz zzaxj() {
            return (zzb) clone();
        }

        @Override // com.google.android.gms.internal.ads.zzdtg
        public final /* synthetic */ zzdte zzazz() {
            return this.f14558c;
        }

        /* renamed from: zzb */
        public final BuilderType mo3358a(MessageType messagetype) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            m3356a(this.f14556a, messagetype);
            return this;
        }

        /* renamed from: zzbac */
        public MessageType zzbae() {
            if (this.f14557b) {
                return this.f14556a;
            }
            MessageType messagetype = this.f14556a;
            ajd.m5247a().m5245a((ajd) messagetype).mo5176c(messagetype);
            this.f14557b = true;
            return this.f14556a;
        }

        /* renamed from: zzbad */
        public final MessageType zzbaf() {
            MessageType messagetype = (MessageType) ((zzdrt) zzbae());
            if (messagetype.isInitialized()) {
                return messagetype;
            }
            throw new zzdup(messagetype);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrt$zzd.class */
    public static abstract class zzd<MessageType extends zzd<MessageType, BuilderType>, BuilderType> extends zzdrt<MessageType, BuilderType> implements zzdtg {
        protected aia<Object> zzhmr = aia.m5353a();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final aia<Object> m3354a() {
            if (this.zzhmr.m5340c()) {
                this.zzhmr = (aia) this.zzhmr.clone();
            }
            return this.zzhmr;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrt$zze.class */
    public static final class zze {
        public static final int zzhms = 1;
        public static final int zzhmt = 2;
        public static final int zzhmu = 3;
        public static final int zzhmv = 4;
        public static final int zzhmw = 5;
        public static final int zzhmx = 6;
        public static final int zzhmy = 7;

        /* renamed from: a */
        private static final /* synthetic */ int[] f14559a = {zzhms, zzhmt, zzhmu, zzhmv, zzhmw, zzhmx, zzhmy};
        public static final int zzhna = 1;
        public static final int zzhnb = 2;

        /* renamed from: b */
        private static final /* synthetic */ int[] f14560b = {zzhna, zzhnb};
        public static final int zzhnd = 1;
        public static final int zzhne = 2;

        /* renamed from: c */
        private static final /* synthetic */ int[] f14561c = {zzhnd, zzhne};

        public static int[] zzbah() {
            return (int[]) f14559a.clone();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrt$zzf.class */
    public static final class zzf<ContainingType extends zzdte, Type> extends zzdrh<ContainingType, Type> {
    }

    /* renamed from: a */
    private static <T extends zzdrt<T, ?>> T m3376a(T t) {
        if (t == null || t.isInitialized()) {
            return t;
        }
        throw new zzdse(new zzdup(t).getMessage()).zzl(t);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static <T extends zzdrt<T, ?>> T m3375a(T t, zzdqk zzdqkVar) {
        return (T) m3376a(m3376a(m3361b(t, zzdqkVar, zzdrg.zzazh())));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static <T extends zzdrt<T, ?>> T m3374a(T t, zzdqk zzdqkVar, zzdrg zzdrgVar) {
        return (T) m3376a(m3361b(t, zzdqkVar, zzdrgVar));
    }

    /* renamed from: a */
    private static <T extends zzdrt<T, ?>> T m3373a(T t, zzdqw zzdqwVar, zzdrg zzdrgVar) {
        T t2 = (T) ((zzdrt) t.mo3009a(zze.zzhmv, null));
        try {
            ajo a = ajd.m5247a().m5245a((ajd) t2);
            a.mo5182a(t2, ahr.m5378a(zzdqwVar), zzdrgVar);
            a.mo5176c(t2);
            return t2;
        } catch (IOException e) {
            if (e.getCause() instanceof zzdse) {
                throw ((zzdse) e.getCause());
            }
            throw new zzdse(e.getMessage()).zzl(t2);
        } catch (RuntimeException e2) {
            if (e2.getCause() instanceof zzdse) {
                throw ((zzdse) e2.getCause());
            }
            throw e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static <T extends zzdrt<T, ?>> T m3371a(T t, byte[] bArr) {
        return (T) m3376a(m3370a(t, bArr, bArr.length, zzdrg.zzazh()));
    }

    /* renamed from: a */
    private static <T extends zzdrt<T, ?>> T m3370a(T t, byte[] bArr, int i, zzdrg zzdrgVar) {
        T t2 = (T) ((zzdrt) t.mo3009a(zze.zzhmv, null));
        try {
            ajo a = ajd.m5247a().m5245a((ajd) t2);
            a.mo5179a(t2, bArr, 0, i, new ahc(zzdrgVar));
            a.mo5176c(t2);
            if (t2.zzhhk == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (IOException e) {
            if (e.getCause() instanceof zzdse) {
                throw ((zzdse) e.getCause());
            }
            throw new zzdse(e.getMessage()).zzl(t2);
        } catch (IndexOutOfBoundsException e2) {
            throw zzdse.m3347a().zzl(t2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static <T extends zzdrt<T, ?>> T m3369a(T t, byte[] bArr, zzdrg zzdrgVar) {
        return (T) m3376a(m3370a(t, bArr, bArr.length, zzdrgVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T extends zzdrt<?, ?>> T m3365a(Class<T> cls) {
        zzdrt<?, ?> zzdrtVar = zzhmm.get(cls);
        zzdrt<?, ?> zzdrtVar2 = zzdrtVar;
        if (zzdrtVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzdrtVar2 = zzhmm.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        T t = (T) zzdrtVar2;
        if (zzdrtVar2 == null) {
            t = (T) ((zzdrt) ((zzdrt) akj.m5069a(cls)).mo3009a(zze.zzhmx, (Object) null));
            if (t != null) {
                zzhmm.put(cls, t);
            } else {
                throw new IllegalStateException();
            }
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static zzdrz m3368a(zzdrz zzdrzVar) {
        int size = zzdrzVar.size();
        return zzdrzVar.zzgk(size == 0 ? 10 : size << 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static <E> zzdsb<E> m3367a(zzdsb<E> zzdsbVar) {
        int size = zzdsbVar.size();
        return zzdsbVar.zzfd(size == 0 ? 10 : size << 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static Object m3366a(zzdte zzdteVar, String str, Object[] objArr) {
        return new ajf(zzdteVar, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Object m3363a(Method method, Object obj, Object... objArr) {
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
    public static <T extends zzdrt<?, ?>> void m3364a(Class<T> cls, T t) {
        zzhmm.put(cls, t);
    }

    /* renamed from: a */
    protected static final <T extends zzdrt<T, ?>> boolean m3372a(T t, boolean z) {
        Object obj = null;
        byte byteValue = ((Byte) t.mo3009a(zze.zzhms, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean d = ajd.m5247a().m5245a((ajd) t).mo5175d(t);
        if (z) {
            int i = zze.zzhmt;
            if (d) {
                obj = t;
            }
            t.mo3009a(i, obj);
        }
        return d;
    }

    /* renamed from: b */
    private static <T extends zzdrt<T, ?>> T m3361b(T t, zzdqk zzdqkVar, zzdrg zzdrgVar) {
        try {
            zzdqw zzaxv = zzdqkVar.zzaxv();
            T t2 = (T) m3373a(t, zzaxv, zzdrgVar);
            try {
                zzaxv.zzfh(0);
                return t2;
            } catch (zzdse e) {
                throw e.zzl(t2);
            }
        } catch (zzdse e2) {
            throw e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract Object mo3009a(int i, Object obj);

    @Override // com.google.android.gms.internal.ads.zzdqa
    /* renamed from: a */
    final void mo3377a(int i) {
        this.zzhml = i;
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    /* renamed from: b */
    final int mo3362b() {
        return this.zzhml;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final <MessageType extends zzdrt<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> BuilderType m3360c() {
        return (BuilderType) ((zzb) mo3009a(zze.zzhmw, (Object) null));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!((zzdrt) mo3009a(zze.zzhmx, (Object) null)).getClass().isInstance(obj)) {
            return false;
        }
        return ajd.m5247a().m5245a((ajd) this).mo5180a(this, (zzdrt) obj);
    }

    public int hashCode() {
        if (this.zzhhk != 0) {
            return this.zzhhk;
        }
        this.zzhhk = ajd.m5247a().m5245a((ajd) this).mo5183a(this);
        return this.zzhhk;
    }

    @Override // com.google.android.gms.internal.ads.zzdtg
    public final boolean isInitialized() {
        return m3372a(this, true);
    }

    public String toString() {
        return aiw.m5296a(this, super.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzdte
    public final int zzazu() {
        if (this.zzhml == -1) {
            this.zzhml = ajd.m5247a().m5245a((ajd) this).mo5178b(this);
        }
        return this.zzhml;
    }

    @Override // com.google.android.gms.internal.ads.zzdte
    public final /* synthetic */ zzdtd zzazx() {
        zzb zzbVar = (zzb) mo3009a(zze.zzhmw, (Object) null);
        zzbVar.mo3358a(this);
        return zzbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdte
    public final /* synthetic */ zzdtd zzazy() {
        return (zzb) mo3009a(zze.zzhmw, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdtg
    public final /* synthetic */ zzdte zzazz() {
        return (zzdrt) mo3009a(zze.zzhmx, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdte
    public final void zzb(zzdrb zzdrbVar) {
        ajd.m5247a().m5245a((ajd) this).mo5181a((ajo) this, (aku) ahv.m5367a(zzdrbVar));
    }
}

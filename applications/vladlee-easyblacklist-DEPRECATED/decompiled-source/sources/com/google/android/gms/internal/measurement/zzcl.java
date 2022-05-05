package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcl.class */
public abstract class zzcl<T> {

    /* renamed from: d */
    private static zzcz<zzcy<zzch>> f16171d;

    /* renamed from: e */
    private final zzcr f16173e;

    /* renamed from: f */
    private final String f16174f;

    /* renamed from: g */
    private final T f16175g;

    /* renamed from: i */
    private volatile int f16176i;

    /* renamed from: j */
    private volatile T f16177j;

    /* renamed from: a */
    private static final Object f16168a = new Object();

    /* renamed from: b */
    private static Context f16169b = null;

    /* renamed from: c */
    private static boolean f16170c = false;

    /* renamed from: h */
    private static final AtomicInteger f16172h = new AtomicInteger();

    private zzcl(zzcr zzcrVar, String str, T t) {
        this.f16176i = -1;
        if (zzcrVar.f16180b != null) {
            this.f16173e = zzcrVar;
            this.f16174f = str;
            this.f16175g = t;
            return;
        }
        throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcl(zzcr zzcrVar, String str, Object obj, byte b) {
        this(zzcrVar, str, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ zzcl m2325a(zzcr zzcrVar, String str) {
        return new C2493bb(zzcrVar, str, Double.valueOf(-3.0d));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ zzcl m2324a(zzcr zzcrVar, String str, long j) {
        return new C2490az(zzcrVar, str, Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ zzcl m2323a(zzcr zzcrVar, String str, String str2) {
        return new C2495bd(zzcrVar, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ zzcl m2322a(zzcr zzcrVar, String str, boolean z) {
        return new C2494bc(zzcrVar, str, Boolean.valueOf(z));
    }

    /* renamed from: a */
    private final String m2320a(String str) {
        if (str != null && str.isEmpty()) {
            return this.f16174f;
        }
        String valueOf = String.valueOf(str);
        String valueOf2 = String.valueOf(this.f16174f);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m2326a() {
        f16172h.incrementAndGet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static final /* synthetic */ zzcy m2319b() {
        new zzck();
        return zzck.zza(f16169b);
    }

    public static void zza(Context context) {
        synchronized (f16168a) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (f16169b != context) {
                zzbx.m2334a();
                zzcu.m2318a();
                C2488ax.m2923a();
                f16172h.incrementAndGet();
                f16169b = context;
                f16171d = zzdc.zza(C2492ba.f15875a);
            }
        }
    }

    /* renamed from: a */
    abstract T mo2321a(Object obj);

    public final String zzb() {
        return m2320a(this.f16173e.f16182d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x014a, code lost:
        if (r8 != null) goto L_0x0155;
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0122 A[Catch: all -> 0x0174, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:6:0x0011, B:8:0x0019, B:10:0x001f, B:13:0x0037, B:15:0x0059, B:16:0x0062, B:18:0x0075, B:25:0x0090, B:27:0x009a, B:29:0x00aa, B:31:0x00c3, B:34:0x00ce, B:36:0x00dd, B:37:0x00e6, B:39:0x00ef, B:41:0x00fe, B:42:0x0108, B:44:0x0114, B:49:0x0122, B:52:0x0142, B:55:0x0150, B:57:0x0156, B:58:0x0162, B:59:0x016e, B:61:0x0170), top: B:70:0x0011 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T zzc() {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzcl.zzc():java.lang.Object");
    }
}

package com.google.android.gms.internal.icing;

import android.annotation.SuppressLint;
import android.content.Context;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbq.class */
public abstract class zzbq<T> {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: g */
    private static Context f7918g;

    /* renamed from: h */
    private static zzcc<zzbx<zzbm>> f7919h;

    /* renamed from: a */
    private final zzbu f7921a;

    /* renamed from: b */
    private final String f7922b;

    /* renamed from: c */
    private final T f7923c;

    /* renamed from: d */
    private volatile int f7924d;

    /* renamed from: e */
    private volatile T f7925e;

    /* renamed from: f */
    private static final Object f7917f = new Object();

    /* renamed from: i */
    private static final AtomicInteger f7920i = new AtomicInteger();

    private zzbq(zzbu zzbuVar, String str, T t) {
        this.f7924d = -1;
        if (zzbuVar.f7932a != null) {
            this.f7921a = zzbuVar;
            this.f7922b = str;
            this.f7923c = t;
            return;
        }
        throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzbq(zzbu zzbuVar, String str, Object obj, zzbs zzbsVar) {
        this(zzbuVar, str, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static zzbq<Boolean> m14011b(zzbu zzbuVar, String str, boolean z) {
        return new zzbr(zzbuVar, str, Boolean.valueOf(z));
    }

    /* renamed from: e */
    public static void m14009e(Context context) {
        synchronized (f7917f) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (f7918g != context) {
                zzbc.m14028f();
                zzbt.m13999e();
                zzbh.m14021e();
                f7920i.incrementAndGet();
                f7918g = context;
                f7919h = zzcb.m13992a(zzbp.f7916f);
            }
        }
    }

    /* renamed from: f */
    private final String m14008f(String str) {
        if (str != null && str.isEmpty()) {
            return this.f7922b;
        }
        String valueOf = String.valueOf(str);
        String valueOf2 = String.valueOf(this.f7922b);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static void m14007g() {
        f7920i.incrementAndGet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static final /* synthetic */ zzbx m14005i() {
        new zzbl();
        return zzbl.m14018b(f7918g);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00dd A[Catch: all -> 0x0173, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:6:0x0011, B:8:0x0019, B:10:0x001f, B:12:0x0032, B:19:0x004a, B:21:0x0054, B:23:0x0064, B:25:0x007d, B:28:0x0089, B:30:0x0098, B:31:0x00a1, B:33:0x00aa, B:35:0x00b9, B:36:0x00c3, B:38:0x00cf, B:43:0x00dd, B:45:0x00f8, B:49:0x010a, B:50:0x010f, B:50:0x010f, B:51:0x0112, B:53:0x011e, B:55:0x0124, B:57:0x0147, B:58:0x014f, B:60:0x0156, B:61:0x0162, B:62:0x016d, B:64:0x016f), top: B:73:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0124 A[Catch: all -> 0x0173, TRY_LEAVE, TryCatch #0 {, blocks: (B:6:0x0011, B:8:0x0019, B:10:0x001f, B:12:0x0032, B:19:0x004a, B:21:0x0054, B:23:0x0064, B:25:0x007d, B:28:0x0089, B:30:0x0098, B:31:0x00a1, B:33:0x00aa, B:35:0x00b9, B:36:0x00c3, B:38:0x00cf, B:43:0x00dd, B:45:0x00f8, B:49:0x010a, B:50:0x010f, B:50:0x010f, B:51:0x0112, B:53:0x011e, B:55:0x0124, B:57:0x0147, B:58:0x014f, B:60:0x0156, B:61:0x0162, B:62:0x016d, B:64:0x016f), top: B:73:0x0011 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T m14012a() {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzbq.m14012a():java.lang.Object");
    }

    /* renamed from: c */
    abstract T mo14004c(Object obj);

    /* renamed from: h */
    public final String m14006h() {
        return m14008f(this.f7921a.f7934c);
    }
}

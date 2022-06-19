package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.internal.measurement.a4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/a4.class */
public abstract class AbstractC1285a4<T> {

    /* renamed from: h */
    private static volatile AbstractC1418z3 f3866h;

    /* renamed from: j */
    public static final /* synthetic */ int f3868j = 0;

    /* renamed from: a */
    final C1411y3 f3869a;

    /* renamed from: b */
    final String f3870b;

    /* renamed from: c */
    private final T f3871c;

    /* renamed from: d */
    private volatile int f3872d = -1;

    /* renamed from: e */
    private volatile T f3873e;

    /* renamed from: f */
    private final boolean f3874f;

    /* renamed from: g */
    private static final Object f3865g = new Object();

    /* renamed from: i */
    private static final AtomicInteger f3867i = new AtomicInteger();

    static {
        new AtomicReference();
        new C1298c4(s3.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ AbstractC1285a4(C1411y3 c1411y3, String str, Object obj, boolean z, u3 u3Var) {
        if (c1411y3.f3981b != null) {
            this.f3869a = c1411y3;
            this.f3870b = str;
            this.f3871c = obj;
            this.f3874f = true;
            return;
        }
        throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
    }

    @Deprecated
    /* renamed from: b */
    public static void m2260b(Context context) {
        synchronized (f3865g) {
            AbstractC1418z3 abstractC1418z3 = f3866h;
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (abstractC1418z3 == null || abstractC1418z3.m1849a() != context) {
                g3.e();
                b4.c();
                n3.d();
                f3866h = new d3(context, C1350m4.m2049a(new r3(context)));
                f3867i.incrementAndGet();
            }
        }
    }

    /* renamed from: c */
    public static void m2259c() {
        f3867i.incrementAndGet();
    }

    /* renamed from: a */
    abstract T m2261a(Object obj);

    /* renamed from: d */
    public final String m2258d() {
        String str = this.f3869a.f3983d;
        return this.f3870b;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x010c A[Catch: all -> 0x01d2, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:9:0x0022, B:11:0x002a, B:13:0x0032, B:15:0x0054, B:17:0x0061, B:19:0x006a, B:21:0x0079, B:22:0x0083, B:24:0x008f, B:27:0x0099, B:29:0x00a3, B:31:0x00b4, B:33:0x00d7, B:36:0x00f0, B:38:0x00ff, B:41:0x010c, B:43:0x0145, B:47:0x015a, B:49:0x0160, B:51:0x016f, B:53:0x0175, B:55:0x01a6, B:56:0x01ae, B:58:0x01b5, B:59:0x01c1, B:60:0x01cc, B:62:0x01ce), top: B:71:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0175 A[Catch: all -> 0x01d2, TRY_LEAVE, TryCatch #0 {, blocks: (B:9:0x0022, B:11:0x002a, B:13:0x0032, B:15:0x0054, B:17:0x0061, B:19:0x006a, B:21:0x0079, B:22:0x0083, B:24:0x008f, B:27:0x0099, B:29:0x00a3, B:31:0x00b4, B:33:0x00d7, B:36:0x00f0, B:38:0x00ff, B:41:0x010c, B:43:0x0145, B:47:0x015a, B:49:0x0160, B:51:0x016f, B:53:0x0175, B:55:0x01a6, B:56:0x01ae, B:58:0x01b5, B:59:0x01c1, B:60:0x01cc, B:62:0x01ce), top: B:71:0x0022 }] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T m2257e() {
        /*
            Method dump skipped, instructions count: 476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.AbstractC1285a4.m2257e():java.lang.Object");
    }
}

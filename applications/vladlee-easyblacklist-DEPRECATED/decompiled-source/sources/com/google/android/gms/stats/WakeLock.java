package com.google.android.gms.stats;

import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.providers.PooledExecutorsProvider;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.common.util.WorkSourceUtil;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/stats/WakeLock.class */
public class WakeLock {

    /* renamed from: n */
    private static ScheduledExecutorService f17351n;

    /* renamed from: o */
    private static volatile zza f17352o = new C2881a();

    /* renamed from: a */
    private final Object f17353a;

    /* renamed from: b */
    private final PowerManager.WakeLock f17354b;

    /* renamed from: c */
    private WorkSource f17355c;

    /* renamed from: d */
    private final int f17356d;

    /* renamed from: e */
    private final String f17357e;

    /* renamed from: f */
    private final String f17358f;

    /* renamed from: g */
    private final String f17359g;

    /* renamed from: h */
    private final Context f17360h;

    /* renamed from: i */
    private boolean f17361i;

    /* renamed from: j */
    private final Map<String, Integer[]> f17362j;

    /* renamed from: k */
    private final Set<Future<?>> f17363k;

    /* renamed from: l */
    private int f17364l;

    /* renamed from: m */
    private AtomicInteger f17365m;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/stats/WakeLock$zza.class */
    public interface zza {
    }

    public WakeLock(Context context, int i, String str) {
        this(context, i, str, context == null ? null : context.getPackageName());
    }

    private WakeLock(Context context, int i, String str, String str2) {
        this(context, i, str, str2, (byte) 0);
    }

    private WakeLock(Context context, int i, String str, String str2, byte b) {
        this.f17353a = this;
        this.f17361i = true;
        this.f17362j = new HashMap();
        this.f17363k = Collections.synchronizedSet(new HashSet());
        this.f17365m = new AtomicInteger(0);
        Preconditions.checkNotNull(context, "WakeLock: context must not be null");
        Preconditions.checkNotEmpty(str, "WakeLock: wakeLockName must not be empty");
        this.f17356d = i;
        this.f17358f = null;
        this.f17359g = null;
        this.f17360h = context.getApplicationContext();
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            String valueOf = String.valueOf(str);
            this.f17357e = valueOf.length() != 0 ? "*gcore*:".concat(valueOf) : new String("*gcore*:");
        } else {
            this.f17357e = str;
        }
        this.f17354b = ((PowerManager) context.getSystemService("power")).newWakeLock(i, str);
        if (WorkSourceUtil.hasWorkSourcePermission(context)) {
            this.f17355c = WorkSourceUtil.fromPackage(context, Strings.isEmptyOrWhitespace(str2) ? context.getPackageName() : str2);
            WorkSource workSource = this.f17355c;
            if (workSource != null && WorkSourceUtil.hasWorkSourcePermission(this.f17360h)) {
                WorkSource workSource2 = this.f17355c;
                if (workSource2 != null) {
                    workSource2.add(workSource);
                } else {
                    this.f17355c = workSource;
                }
                try {
                    this.f17354b.setWorkSource(this.f17355c);
                } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e) {
                    Log.wtf("WakeLock", e.toString());
                }
            }
        }
        if (f17351n == null) {
            f17351n = PooledExecutorsProvider.getInstance().newSingleThreadScheduledExecutor();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m1587a() {
        if (this.f17354b.isHeld()) {
            try {
                this.f17354b.release();
            } catch (RuntimeException e) {
                if (e.getClass().equals(RuntimeException.class)) {
                    Log.e("WakeLock", String.valueOf(this.f17357e).concat(" was already released!"), e);
                } else {
                    throw e;
                }
            }
            this.f17354b.isHeld();
        }
    }

    /* renamed from: b */
    private final String m1585b() {
        if (!this.f17361i || TextUtils.isEmpty(null)) {
            return this.f17358f;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0091, code lost:
        if (r18 == false) goto L_0x0094;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009f, code lost:
        if (r12.f17364l == 0) goto L_0x00a2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a5, code lost:
        com.google.android.gms.common.stats.WakeLockTracker.getInstance().registerEvent(r12.f17360h, com.google.android.gms.common.stats.StatsUtils.getEventKey(r12.f17354b, r0), 7, r12.f17357e, r0, null, r12.f17356d, com.google.android.gms.common.util.WorkSourceUtil.getNames(r12.f17355c), r13);
        r12.f17364l++;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void acquire(long r13) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.stats.WakeLock.acquire(long):void");
    }

    public boolean isHeld() {
        return this.f17354b.isHeld();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0073, code lost:
        if (r14 == false) goto L_0x0076;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0082, code lost:
        if (r10.f17364l == 1) goto L_0x0085;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0088, code lost:
        com.google.android.gms.common.stats.WakeLockTracker.getInstance().registerEvent(r10.f17360h, com.google.android.gms.common.stats.StatsUtils.getEventKey(r10.f17354b, r0), 8, r10.f17357e, r0, null, r10.f17356d, com.google.android.gms.common.util.WorkSourceUtil.getNames(r10.f17355c));
        r10.f17364l--;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void release() {
        /*
            r10 = this;
            r0 = r10
            java.util.concurrent.atomic.AtomicInteger r0 = r0.f17365m
            int r0 = r0.decrementAndGet()
            if (r0 >= 0) goto L_0x001d
            java.lang.String r0 = "WakeLock"
            r1 = r10
            java.lang.String r1 = r1.f17357e
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r2 = " release without a matched acquire!"
            java.lang.String r1 = r1.concat(r2)
            int r0 = android.util.Log.e(r0, r1)
        L_0x001d:
            r0 = r10
            java.lang.String r0 = r0.m1585b()
            r11 = r0
            r0 = r10
            java.lang.Object r0 = r0.f17353a
            r12 = r0
            r0 = r12
            monitor-enter(r0)
            r0 = r10
            boolean r0 = r0.f17361i     // Catch: all -> 0x00bb
            if (r0 == 0) goto L_0x0076
            r0 = r10
            java.util.Map<java.lang.String, java.lang.Integer[]> r0 = r0.f17362j     // Catch: all -> 0x00bb
            r1 = r11
            java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x00bb
            java.lang.Integer[] r0 = (java.lang.Integer[]) r0     // Catch: all -> 0x00bb
            r13 = r0
            r0 = 0
            r14 = r0
            r0 = r13
            if (r0 != 0) goto L_0x0048
            goto L_0x0071
        L_0x0048:
            r0 = r13
            r1 = 0
            r0 = r0[r1]     // Catch: all -> 0x00bb
            int r0 = r0.intValue()     // Catch: all -> 0x00bb
            r1 = 1
            if (r0 != r1) goto L_0x0063
            r0 = r10
            java.util.Map<java.lang.String, java.lang.Integer[]> r0 = r0.f17362j     // Catch: all -> 0x00bb
            r1 = r11
            java.lang.Object r0 = r0.remove(r1)     // Catch: all -> 0x00bb
            r0 = 1
            r14 = r0
            goto L_0x0071
        L_0x0063:
            r0 = r13
            r1 = 0
            r2 = r13
            r3 = 0
            r2 = r2[r3]     // Catch: all -> 0x00bb
            int r2 = r2.intValue()     // Catch: all -> 0x00bb
            r3 = 1
            int r2 = r2 - r3
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: all -> 0x00bb
            r0[r1] = r2     // Catch: all -> 0x00bb
        L_0x0071:
            r0 = r14
            if (r0 != 0) goto L_0x0085
        L_0x0076:
            r0 = r10
            boolean r0 = r0.f17361i     // Catch: all -> 0x00bb
            if (r0 != 0) goto L_0x00b4
            r0 = r10
            int r0 = r0.f17364l     // Catch: all -> 0x00bb
            r1 = 1
            if (r0 != r1) goto L_0x00b4
        L_0x0085:
            com.google.android.gms.common.stats.WakeLockTracker r0 = com.google.android.gms.common.stats.WakeLockTracker.getInstance()     // Catch: all -> 0x00bb, all -> 0x00bb
            r1 = r10
            android.content.Context r1 = r1.f17360h     // Catch: all -> 0x00bb
            r2 = r10
            android.os.PowerManager$WakeLock r2 = r2.f17354b     // Catch: all -> 0x00bb
            r3 = r11
            java.lang.String r2 = com.google.android.gms.common.stats.StatsUtils.getEventKey(r2, r3)     // Catch: all -> 0x00bb
            r3 = 8
            r4 = r10
            java.lang.String r4 = r4.f17357e     // Catch: all -> 0x00bb
            r5 = r11
            r6 = 0
            r7 = r10
            int r7 = r7.f17356d     // Catch: all -> 0x00bb
            r8 = r10
            android.os.WorkSource r8 = r8.f17355c     // Catch: all -> 0x00bb
            java.util.List r8 = com.google.android.gms.common.util.WorkSourceUtil.getNames(r8)     // Catch: all -> 0x00bb
            r0.registerEvent(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: all -> 0x00bb
            r0 = r10
            r1 = r10
            int r1 = r1.f17364l     // Catch: all -> 0x00bb
            r2 = 1
            int r1 = r1 - r2
            r0.f17364l = r1     // Catch: all -> 0x00bb
        L_0x00b4:
            r0 = r12
            monitor-exit(r0)     // Catch: all -> 0x00bb
            r0 = r10
            r0.m1587a()
            return
        L_0x00bb:
            r13 = move-exception
            r0 = r12
            monitor-exit(r0)     // Catch: all -> 0x00bb
            r0 = r13
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.stats.WakeLock.release():void");
    }

    public void setReferenceCounted(boolean z) {
        this.f17354b.setReferenceCounted(z);
        this.f17361i = z;
    }
}

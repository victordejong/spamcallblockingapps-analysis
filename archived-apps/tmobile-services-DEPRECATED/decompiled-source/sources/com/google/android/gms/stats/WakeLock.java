package com.google.android.gms.stats;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.providers.PooledExecutorsProvider;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.common.util.WorkSourceUtil;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.ThreadSafe;
@ShowFirstParty
@ThreadSafe
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/stats/WakeLock.class */
public class WakeLock {

    /* renamed from: l */
    private static ScheduledExecutorService f9827l;

    /* renamed from: a */
    private final Object f9828a;

    /* renamed from: b */
    private final PowerManager.WakeLock f9829b;

    /* renamed from: c */
    private WorkSource f9830c;

    /* renamed from: d */
    private final int f9831d;

    /* renamed from: e */
    private final String f9832e;

    /* renamed from: f */
    private final String f9833f;

    /* renamed from: g */
    private final Context f9834g;

    /* renamed from: h */
    private boolean f9835h;

    /* renamed from: i */
    private final Map<String, Integer[]> f9836i;

    /* renamed from: j */
    private int f9837j;

    /* renamed from: k */
    private AtomicInteger f9838k;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/stats/WakeLock$zza.class */
    public interface zza {
    }

    @KeepForSdk
    public WakeLock(@NonNull Context context, int i, @NonNull String str) {
        this(context, i, str, null, context == null ? null : context.getPackageName());
    }

    private WakeLock(@NonNull Context context, int i, @NonNull String str, @Nullable String str2, @NonNull String str3) {
        this(context, i, str, null, str3, null);
    }

    @SuppressLint({"UnwrappedWakeLock"})
    private WakeLock(@NonNull Context context, int i, @NonNull String str, @Nullable String str2, @NonNull String str3, @Nullable String str4) {
        this.f9828a = this;
        this.f9835h = true;
        this.f9836i = new HashMap();
        Collections.synchronizedSet(new HashSet());
        this.f9838k = new AtomicInteger(0);
        Preconditions.m14522l(context, "WakeLock: context must not be null");
        Preconditions.m14526h(str, "WakeLock: wakeLockName must not be empty");
        this.f9831d = i;
        this.f9833f = null;
        this.f9834g = context.getApplicationContext();
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            String valueOf = String.valueOf(str);
            this.f9832e = valueOf.length() != 0 ? "*gcore*:".concat(valueOf) : new String("*gcore*:");
        } else {
            this.f9832e = str;
        }
        this.f9829b = ((PowerManager) context.getSystemService("power")).newWakeLock(i, str);
        if (WorkSourceUtil.m14304c(context)) {
            WorkSource a = WorkSourceUtil.m14306a(context, Strings.m14309a(str3) ? context.getPackageName() : str3);
            this.f9830c = a;
            if (a != null && WorkSourceUtil.m14304c(this.f9834g)) {
                WorkSource workSource = this.f9830c;
                if (workSource != null) {
                    workSource.add(a);
                } else {
                    this.f9830c = a;
                }
                try {
                    this.f9829b.setWorkSource(this.f9830c);
                } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e) {
                    Log.wtf("WakeLock", e.toString());
                }
            }
        }
        if (f9827l == null) {
            f9827l = PooledExecutorsProvider.m14398a().mo14397a();
        }
    }

    /* renamed from: d */
    private final String m10834d(String str) {
        if (this.f9835h && !TextUtils.isEmpty(str)) {
            return str;
        }
        return this.f9833f;
    }

    /* renamed from: e */
    private final List<String> m10833e() {
        return WorkSourceUtil.m14305b(this.f9830c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public final void m10832f(int i) {
        if (this.f9829b.isHeld()) {
            try {
                this.f9829b.release();
            } catch (RuntimeException e) {
                if (e.getClass().equals(RuntimeException.class)) {
                    Log.e("WakeLock", String.valueOf(this.f9832e).concat(" was already released!"), e);
                } else {
                    throw e;
                }
            }
            this.f9829b.isHeld();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0092, code lost:
        if (r18 == false) goto L_0x0095;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a0, code lost:
        if (r12.f9837j == 0) goto L_0x00a3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a6, code lost:
        com.google.android.gms.common.stats.WakeLockTracker.m14362a().m14360c(r12.f9834g, com.google.android.gms.common.stats.StatsUtils.m14369a(r12.f9829b, r0), 7, r12.f9832e, r0, null, r12.f9831d, m10833e(), r13);
        r12.f9837j++;
     */
    @com.google.android.gms.common.annotation.KeepForSdk
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m10837a(long r13) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.stats.WakeLock.m10837a(long):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0077, code lost:
        if (r14 != false) goto L_0x0089;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0086, code lost:
        if (r10.f9837j == 1) goto L_0x0089;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008c, code lost:
        com.google.android.gms.common.stats.WakeLockTracker.m14362a().m14361b(r10.f9834g, com.google.android.gms.common.stats.StatsUtils.m14369a(r10.f9829b, r0), 8, r10.f9832e, r0, null, r10.f9831d, m10833e());
        r10.f9837j--;
     */
    @com.google.android.gms.common.annotation.KeepForSdk
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m10836b() {
        /*
            Method dump skipped, instructions count: 194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.stats.WakeLock.m10836b():void");
    }

    @KeepForSdk
    /* renamed from: c */
    public void m10835c(boolean z) {
        this.f9829b.setReferenceCounted(z);
        this.f9835h = z;
    }
}

package com.google.android.gms.internal.firebase_auth_api;

import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Base64;
import com.google.android.gms.auth.p021a.p022d.C0763a;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.common.p024l.C0945a;
import com.google.android.gms.common.p026n.C0950c;
import com.google.android.gms.internal.firebase-auth-api.bm;
import com.google.android.gms.internal.firebase-auth-api.yj;
import com.google.firebase.auth.q;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.bm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/bm.class */
final class C1023bm {

    /* renamed from: d */
    private static final C0945a f3673d = new C0945a("FirebaseAuth", "SmsRetrieverHelper");

    /* renamed from: a */
    private final Context f3674a;

    /* renamed from: c */
    private final HashMap<String, C1008am> f3676c = new HashMap<>();

    /* renamed from: b */
    private final ScheduledExecutorService f3675b = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));

    C1023bm(Context context) {
        C0931r.m3308k(context);
        this.f3674a = context;
        C1029c9.m2961a();
    }

    /* renamed from: f */
    public static String m2997f(String str) {
        Matcher matcher = Pattern.compile("(?<!\\d)\\d{6}(?!\\d)").matcher(str);
        if (matcher.find()) {
            return matcher.group();
        }
        return null;
    }

    /* renamed from: j */
    public static /* synthetic */ void m2993j(bm bmVar, String str) {
        C1008am c1008am = ((C1023bm) bmVar).f3676c.get(str);
        if (c1008am == null || C1014b2.m3019b(c1008am.f3660d) || C1014b2.m3019b(c1008am.f3661e) || c1008am.f3658b.isEmpty()) {
            return;
        }
        for (C1267yj c1267yj : c1008am.f3658b) {
            c1267yj.m2308i(q.B1(c1008am.f3660d, c1008am.f3661e));
        }
        c1008am.f3664h = true;
    }

    /* renamed from: m */
    private static String m2990m(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(" ");
        sb.append(str2);
        String sb2 = sb.toString();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(sb2.getBytes(C1091hi.f3718a));
            String substring = Base64.encodeToString(Arrays.copyOf(messageDigest.digest(), 9), 3).substring(0, 11);
            C0945a c0945a = f3673d;
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 19 + String.valueOf(substring).length());
            sb3.append("Package: ");
            sb3.append(str);
            sb3.append(" -- Hash: ");
            sb3.append(substring);
            c0945a.m3222a(sb3.toString(), new Object[0]);
            return substring;
        } catch (NoSuchAlgorithmException e) {
            C0945a c0945a2 = f3673d;
            String valueOf = String.valueOf(e.getMessage());
            c0945a2.m3220c(valueOf.length() != 0 ? "NoSuchAlgorithm: ".concat(valueOf) : new String("NoSuchAlgorithm: "), new Object[0]);
            return null;
        }
    }

    /* renamed from: n */
    public final void m2996g(String str) {
        C1008am c1008am = this.f3676c.get(str);
        if (c1008am == null) {
            return;
        }
        if (!c1008am.f3665i) {
            m2988o(str);
        }
        m2998e(str);
    }

    /* renamed from: o */
    public final void m2988o(String str) {
        C1008am c1008am = this.f3676c.get(str);
        if (c1008am != null && !c1008am.f3664h && !C1014b2.m3019b(c1008am.f3660d)) {
            f3673d.m3215h("Timed out waiting for SMS.", new Object[0]);
            for (C1267yj c1267yj : c1008am.f3658b) {
                c1267yj.m2307j(c1008am.f3660d);
            }
            c1008am.f3665i = true;
        }
    }

    /* renamed from: a */
    final boolean m3002a(String str) {
        return this.f3676c.get(str) != null;
    }

    /* renamed from: b */
    final void m3001b(String str, yj yjVar, long j, boolean z) {
        this.f3676c.put(str, new C1008am(j, z));
        m3000c(yjVar, str);
        C1008am c1008am = this.f3676c.get(str);
        long j2 = c1008am.f3657a;
        if (j2 <= 0) {
            f3673d.m3215h("Timeout of 0 specified; SmsRetriever will not start.", new Object[0]);
            return;
        }
        c1008am.f3662f = this.f3675b.schedule(new Runnable(this, str) { // from class: com.google.android.gms.internal.firebase_auth_api.wl

            /* renamed from: f */
            private final bm f3828f;

            /* renamed from: g */
            private final String f3829g;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f3828f = this;
                this.f3829g = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f3828f.m2996g(this.f3829g);
            }
        }, j2, TimeUnit.SECONDS);
        if (!c1008am.f3659c) {
            f3673d.m3215h("SMS auto-retrieval unavailable; SmsRetriever will not start.", new Object[0]);
            return;
        }
        C1281zl c1281zl = new C1281zl(this, str);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.gms.auth.api.phone.SMS_RETRIEVED");
        this.f3674a.getApplicationContext().registerReceiver(c1281zl, intentFilter);
        C0763a.m3785a(this.f3674a).s().m1465f(new xl(this));
    }

    /* renamed from: c */
    final void m3000c(yj yjVar, String str) {
        C1008am c1008am = this.f3676c.get(str);
        if (c1008am == null) {
            return;
        }
        c1008am.f3658b.add(yjVar);
        if (c1008am.f3663g) {
            yjVar.m2309h(c1008am.f3660d);
        }
        if (c1008am.f3664h) {
            yjVar.m2308i(q.B1(c1008am.f3660d, c1008am.f3661e));
        }
        if (!c1008am.f3665i) {
            return;
        }
        yjVar.m2307j(c1008am.f3660d);
    }

    /* renamed from: d */
    final String m2999d() {
        try {
            String packageName = this.f3674a.getPackageName();
            String m2990m = m2990m(packageName, (Build.VERSION.SDK_INT < 28 ? C0950c.m3200a(this.f3674a).m3205e(packageName, 64).signatures : C0950c.m3200a(this.f3674a).m3205e(packageName, 134217728).signingInfo.getApkContentsSigners())[0].toCharsString());
            if (m2990m != null) {
                return m2990m;
            }
            f3673d.m3220c("Hash generation failed.", new Object[0]);
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            f3673d.m3220c("Unable to find package to obtain hash.", new Object[0]);
            return null;
        }
    }

    /* renamed from: e */
    final void m2998e(String str) {
        C1008am c1008am = this.f3676c.get(str);
        if (c1008am == null) {
            return;
        }
        ScheduledFuture<?> scheduledFuture = c1008am.f3662f;
        if (scheduledFuture != null && !scheduledFuture.isDone()) {
            c1008am.f3662f.cancel(false);
        }
        c1008am.f3658b.clear();
        this.f3676c.remove(str);
    }
}

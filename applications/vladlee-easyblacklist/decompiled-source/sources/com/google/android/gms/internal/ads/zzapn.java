package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapn.class */
public final class zzapn implements zzapr {

    /* renamed from: a */
    private static final Object f11138a = new Object();

    /* renamed from: b */
    private static zzapr f11139b = null;

    /* renamed from: c */
    private static zzapr f11140c = null;

    /* renamed from: d */
    private final Object f11141d;

    /* renamed from: e */
    private final Context f11142e;

    /* renamed from: f */
    private final WeakHashMap<Thread, Boolean> f11143f;

    /* renamed from: g */
    private final ExecutorService f11144g;

    /* renamed from: h */
    private final zzazb f11145h;

    private zzapn(Context context) {
        this(context, zzazb.zzxm());
    }

    private zzapn(Context context, zzazb zzazbVar) {
        this.f11141d = new Object();
        this.f11143f = new WeakHashMap<>();
        this.f11144g = zzddq.zzaqs().zzdt(zzddv.zzgtv);
        this.f11142e = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f11145h = zzazbVar;
    }

    /* renamed from: a */
    private final Uri.Builder m4321a(String str, String str2, String str3, int i) {
        boolean z;
        String str4;
        try {
            z = Wrappers.packageManager(this.f11142e).isCallerInstantApp();
        } catch (Throwable th) {
            zzayu.zzc("Error fetching instant app info", th);
            z = false;
        }
        try {
            str4 = this.f11142e.getPackageName();
        } catch (Throwable th2) {
            zzayu.zzez("Cannot obtain package name, proceeding.");
            str4 = "unknown";
        }
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(z)).appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT));
        String str5 = Build.MANUFACTURER;
        String str6 = Build.MODEL;
        if (!str6.startsWith(str5)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str5).length() + 1 + String.valueOf(str6).length());
            sb.append(str5);
            sb.append(" ");
            sb.append(str6);
            str6 = sb.toString();
        }
        return appendQueryParameter.appendQueryParameter("device", str6).appendQueryParameter("js", this.f11145h.zzbma).appendQueryParameter("appid", str4).appendQueryParameter("exceptiontype", str).appendQueryParameter("stacktrace", str2).appendQueryParameter("eids", TextUtils.join(",", zzzn.zzqg())).appendQueryParameter("exceptionkey", str3).appendQueryParameter("cl", "278033407").appendQueryParameter("rc", "dev").appendQueryParameter("session_id", zzve.zzoz()).appendQueryParameter("sampling_rate", Integer.toString(i)).appendQueryParameter("pb_tm", String.valueOf(zzabi.zzcul.get()));
    }

    public static zzapr zzc(Context context, zzazb zzazbVar) {
        synchronized (f11138a) {
            if (f11140c == null) {
                if (zzabi.zzcun.get().booleanValue()) {
                    zzapn zzapnVar = new zzapn(context, zzazbVar);
                    Thread thread = Looper.getMainLooper().getThread();
                    if (thread != null) {
                        synchronized (zzapnVar.f11141d) {
                            zzapnVar.f11143f.put(thread, Boolean.TRUE);
                        }
                        thread.setUncaughtExceptionHandler(new C1814df(zzapnVar, thread.getUncaughtExceptionHandler()));
                    }
                    Thread.setDefaultUncaughtExceptionHandler(new C1815dg(zzapnVar, Thread.getDefaultUncaughtExceptionHandler()));
                    f11140c = zzapnVar;
                } else {
                    f11140c = new zzapq();
                }
            }
        }
        return f11140c;
    }

    public static zzapr zzs(Context context) {
        synchronized (f11138a) {
            if (f11139b == null) {
                if (zzabi.zzcun.get().booleanValue()) {
                    f11139b = new zzapn(context);
                } else {
                    f11139b = new zzapq();
                }
            }
        }
        return f11139b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4320a(java.lang.Throwable r6) {
        /*
            r5 = this;
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x008c
            r0 = r6
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r9
            r10 = r0
        L_0x000f:
            r0 = r8
            if (r0 == 0) goto L_0x007c
            r0 = r8
            java.lang.StackTraceElement[] r0 = r0.getStackTrace()
            r11 = r0
            r0 = r11
            int r0 = r0.length
            r12 = r0
            r0 = r10
            r13 = r0
            r0 = r9
            r10 = r0
            r0 = 0
            r14 = r0
            r0 = r13
            r9 = r0
            r0 = r14
            r13 = r0
        L_0x0031:
            r0 = r13
            r1 = r12
            if (r0 >= r1) goto L_0x0068
            r0 = r11
            r1 = r13
            r0 = r0[r1]
            r15 = r0
            r0 = r15
            java.lang.String r0 = r0.getClassName()
            boolean r0 = com.google.android.gms.internal.ads.zzayk.zzet(r0)
            if (r0 == 0) goto L_0x004d
            r0 = 1
            r10 = r0
        L_0x004d:
            r0 = r5
            java.lang.Class r0 = r0.getClass()
            java.lang.String r0 = r0.getName()
            r1 = r15
            java.lang.String r1 = r1.getClassName()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0062
            r0 = 1
            r9 = r0
        L_0x0062:
            int r13 = r13 + 1
            goto L_0x0031
        L_0x0068:
            r0 = r8
            java.lang.Throwable r0 = r0.getCause()
            r8 = r0
            r0 = r10
            r13 = r0
            r0 = r9
            r10 = r0
            r0 = r13
            r9 = r0
            goto L_0x000f
        L_0x007c:
            r0 = r9
            if (r0 == 0) goto L_0x008c
            r0 = r10
            if (r0 != 0) goto L_0x008c
            r0 = r7
            r9 = r0
            goto L_0x008f
        L_0x008c:
            r0 = 0
            r9 = r0
        L_0x008f:
            r0 = r9
            if (r0 == 0) goto L_0x009d
            r0 = r5
            r1 = r6
            java.lang.String r2 = ""
            r3 = 1065353216(0x3f800000, float:1.0)
            r0.zza(r1, r2, r3)
        L_0x009d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzapn.m4320a(java.lang.Throwable):void");
    }

    @Override // com.google.android.gms.internal.ads.zzapr
    public final void zza(Throwable th, String str) {
        zza(th, str, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.zzapr
    public final void zza(Throwable th, String str, float f) {
        if (zzayk.zzc(th) != null) {
            String name = th.getClass().getName();
            StringWriter stringWriter = new StringWriter();
            zzdpt.zza(th, new PrintWriter(stringWriter));
            String stringWriter2 = stringWriter.toString();
            int i = 0;
            int i2 = 1;
            boolean z = Math.random() < ((double) f);
            if (f > 0.0f) {
                i2 = (int) (1.0f / f);
            }
            if (z) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(m4321a(name, stringWriter2, str, i2).toString());
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size();
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    i++;
                    final String str2 = (String) obj;
                    final zzayy zzayyVar = new zzayy();
                    this.f11144g.execute(new Runnable(zzayyVar, str2) { // from class: com.google.android.gms.internal.ads.de

                        /* renamed from: a */
                        private final zzayy f8376a;

                        /* renamed from: b */
                        private final String f8377b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f8376a = zzayyVar;
                            this.f8377b = str2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f8376a.zzen(this.f8377b);
                        }
                    });
                }
            }
        }
    }
}

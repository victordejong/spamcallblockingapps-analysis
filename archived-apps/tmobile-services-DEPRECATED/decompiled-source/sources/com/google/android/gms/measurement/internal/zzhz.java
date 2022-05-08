package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.MainThread;
/* JADX INFO: Access modifiers changed from: package-private */
@TargetApi(14)
@MainThread
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhz.class */
public final class zzhz implements Application.ActivityLifecycleCallbacks {

    /* renamed from: f */
    private final /* synthetic */ zzgy f9471f;

    private zzhz(zzgy zzgyVar) {
        this.f9471f = zzgyVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzhz(zzgy zzgyVar, zzhd zzhdVar) {
        this(zzgyVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0282, code lost:
        if (r13.contains("utm_content") != false) goto L_0x0285;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00df A[Catch: Exception -> 0x02b4, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x02b4, blocks: (B:3:0x0007, B:5:0x001b, B:7:0x002b, B:11:0x0044, B:14:0x0058, B:16:0x0062, B:18:0x006c, B:20:0x0076, B:22:0x0080, B:23:0x0090, B:25:0x009f, B:26:0x00ab, B:28:0x00b8, B:31:0x00cb, B:35:0x00df, B:38:0x00f4, B:40:0x010d, B:44:0x011c, B:46:0x0126, B:48:0x0141, B:50:0x014f, B:52:0x015f, B:55:0x0174, B:57:0x0186, B:61:0x019b, B:65:0x01a9, B:68:0x01b3, B:70:0x01c7, B:73:0x01ce, B:77:0x01f6, B:79:0x0212, B:80:0x0222, B:82:0x0234, B:85:0x0245, B:87:0x024f, B:89:0x0259, B:91:0x0263, B:93:0x026d, B:97:0x027b, B:103:0x028d, B:105:0x029d, B:107:0x02a5), top: B:112:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0186 A[Catch: Exception -> 0x02b4, TRY_ENTER, TryCatch #0 {Exception -> 0x02b4, blocks: (B:3:0x0007, B:5:0x001b, B:7:0x002b, B:11:0x0044, B:14:0x0058, B:16:0x0062, B:18:0x006c, B:20:0x0076, B:22:0x0080, B:23:0x0090, B:25:0x009f, B:26:0x00ab, B:28:0x00b8, B:31:0x00cb, B:35:0x00df, B:38:0x00f4, B:40:0x010d, B:44:0x011c, B:46:0x0126, B:48:0x0141, B:50:0x014f, B:52:0x015f, B:55:0x0174, B:57:0x0186, B:61:0x019b, B:65:0x01a9, B:68:0x01b3, B:70:0x01c7, B:73:0x01ce, B:77:0x01f6, B:79:0x0212, B:80:0x0222, B:82:0x0234, B:85:0x0245, B:87:0x024f, B:89:0x0259, B:91:0x0263, B:93:0x026d, B:97:0x027b, B:103:0x028d, B:105:0x029d, B:107:0x02a5), top: B:112:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01cd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01ce A[Catch: Exception -> 0x02b4, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x02b4, blocks: (B:3:0x0007, B:5:0x001b, B:7:0x002b, B:11:0x0044, B:14:0x0058, B:16:0x0062, B:18:0x006c, B:20:0x0076, B:22:0x0080, B:23:0x0090, B:25:0x009f, B:26:0x00ab, B:28:0x00b8, B:31:0x00cb, B:35:0x00df, B:38:0x00f4, B:40:0x010d, B:44:0x011c, B:46:0x0126, B:48:0x0141, B:50:0x014f, B:52:0x015f, B:55:0x0174, B:57:0x0186, B:61:0x019b, B:65:0x01a9, B:68:0x01b3, B:70:0x01c7, B:73:0x01ce, B:77:0x01f6, B:79:0x0212, B:80:0x0222, B:82:0x0234, B:85:0x0245, B:87:0x024f, B:89:0x0259, B:91:0x0263, B:93:0x026d, B:97:0x027b, B:103:0x028d, B:105:0x029d, B:107:0x02a5), top: B:112:0x0007 }] */
    @androidx.annotation.WorkerThread
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m11243b(boolean r10, android.net.Uri r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 710
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzhz.m11243b(boolean, android.net.Uri, java.lang.String, java.lang.String):void");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        try {
            this.f9471f.mo11081c().m11552L().m11540a("onActivityCreated");
            Intent intent = activity.getIntent();
            if (intent != null) {
                Uri data = intent.getData();
                if (data != null && data.isHierarchical()) {
                    this.f9471f.m11313j();
                    this.f9471f.mo11083b().m11409x(new zzhy(this, bundle == null, data, zzkw.m10967Y(intent) ? "gs" : "auto", data.getQueryParameter("referrer")));
                }
            }
        } catch (Exception e) {
            this.f9471f.mo11081c().m11560D().m11539b("Throwable caught in onActivityCreated", e);
        } finally {
            this.f9471f.m11597r().m11226F(activity, bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f9471f.m11597r().m11211U(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @MainThread
    public final void onActivityPaused(Activity activity) {
        this.f9471f.m11597r().m11213S(activity);
        zzju t = this.f9471f.m11595t();
        t.mo11083b().m11409x(new zzjw(t, t.mo11085a().mo14334b()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @MainThread
    public final void onActivityResumed(Activity activity) {
        zzju t = this.f9471f.m11595t();
        t.mo11083b().m11409x(new zzjx(t, t.mo11085a().mo14334b()));
        this.f9471f.m11597r().m11227E(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.f9471f.m11597r().m11212T(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}

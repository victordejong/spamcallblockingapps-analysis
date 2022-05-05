package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzarf.class */
public final class zzarf extends ContextWrapper {

    /* renamed from: a */
    private Context f11332a;

    /* renamed from: b */
    private WeakReference<Activity> f11333b = new WeakReference<>(null);

    private zzarf(Context context) {
        super(context);
    }

    /* renamed from: a */
    private static Context m4308a(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    /* renamed from: a */
    private final Intent m4307a(Intent intent) {
        synchronized (this) {
            if (!(this.f11332a == null || intent.getComponent() == null || !intent.getComponent().getPackageName().equals(this.f11332a.getPackageName()))) {
                Intent intent2 = (Intent) intent.clone();
                intent2.setClassName(super.getPackageName(), intent.getComponent().getClassName());
                return intent2;
            }
            return intent;
        }
    }

    /* renamed from: b */
    private final void m4306b(Intent intent) {
        synchronized (this) {
            Activity activity = this.f11333b.get();
            if (activity == null) {
                intent.addFlags(268435456);
                super.startActivity(intent);
                return;
            }
            Intent intent2 = (Intent) intent.clone();
            intent2.setFlags(intent.getFlags() & (-268435457));
            activity.startActivity(intent2);
        }
    }

    public static Context zzaa(Context context) {
        return context instanceof zzarf ? ((zzarf) context).getBaseContext() : m4308a(context);
    }

    public static zzarf zzz(Context context) {
        return new zzarf(m4308a(context));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        return this;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final ApplicationInfo getApplicationInfo() {
        synchronized (this) {
            if (this.f11332a != null) {
                return this.f11332a.getApplicationInfo();
            }
            return super.getApplicationInfo();
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final String getPackageName() {
        synchronized (this) {
            if (this.f11332a != null) {
                return this.f11332a.getPackageName();
            }
            return super.getPackageName();
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final String getPackageResourcePath() {
        synchronized (this) {
            if (this.f11332a != null) {
                return this.f11332a.getPackageResourcePath();
            }
            return super.getPackageResourcePath();
        }
    }

    public final void setAppPackageName(String str) {
        synchronized (this) {
            this.f11332a = super.createPackageContext(str, 0);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        synchronized (this) {
            m4306b(m4307a(intent));
        }
    }
}

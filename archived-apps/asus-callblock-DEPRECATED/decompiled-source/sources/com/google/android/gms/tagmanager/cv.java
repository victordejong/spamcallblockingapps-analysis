package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/cv.class */
final class cv extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4368b = h.APP_VERSION.toString();
    private final Context c;

    public cv(Context context) {
        super(f4368b, new String[0]);
        this.c = context;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        k.a f;
        try {
            f = cn.a(Integer.valueOf(this.c.getPackageManager().getPackageInfo(this.c.getPackageName(), 0).versionCode));
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(this.c.getPackageName());
            String valueOf2 = String.valueOf(e.getMessage());
            an.a(new StringBuilder(String.valueOf(valueOf).length() + 25 + String.valueOf(valueOf2).length()).append("Package name ").append(valueOf).append(" not found. ").append(valueOf2).toString());
            f = cn.f();
        }
        return f;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return true;
    }
}

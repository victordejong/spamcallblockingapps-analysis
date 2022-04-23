package com.crashlytics.android;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.p004a.p006b.C0026j;
import p000a.p001a.p002a.p003a.p004a.p006b.C0042w;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/CrashlyticsInitProvider.class */
public class CrashlyticsInitProvider extends ContentProvider {
    private static final String TAG = "CrashlyticsInitProvider";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/CrashlyticsInitProvider$EnabledCheckStrategy.class */
    public interface EnabledCheckStrategy {
        boolean isCrashlyticsEnabled(Context context);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Context context = getContext();
        if (!shouldInitializeFabric(context, new C0042w(), new ManifestEnabledCheckStrategy())) {
            return true;
        }
        try {
            C0137d.m10162a(context, new Crashlytics());
            C0137d.m10155c().mo10131c(TAG, "CrashlyticsInitProvider initialization successful");
            return true;
        } catch (IllegalStateException e) {
            C0137d.m10155c().mo10131c(TAG, "CrashlyticsInitProvider initialization unsuccessful");
            return false;
        }
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    boolean shouldInitializeFabric(Context context, C0042w wVar, EnabledCheckStrategy enabledCheckStrategy) {
        if (C0042w.m10297a(context)) {
            return enabledCheckStrategy.isCrashlyticsEnabled(context);
        }
        int a = C0026j.m10353a(context, "io.fabric.auto_initialize", "bool");
        if (a == 0) {
            return false;
        }
        boolean z = context.getResources().getBoolean(a);
        if (z) {
            C0137d.m10155c().mo10135a("Fabric", "Found Fabric auto-initialization flag for joint Firebase/Fabric customers");
        }
        return z;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}

package com.google.firebase.perf.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.firebase-perf.zzaa;
import com.google.firebase.perf.metrics.AppStartTrace;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p269j.C7761a3;
import p081h.p203i.p204a.p224e.p259j.p269j.C7831i6;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/provider/FirebasePerfProvider.class */
public class FirebasePerfProvider extends ContentProvider {
    public static final zzaa zzen = new com.google.android.gms.internal.firebase_perf.zzaa();
    public final Handler mHandler = new Handler(Looper.getMainLooper());

    static {
        new C7831i6();
    }

    public static zzaa zzaq() {
        return zzen;
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        C7021t.m21289a(providerInfo, "FirebasePerfProvider ProviderInfo cannot be null.");
        if (!"com.google.firebase.firebaseperfprovider".equals(providerInfo.authority)) {
            super.attachInfo(context, providerInfo);
            C7761a3.m19547d().m19557a(getContext());
            AppStartTrace b = AppStartTrace.m31048b();
            b.m31052a(getContext());
            this.mHandler.post(new AppStartTrace.RunnableC3680a(b));
            return;
        }
        throw new IllegalStateException("Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application's build.gradle.");
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return false;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}

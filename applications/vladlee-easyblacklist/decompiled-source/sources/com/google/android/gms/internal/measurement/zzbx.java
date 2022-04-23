package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import androidx.p026b.C0529a;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbx.class */
public final class zzbx implements AbstractC2486av {

    /* renamed from: a */
    private static final Map<Uri, zzbx> f16153a = new C0529a();

    /* renamed from: h */
    private static final String[] f16154h = {"key", AppMeasurementSdk.ConditionalUserProperty.VALUE};

    /* renamed from: b */
    private final ContentResolver f16155b;

    /* renamed from: c */
    private final Uri f16156c;

    /* renamed from: f */
    private volatile Map<String, String> f16159f;

    /* renamed from: d */
    private final ContentObserver f16157d = new C2484at(this);

    /* renamed from: e */
    private final Object f16158e = new Object();

    /* renamed from: g */
    private final List<zzcc> f16160g = new ArrayList();

    private zzbx(ContentResolver contentResolver, Uri uri) {
        this.f16155b = contentResolver;
        this.f16156c = uri;
        contentResolver.registerContentObserver(uri, false, this.f16157d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m2334a() {
        synchronized (zzbx.class) {
            try {
                for (zzbx zzbxVar : f16153a.values()) {
                    zzbxVar.f16155b.unregisterContentObserver(zzbxVar.f16157d);
                }
                f16153a.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: c */
    private final Map<String, String> m2332c() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                Map<String, String> map = (Map) zzce.zza(new zzcd(this) { // from class: com.google.android.gms.internal.measurement.au

                    /* renamed from: a */
                    private final zzbx f15867a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f15867a = this;
                    }

                    @Override // com.google.android.gms.internal.measurement.zzcd
                    public final Object zza() {
                        return this.f15867a.m2333b();
                    }
                });
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                return map;
            } catch (SQLiteException | IllegalStateException | SecurityException e) {
                Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                return null;
            }
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }

    public static zzbx zza(ContentResolver contentResolver, Uri uri) {
        zzbx zzbxVar;
        synchronized (zzbx.class) {
            try {
                zzbx zzbxVar2 = f16153a.get(uri);
                zzbxVar = zzbxVar2;
                if (zzbxVar2 == null) {
                    try {
                        zzbxVar = new zzbx(contentResolver, uri);
                        try {
                            f16153a.put(uri, zzbxVar);
                        } catch (SecurityException e) {
                        }
                    } catch (SecurityException e2) {
                        zzbxVar = zzbxVar2;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbxVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final /* synthetic */ Map m2333b() {
        Cursor query = this.f16155b.query(this.f16156c, f16154h, null, null, null);
        if (query == null) {
            return Collections.emptyMap();
        }
        try {
            int count = query.getCount();
            if (count == 0) {
                return Collections.emptyMap();
            }
            Map aVar = count <= 256 ? new C0529a(count) : new HashMap(count, 1.0f);
            while (query.moveToNext()) {
                aVar.put(query.getString(0), query.getString(1));
            }
            return aVar;
        } finally {
            query.close();
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2486av
    public final /* synthetic */ Object zza(String str) {
        return zza().get(str);
    }

    public final Map<String, String> zza() {
        Map<String, String> map = this.f16159f;
        Map<String, String> map2 = map;
        if (map == null) {
            synchronized (this.f16158e) {
                Map<String, String> map3 = this.f16159f;
                map2 = map3;
                if (map3 == null) {
                    map2 = m2332c();
                    this.f16159f = map2;
                }
            }
        }
        return map2 != null ? map2 : Collections.emptyMap();
    }

    public final void zzb() {
        synchronized (this.f16158e) {
            this.f16159f = null;
            zzcl.m2326a();
        }
        synchronized (this) {
            for (zzcc zzccVar : this.f16160g) {
                zzccVar.zza();
            }
        }
    }
}

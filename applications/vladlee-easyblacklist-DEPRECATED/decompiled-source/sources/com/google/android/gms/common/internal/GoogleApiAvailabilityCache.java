package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GoogleApiAvailabilityCache.class */
public class GoogleApiAvailabilityCache {

    /* renamed from: a */
    private final SparseIntArray f6788a;

    /* renamed from: b */
    private GoogleApiAvailabilityLight f6789b;

    public GoogleApiAvailabilityCache() {
        this(GoogleApiAvailability.getInstance());
    }

    public GoogleApiAvailabilityCache(GoogleApiAvailabilityLight googleApiAvailabilityLight) {
        this.f6788a = new SparseIntArray();
        Preconditions.checkNotNull(googleApiAvailabilityLight);
        this.f6789b = googleApiAvailabilityLight;
    }

    public void flush() {
        this.f6788a.clear();
    }

    public int getClientAvailability(Context context, Api.Client client) {
        int i;
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(client);
        if (!client.requiresGooglePlayServices()) {
            return 0;
        }
        int minApkVersion = client.getMinApkVersion();
        int i2 = this.f6788a.get(minApkVersion, -1);
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        while (true) {
            i = i2;
            if (i3 < this.f6788a.size()) {
                int keyAt = this.f6788a.keyAt(i3);
                if (keyAt > minApkVersion && this.f6788a.get(keyAt) == 0) {
                    i = 0;
                    break;
                }
                i3++;
            } else {
                break;
            }
        }
        int i4 = i;
        if (i == -1) {
            i4 = this.f6789b.isGooglePlayServicesAvailable(context, minApkVersion);
        }
        this.f6788a.put(minApkVersion, i4);
        return i4;
    }
}

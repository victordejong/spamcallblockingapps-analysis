package com.facebook.ads.internal.settings;

import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import java.io.Serializable;
import java.util.ArrayList;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/settings/MultithreadedBundleWrapper.class */
public class MultithreadedBundleWrapper {
    public final Bundle mBundle = new Bundle();

    public boolean getBoolean(String str) {
        boolean z;
        synchronized (this) {
            z = this.mBundle.getBoolean(str);
        }
        return z;
    }

    public boolean getBoolean(String str, boolean z) {
        boolean z2;
        synchronized (this) {
            z2 = this.mBundle.getBoolean(str, z);
        }
        return z2;
    }

    @Nullable
    public Serializable getSerializable(String str) {
        Serializable serializable;
        synchronized (this) {
            serializable = this.mBundle.getSerializable(str);
        }
        return serializable;
    }

    @Nullable
    public String getString(String str, @Nullable String str2) {
        String string;
        synchronized (this) {
            string = this.mBundle.getString(str, str2);
        }
        return string;
    }

    @Nullable
    public ArrayList<String> getStringArrayList(String str) {
        ArrayList<String> stringArrayList;
        synchronized (this) {
            stringArrayList = this.mBundle.getStringArrayList(str);
        }
        return stringArrayList;
    }

    public void putBoolean(String str, boolean z) {
        synchronized (this) {
            this.mBundle.putBoolean(str, z);
        }
    }

    public void putSerializable(String str, Serializable serializable) {
        synchronized (this) {
            this.mBundle.putSerializable(str, serializable);
        }
    }

    public void putString(String str, @Nullable String str2) {
        synchronized (this) {
            this.mBundle.putString(str, str2);
        }
    }

    public void putStringArrayList(String str, ArrayList<String> arrayList) {
        synchronized (this) {
            this.mBundle.putStringArrayList(str, arrayList);
        }
    }

    public void reset(Bundle bundle) {
        synchronized (this) {
            this.mBundle.clear();
            this.mBundle.putAll(bundle);
        }
    }

    public Bundle toBundle() {
        return new Bundle(this.mBundle);
    }
}

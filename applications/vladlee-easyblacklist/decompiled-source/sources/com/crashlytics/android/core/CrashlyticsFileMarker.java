package com.crashlytics.android.core;

import java.io.File;
import java.io.IOException;
import p000a.p001a.p002a.p003a.AbstractC0150o;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.p004a.p011f.AbstractC0105a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsFileMarker.class */
public class CrashlyticsFileMarker {
    private final AbstractC0105a fileStore;
    private final String markerName;

    public CrashlyticsFileMarker(String str, AbstractC0105a aVar) {
        this.markerName = str;
        this.fileStore = aVar;
    }

    private File getMarkerFile() {
        return new File(this.fileStore.mo10191a(), this.markerName);
    }

    public boolean create() {
        boolean z;
        try {
            z = getMarkerFile().createNewFile();
        } catch (IOException e) {
            AbstractC0150o c = C0137d.m10155c();
            c.mo10130c(CrashlyticsCore.TAG, "Error creating marker: " + this.markerName, e);
            z = false;
        }
        return z;
    }

    public boolean isPresent() {
        return getMarkerFile().exists();
    }

    public boolean remove() {
        return getMarkerFile().delete();
    }
}

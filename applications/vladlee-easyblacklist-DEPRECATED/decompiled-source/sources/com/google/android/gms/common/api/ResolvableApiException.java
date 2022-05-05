package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/ResolvableApiException.class */
public class ResolvableApiException extends ApiException {
    public ResolvableApiException(Status status) {
        super(status);
    }

    public PendingIntent getResolution() {
        return this.f6172a.getResolution();
    }

    public void startResolutionForResult(Activity activity, int i) {
        this.f6172a.startResolutionForResult(activity, i);
    }
}

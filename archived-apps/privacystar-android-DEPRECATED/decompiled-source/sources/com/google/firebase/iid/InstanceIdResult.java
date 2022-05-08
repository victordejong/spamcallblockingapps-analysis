package com.google.firebase.iid;

import android.support.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/InstanceIdResult.class */
public interface InstanceIdResult {
    @NonNull
    String getId();

    @NonNull
    String getToken();
}

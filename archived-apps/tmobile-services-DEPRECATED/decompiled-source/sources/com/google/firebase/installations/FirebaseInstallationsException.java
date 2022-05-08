package com.google.firebase.installations;

import androidx.annotation.NonNull;
import com.google.firebase.FirebaseException;
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/FirebaseInstallationsException.class */
public class FirebaseInstallationsException extends FirebaseException {
    @NonNull
    private final Status status;

    /* loaded from: classes-dex2jar.jar:com/google/firebase/installations/FirebaseInstallationsException$Status.class */
    public enum Status {
        BAD_CONFIG,
        UNAVAILABLE
    }

    public FirebaseInstallationsException(@NonNull Status status) {
        this.status = status;
    }

    public FirebaseInstallationsException(@NonNull String str, @NonNull Status status) {
        super(str);
        this.status = status;
    }

    public FirebaseInstallationsException(@NonNull String str, @NonNull Status status, @NonNull Throwable th) {
        super(str, th);
        this.status = status;
    }

    @NonNull
    public Status getStatus() {
        return this.status;
    }
}

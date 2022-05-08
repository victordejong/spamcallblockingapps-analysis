package com.google.firebase;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/firebase/FirebaseException.class */
public class FirebaseException extends Exception {
    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public FirebaseException() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseException(@NonNull String str) {
        super(str);
        Preconditions.m14526h(str, "Detail message must not be empty");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseException(@NonNull String str, Throwable th) {
        super(str, th);
        Preconditions.m14526h(str, "Detail message must not be empty");
    }
}

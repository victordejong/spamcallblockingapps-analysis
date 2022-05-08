package com.google.firebase.encoders;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/encoders/EncodingException.class */
public final class EncodingException extends RuntimeException {
    public EncodingException(@NonNull String str) {
        super(str);
    }

    public EncodingException(@NonNull String str, @NonNull Exception exc) {
        super(str, exc);
    }
}

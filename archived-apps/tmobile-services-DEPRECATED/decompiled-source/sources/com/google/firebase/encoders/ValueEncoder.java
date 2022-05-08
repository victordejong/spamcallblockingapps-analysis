package com.google.firebase.encoders;

import androidx.annotation.NonNull;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/firebase/encoders/ValueEncoder.class */
public interface ValueEncoder<T> extends Encoder<T, ValueEncoderContext> {
    @Override // com.google.firebase.encoders.Encoder
    /* synthetic */ void encode(@NonNull TValue tvalue, @NonNull TContext tcontext) throws IOException;
}

package com.google.android.datatransport.runtime;

import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.AutoValue_TransportContext;
import com.google.auto.value.AutoValue;
@AutoValue
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/TransportContext.class */
public abstract class TransportContext {

    @AutoValue.Builder
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/TransportContext$Builder.class */
    public static abstract class Builder {
        /* renamed from: a */
        public abstract TransportContext mo15422a();

        /* renamed from: b */
        public abstract Builder mo15421b(String str);

        /* renamed from: c */
        public abstract Builder mo15420c(@Nullable byte[] bArr);

        @RestrictTo
        /* renamed from: d */
        public abstract Builder mo15419d(Priority priority);
    }

    /* renamed from: a */
    public static Builder m15427a() {
        AutoValue_TransportContext.Builder builder = new AutoValue_TransportContext.Builder();
        builder.mo15419d(Priority.DEFAULT);
        return builder;
    }

    /* renamed from: b */
    public abstract String mo15426b();

    @Nullable
    /* renamed from: c */
    public abstract byte[] mo15425c();

    @RestrictTo
    /* renamed from: d */
    public abstract Priority mo15424d();

    @RestrictTo
    /* renamed from: e */
    public TransportContext m15423e(Priority priority) {
        Builder a = m15427a();
        a.mo15421b(mo15426b());
        a.mo15419d(priority);
        a.mo15420c(mo15425c());
        return a.mo15422a();
    }

    public final String toString() {
        return String.format("TransportContext(%s, %s, %s)", mo15426b(), mo15424d(), mo15425c() == null ? "" : Base64.encodeToString(mo15425c(), 2));
    }
}

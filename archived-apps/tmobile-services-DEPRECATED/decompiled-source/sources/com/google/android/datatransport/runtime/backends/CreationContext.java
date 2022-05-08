package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.auto.value.AutoValue;
@AutoValue
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/CreationContext.class */
public abstract class CreationContext {
    /* renamed from: a */
    public static CreationContext m15392a(Context context, Clock clock, Clock clock2, String str) {
        return new AutoValue_CreationContext(context, clock, clock2, str);
    }

    /* renamed from: b */
    public abstract Context mo15391b();

    @NonNull
    /* renamed from: c */
    public abstract String mo15390c();

    /* renamed from: d */
    public abstract Clock mo15389d();

    /* renamed from: e */
    public abstract Clock mo15388e();
}

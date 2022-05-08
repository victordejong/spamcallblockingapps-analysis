package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.runtime.AutoValue_SendRequest;
import com.google.auto.value.AutoValue;
/* JADX INFO: Access modifiers changed from: package-private */
@AutoValue
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/SendRequest.class */
public abstract class SendRequest {

    @AutoValue.Builder
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/SendRequest$Builder.class */
    public static abstract class Builder {
        /* renamed from: a */
        public abstract SendRequest mo15433a();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public abstract Builder mo15432b(Encoding encoding);

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: c */
        public abstract Builder mo15431c(Event<?> event);

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: d */
        public abstract Builder mo15430d(Transformer<?, byte[]> transformer);

        /* renamed from: e */
        public abstract Builder mo15429e(TransportContext transportContext);

        /* renamed from: f */
        public abstract Builder mo15428f(String str);
    }

    /* renamed from: a */
    public static Builder m15440a() {
        return new AutoValue_SendRequest.Builder();
    }

    /* renamed from: b */
    public abstract Encoding mo15439b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public abstract Event<?> mo15438c();

    /* renamed from: d */
    public byte[] m15437d() {
        return mo15436e().apply(mo15438c().mo15558b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public abstract Transformer<?, byte[]> mo15436e();

    /* renamed from: f */
    public abstract TransportContext mo15435f();

    /* renamed from: g */
    public abstract String mo15434g();
}

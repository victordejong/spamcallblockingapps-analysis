package com.google.android.datatransport.runtime.scheduling.persistence;

import com.facebook.stetho.server.http.HttpStatus;
import com.google.android.datatransport.runtime.scheduling.persistence.AutoValue_EventStoreConfig;
import com.google.auto.value.AutoValue;
/* JADX INFO: Access modifiers changed from: package-private */
@AutoValue
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig.class */
public abstract class EventStoreConfig {

    /* renamed from: a */
    static final EventStoreConfig f6781a;

    /* JADX INFO: Access modifiers changed from: package-private */
    @AutoValue.Builder
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder.class */
    public static abstract class Builder {
        /* renamed from: a */
        abstract EventStoreConfig mo15297a();

        /* renamed from: b */
        abstract Builder mo15296b(int i);

        /* renamed from: c */
        abstract Builder mo15295c(long j);

        /* renamed from: d */
        abstract Builder mo15294d(int i);

        /* renamed from: e */
        abstract Builder mo15293e(int i);

        /* renamed from: f */
        abstract Builder mo15292f(long j);
    }

    static {
        Builder a = m15303a();
        a.mo15292f(10485760L);
        a.mo15294d(HttpStatus.HTTP_OK);
        a.mo15296b(10000);
        a.mo15295c(604800000L);
        a.mo15293e(81920);
        f6781a = a.mo15297a();
    }

    /* renamed from: a */
    static Builder m15303a() {
        return new AutoValue_EventStoreConfig.Builder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public abstract int mo15302b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public abstract long mo15301c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public abstract int mo15300d();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public abstract int mo15299e();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public abstract long mo15298f();
}

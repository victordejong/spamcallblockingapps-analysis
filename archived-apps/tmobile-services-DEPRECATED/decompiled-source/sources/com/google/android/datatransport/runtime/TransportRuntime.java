package com.google.android.datatransport.runtime;

import android.content.Context;
import androidx.annotation.RestrictTo;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.TransportFactory;
import com.google.android.datatransport.TransportScheduleCallback;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.Scheduler;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.android.datatransport.runtime.time.Monotonic;
import com.google.android.datatransport.runtime.time.WallTime;
import java.util.Collections;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Singleton;
@Singleton
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/TransportRuntime.class */
public class TransportRuntime implements TransportInternal {

    /* renamed from: e */
    private static volatile TransportRuntimeComponent f6651e;

    /* renamed from: a */
    private final Clock f6652a;

    /* renamed from: b */
    private final Clock f6653b;

    /* renamed from: c */
    private final Scheduler f6654c;

    /* renamed from: d */
    private final Uploader f6655d;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Inject
    public TransportRuntime(@WallTime Clock clock, @Monotonic Clock clock2, Scheduler scheduler, Uploader uploader, WorkInitializer workInitializer) {
        this.f6652a = clock;
        this.f6653b = clock2;
        this.f6654c = scheduler;
        this.f6655d = uploader;
        workInitializer.m15311a();
    }

    /* renamed from: b */
    private EventInternal m15415b(SendRequest sendRequest) {
        EventInternal.Builder a = EventInternal.m15467a();
        a.mo15447i(this.f6652a.mo15188a());
        a.mo15445k(this.f6653b.mo15188a());
        a.mo15446j(sendRequest.mo15434g());
        a.mo15448h(new EncodedPayload(sendRequest.mo15439b(), sendRequest.m15437d()));
        a.mo15449g(sendRequest.mo15438c().mo15559a());
        return a.mo15452d();
    }

    /* renamed from: c */
    public static TransportRuntime m15414c() {
        TransportRuntimeComponent transportRuntimeComponent = f6651e;
        if (transportRuntimeComponent != null) {
            return transportRuntimeComponent.mo15408b();
        }
        throw new IllegalStateException("Not initialized!");
    }

    /* renamed from: d */
    private static Set<Encoding> m15413d(Destination destination) {
        return destination instanceof EncodedDestination ? Collections.unmodifiableSet(((EncodedDestination) destination).mo15470a()) : Collections.singleton(Encoding.m15560b("proto"));
    }

    /* renamed from: f */
    public static void m15411f(Context context) {
        if (f6651e == null) {
            synchronized (TransportRuntime.class) {
                try {
                    if (f6651e == null) {
                        f6651e = DaggerTransportRuntimeComponent.m15473d().mo15406b(context).mo15407a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // com.google.android.datatransport.runtime.TransportInternal
    /* renamed from: a */
    public void mo15416a(SendRequest sendRequest, TransportScheduleCallback transportScheduleCallback) {
        this.f6654c.mo15362a(sendRequest.mo15435f().m15423e(sendRequest.mo15438c().mo15557c()), m15415b(sendRequest), transportScheduleCallback);
    }

    @RestrictTo
    /* renamed from: e */
    public Uploader m15412e() {
        return this.f6655d;
    }

    /* renamed from: g */
    public TransportFactory m15410g(Destination destination) {
        Set<Encoding> d = m15413d(destination);
        TransportContext.Builder a = TransportContext.m15427a();
        a.mo15421b(destination.getName());
        a.mo15420c(destination.getExtras());
        return new TransportFactoryImpl(d, a.mo15422a(), this);
    }
}

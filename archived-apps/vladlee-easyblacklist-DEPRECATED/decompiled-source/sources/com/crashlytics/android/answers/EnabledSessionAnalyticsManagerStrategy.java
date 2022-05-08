package com.crashlytics.android.answers;

import android.content.Context;
import com.crashlytics.android.answers.SessionEvent;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p000a.p001a.p002a.p003a.AbstractC0147l;
import p000a.p001a.p002a.p003a.AbstractC0150o;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.p004a.p006b.C0024h;
import p000a.p001a.p002a.p003a.p004a.p006b.C0026j;
import p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0085g;
import p000a.p001a.p002a.p003a.p004a.p009d.RunnableC0088j;
import p000a.p001a.p002a.p003a.p004a.p010e.AbstractC0101h;
import p000a.p001a.p002a.p003a.p004a.p012g.C0110b;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy.class */
class EnabledSessionAnalyticsManagerStrategy implements SessionAnalyticsManagerStrategy {
    static final int UNDEFINED_ROLLOVER_INTERVAL_SECONDS = -1;
    private final Context context;
    private final ScheduledExecutorService executorService;
    private final SessionAnalyticsFilesManager filesManager;
    AbstractC0085g filesSender;
    private final FirebaseAnalyticsApiAdapter firebaseAnalyticsApiAdapter;
    private final AbstractC0101h httpRequestFactory;
    private final AbstractC0147l kit;
    final SessionEventMetadata metadata;
    private final AtomicReference<ScheduledFuture<?>> rolloverFutureRef = new AtomicReference<>();
    C0024h apiKey = new C0024h();
    EventFilter eventFilter = new KeepAllEventFilter();
    boolean customEventsEnabled = true;
    boolean predefinedEventsEnabled = true;
    volatile int rolloverIntervalSeconds = -1;
    boolean forwardToFirebaseAnalyticsEnabled = false;
    boolean includePurchaseEventsInForwardedEvents = false;

    public EnabledSessionAnalyticsManagerStrategy(AbstractC0147l lVar, Context context, ScheduledExecutorService scheduledExecutorService, SessionAnalyticsFilesManager sessionAnalyticsFilesManager, AbstractC0101h hVar, SessionEventMetadata sessionEventMetadata, FirebaseAnalyticsApiAdapter firebaseAnalyticsApiAdapter) {
        this.kit = lVar;
        this.context = context;
        this.executorService = scheduledExecutorService;
        this.filesManager = sessionAnalyticsFilesManager;
        this.httpRequestFactory = hVar;
        this.metadata = sessionEventMetadata;
        this.firebaseAnalyticsApiAdapter = firebaseAnalyticsApiAdapter;
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0084f
    public void cancelTimeBasedFileRollOver() {
        if (this.rolloverFutureRef.get() != null) {
            C0026j.m10354a(this.context, "Cancelling time-based rollover because no events are currently being generated.");
            this.rolloverFutureRef.get().cancel(false);
            this.rolloverFutureRef.set(null);
        }
    }

    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void deleteAllEvents() {
        this.filesManager.deleteAllEventsFiles();
    }

    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void processEvent(SessionEvent.Builder builder) {
        SessionEvent build = builder.build(this.metadata);
        if (!this.customEventsEnabled && SessionEvent.Type.CUSTOM.equals(build.type)) {
            C0137d.m10155c().mo10135a(Answers.TAG, "Custom events tracking disabled - skipping event: ".concat(String.valueOf(build)));
        } else if (!this.predefinedEventsEnabled && SessionEvent.Type.PREDEFINED.equals(build.type)) {
            C0137d.m10155c().mo10135a(Answers.TAG, "Predefined events tracking disabled - skipping event: ".concat(String.valueOf(build)));
        } else if (this.eventFilter.skipEvent(build)) {
            C0137d.m10155c().mo10135a(Answers.TAG, "Skipping filtered event: ".concat(String.valueOf(build)));
        } else {
            try {
                this.filesManager.writeEvent(build);
            } catch (IOException e) {
                C0137d.m10155c().mo10130c(Answers.TAG, "Failed to write event: ".concat(String.valueOf(build)), e);
            }
            scheduleTimeBasedRollOverIfNeeded();
            boolean z = SessionEvent.Type.CUSTOM.equals(build.type) || SessionEvent.Type.PREDEFINED.equals(build.type);
            boolean equals = "purchase".equals(build.predefinedType);
            if (this.forwardToFirebaseAnalyticsEnabled && z) {
                if (!equals || this.includePurchaseEventsInForwardedEvents) {
                    try {
                        this.firebaseAnalyticsApiAdapter.processEvent(build);
                    } catch (Exception e2) {
                        C0137d.m10155c().mo10130c(Answers.TAG, "Failed to map event to Firebase: ".concat(String.valueOf(build)), e2);
                    }
                }
            }
        }
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0084f
    public boolean rollFileOver() {
        try {
            return this.filesManager.rollFileOver();
        } catch (IOException e) {
            C0026j.m10333b(this.context, "Failed to roll file over.");
            return false;
        }
    }

    void scheduleTimeBasedFileRollOver(long j, long j2) {
        if (this.rolloverFutureRef.get() == null) {
            RunnableC0088j jVar = new RunnableC0088j(this.context, this);
            Context context = this.context;
            C0026j.m10354a(context, "Scheduling time based file roll over every " + j2 + " seconds");
            try {
                this.rolloverFutureRef.set(this.executorService.scheduleAtFixedRate(jVar, j, j2, TimeUnit.SECONDS));
            } catch (RejectedExecutionException e) {
                C0026j.m10333b(this.context, "Failed to schedule time based file roll over");
            }
        }
    }

    public void scheduleTimeBasedRollOverIfNeeded() {
        if (this.rolloverIntervalSeconds != -1) {
            scheduleTimeBasedFileRollOver(this.rolloverIntervalSeconds, this.rolloverIntervalSeconds);
        }
    }

    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void sendEvents() {
        int i;
        if (this.filesSender == null) {
            C0026j.m10354a(this.context, "skipping files send because we don't yet know the target endpoint");
            return;
        }
        C0026j.m10354a(this.context, "Sending all files");
        List<File> batchOfFilesToSend = this.filesManager.getBatchOfFilesToSend();
        int i2 = 0;
        while (true) {
            i = i2;
            try {
                if (batchOfFilesToSend.size() <= 0) {
                    break;
                }
                C0026j.m10354a(this.context, String.format(Locale.US, "attempt to send batch of %d files", Integer.valueOf(batchOfFilesToSend.size())));
                boolean send = this.filesSender.send(batchOfFilesToSend);
                int i3 = i2;
                if (send) {
                    i3 = i2 + batchOfFilesToSend.size();
                    this.filesManager.deleteSentFiles(batchOfFilesToSend);
                }
                i = i3;
                if (!send) {
                    break;
                }
                batchOfFilesToSend = this.filesManager.getBatchOfFilesToSend();
                i2 = i3;
            } catch (Exception e) {
                Context context = this.context;
                C0026j.m10333b(context, "Failed to send batch of analytics files to server: " + e.getMessage());
                i = i2;
            }
        }
        if (i == 0) {
            this.filesManager.deleteOldestInRollOverIfOverMax();
        }
    }

    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void setAnalyticsSettingsData(C0110b bVar, String str) {
        this.filesSender = AnswersRetryFilesSender.build(new SessionAnalyticsFilesSender(this.kit, str, bVar.f209a, this.httpRequestFactory, C0024h.m10360a(this.context)));
        this.filesManager.setAnalyticsSettingsData(bVar);
        this.forwardToFirebaseAnalyticsEnabled = bVar.f214f;
        this.includePurchaseEventsInForwardedEvents = bVar.f215g;
        AbstractC0150o c = C0137d.m10155c();
        StringBuilder sb = new StringBuilder("Firebase analytics forwarding ");
        String str2 = "enabled";
        sb.append(this.forwardToFirebaseAnalyticsEnabled ? "enabled" : "disabled");
        c.mo10135a(Answers.TAG, sb.toString());
        AbstractC0150o c2 = C0137d.m10155c();
        StringBuilder sb2 = new StringBuilder("Firebase analytics including purchase events ");
        sb2.append(this.includePurchaseEventsInForwardedEvents ? "enabled" : "disabled");
        c2.mo10135a(Answers.TAG, sb2.toString());
        this.customEventsEnabled = bVar.f216h;
        AbstractC0150o c3 = C0137d.m10155c();
        StringBuilder sb3 = new StringBuilder("Custom event tracking ");
        sb3.append(this.customEventsEnabled ? "enabled" : "disabled");
        c3.mo10135a(Answers.TAG, sb3.toString());
        this.predefinedEventsEnabled = bVar.f217i;
        AbstractC0150o c4 = C0137d.m10155c();
        StringBuilder sb4 = new StringBuilder("Predefined event tracking ");
        if (!this.predefinedEventsEnabled) {
            str2 = "disabled";
        }
        sb4.append(str2);
        c4.mo10135a(Answers.TAG, sb4.toString());
        if (bVar.f219k > 1) {
            C0137d.m10155c().mo10135a(Answers.TAG, "Event sampling enabled");
            this.eventFilter = new SamplingEventFilter(bVar.f219k);
        }
        this.rolloverIntervalSeconds = bVar.f210b;
        scheduleTimeBasedFileRollOver(0L, this.rolloverIntervalSeconds);
    }
}

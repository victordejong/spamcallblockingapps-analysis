package com.google.firebase.perf.internal;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.perf.p494v1.ApplicationProcessState;
import com.google.firebase.perf.util.Timer;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p282e.p340u.p341d.C5927a;
import p131c.p161d.p282e.p340u.p342e.C5950c;
import p131c.p161d.p282e.p340u.p342e.C5953f;
import p131c.p161d.p282e.p340u.p344g.C5964i;
import p131c.p161d.p282e.p340u.p344g.RunnableC5962g;
import p131c.p161d.p282e.p340u.p344g.RunnableC5963h;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p348k.C5992l;
import p131c.p161d.p282e.p340u.p350m.C6017i;
import p131c.p161d.p282e.p340u.p350m.C6021k;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/internal/GaugeManager.class */
public class GaugeManager {
    public static final long APPROX_NUMBER_OF_DATA_POINTS_PER_GAUGE_METRIC = 20;
    public static final long INVALID_GAUGE_COLLECTION_FREQUENCY = -1;
    public static final long TIME_TO_WAIT_BEFORE_FLUSHING_GAUGES_QUEUE_MS = 20;
    public static final C5969a logger = C5969a.m22496a();
    public static GaugeManager sharedInstance = new GaugeManager();
    public ApplicationProcessState applicationProcessState;
    public final C5927a configResolver;
    public final C5950c cpuGaugeCollector;
    public ScheduledFuture gaugeManagerDataCollectionJob;
    public final ScheduledExecutorService gaugeManagerExecutor;
    public C5964i gaugeMetadataManager;
    public final C5953f memoryGaugeCollector;
    public String sessionId;
    public final C5992l transportManager;

    /* renamed from: com.google.firebase.perf.internal.GaugeManager$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/internal/GaugeManager$a.class */
    public static /* synthetic */ class C7849a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f31003a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ApplicationProcessState.values().length];
            f31003a = iArr;
            try {
                iArr[ApplicationProcessState.BACKGROUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31003a[ApplicationProcessState.FOREGROUND.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public GaugeManager() {
        this(Executors.newSingleThreadScheduledExecutor(), C5992l.m22374g(), C5927a.m22644v(), null, C5950c.m22583c(), C5953f.m22570c());
    }

    public GaugeManager(ScheduledExecutorService scheduledExecutorService, C5992l lVar, C5927a aVar, C5964i iVar, C5950c cVar, C5953f fVar) {
        this.applicationProcessState = ApplicationProcessState.APPLICATION_PROCESS_STATE_UNKNOWN;
        this.sessionId = null;
        this.gaugeManagerDataCollectionJob = null;
        this.gaugeManagerExecutor = scheduledExecutorService;
        this.transportManager = lVar;
        this.configResolver = aVar;
        this.gaugeMetadataManager = iVar;
        this.cpuGaugeCollector = cVar;
        this.memoryGaugeCollector = fVar;
    }

    public static void collectGaugeMetricOnce(C5950c cVar, C5953f fVar, Timer timer) {
        cVar.m22589a(timer);
        fVar.m22575a(timer);
    }

    private long getCpuGaugeCollectionFrequencyMs(ApplicationProcessState applicationProcessState) {
        int i = C7849a.f31003a[applicationProcessState.ordinal()];
        long m = i != 1 ? i != 2 ? -1L : this.configResolver.m22653m() : this.configResolver.m22654l();
        if (C5950c.m22587b(m)) {
            return -1L;
        }
        return m;
    }

    private C6017i getGaugeMetadata() {
        C6017i.C6019b y = C6017i.m22285y();
        y.m22283a(this.gaugeMetadataManager.m22505e());
        y.m22284a(this.gaugeMetadataManager.m22508b());
        y.m22282b(this.gaugeMetadataManager.m22507c());
        y.m22281c(this.gaugeMetadataManager.m22506d());
        return y.mo6937a();
    }

    public static GaugeManager getInstance() {
        GaugeManager gaugeManager;
        synchronized (GaugeManager.class) {
            try {
                gaugeManager = sharedInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return gaugeManager;
    }

    private long getMemoryGaugeCollectionFrequencyMs(ApplicationProcessState applicationProcessState) {
        int i = C7849a.f31003a[applicationProcessState.ordinal()];
        long p = i != 1 ? i != 2 ? -1L : this.configResolver.m22650p() : this.configResolver.m22651o();
        if (C5953f.m22578a(p)) {
            return -1L;
        }
        return p;
    }

    private boolean startCollectingCpuMetrics(long j, Timer timer) {
        if (j == -1) {
            logger.m22495a("Invalid Cpu Metrics collection frequency. Did not collect Cpu Metrics.", new Object[0]);
            return false;
        }
        this.cpuGaugeCollector.m22586b(j, timer);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.firebase.perf.internal.GaugeManager] */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long startCollectingGauges(com.google.firebase.perf.p494v1.ApplicationProcessState r6, com.google.firebase.perf.util.Timer r7) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            long r0 = r0.getCpuGaugeCollectionFrequencyMs(r1)
            r8 = r0
            r0 = r5
            r1 = r8
            r2 = r7
            boolean r0 = r0.startCollectingCpuMetrics(r1, r2)
            if (r0 == 0) goto L_0x0012
            goto L_0x0016
        L_0x0012:
            r0 = -1
            r8 = r0
        L_0x0016:
            r0 = r5
            r1 = r6
            long r0 = r0.getMemoryGaugeCollectionFrequencyMs(r1)
            r10 = r0
            r0 = r8
            r12 = r0
            r0 = r5
            r1 = r10
            r2 = r7
            boolean r0 = r0.startCollectingMemoryMetrics(r1, r2)
            if (r0 == 0) goto L_0x0041
            r0 = r8
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0039
            r0 = r10
            r12 = r0
            goto L_0x0041
        L_0x0039:
            r0 = r8
            r1 = r10
            long r0 = java.lang.Math.min(r0, r1)
            r12 = r0
        L_0x0041:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.perf.internal.GaugeManager.startCollectingGauges(com.google.firebase.perf.v1.ApplicationProcessState, com.google.firebase.perf.util.Timer):long");
    }

    private boolean startCollectingMemoryMetrics(long j, Timer timer) {
        if (j == -1) {
            logger.m22495a("Invalid Memory Metrics collection frequency. Did not collect Memory Metrics.", new Object[0]);
            return false;
        }
        this.memoryGaugeCollector.m22573b(j, timer);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncFlush(String str, ApplicationProcessState applicationProcessState) {
        C6021k.C6023b F = C6021k.m22276F();
        while (!this.cpuGaugeCollector.f19321f.isEmpty()) {
            F.m22261a(this.cpuGaugeCollector.f19321f.poll());
        }
        while (!this.memoryGaugeCollector.f19329b.isEmpty()) {
            F.m22262a(this.memoryGaugeCollector.f19329b.poll());
        }
        F.m22259a(str);
        this.transportManager.m22392a(F.mo6937a(), applicationProcessState);
    }

    public void collectGaugeMetricOnce(Timer timer) {
        collectGaugeMetricOnce(this.cpuGaugeCollector, this.memoryGaugeCollector, timer);
    }

    public boolean logGaugeMetadata(String str, ApplicationProcessState applicationProcessState) {
        if (this.gaugeMetadataManager == null) {
            return false;
        }
        C6021k.C6023b F = C6021k.m22276F();
        F.m22259a(str);
        F.m22260a(getGaugeMetadata());
        this.transportManager.m22392a(F.mo6937a(), applicationProcessState);
        return true;
    }

    public void setApplicationContext(Context context) {
        this.gaugeMetadataManager = new C5964i(context);
    }

    public void startCollectingGauges(PerfSession perfSession, ApplicationProcessState applicationProcessState) {
        if (this.sessionId != null) {
            stopCollectingGauges();
        }
        long startCollectingGauges = startCollectingGauges(applicationProcessState, perfSession.m7263b());
        if (startCollectingGauges == -1) {
            logger.m22491d("Invalid gauge collection frequency. Unable to start collecting Gauges.", new Object[0]);
            return;
        }
        String f = perfSession.m7259f();
        this.sessionId = f;
        this.applicationProcessState = applicationProcessState;
        try {
            ScheduledExecutorService scheduledExecutorService = this.gaugeManagerExecutor;
            Runnable a = RunnableC5962g.m22512a(this, f, applicationProcessState);
            long j = startCollectingGauges * 20;
            this.gaugeManagerDataCollectionJob = scheduledExecutorService.scheduleAtFixedRate(a, j, j, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e) {
            C5969a aVar = logger;
            aVar.m22491d("Unable to start collecting Gauges: " + e.getMessage(), new Object[0]);
        }
    }

    public void stopCollectingGauges() {
        String str = this.sessionId;
        if (str != null) {
            ApplicationProcessState applicationProcessState = this.applicationProcessState;
            this.cpuGaugeCollector.m22588b();
            this.memoryGaugeCollector.m22574b();
            ScheduledFuture scheduledFuture = this.gaugeManagerDataCollectionJob;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            this.gaugeManagerExecutor.schedule(RunnableC5963h.m22511a(this, str, applicationProcessState), 20L, TimeUnit.MILLISECONDS);
            this.sessionId = null;
            this.applicationProcessState = ApplicationProcessState.APPLICATION_PROCESS_STATE_UNKNOWN;
        }
    }
}

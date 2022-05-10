package com.google.firebase.perf.internal;

import androidx.annotation.Keep;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.perf.p494v1.ApplicationProcessState;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import p131c.p161d.p282e.p340u.p344g.AbstractC5957b;
import p131c.p161d.p282e.p340u.p344g.AbstractC5968m;
import p131c.p161d.p282e.p340u.p344g.C5955a;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/internal/SessionManager.class */
public class SessionManager extends AbstractC5957b {
    public static final SessionManager ourInstance = new SessionManager();
    public final C5955a appStateMonitor;
    public final Set<WeakReference<AbstractC5968m>> clients;
    public final GaugeManager gaugeManager;
    public PerfSession perfSession;

    public SessionManager() {
        this(GaugeManager.getInstance(), PerfSession.m7258g(), C5955a.m22535d());
    }

    @VisibleForTesting
    public SessionManager(GaugeManager gaugeManager, PerfSession perfSession, C5955a aVar) {
        this.clients = new HashSet();
        this.gaugeManager = gaugeManager;
        this.perfSession = perfSession;
        this.appStateMonitor = aVar;
        registerForAppState();
    }

    public static SessionManager getInstance() {
        return ourInstance;
    }

    private void logGaugeMetadataIfCollectionEnabled(ApplicationProcessState applicationProcessState) {
        if (this.perfSession.m7261d()) {
            this.gaugeManager.logGaugeMetadata(this.perfSession.m7259f(), applicationProcessState);
        }
    }

    private void startOrStopCollectingGauges(ApplicationProcessState applicationProcessState) {
        if (this.perfSession.m7261d()) {
            this.gaugeManager.startCollectingGauges(this.perfSession, applicationProcessState);
        } else {
            this.gaugeManager.stopCollectingGauges();
        }
    }

    @Override // p131c.p161d.p282e.p340u.p344g.AbstractC5957b, p131c.p161d.p282e.p340u.p344g.C5955a.AbstractC5956a
    public void onUpdateAppState(ApplicationProcessState applicationProcessState) {
        super.onUpdateAppState(applicationProcessState);
        if (!this.appStateMonitor.m22537c()) {
            if (applicationProcessState == ApplicationProcessState.FOREGROUND) {
                updatePerfSession(applicationProcessState);
            } else if (!updatePerfSessionIfExpired()) {
                startOrStopCollectingGauges(applicationProcessState);
            }
        }
    }

    public final PerfSession perfSession() {
        return this.perfSession;
    }

    public void registerForSessionUpdates(WeakReference<AbstractC5968m> weakReference) {
        synchronized (this.clients) {
            this.clients.add(weakReference);
        }
    }

    @VisibleForTesting
    public void setPerfSession(PerfSession perfSession) {
        this.perfSession = perfSession;
    }

    public void unregisterForSessionUpdates(WeakReference<AbstractC5968m> weakReference) {
        synchronized (this.clients) {
            this.clients.remove(weakReference);
        }
    }

    public void updatePerfSession(ApplicationProcessState applicationProcessState) {
        synchronized (this.clients) {
            try {
                this.perfSession = PerfSession.m7258g();
                Iterator<WeakReference<AbstractC5968m>> it = this.clients.iterator();
                while (it.hasNext()) {
                    AbstractC5968m mVar = it.next().get();
                    if (mVar != null) {
                        mVar.mo7243a(this.perfSession);
                    } else {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        logGaugeMetadataIfCollectionEnabled(applicationProcessState);
        startOrStopCollectingGauges(applicationProcessState);
    }

    public boolean updatePerfSessionIfExpired() {
        if (!this.perfSession.m7262c()) {
            return false;
        }
        updatePerfSession(this.appStateMonitor.m22548a());
        return true;
    }
}

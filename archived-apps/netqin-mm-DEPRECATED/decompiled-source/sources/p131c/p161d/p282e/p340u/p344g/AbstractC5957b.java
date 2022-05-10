package p131c.p161d.p282e.p340u.p344g;

import com.google.firebase.perf.p494v1.ApplicationProcessState;
import java.lang.ref.WeakReference;
import p131c.p161d.p282e.p340u.p344g.C5955a;
/* renamed from: c.d.e.u.g.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/g/b.class */
public abstract class AbstractC5957b implements C5955a.AbstractC5956a {
    public C5955a mAppStateMonitor;
    public boolean mIsRegisteredForAppState;
    public ApplicationProcessState mState;
    public WeakReference<C5955a.AbstractC5956a> mWeakRef;

    public AbstractC5957b() {
        this(C5955a.m22535d());
    }

    public AbstractC5957b(C5955a aVar) {
        this.mState = ApplicationProcessState.APPLICATION_PROCESS_STATE_UNKNOWN;
        this.mIsRegisteredForAppState = false;
        this.mAppStateMonitor = aVar;
        this.mWeakRef = new WeakReference<>(this);
    }

    public ApplicationProcessState getAppState() {
        return this.mState;
    }

    public void incrementTsnsCount(int i) {
        this.mAppStateMonitor.m22547a(i);
    }

    @Override // p131c.p161d.p282e.p340u.p344g.C5955a.AbstractC5956a
    public void onUpdateAppState(ApplicationProcessState applicationProcessState) {
        ApplicationProcessState applicationProcessState2 = this.mState;
        ApplicationProcessState applicationProcessState3 = ApplicationProcessState.APPLICATION_PROCESS_STATE_UNKNOWN;
        if (applicationProcessState2 == applicationProcessState3) {
            this.mState = applicationProcessState;
        } else if (applicationProcessState2 != applicationProcessState && applicationProcessState != applicationProcessState3) {
            this.mState = ApplicationProcessState.FOREGROUND_BACKGROUND;
        }
    }

    public void registerForAppState() {
        if (!this.mIsRegisteredForAppState) {
            this.mState = this.mAppStateMonitor.m22548a();
            this.mAppStateMonitor.m22541a(this.mWeakRef);
            this.mIsRegisteredForAppState = true;
        }
    }

    public void unregisterForAppState() {
        if (this.mIsRegisteredForAppState) {
            this.mAppStateMonitor.m22538b(this.mWeakRef);
            this.mIsRegisteredForAppState = false;
        }
    }
}

package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzmj;
import com.google.android.gms.internal.measurement.zzw;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzio.class */
public final class zzio extends zzg {

    /* renamed from: d */
    private zzej f9521d;

    /* renamed from: e */
    private volatile Boolean f9522e;

    /* renamed from: f */
    private final zzaj f9523f;

    /* renamed from: g */
    private final zzkf f9524g;

    /* renamed from: i */
    private final zzaj f9526i;

    /* renamed from: h */
    private final List<Runnable> f9525h = new ArrayList();

    /* renamed from: c */
    private final zzji f9520c = new zzji(this);

    /* JADX INFO: Access modifiers changed from: protected */
    public zzio(zzfv zzfvVar) {
        super(zzfvVar);
        this.f9524g = new zzkf(zzfvVar.mo11085a());
        this.f9523f = new zzir(this, zzfvVar);
        this.f9526i = new zzjb(this, zzfvVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: C */
    public final void m11207C(ComponentName componentName) {
        mo11316e();
        if (this.f9521d != null) {
            this.f9521d = null;
            mo11081c().m11552L().m11539b("Disconnected from device MeasurementService", componentName);
            mo11316e();
            m11184Z();
        }
    }

    @WorkerThread
    /* renamed from: P */
    private final void m11194P(Runnable runnable) throws IllegalStateException {
        mo11316e();
        if (m11188V()) {
            runnable.run();
        } else if (this.f9525h.size() >= 1000) {
            mo11081c().m11560D().m11540a("Discarding data. Max runnable queue size reached");
        } else {
            this.f9525h.add(runnable);
            this.f9526i.m11715c(60000L);
            m11184Z();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: e0 */
    public final void m11179e0() {
        mo11316e();
        this.f9524g.m11118a();
        this.f9523f.m11715c(zzat.f8905J.m11594a(null).longValue());
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x014b  */
    @androidx.annotation.WorkerThread
    /* renamed from: f0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m11178f0() {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzio.m11178f0():boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: g0 */
    public final void m11177g0() {
        mo11316e();
        if (m11188V()) {
            mo11081c().m11552L().m11540a("Inactivity, disconnecting from the service");
            m11182b0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: h0 */
    public final void m11176h0() {
        mo11316e();
        mo11081c().m11552L().m11539b("Processing queued up service tasks", Integer.valueOf(this.f9525h.size()));
        for (Runnable runnable : this.f9525h) {
            try {
                runnable.run();
            } catch (Exception e) {
                mo11081c().m11560D().m11539b("Task exception while flushing queue", e);
            }
        }
        this.f9525h.clear();
        this.f9526i.m11713e();
    }

    @Nullable
    @WorkerThread
    /* renamed from: i0 */
    private final zzn m11175i0(boolean z) {
        return m11599p().m11591A(z ? mo11081c().m11551M() : null);
    }

    @WorkerThread
    /* renamed from: D */
    public final void m11206D(Bundle bundle) {
        mo11316e();
        m11321v();
        m11194P(new zziy(this, bundle, m11175i0(false)));
    }

    @WorkerThread
    /* renamed from: E */
    public final void m11205E(zzw zzwVar) {
        mo11316e();
        m11321v();
        m11194P(new zzix(this, m11175i0(false), zzwVar));
    }

    @WorkerThread
    /* renamed from: F */
    public final void m11204F(zzw zzwVar, zzar zzarVar, String str) {
        mo11316e();
        m11321v();
        if (m11313j().m10945s(GooglePlayServicesUtilLight.f6984a) != 0) {
            mo11081c().m11557G().m11540a("Not bundling data. Service unavailable or out of date");
            m11313j().m10973S(zzwVar, new byte[0]);
            return;
        }
        m11194P(new zzja(this, zzarVar, str, zzwVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: G */
    public final void m11203G(zzw zzwVar, String str, String str2) {
        mo11316e();
        m11321v();
        m11194P(new zzjg(this, str, str2, m11175i0(false), zzwVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: H */
    public final void m11202H(zzw zzwVar, String str, String str2, boolean z) {
        mo11316e();
        m11321v();
        m11194P(new zziq(this, str, str2, z, m11175i0(false), zzwVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: I */
    public final void m11201I(zzar zzarVar, String str) {
        Preconditions.m14523k(zzarVar);
        mo11316e();
        m11321v();
        m11194P(new zzjf(this, true, m11596s().m11579D(zzarVar), zzarVar, m11175i0(true), str));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    @WorkerThread
    /* renamed from: J */
    public final void m11200J(zzej zzejVar) {
        mo11316e();
        Preconditions.m14523k(zzejVar);
        this.f9521d = zzejVar;
        m11179e0();
        m11176h0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    @WorkerThread
    /* renamed from: K */
    public final void m11199K(zzej zzejVar, AbstractSafeParcelable abstractSafeParcelable, zzn zznVar) {
        mo11316e();
        m11321v();
        int i = 100;
        for (int i2 = 0; i2 < 1001 && i == 100; i2++) {
            ArrayList arrayList = new ArrayList();
            List<AbstractSafeParcelable> B = m11596s().m11581B(100);
            if (B != null) {
                arrayList.addAll(B);
                i = B.size();
            } else {
                i = 0;
            }
            if (abstractSafeParcelable != null && i < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) obj;
                if (abstractSafeParcelable2 instanceof zzar) {
                    try {
                        zzejVar.mo11323t0((zzar) abstractSafeParcelable2, zznVar);
                    } catch (RemoteException e) {
                        mo11081c().m11560D().m11539b("Failed to send event to the service", e);
                    }
                } else if (abstractSafeParcelable2 instanceof zzkr) {
                    try {
                        zzejVar.mo11344D0((zzkr) abstractSafeParcelable2, zznVar);
                    } catch (RemoteException e2) {
                        mo11081c().m11560D().m11539b("Failed to send user property to the service", e2);
                    }
                } else if (abstractSafeParcelable2 instanceof zzw) {
                    try {
                        zzejVar.mo11328i((zzw) abstractSafeParcelable2, zznVar);
                    } catch (RemoteException e3) {
                        mo11081c().m11560D().m11539b("Failed to send conditional user property to the service", e3);
                    }
                } else {
                    mo11081c().m11560D().m11540a("Discarding data. Unrecognized parcel type.");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: L */
    public final void m11198L(zzig zzigVar) {
        mo11316e();
        m11321v();
        m11194P(new zziz(this, zzigVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: N */
    public final void m11196N(zzkr zzkrVar) {
        mo11316e();
        m11321v();
        m11194P(new zzit(this, m11596s().m11578E(zzkrVar), zzkrVar, m11175i0(true)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: O */
    public final void m11195O(zzw zzwVar) {
        Preconditions.m14523k(zzwVar);
        mo11316e();
        m11321v();
        m11194P(new zzje(this, true, m11596s().m11577F(zzwVar), new zzw(zzwVar), m11175i0(true), zzwVar));
    }

    @WorkerThread
    /* renamed from: Q */
    public final void m11193Q(AtomicReference<String> atomicReference) {
        mo11316e();
        m11321v();
        m11194P(new zziu(this, atomicReference, m11175i0(false)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: R */
    public final void m11192R(AtomicReference<List<zzw>> atomicReference, String str, String str2, String str3) {
        mo11316e();
        m11321v();
        m11194P(new zzjh(this, atomicReference, str, str2, str3, m11175i0(false)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: S */
    public final void m11191S(AtomicReference<List<zzkr>> atomicReference, String str, String str2, String str3, boolean z) {
        mo11316e();
        m11321v();
        m11194P(new zzjj(this, atomicReference, str, str2, str3, z, m11175i0(false)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: T */
    public final void m11190T(AtomicReference<List<zzkr>> atomicReference, boolean z) {
        mo11316e();
        m11321v();
        m11194P(new zzis(this, atomicReference, m11175i0(false), z));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: U */
    public final void m11189U(boolean z) {
        if (zzmj.m11898a() && m11311l().m10880r(zzat.f8902H0)) {
            mo11316e();
            m11321v();
            if (z) {
                m11596s().m11576G();
            }
            if (m11180d0()) {
                m11194P(new zzjc(this, m11175i0(false)));
            }
        }
    }

    @WorkerThread
    /* renamed from: V */
    public final boolean m11188V() {
        mo11316e();
        m11321v();
        return this.f9521d != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: W */
    public final void m11187W() {
        mo11316e();
        m11321v();
        m11194P(new zzjd(this, m11175i0(true)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: X */
    public final void m11186X() {
        mo11316e();
        m11321v();
        zzn i0 = m11175i0(false);
        m11596s().m11576G();
        m11194P(new zziv(this, i0));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: Y */
    public final void m11185Y() {
        mo11316e();
        m11321v();
        zzn i0 = m11175i0(true);
        m11596s().m11575H();
        m11194P(new zziw(this, i0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: Z */
    public final void m11184Z() {
        mo11316e();
        m11321v();
        if (!m11188V()) {
            if (m11178f0()) {
                this.f9520c.m11164g();
            } else if (!m11311l().m10887P()) {
                List<ResolveInfo> queryIntentServices = mo11075f().getPackageManager().queryIntentServices(new Intent().setClassName(mo11075f(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    Intent intent = new Intent("com.google.android.gms.measurement.START");
                    intent.setComponent(new ComponentName(mo11075f(), "com.google.android.gms.measurement.AppMeasurementService"));
                    this.f9520c.m11167d(intent);
                    return;
                }
                mo11081c().m11560D().m11540a("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a0 */
    public final Boolean m11183a0() {
        return this.f9522e;
    }

    @WorkerThread
    /* renamed from: b0 */
    public final void m11182b0() {
        mo11316e();
        m11321v();
        this.f9520c.m11168c();
        try {
            ConnectionTracker.m14372b().m14371c(mo11075f(), this.f9520c);
        } catch (IllegalArgumentException | IllegalStateException e) {
        }
        this.f9521d = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: c0 */
    public final boolean m11181c0() {
        mo11316e();
        m11321v();
        return !m11178f0() || m11313j().m10986I0() >= 200900;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: d0 */
    public final boolean m11180d0() {
        mo11316e();
        m11321v();
        if (!m11311l().m10880r(zzat.f8906J0)) {
            return false;
        }
        return !m11178f0() || m11313j().m10986I0() >= zzat.f8908K0.m11594a(null).intValue();
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    /* renamed from: y */
    protected final boolean mo11140y() {
        return false;
    }
}

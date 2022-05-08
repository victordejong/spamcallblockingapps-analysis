package p081h.p203i.p325c.p331k.p332a;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p285m.p287b.C8997j;
import p081h.p203i.p204a.p224e.p285m.p287b.C9052s0;
import p081h.p203i.p325c.C9383a;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p331k.p332a.AbstractC9452a;
import p081h.p203i.p325c.p331k.p332a.p333c.AbstractC9458a;
import p081h.p203i.p325c.p331k.p332a.p333c.C9460c;
import p081h.p203i.p325c.p331k.p332a.p333c.C9461d;
import p081h.p203i.p325c.p331k.p332a.p333c.C9463f;
import p081h.p203i.p325c.p362r.AbstractC9857d;
import p081h.p203i.p325c.p362r.C9854a;
/* renamed from: h.i.c.k.a.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/k/a/b.class */
public class C9456b implements AbstractC9452a {

    /* renamed from: c */
    public static volatile AbstractC9452a f21591c;

    /* renamed from: a */
    public final AppMeasurement f21592a;

    /* renamed from: b */
    public final Map<String, AbstractC9458a> f21593b = new ConcurrentHashMap();

    /* renamed from: h.i.c.k.a.b$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/k/a/b$a.class */
    public class C9457a implements AbstractC9452a.AbstractC9453a {
        public C9457a(C9456b bVar, String str) {
        }
    }

    public C9456b(AppMeasurement appMeasurement) {
        C7021t.m21290a(appMeasurement);
        this.f21592a = appMeasurement;
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    /* renamed from: a */
    public static AbstractC9452a m15125a(C9435c cVar, Context context, AbstractC9857d dVar) {
        C7021t.m21290a(cVar);
        C7021t.m21290a(context);
        C7021t.m21290a(dVar);
        C7021t.m21290a(context.getApplicationContext());
        if (f21591c == null) {
            synchronized (C9456b.class) {
                try {
                    if (f21591c == null) {
                        Bundle bundle = new Bundle(1);
                        if (cVar.m15165h()) {
                            dVar.mo14077a(C9383a.class, ExecutorC9465d.f21610a, C9466e.f21611a);
                            bundle.putBoolean("dataCollectionDefaultEnabled", cVar.m15166g());
                        }
                        f21591c = new C9456b(C9052s0.m16298a(context, C8997j.m16550a(bundle)).m16268y());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f21591c;
    }

    /* renamed from: a */
    public static final /* synthetic */ void m15123a(C9854a aVar) {
        boolean z = ((C9383a) aVar.m14080a()).f21421a;
        synchronized (C9456b.class) {
            try {
                ((C9456b) f21591c).f21592a.m31671b(z);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p081h.p203i.p325c.p331k.p332a.AbstractC9452a
    @WorkerThread
    /* renamed from: a */
    public AbstractC9452a.AbstractC9453a mo15121a(@NonNull String str, AbstractC9452a.AbstractC9454b bVar) {
        C7021t.m21290a(bVar);
        if (!C9460c.m15112a(str) || m15122a(str)) {
            return null;
        }
        AppMeasurement appMeasurement = this.f21592a;
        AbstractC9458a dVar = "fiam".equals(str) ? new C9461d(appMeasurement, bVar) : "crash".equals(str) ? new C9463f(appMeasurement, bVar) : null;
        if (dVar == null) {
            return null;
        }
        this.f21593b.put(str, dVar);
        return new C9457a(this, str);
    }

    @Override // p081h.p203i.p325c.p331k.p332a.AbstractC9452a
    @WorkerThread
    /* renamed from: a */
    public List<AbstractC9452a.C9455c> mo15120a(@NonNull String str, @Nullable @Size(max = 23, min = 1) String str2) {
        ArrayList arrayList = new ArrayList();
        for (AppMeasurement.ConditionalUserProperty conditionalUserProperty : this.f21592a.getConditionalUserProperties(str, str2)) {
            arrayList.add(C9460c.m15114a(conditionalUserProperty));
        }
        return arrayList;
    }

    @Override // p081h.p203i.p325c.p331k.p332a.AbstractC9452a
    @WorkerThread
    /* renamed from: a */
    public Map<String, Object> mo15117a(boolean z) {
        return this.f21592a.m31672a(z);
    }

    @Override // p081h.p203i.p325c.p331k.p332a.AbstractC9452a
    /* renamed from: a */
    public void mo15124a(@NonNull AbstractC9452a.C9455c cVar) {
        if (C9460c.m15113a(cVar)) {
            this.f21592a.setConditionalUserProperty(C9460c.m15108b(cVar));
        }
    }

    @Override // p081h.p203i.p325c.p331k.p332a.AbstractC9452a
    /* renamed from: a */
    public void mo15119a(@NonNull @Size(max = 24, min = 1) String str, @Nullable String str2, @Nullable Bundle bundle) {
        if (str2 == null || C9460c.m15111a(str2, bundle)) {
            this.f21592a.clearConditionalUserProperty(str, str2, bundle);
        }
    }

    @Override // p081h.p203i.p325c.p331k.p332a.AbstractC9452a
    /* renamed from: a */
    public void mo15118a(@NonNull String str, @NonNull String str2, Object obj) {
        if (C9460c.m15112a(str) && C9460c.m15110a(str, str2)) {
            this.f21592a.m31673a(str, str2, obj);
        }
    }

    /* renamed from: a */
    public final boolean m15122a(@NonNull String str) {
        return !str.isEmpty() && this.f21593b.containsKey(str) && this.f21593b.get(str) != null;
    }

    @Override // p081h.p203i.p325c.p331k.p332a.AbstractC9452a
    @WorkerThread
    /* renamed from: b */
    public int mo15116b(@NonNull @Size(min = 1) String str) {
        return this.f21592a.getMaxUserProperties(str);
    }

    @Override // p081h.p203i.p325c.p331k.p332a.AbstractC9452a
    /* renamed from: b */
    public void mo15115b(@NonNull String str, @NonNull String str2, Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        if (C9460c.m15112a(str) && C9460c.m15111a(str2, bundle2) && C9460c.m15109a(str, str2, bundle2)) {
            this.f21592a.logEventInternal(str, str2, bundle2);
        }
    }
}

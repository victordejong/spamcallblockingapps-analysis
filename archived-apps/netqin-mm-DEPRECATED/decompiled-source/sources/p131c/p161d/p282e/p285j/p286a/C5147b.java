package p131c.p161d.p282e.p285j.p286a;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import p131c.p161d.p282e.C5126a;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
import p131c.p161d.p282e.p285j.p286a.p287c.AbstractC5149a;
import p131c.p161d.p282e.p285j.p286a.p287c.C5151c;
import p131c.p161d.p282e.p285j.p286a.p287c.C5152d;
import p131c.p161d.p282e.p285j.p286a.p287c.C5153e;
import p131c.p161d.p282e.p313o.AbstractC5473d;
import p131c.p161d.p282e.p313o.C5470a;
/* renamed from: c.d.e.j.a.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/j/a/b.class */
public class C5147b implements AbstractC5143a {

    /* renamed from: c */
    public static volatile AbstractC5143a f17774c;
    @VisibleForTesting

    /* renamed from: a */
    public final AppMeasurementSdk f17775a;
    @VisibleForTesting

    /* renamed from: b */
    public final Map<String, AbstractC5149a> f17776b = new ConcurrentHashMap();

    /* renamed from: c.d.e.j.a.b$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/j/a/b$a.class */
    public class C5148a implements AbstractC5143a.AbstractC5144a {

        /* renamed from: a */
        public final /* synthetic */ String f17777a;

        public C5148a(String str) {
            this.f17777a = str;
        }

        @Override // p131c.p161d.p282e.p285j.p286a.AbstractC5143a.AbstractC5144a
        @KeepForSdk
        /* renamed from: a */
        public void mo23135a(Set<String> set) {
            if (C5147b.this.m24415a(this.f17777a) && this.f17777a.equals("fiam") && set != null && !set.isEmpty()) {
                C5147b.this.f17776b.get(this.f17777a).mo24399a(set);
            }
        }
    }

    public C5147b(AppMeasurementSdk appMeasurementSdk) {
        Preconditions.m17288a(appMeasurementSdk);
        this.f17775a = appMeasurementSdk;
    }

    @KeepForSdk
    /* renamed from: a */
    public static AbstractC5143a m24418a(C5128c cVar, Context context, AbstractC5473d dVar) {
        Preconditions.m17288a(cVar);
        Preconditions.m17288a(context);
        Preconditions.m17288a(dVar);
        Preconditions.m17288a(context.getApplicationContext());
        if (f17774c == null) {
            synchronized (C5147b.class) {
                try {
                    if (f17774c == null) {
                        Bundle bundle = new Bundle(1);
                        if (cVar.m24460h()) {
                            dVar.mo23716a(C5126a.class, ExecutorC5157e.f17796a, C5156d.f17795a);
                            bundle.putBoolean("dataCollectionDefaultEnabled", cVar.m24461g());
                        }
                        f17774c = new C5147b(zzag.m10473a(context, (String) null, (String) null, (String) null, bundle).m10478a());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f17774c;
    }

    /* renamed from: a */
    public static final /* synthetic */ void m24416a(C5470a aVar) {
        boolean z = ((C5126a) aVar.m23719a()).f17715a;
        synchronized (C5147b.class) {
            try {
                ((C5147b) f17774c).f17775a.m9379a(z);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p131c.p161d.p282e.p285j.p286a.AbstractC5143a
    @KeepForSdk
    /* renamed from: a */
    public AbstractC5143a.AbstractC5144a mo23141a(String str, AbstractC5143a.AbstractC5145b bVar) {
        Preconditions.m17288a(bVar);
        if (!C5152d.m24411a(str) || m24415a(str)) {
            return null;
        }
        AppMeasurementSdk appMeasurementSdk = this.f17775a;
        AbstractC5149a cVar = "fiam".equals(str) ? new C5151c(appMeasurementSdk, bVar) : ("crash".equals(str) || "clx".equals(str)) ? new C5153e(appMeasurementSdk, bVar) : null;
        if (cVar == null) {
            return null;
        }
        this.f17776b.put(str, cVar);
        return new C5148a(str);
    }

    @Override // p131c.p161d.p282e.p285j.p286a.AbstractC5143a
    @KeepForSdk
    /* renamed from: a */
    public Map<String, Object> mo23139a(boolean z) {
        return this.f17775a.m9380a((String) null, (String) null, z);
    }

    @Override // p131c.p161d.p282e.p285j.p286a.AbstractC5143a
    @KeepForSdk
    /* renamed from: a */
    public void mo23142a(AbstractC5143a.C5146c cVar) {
        if (C5152d.m24412a(cVar)) {
            this.f17775a.m9373c(C5152d.m24407b(cVar));
        }
    }

    @Override // p131c.p161d.p282e.p285j.p286a.AbstractC5143a
    @KeepForSdk
    /* renamed from: a */
    public void mo23140a(String str, String str2, Object obj) {
        if (C5152d.m24411a(str) && C5152d.m24409a(str, str2)) {
            this.f17775a.m9381a(str, str2, obj);
        }
    }

    /* renamed from: a */
    public final boolean m24415a(String str) {
        return !str.isEmpty() && this.f17776b.containsKey(str) && this.f17776b.get(str) != null;
    }

    @Override // p131c.p161d.p282e.p285j.p286a.AbstractC5143a
    @KeepForSdk
    /* renamed from: b */
    public List<AbstractC5143a.C5146c> mo23138b(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : this.f17775a.m9383a(str, str2)) {
            arrayList.add(C5152d.m24413a(bundle));
        }
        return arrayList;
    }

    @Override // p131c.p161d.p282e.p285j.p286a.AbstractC5143a
    @KeepForSdk
    /* renamed from: b */
    public void mo23137b(String str, String str2, Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        if (C5152d.m24411a(str) && C5152d.m24410a(str2, bundle2) && C5152d.m24408a(str, str2, bundle2)) {
            C5152d.m24405b(str, str2, bundle2);
            this.f17775a.m9375b(str, str2, bundle2);
        }
    }

    @Override // p131c.p161d.p282e.p285j.p286a.AbstractC5143a
    @KeepForSdk
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        if (str2 == null || C5152d.m24410a(str2, bundle)) {
            this.f17775a.m9382a(str, str2, bundle);
        }
    }

    @Override // p131c.p161d.p282e.p285j.p286a.AbstractC5143a
    @KeepForSdk
    /* renamed from: f */
    public int mo23136f(String str) {
        return this.f17775a.m9372c(str);
    }
}

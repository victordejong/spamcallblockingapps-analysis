package p131c.p161d.p282e.p315q.p328q0;

import android.app.Application;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.security.ProviderInstaller;
/* renamed from: c.d.e.q.q0.v2 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/v2.class */
public class C5823v2 {

    /* renamed from: a */
    public final Application f19090a;

    public C5823v2(Application application) {
        this.f19090a = application;
    }

    /* renamed from: a */
    public void m22964a() {
        try {
            ProviderInstaller.m8658a(this.f19090a);
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException e) {
            e.printStackTrace();
        }
    }
}

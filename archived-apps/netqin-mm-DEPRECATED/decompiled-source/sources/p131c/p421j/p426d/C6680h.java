package p131c.p421j.p426d;

import android.content.Context;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
/* renamed from: c.j.d.h */
/* loaded from: classes2-dex2jar.jar:c/j/d/h.class */
public class C6680h extends BaseUrlGenerator {

    /* renamed from: e */
    public final Context f20623e;

    /* renamed from: f */
    public String f20624f;

    public C6680h(Context context) {
        this.f20623e = context;
    }

    /* renamed from: c */
    public final void m20059c(String str) {
        m4712a("id", str);
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        m4707b(str, Constants.POSITIONING_HANDLER);
        m20059c(this.f20624f);
        m4714a("1");
        ClientMetadata instance = ClientMetadata.getInstance(this.f20623e);
        m4712a("nv", instance.getSdkVersion());
        m4709b();
        m4706c();
        m4710a(instance.getDeviceManufacturer(), instance.getDeviceModel(), instance.getDeviceProduct());
        m4708b(instance.getAppVersion());
        m4716a();
        return m4705d();
    }

    public C6680h withAdUnitId(String str) {
        this.f20624f = str;
        return this;
    }
}

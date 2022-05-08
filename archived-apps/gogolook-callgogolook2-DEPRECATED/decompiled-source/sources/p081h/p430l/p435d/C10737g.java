package p081h.p430l.p435d;

import android.content.Context;
import androidx.annotation.NonNull;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
/* renamed from: h.l.d.g */
/* loaded from: classes2-dex2jar.jar:h/l/d/g.class */
public class C10737g extends BaseUrlGenerator {
    @NonNull

    /* renamed from: e */
    public final Context f24479e;
    @NonNull

    /* renamed from: f */
    public String f24480f;

    public C10737g(@NonNull Context context) {
        this.f24479e = context;
    }

    /* renamed from: c */
    public final void m10758c(@NonNull String str) {
        m30868a("id", str);
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(@NonNull String str) {
        m30863b(str, Constants.POSITIONING_HANDLER);
        m10758c(this.f24480f);
        m30870a("1");
        ClientMetadata instance = ClientMetadata.getInstance(this.f24479e);
        m30868a("nv", instance.getSdkVersion());
        m30865b();
        m30862c();
        m30866a(instance.getDeviceManufacturer(), instance.getDeviceModel(), instance.getDeviceProduct());
        m30864b(instance.getAppVersion());
        m30872a();
        return m30861d();
    }

    @NonNull
    public C10737g withAdUnitId(@NonNull String str) {
        this.f24480f = str;
        return this;
    }
}

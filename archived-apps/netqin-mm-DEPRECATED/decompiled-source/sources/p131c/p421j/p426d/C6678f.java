package p131c.p421j.p426d;

import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.MoPub;
import com.mopub.nativeads.RequestParameters;
/* renamed from: c.j.d.f */
/* loaded from: classes2-dex2jar.jar:c/j/d/f.class */
public class C6678f extends AdUrlGenerator {

    /* renamed from: n */
    public String f20614n;

    /* renamed from: o */
    public String f20615o;

    public C6678f(Context context) {
        super(context);
    }

    /* renamed from: a */
    public C6678f m20083a(int i) {
        this.f20615o = String.valueOf(i);
        return this;
    }

    /* renamed from: a */
    public C6678f m20082a(RequestParameters requestParameters) {
        if (requestParameters != null) {
            boolean canCollectPersonalInformation = MoPub.canCollectPersonalInformation();
            Location location = null;
            this.f33633h = canCollectPersonalInformation ? requestParameters.getUserDataKeywords() : null;
            if (canCollectPersonalInformation) {
                location = requestParameters.getLocation();
            }
            this.f33634i = location;
            this.f33632g = requestParameters.getKeywords();
            this.f20614n = requestParameters.getDesiredAssets();
        }
        return this;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        m4707b(str, Constants.AD_HANDLER);
        m4744a(ClientMetadata.getInstance(this.f33630e));
        m20081m();
        m20080n();
        return m4705d();
    }

    /* renamed from: m */
    public final void m20081m() {
        if (!TextUtils.isEmpty(this.f20614n)) {
            m4712a("assets", this.f20614n);
        }
    }

    /* renamed from: n */
    public final void m20080n() {
        if (!TextUtils.isEmpty(this.f20615o)) {
            m4712a("MAGIC_NO", this.f20615o);
        }
    }

    @Override // com.mopub.common.AdUrlGenerator
    public C6678f withAdUnitId(String str) {
        this.f33631f = str;
        return this;
    }
}

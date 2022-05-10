package p131c.p161d.p282e.p352w.p353o;

import android.os.Bundle;
import com.applovin.impl.sdk.p489ad.NativeAdImpl;
import org.json.JSONObject;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
/* renamed from: c.d.e.w.o.s */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/o/s.class */
public class C6106s {

    /* renamed from: a */
    public final AbstractC5143a f19610a;

    public C6106s(AbstractC5143a aVar) {
        this.f19610a = aVar;
    }

    /* renamed from: a */
    public void m22004a(String str, C6087f fVar) {
        JSONObject optJSONObject;
        JSONObject d = fVar.m22089d();
        if (d.length() >= 1) {
            JSONObject b = fVar.m22091b();
            if (b.length() >= 1 && (optJSONObject = d.optJSONObject(str)) != null) {
                Bundle bundle = new Bundle();
                bundle.putString("_fpid", optJSONObject.optString("personalizationId"));
                bundle.putString("_fpct", b.optString(str));
                this.f19610a.mo23137b(NativeAdImpl.QUERY_PARAM_IS_FIRST_PLAY, "_fpc", bundle);
            }
        }
    }
}

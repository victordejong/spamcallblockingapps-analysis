package com.taiwanmobile.p055pt.adp.view.p056a;

import android.content.Context;
import com.taiwanmobile.p055pt.adp.view.p056a.C4147h;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.lang.ref.WeakReference;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import p081h.p447o.p448a.p449a.C10831c;
import p081h.p447o.p448a.p449a.C10832d;
import p655o.AbstractC15235b;
import p655o.AbstractC15238d;
import p655o.C15299r;
/* renamed from: com.taiwanmobile.pt.adp.view.a.d */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/d.class */
public abstract class AbstractC4141d implements AbstractC15238d<ResponseBody> {

    /* renamed from: d */
    public static final String f9898d = "d";

    /* renamed from: a */
    public String f9899a;

    /* renamed from: b */
    public C4147h.AbstractC4151c f9900b;

    /* renamed from: c */
    public WeakReference<Context> f9901c;

    /* renamed from: e */
    public boolean f9902e = false;

    public AbstractC4141d(Context context, String str, C4147h.AbstractC4151c cVar) {
        this.f9901c = new WeakReference<>(context);
        this.f9899a = str;
        this.f9900b = cVar;
    }

    /* renamed from: a */
    public boolean m29552a() {
        return this.f9902e;
    }

    @Override // p655o.AbstractC15238d
    public void onFailure(AbstractC15235b<ResponseBody> bVar, Throwable th) {
        String str = f9898d;
        C10831c.m10520b(str, "Exception: " + th.getClass().getName());
        C4147h.AbstractC4151c cVar = this.f9900b;
        if (cVar != null) {
            cVar.mo29505a(C4147h.AbstractC4151c.EnumC4152a.STATE_NO_TP_EXSITED);
        }
    }

    @Override // p655o.AbstractC15238d
    public void onResponse(AbstractC15235b<ResponseBody> bVar, C15299r<ResponseBody> rVar) {
        if (rVar == null || !rVar.m90d()) {
            WeakReference<Context> weakReference = this.f9901c;
            if (!(weakReference == null || weakReference.get() == null)) {
                C10832d.m10511a(this.f9901c.get(), this.f9899a, System.currentTimeMillis() + 3600000);
            }
            C4147h.AbstractC4151c cVar = this.f9900b;
            if (cVar != null) {
                cVar.mo29505a(C4147h.AbstractC4151c.EnumC4152a.STATE_NO_TP_EXSITED);
                return;
            }
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(rVar.m95a().string());
            if (this.f9901c == null || this.f9901c.get() == null) {
                C10831c.m10520b(f9898d, "Exception: Context Reference is null.");
                if (this.f9900b != null) {
                    this.f9900b.mo29505a(C4147h.AbstractC4151c.EnumC4152a.STATE_NO_TP_EXSITED);
                    return;
                }
                return;
            }
            C10832d.m10499b(this.f9901c.get(), this.f9899a, jSONObject.getString(IapProductRealmObject.PRIORITY));
            if (jSONObject.has("adunit")) {
                C10832d.m10493c(this.f9901c.get(), this.f9899a, jSONObject.getString("adunit"));
            }
            if (jSONObject.has("api")) {
                C10832d.m10489d(this.f9901c.get(), this.f9899a, jSONObject.getString("api"));
            }
            long currentTimeMillis = System.currentTimeMillis();
            C10832d.m10511a(this.f9901c.get(), this.f9899a, currentTimeMillis + (jSONObject.getLong("refresh") * 1000));
            if (jSONObject.has("pkgbl")) {
                C10832d.m10485e(this.f9901c.get(), this.f9899a, jSONObject.getString("pkgbl"));
            }
            if (jSONObject.has("slot")) {
                C10832d.m10481f(this.f9901c.get(), this.f9899a, jSONObject.getString("slot"));
            }
            if (jSONObject.has("oc")) {
                C10832d.m10509a(this.f9901c.get(), this.f9899a, "1".equals(jSONObject.getString("oc")));
            }
            this.f9902e = true;
        } catch (Exception e) {
            String str = f9898d;
            C10831c.m10520b(str, "Exception: " + e.getMessage());
            C4147h.AbstractC4151c cVar2 = this.f9900b;
            if (cVar2 != null) {
                cVar2.mo29505a(C4147h.AbstractC4151c.EnumC4152a.STATE_NO_TP_EXSITED);
            }
        }
    }
}

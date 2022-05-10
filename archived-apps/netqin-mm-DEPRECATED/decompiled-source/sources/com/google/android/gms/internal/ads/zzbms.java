package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzp;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbms.class */
public final class zzbms implements zzaly<zzbmw> {

    /* renamed from: a */
    public final Context f25191a;

    /* renamed from: b */
    public final zzqo f25192b;

    /* renamed from: c */
    public final PowerManager f25193c;

    public zzbms(Context context, zzqo zzqoVar) {
        this.f25191a = context;
        this.f25192b = zzqoVar;
        this.f25193c = (PowerManager) context.getSystemService("power");
    }

    /* renamed from: a */
    public final JSONObject mo15308b(zzbmw zzbmwVar) throws JSONException {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        zzqr zzqrVar = zzbmwVar.f25213e;
        if (zzqrVar == null) {
            jSONObject = new JSONObject();
        } else if (this.f25192b.m11549e() != null) {
            boolean z = zzqrVar.f28880a;
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("afmaVersion", this.f25192b.m11550d()).put("activeViewJSON", this.f25192b.m11549e()).put(AvidJSONUtil.KEY_TIMESTAMP, zzbmwVar.f25211c).put("adFormat", this.f25192b.m11551c()).put("hashCode", this.f25192b.m11553a()).put("isMraid", false).put("isStopped", false).put("isPaused", zzbmwVar.f25210b).put("isNative", this.f25192b.m11552b()).put("isScreenOn", Build.VERSION.SDK_INT >= 20 ? this.f25193c.isInteractive() : this.f25193c.isScreenOn()).put("appMuted", zzp.m17964h().m16019b()).put("appVolume", zzp.m17964h().m16023a()).put("deviceVolume", zzazm.m16021a(this.f25191a.getApplicationContext()));
            Rect rect = new Rect();
            Display defaultDisplay = ((WindowManager) this.f25191a.getSystemService("window")).getDefaultDisplay();
            rect.right = defaultDisplay.getWidth();
            rect.bottom = defaultDisplay.getHeight();
            jSONObject3.put("windowVisibility", zzqrVar.f28881b).put("isAttachedToWindow", z).put("viewBox", new JSONObject().put("top", zzqrVar.f28882c.top).put("bottom", zzqrVar.f28882c.bottom).put("left", zzqrVar.f28882c.left).put("right", zzqrVar.f28882c.right)).put("adBox", new JSONObject().put("top", zzqrVar.f28883d.top).put("bottom", zzqrVar.f28883d.bottom).put("left", zzqrVar.f28883d.left).put("right", zzqrVar.f28883d.right)).put("globalVisibleBox", new JSONObject().put("top", zzqrVar.f28884e.top).put("bottom", zzqrVar.f28884e.bottom).put("left", zzqrVar.f28884e.left).put("right", zzqrVar.f28884e.right)).put("globalVisibleBoxVisible", zzqrVar.f28885f).put("localVisibleBox", new JSONObject().put("top", zzqrVar.f28886g.top).put("bottom", zzqrVar.f28886g.bottom).put("left", zzqrVar.f28886g.left).put("right", zzqrVar.f28886g.right)).put("localVisibleBoxVisible", zzqrVar.f28887h).put("hitBox", new JSONObject().put("top", zzqrVar.f28888i.top).put("bottom", zzqrVar.f28888i.bottom).put("left", zzqrVar.f28888i.left).put("right", zzqrVar.f28888i.right)).put("screenDensity", this.f25191a.getResources().getDisplayMetrics().density);
            jSONObject3.put("isVisible", zzbmwVar.f25209a);
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23684H0)).booleanValue()) {
                JSONArray jSONArray2 = new JSONArray();
                List<Rect> list = zzqrVar.f28890k;
                if (list != null) {
                    for (Rect rect2 : list) {
                        jSONArray2.put(new JSONObject().put("top", rect2.top).put("bottom", rect2.bottom).put("left", rect2.left).put("right", rect2.right));
                    }
                }
                jSONObject3.put("scrollableContainerBoxes", jSONArray2);
            }
            if (!TextUtils.isEmpty(zzbmwVar.f25212d)) {
                jSONObject3.put("doneReasonCode", "u");
            }
            jSONObject = jSONObject3;
        } else {
            throw new JSONException("Active view Info cannot be null.");
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}

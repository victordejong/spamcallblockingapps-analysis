package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzq;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjb.class */
public final class zzbjb implements zzajv<zzbjf> {

    /* renamed from: a */
    private final Context f11951a;

    /* renamed from: b */
    private final zzpn f11952b;

    /* renamed from: c */
    private final PowerManager f11953c;

    public zzbjb(Context context, zzpn zzpnVar) {
        this.f11951a = context;
        this.f11952b = zzpnVar;
        this.f11953c = (PowerManager) context.getSystemService("power");
    }

    /* renamed from: zza */
    public final JSONObject zzj(zzbjf zzbjfVar) {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        if (zzbjfVar.zzfcr == null) {
            jSONObject = new JSONObject();
        } else {
            zzpt zzptVar = zzbjfVar.zzfcr;
            if (this.f11952b.zzkl() != null) {
                boolean z = zzptVar.zzbnz;
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("afmaVersion", this.f11952b.zzkk()).put("activeViewJSON", this.f11952b.zzkl()).put("timestamp", zzbjfVar.timestamp).put("adFormat", this.f11952b.zzkj()).put("hashCode", this.f11952b.zzkm()).put("isMraid", false).put("isStopped", false).put("isPaused", zzbjfVar.zzfco).put("isNative", this.f11952b.zzkn()).put("isScreenOn", Build.VERSION.SDK_INT >= 20 ? this.f11953c.isInteractive() : this.f11953c.isScreenOn()).put("appMuted", zzq.zzkv().zzpf()).put("appVolume", zzq.zzkv().zzpe()).put("deviceVolume", zzawq.zzbe(this.f11951a.getApplicationContext()));
                Rect rect = new Rect();
                Display defaultDisplay = ((WindowManager) this.f11951a.getSystemService("window")).getDefaultDisplay();
                rect.right = defaultDisplay.getWidth();
                rect.bottom = defaultDisplay.getHeight();
                jSONObject3.put("windowVisibility", zzptVar.zzzd).put("isAttachedToWindow", z).put("viewBox", new JSONObject().put("top", zzptVar.zzboa.top).put("bottom", zzptVar.zzboa.bottom).put("left", zzptVar.zzboa.left).put("right", zzptVar.zzboa.right)).put("adBox", new JSONObject().put("top", zzptVar.zzbob.top).put("bottom", zzptVar.zzbob.bottom).put("left", zzptVar.zzbob.left).put("right", zzptVar.zzbob.right)).put("globalVisibleBox", new JSONObject().put("top", zzptVar.zzboc.top).put("bottom", zzptVar.zzboc.bottom).put("left", zzptVar.zzboc.left).put("right", zzptVar.zzboc.right)).put("globalVisibleBoxVisible", zzptVar.zzbod).put("localVisibleBox", new JSONObject().put("top", zzptVar.zzboe.top).put("bottom", zzptVar.zzboe.bottom).put("left", zzptVar.zzboe.left).put("right", zzptVar.zzboe.right)).put("localVisibleBoxVisible", zzptVar.zzbof).put("hitBox", new JSONObject().put("top", zzptVar.zzbog.top).put("bottom", zzptVar.zzbog.bottom).put("left", zzptVar.zzbog.left).put("right", zzptVar.zzbog.right)).put("screenDensity", this.f11951a.getResources().getDisplayMetrics().density);
                jSONObject3.put("isVisible", zzbjfVar.zzbnq);
                if (((Boolean) zzve.zzoy().zzd(zzzn.zzckk)).booleanValue()) {
                    JSONArray jSONArray2 = new JSONArray();
                    if (zzptVar.zzboi != null) {
                        for (Rect rect2 : zzptVar.zzboi) {
                            jSONArray2.put(new JSONObject().put("top", rect2.top).put("bottom", rect2.bottom).put("left", rect2.left).put("right", rect2.right));
                        }
                    }
                    jSONObject3.put("scrollableContainerBoxes", jSONArray2);
                }
                if (!TextUtils.isEmpty(zzbjfVar.zzfcq)) {
                    jSONObject3.put("doneReasonCode", "u");
                }
                jSONObject = jSONObject3;
            } else {
                throw new JSONException("Active view Info cannot be null.");
            }
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}

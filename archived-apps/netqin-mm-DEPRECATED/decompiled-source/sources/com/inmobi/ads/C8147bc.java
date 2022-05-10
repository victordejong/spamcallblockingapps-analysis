package com.inmobi.ads;

import android.content.ContentValues;
import com.inmobi.ads.InMobiAdRequest;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.ads.bc */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bc.class */
public class C8147bc extends C8047a {

    /* renamed from: o */
    public static final String f31830o = "bc";

    /* renamed from: l */
    public final String f31831l;

    /* renamed from: m */
    public final String f31832m;

    /* renamed from: n */
    public final String f31833n;

    /* renamed from: p */
    public final String f31834p;

    /* renamed from: q */
    public final String f31835q;

    public C8147bc(ContentValues contentValues) {
        super(contentValues);
        this.f31831l = contentValues.getAsString(BaseVideoPlayerActivity.VIDEO_URL);
        this.f31832m = contentValues.getAsString("video_track_duration");
        this.f31833n = contentValues.getAsString("click_url");
        this.f31834p = contentValues.getAsString("video_trackers");
        this.f31835q = contentValues.getAsString("companion_ads");
    }

    public C8147bc(JSONObject jSONObject, String str, long j, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, InMobiAdRequest.MonetizationContext monetizationContext, boolean z, long j2, float f, String str11) {
        super(jSONObject, str, j, str2, str3, str4, str5, monetizationContext, z, j2, f, str11);
        this.f31831l = str6;
        this.f31832m = str7;
        this.f31833n = str8;
        this.f31834p = str9;
        this.f31835q = str10;
    }

    @Override // com.inmobi.ads.C8047a
    /* renamed from: a */
    public final ContentValues mo6341a() {
        ContentValues a = super.mo6341a();
        a.put(BaseVideoPlayerActivity.VIDEO_URL, this.f31831l);
        a.put("video_track_duration", this.f31832m);
        a.put("click_url", this.f31833n);
        a.put("video_trackers", this.f31834p);
        a.put("companion_ads", this.f31835q);
        return a;
    }

    /* renamed from: h */
    public final List<NativeTracker> m6340h() {
        ArrayList arrayList = new ArrayList();
        String str = this.f31834p;
        if (!(str == null || str.length() == 0)) {
            try {
                JSONArray jSONArray = new JSONArray(this.f31834p);
                if (jSONArray.length() == 0) {
                    return arrayList;
                }
                for (int i = 0; i < jSONArray.length(); i++) {
                    NativeTracker a = NativeTracker.m6666a(new JSONObject(jSONArray.getString(i)));
                    if (a != null) {
                        arrayList.add(a);
                    }
                }
                return arrayList;
            } catch (JSONException e) {
                C8328a.m5878a().m5875a(new C8365a(e));
            }
        }
        return arrayList;
    }

    /* renamed from: i */
    public final List<C8188bu> m6339i() {
        ArrayList arrayList = new ArrayList();
        String str = this.f31835q;
        if (!(str == null || str.length() == 0)) {
            try {
                JSONArray jSONArray = new JSONArray(this.f31835q);
                if (jSONArray.length() == 0) {
                    return arrayList;
                }
                for (int i = 0; i < jSONArray.length(); i++) {
                    C8188bu a = C8188bu.m6235a(new JSONObject(jSONArray.getString(i)));
                    if (a != null) {
                        arrayList.add(a);
                    }
                }
                return arrayList;
            } catch (JSONException e) {
                C8328a.m5878a().m5875a(new C8365a(e));
            }
        }
        return arrayList;
    }
}

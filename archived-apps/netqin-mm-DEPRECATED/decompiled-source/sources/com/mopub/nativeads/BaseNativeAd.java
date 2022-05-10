package com.mopub.nativeads;

import android.view.View;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/BaseNativeAd.class */
public abstract class BaseNativeAd {

    /* renamed from: c */
    public NativeEventListener f34642c;

    /* renamed from: a */
    public final Set<String> f34640a = new HashSet();

    /* renamed from: b */
    public final Set<String> f34641b = new HashSet();

    /* renamed from: d */
    public boolean f34643d = false;

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/BaseNativeAd$NativeEventListener.class */
    public interface NativeEventListener {
        void onAdClicked();

        void onAdImpressed();
    }

    /* renamed from: a */
    public Set<String> m4029a() {
        return new HashSet(this.f34641b);
    }

    /* renamed from: a */
    public final void m4028a(Object obj) throws ClassCastException {
        if (obj instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) obj;
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    addClickTracker(jSONArray.getString(i));
                } catch (JSONException e) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Unable to parse click trackers.");
                }
            }
            return;
        }
        throw new ClassCastException("Expected click trackers of type JSONArray.");
    }

    public final void addClickTracker(String str) {
        if (Preconditions.NoThrow.checkNotNull(str, "clickTracker url is not allowed to be null")) {
            this.f34641b.add(str);
        }
    }

    public final void addImpressionTracker(String str) {
        if (Preconditions.NoThrow.checkNotNull(str, "impressionTracker url is not allowed to be null")) {
            this.f34640a.add(str);
        }
    }

    /* renamed from: b */
    public Set<String> m4027b() {
        return new HashSet(this.f34640a);
    }

    /* renamed from: b */
    public final void m4026b(Object obj) throws ClassCastException {
        if (obj instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) obj;
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    addImpressionTracker(jSONArray.getString(i));
                } catch (JSONException e) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Unable to parse impression trackers.");
                }
            }
            return;
        }
        throw new ClassCastException("Expected impression trackers of type JSONArray.");
    }

    /* renamed from: c */
    public final void m4025c() {
        NativeEventListener nativeEventListener = this.f34642c;
        if (nativeEventListener != null) {
            nativeEventListener.onAdClicked();
        }
    }

    public abstract void clear(View view);

    /* renamed from: d */
    public final void m4024d() {
        NativeEventListener nativeEventListener = this.f34642c;
        if (nativeEventListener != null) {
            nativeEventListener.onAdImpressed();
        }
    }

    public abstract void destroy();

    public void invalidate() {
        this.f34643d = true;
    }

    public boolean isInvalidated() {
        return this.f34643d;
    }

    public abstract void prepare(View view);

    public void setNativeEventListener(NativeEventListener nativeEventListener) {
        this.f34642c = nativeEventListener;
    }
}

package com.integralads.avid.library.mopub.session.internal.jsbridge;

import android.text.TextUtils;
import android.webkit.WebView;
import com.integralads.avid.library.mopub.AvidBridge;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSessionContext;
import com.integralads.avid.library.mopub.utils.AvidCommand;
import com.integralads.avid.library.mopub.weakreference.AvidWebView;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager.class */
public class AvidBridgeManager {
    public static final int VIDEO_EVENT_TAG = 1;

    /* renamed from: a */
    public final InternalAvidAdSessionContext f33074a;

    /* renamed from: b */
    public boolean f33075b;

    /* renamed from: d */
    public boolean f33077d;

    /* renamed from: e */
    public AvidBridgeManagerListener f33078e;

    /* renamed from: f */
    public final ArrayList<AvidEvent> f33079f = new ArrayList<>();

    /* renamed from: c */
    public AvidWebView f33076c = new AvidWebView(null);

    /* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager$AvidBridgeManagerListener.class */
    public interface AvidBridgeManagerListener {
        void avidBridgeManagerDidInjectAvidJs();
    }

    public AvidBridgeManager(InternalAvidAdSessionContext internalAvidAdSessionContext) {
        this.f33074a = internalAvidAdSessionContext;
    }

    /* renamed from: a */
    public final void m5384a() {
        if (!this.f33076c.isEmpty()) {
            this.f33075b = true;
            this.f33076c.injectJavaScript(AvidBridge.getAvidJs());
            m5379e();
            m5380d();
            m5381c();
            m5382b();
        }
    }

    /* renamed from: a */
    public final void m5383a(String str, JSONObject jSONObject) {
        String jSONObject2 = jSONObject != null ? jSONObject.toString() : null;
        if (!TextUtils.isEmpty(jSONObject2)) {
            callAvidbridge(AvidCommand.publishVideoEvent(str, jSONObject2));
        } else {
            callAvidbridge(AvidCommand.publishVideoEvent(str));
        }
    }

    /* renamed from: b */
    public final void m5382b() {
        AvidBridgeManagerListener avidBridgeManagerListener = this.f33078e;
        if (avidBridgeManagerListener != null) {
            avidBridgeManagerListener.avidBridgeManagerDidInjectAvidJs();
        }
    }

    /* renamed from: c */
    public final void m5381c() {
        Iterator<AvidEvent> it = this.f33079f.iterator();
        while (it.hasNext()) {
            AvidEvent next = it.next();
            m5383a(next.getType(), next.getData());
        }
        this.f33079f.clear();
    }

    public void callAvidbridge(String str) {
        this.f33076c.injectFormattedJavaScript(str);
    }

    /* renamed from: d */
    public final void m5380d() {
        if (isActive() && this.f33077d) {
            callAvidbridge(AvidCommand.publishReadyEventForDeferredAdSession());
        }
    }

    public void destroy() {
        setWebView(null);
    }

    /* renamed from: e */
    public final void m5379e() {
        callAvidbridge(AvidCommand.setAvidAdSessionContext(this.f33074a.getFullContext().toString()));
    }

    public boolean isActive() {
        return this.f33075b;
    }

    public void onAvidJsReady() {
        m5384a();
    }

    public void publishAppState(String str) {
        callAvidbridge(AvidCommand.setAppState(str));
    }

    public void publishNativeViewState(String str) {
        callAvidbridge(AvidCommand.setNativeViewState(str));
    }

    public void publishReadyEventForDeferredAdSession() {
        this.f33077d = true;
        m5380d();
    }

    public void publishVideoEvent(String str, JSONObject jSONObject) {
        if (isActive()) {
            m5383a(str, jSONObject);
        } else {
            this.f33079f.add(new AvidEvent(1, str, jSONObject));
        }
    }

    public void setListener(AvidBridgeManagerListener avidBridgeManagerListener) {
        this.f33078e = avidBridgeManagerListener;
    }

    public void setWebView(WebView webView) {
        if (this.f33076c.get() != webView) {
            this.f33076c.set(webView);
            this.f33075b = false;
            if (AvidBridge.isAvidJsReady()) {
                m5384a();
            }
        }
    }
}

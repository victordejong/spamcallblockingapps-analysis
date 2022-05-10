package com.integralads.avid.library.mopub.session.internal;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.integralads.avid.library.mopub.AvidBridge;
import com.integralads.avid.library.mopub.deferred.AvidDeferredAdSessionListener;
import com.integralads.avid.library.mopub.deferred.AvidDeferredAdSessionListenerImpl;
import com.integralads.avid.library.mopub.session.ExternalAvidAdSessionContext;
import com.integralads.avid.library.mopub.session.internal.jsbridge.AvidBridgeManager;
import com.integralads.avid.library.mopub.session.internal.jsbridge.AvidWebViewManager;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import com.integralads.avid.library.mopub.utils.AvidTimestamp;
import com.integralads.avid.library.mopub.weakreference.AvidView;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/internal/InternalAvidAdSession.class */
public abstract class InternalAvidAdSession<T extends View> implements AvidBridgeManager.AvidBridgeManagerListener {

    /* renamed from: a */
    public final InternalAvidAdSessionContext f33055a;

    /* renamed from: b */
    public AvidBridgeManager f33056b;

    /* renamed from: c */
    public AvidWebViewManager f33057c;

    /* renamed from: d */
    public AvidView<T> f33058d = new AvidView<>(null);

    /* renamed from: e */
    public AvidDeferredAdSessionListenerImpl f33059e;

    /* renamed from: f */
    public InternalAvidAdSessionListener f33060f;

    /* renamed from: g */
    public boolean f33061g;

    /* renamed from: h */
    public boolean f33062h;

    /* renamed from: i */
    public final ObstructionsWhiteList f33063i;

    /* renamed from: j */
    public AdState f33064j;

    /* renamed from: k */
    public double f33065k;

    /* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/internal/InternalAvidAdSession$AdState.class */
    public enum AdState {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_HIDDEN
    }

    public InternalAvidAdSession(Context context, String str, ExternalAvidAdSessionContext externalAvidAdSessionContext) {
        InternalAvidAdSessionContext internalAvidAdSessionContext = new InternalAvidAdSessionContext(context, str, getSessionType().toString(), getMediaType().toString(), externalAvidAdSessionContext);
        this.f33055a = internalAvidAdSessionContext;
        AvidBridgeManager avidBridgeManager = new AvidBridgeManager(internalAvidAdSessionContext);
        this.f33056b = avidBridgeManager;
        avidBridgeManager.setListener(this);
        this.f33057c = new AvidWebViewManager(this.f33055a, this.f33056b);
        boolean z = !externalAvidAdSessionContext.isDeferred();
        this.f33061g = z;
        if (!z) {
            this.f33059e = new AvidDeferredAdSessionListenerImpl(this, this.f33056b);
        }
        this.f33063i = new ObstructionsWhiteList();
        m5389b();
    }

    /* renamed from: a */
    public void m5391a() {
        if (isActive()) {
            this.f33056b.publishNativeViewState(AvidJSONUtil.getEmptyTreeJSONObject().toString());
        }
    }

    /* renamed from: a */
    public void m5390a(boolean z) {
        this.f33062h = z;
        InternalAvidAdSessionListener internalAvidAdSessionListener = this.f33060f;
        if (internalAvidAdSessionListener == null) {
            return;
        }
        if (z) {
            internalAvidAdSessionListener.sessionHasBecomeActive(this);
        } else {
            internalAvidAdSessionListener.sessionHasResignedActive(this);
        }
    }

    @Override // com.integralads.avid.library.mopub.session.internal.jsbridge.AvidBridgeManager.AvidBridgeManagerListener
    public void avidBridgeManagerDidInjectAvidJs() {
        m5388e();
    }

    /* renamed from: b */
    public final void m5389b() {
        this.f33065k = AvidTimestamp.getCurrentTime();
        this.f33064j = AdState.AD_STATE_IDLE;
    }

    /* renamed from: c */
    public void mo5386c() {
    }

    /* renamed from: d */
    public void mo5385d() {
    }

    public boolean doesManageView(View view) {
        return this.f33058d.contains(view);
    }

    /* renamed from: e */
    public void m5388e() {
        boolean z = this.f33056b.isActive() && this.f33061g && !isEmpty();
        if (this.f33062h != z) {
            m5390a(z);
        }
    }

    /* renamed from: f */
    public void m5387f() {
        this.f33057c.setWebView(getWebView());
    }

    public ExternalAvidAdSessionContext getAvidAdSessionContext() {
        return this.f33055a.getAvidAdSessionContext();
    }

    public String getAvidAdSessionId() {
        return this.f33055a.getAvidAdSessionId();
    }

    public AvidBridgeManager getAvidBridgeManager() {
        return this.f33056b;
    }

    public AvidDeferredAdSessionListener getAvidDeferredAdSessionListener() {
        return this.f33059e;
    }

    public InternalAvidAdSessionListener getListener() {
        return this.f33060f;
    }

    public abstract MediaType getMediaType();

    public ObstructionsWhiteList getObstructionsWhiteList() {
        return this.f33063i;
    }

    public abstract SessionType getSessionType();

    public T getView() {
        return (T) ((View) this.f33058d.get());
    }

    public abstract WebView getWebView();

    public boolean isActive() {
        return this.f33062h;
    }

    public boolean isEmpty() {
        return this.f33058d.isEmpty();
    }

    public boolean isReady() {
        return this.f33061g;
    }

    public void onEnd() {
        m5391a();
        AvidDeferredAdSessionListenerImpl avidDeferredAdSessionListenerImpl = this.f33059e;
        if (avidDeferredAdSessionListenerImpl != null) {
            avidDeferredAdSessionListenerImpl.destroy();
        }
        this.f33056b.destroy();
        this.f33057c.destroy();
        this.f33061g = false;
        m5388e();
        InternalAvidAdSessionListener internalAvidAdSessionListener = this.f33060f;
        if (internalAvidAdSessionListener != null) {
            internalAvidAdSessionListener.sessionDidEnd(this);
        }
    }

    public void onReady() {
        this.f33061g = true;
        m5388e();
    }

    public void onStart() {
    }

    public void publishEmptyNativeViewStateCommand(String str, double d) {
        if (d > this.f33065k && this.f33064j != AdState.AD_STATE_HIDDEN) {
            this.f33056b.callAvidbridge(str);
            this.f33064j = AdState.AD_STATE_HIDDEN;
        }
    }

    public void publishNativeViewStateCommand(String str, double d) {
        if (d > this.f33065k) {
            this.f33056b.callAvidbridge(str);
            this.f33064j = AdState.AD_STATE_VISIBLE;
        }
    }

    public void registerAdView(T t) {
        if (!doesManageView(t)) {
            m5389b();
            this.f33058d.set(t);
            mo5386c();
            m5388e();
        }
    }

    public void setListener(InternalAvidAdSessionListener internalAvidAdSessionListener) {
        this.f33060f = internalAvidAdSessionListener;
    }

    public void setScreenMode(boolean z) {
        if (isActive()) {
            this.f33056b.publishAppState(z ? AvidBridge.APP_STATE_ACTIVE : AvidBridge.APP_STATE_INACTIVE);
        }
    }

    public void unregisterAdView(T t) {
        if (doesManageView(t)) {
            m5389b();
            m5391a();
            this.f33058d.set(null);
            mo5385d();
            m5388e();
        }
    }
}

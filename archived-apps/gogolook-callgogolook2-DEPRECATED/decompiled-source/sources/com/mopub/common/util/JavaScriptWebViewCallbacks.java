package com.mopub.common.util;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/util/JavaScriptWebViewCallbacks.class */
public enum JavaScriptWebViewCallbacks {
    WEB_VIEW_DID_APPEAR("webviewDidAppear();"),
    WEB_VIEW_DID_CLOSE("webviewDidClose();");
    

    /* renamed from: a */
    public String f8339a;

    JavaScriptWebViewCallbacks(String str) {
        this.f8339a = str;
    }

    public String getJavascript() {
        return this.f8339a;
    }

    public String getUrl() {
        return "javascript:" + this.f8339a;
    }
}

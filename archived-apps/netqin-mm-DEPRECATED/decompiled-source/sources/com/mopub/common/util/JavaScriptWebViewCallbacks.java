package com.mopub.common.util;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/util/JavaScriptWebViewCallbacks.class */
public enum JavaScriptWebViewCallbacks {
    WEB_VIEW_DID_APPEAR("webviewDidAppear();"),
    WEB_VIEW_DID_CLOSE("webviewDidClose();");
    
    public String mJavascript;

    JavaScriptWebViewCallbacks(String str) {
        this.mJavascript = str;
    }

    public String getJavascript() {
        return this.mJavascript;
    }

    public String getUrl() {
        return "javascript:" + this.mJavascript;
    }
}

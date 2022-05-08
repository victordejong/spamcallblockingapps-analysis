package com.mopub.mobileads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.aotter.net.volley.toolbox.JsonRequest;
import com.mopub.common.AdReport;
import com.mopub.common.Constants;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.Networking;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/BaseHtmlWebView.class */
public class BaseHtmlWebView extends BaseWebView {
    @NonNull

    /* renamed from: c */
    public final ViewGestureDetector f8426c;

    /* renamed from: com.mopub.mobileads.BaseHtmlWebView$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/BaseHtmlWebView$a.class */
    public class View$OnTouchListenerC3823a implements View.OnTouchListener {
        public View$OnTouchListenerC3823a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            BaseHtmlWebView.this.f8426c.onTouchEvent(motionEvent);
            return motionEvent.getAction() == 2;
        }
    }

    public BaseHtmlWebView(Context context, AdReport adReport) {
        super(context);
        m30576c();
        getSettings().setJavaScriptEnabled(true);
        this.f8426c = new ViewGestureDetector(context, this, adReport);
        setBackgroundColor(0);
    }

    /* renamed from: a */
    public void m30577a(String str) {
        loadDataWithBaseURL(Networking.getBaseUrlScheme() + "://" + Constants.HOST + "/", str, "text/html", JsonRequest.PROTOCOL_CHARSET, null);
    }

    /* renamed from: c */
    public final void m30576c() {
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
    }

    /* renamed from: d */
    public void m30575d() {
        setOnTouchListener(new View$OnTouchListenerC3823a());
    }

    public void init() {
        m30575d();
    }

    @Override // android.webkit.WebView
    public void loadUrl(@Nullable String str) {
        if (str != null) {
            if (str.startsWith("javascript:")) {
                super.loadUrl(str);
                return;
            }
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Loading url: " + str);
        }
    }

    public void onResetUserClick() {
        ViewGestureDetector viewGestureDetector = this.f8426c;
        if (viewGestureDetector != null) {
            viewGestureDetector.onResetUserClick();
        }
    }

    @Override // android.webkit.WebView
    public void stopLoading() {
        if (this.f8433a) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, BaseHtmlWebView.class.getSimpleName() + "#stopLoading() called after destroy()");
            return;
        }
        WebSettings settings = getSettings();
        if (settings == null) {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, BaseHtmlWebView.class.getSimpleName() + "#getSettings() returned null");
            return;
        }
        settings.setJavaScriptEnabled(false);
        super.stopLoading();
        settings.setJavaScriptEnabled(true);
    }

    public boolean wasClicked() {
        ViewGestureDetector viewGestureDetector = this.f8426c;
        return viewGestureDetector != null && viewGestureDetector.isClicked();
    }
}

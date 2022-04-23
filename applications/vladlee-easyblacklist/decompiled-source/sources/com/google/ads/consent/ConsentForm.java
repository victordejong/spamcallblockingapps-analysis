package com.google.ads.consent;

import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.p051a.C1507k;
import java.io.ByteArrayOutputStream;
import java.net.URL;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/ads/consent/ConsentForm.class */
public class ConsentForm {
    private final boolean adFreeOption;
    private final URL appPrivacyPolicyURL;
    private final Context context;
    private final Dialog dialog;
    private final ConsentFormListener listener;
    private LoadState loadState;
    private final boolean nonPersonalizedAdsOption;
    private final boolean personalizedAdsOption;
    private final WebView webView;

    /* loaded from: classes-dex2jar.jar:com/google/ads/consent/ConsentForm$Builder.class */
    public static class Builder {
        private final URL appPrivacyPolicyURL;
        private final Context context;
        private ConsentFormListener listener;
        private boolean personalizedAdsOption = false;
        private boolean nonPersonalizedAdsOption = false;
        private boolean adFreeOption = false;

        public Builder(Context context, URL url) {
            this.context = context;
            this.appPrivacyPolicyURL = url;
            if (this.appPrivacyPolicyURL == null) {
                throw new IllegalArgumentException("Must provide valid app privacy policy url to create a ConsentForm");
            }
        }

        public ConsentForm build() {
            return new ConsentForm(this, (byte) 0);
        }

        public Builder withAdFreeOption() {
            this.adFreeOption = true;
            return this;
        }

        public Builder withListener(ConsentFormListener consentFormListener) {
            this.listener = consentFormListener;
            return this;
        }

        public Builder withNonPersonalizedAdsOption() {
            this.nonPersonalizedAdsOption = true;
            return this;
        }

        public Builder withPersonalizedAdsOption() {
            this.personalizedAdsOption = true;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/ads/consent/ConsentForm$LoadState.class */
    public enum LoadState {
        NOT_READY,
        LOADING,
        LOADED
    }

    private ConsentForm(Builder builder) {
        this.context = builder.context;
        this.listener = builder.listener == null ? new ConsentFormListener() { // from class: com.google.ads.consent.ConsentForm.1
        } : builder.listener;
        this.personalizedAdsOption = builder.personalizedAdsOption;
        this.nonPersonalizedAdsOption = builder.nonPersonalizedAdsOption;
        this.adFreeOption = builder.adFreeOption;
        this.appPrivacyPolicyURL = builder.appPrivacyPolicyURL;
        this.dialog = new Dialog(this.context, 16973840);
        this.loadState = LoadState.NOT_READY;
        this.webView = new WebView(this.context);
        this.webView.setBackgroundColor(0);
        this.dialog.setContentView(this.webView);
        this.dialog.setCancelable(false);
        this.webView.getSettings().setJavaScriptEnabled(true);
        this.webView.setWebViewClient(new WebViewClient() { // from class: com.google.ads.consent.ConsentForm.2
            boolean isInternalRedirect;

            /* renamed from: a */
            private static boolean m6131a(String str) {
                return !TextUtils.isEmpty(str) && str.startsWith("consent://");
            }

            /* renamed from: b */
            private void m6130b(String str) {
                if (m6131a(str)) {
                    this.isInternalRedirect = true;
                    Uri parse = Uri.parse(str);
                    String queryParameter = parse.getQueryParameter("action");
                    String queryParameter2 = parse.getQueryParameter("status");
                    String queryParameter3 = parse.getQueryParameter(ImagesContract.URL);
                    char c = 65535;
                    int hashCode = queryParameter.hashCode();
                    if (hashCode != -1370505102) {
                        if (hashCode != 150940456) {
                            if (hashCode == 1671672458 && queryParameter.equals("dismiss")) {
                                c = 1;
                            }
                        } else if (queryParameter.equals("browser")) {
                            c = 2;
                        }
                    } else if (queryParameter.equals("load_complete")) {
                        c = 0;
                    }
                    if (c == 0) {
                        ConsentForm.m6134a(ConsentForm.this, queryParameter2);
                    } else if (c == 1) {
                        this.isInternalRedirect = false;
                        ConsentForm.m6133b(ConsentForm.this, queryParameter2);
                    } else if (c == 2) {
                        ConsentForm.m6132c(ConsentForm.this, queryParameter3);
                    }
                }
            }

            @Override // android.webkit.WebViewClient
            public void onLoadResource(WebView webView, String str) {
                m6130b(str);
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                if (!this.isInternalRedirect) {
                    ConsentForm.m6136a(ConsentForm.this, webView);
                }
                super.onPageFinished(webView, str);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                ConsentForm.this.loadState = LoadState.NOT_READY;
                ConsentForm.this.listener.onConsentFormError(webResourceError.toString());
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
                String uri = webResourceRequest.getUrl().toString();
                if (!m6131a(uri)) {
                    return false;
                }
                m6130b(uri);
                return true;
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (!m6131a(str)) {
                    return false;
                }
                m6130b(str);
                return true;
            }
        });
    }

    /* synthetic */ ConsentForm(Builder builder, byte b) {
        this(builder);
    }

    /* renamed from: a */
    static /* synthetic */ void m6136a(ConsentForm consentForm, WebView webView) {
        HashMap hashMap = new HashMap();
        Context context = consentForm.context;
        hashMap.put("app_name", context.getApplicationInfo().loadLabel(context.getPackageManager()).toString());
        Context context2 = consentForm.context;
        Drawable applicationIcon = context2.getPackageManager().getApplicationIcon(context2.getApplicationInfo());
        Bitmap createBitmap = Bitmap.createBitmap(applicationIcon.getIntrinsicWidth(), applicationIcon.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        applicationIcon.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        applicationIcon.draw(canvas);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        String valueOf = String.valueOf(Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0));
        hashMap.put("app_icon", valueOf.length() != 0 ? "data:image/png;base64,".concat(valueOf) : new String("data:image/png;base64,"));
        hashMap.put("offer_personalized", Boolean.valueOf(consentForm.personalizedAdsOption));
        hashMap.put("offer_non_personalized", Boolean.valueOf(consentForm.nonPersonalizedAdsOption));
        hashMap.put("offer_ad_free", Boolean.valueOf(consentForm.adFreeOption));
        hashMap.put("is_request_in_eea_or_unknown", Boolean.valueOf(ConsentInformation.getInstance(consentForm.context).isRequestLocationInEeaOrUnknown()));
        hashMap.put("app_privacy_url", consentForm.appPrivacyPolicyURL);
        ConsentData a = ConsentInformation.getInstance(consentForm.context).m6123a();
        hashMap.put("plat", a.m6138h());
        hashMap.put("consent_info", a);
        String a2 = new C1507k().m6178a(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("info", a2);
        HashMap hashMap3 = new HashMap();
        hashMap3.put("args", hashMap2);
        webView.loadUrl(String.format("javascript:%s(%s)", "setUpConsentDialog", new C1507k().m6178a(hashMap3)));
    }

    /* renamed from: a */
    static /* synthetic */ void m6134a(ConsentForm consentForm, String str) {
        if (TextUtils.isEmpty(str)) {
            consentForm.loadState = LoadState.NOT_READY;
            consentForm.listener.onConsentFormError("No information");
        } else if (str.contains("Error")) {
            consentForm.loadState = LoadState.NOT_READY;
            consentForm.listener.onConsentFormError(str);
        } else {
            consentForm.loadState = LoadState.LOADED;
            consentForm.listener.onConsentFormLoaded();
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m6133b(ConsentForm consentForm, String str) {
        ConsentStatus consentStatus;
        consentForm.loadState = LoadState.NOT_READY;
        consentForm.dialog.dismiss();
        if (TextUtils.isEmpty(str)) {
            consentForm.listener.onConsentFormError("No information provided.");
        } else if (str.contains("Error")) {
            consentForm.listener.onConsentFormError(str);
        } else {
            char c = 65535;
            int hashCode = str.hashCode();
            boolean z = false;
            if (hashCode != -1152655096) {
                if (hashCode != -258041904) {
                    if (hashCode == 1666911234 && str.equals("non_personalized")) {
                        c = 1;
                    }
                } else if (str.equals("personalized")) {
                    c = 0;
                }
            } else if (str.equals("ad_free")) {
                c = 2;
            }
            if (c == 0) {
                consentStatus = ConsentStatus.PERSONALIZED;
                z = false;
            } else if (c != 1) {
                if (c == 2) {
                    z = true;
                }
                consentStatus = ConsentStatus.UNKNOWN;
            } else {
                consentStatus = ConsentStatus.NON_PERSONALIZED;
                z = false;
            }
            ConsentInformation.getInstance(consentForm.context).m6120a(consentStatus, "form");
            consentForm.listener.onConsentFormClosed(consentStatus, Boolean.valueOf(z));
        }
    }

    /* renamed from: c */
    static /* synthetic */ void m6132c(ConsentForm consentForm, String str) {
        ConsentFormListener consentFormListener;
        String str2;
        if (TextUtils.isEmpty(str)) {
            consentFormListener = consentForm.listener;
            str2 = "No valid URL for browser navigation.";
        } else {
            try {
                consentForm.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                return;
            } catch (ActivityNotFoundException e) {
                consentFormListener = consentForm.listener;
                str2 = "No Activity found to handle browser intent.";
            }
        }
        consentFormListener.onConsentFormError(str2);
    }

    public boolean isShowing() {
        return this.dialog.isShowing();
    }

    public void load() {
        if (this.loadState == LoadState.LOADING) {
            this.listener.onConsentFormError("Cannot simultaneously load multiple consent forms.");
        } else if (this.loadState == LoadState.LOADED) {
            this.listener.onConsentFormLoaded();
        } else {
            this.loadState = LoadState.LOADING;
            this.webView.loadUrl("file:///android_asset/consentform.html");
        }
    }

    public void show() {
        ConsentFormListener consentFormListener;
        String str;
        if (this.loadState != LoadState.LOADED) {
            consentFormListener = this.listener;
            str = "Consent form is not ready to be displayed.";
        } else if (ConsentInformation.getInstance(this.context).isTaggedForUnderAgeOfConsent()) {
            consentFormListener = this.listener;
            str = "Error: tagged for under age of consent";
        } else {
            this.dialog.getWindow().setLayout(-1, -1);
            this.dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            this.dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.google.ads.consent.ConsentForm.3
                @Override // android.content.DialogInterface.OnShowListener
                public void onShow(DialogInterface dialogInterface) {
                    ConsentForm.this.listener.onConsentFormOpened();
                }
            });
            this.dialog.show();
            if (!this.dialog.isShowing()) {
                this.listener.onConsentFormError("Consent form could not be displayed.");
                return;
            }
            return;
        }
        consentFormListener.onConsentFormError(str);
    }
}

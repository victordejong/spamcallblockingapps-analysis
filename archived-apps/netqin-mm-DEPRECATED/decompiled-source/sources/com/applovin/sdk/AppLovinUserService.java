package com.applovin.sdk;

import android.app.Activity;
/* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinUserService.class */
public interface AppLovinUserService {

    /* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener.class */
    public interface OnConsentDialogDismissListener {
        void onDismiss();
    }

    void showConsentDialog(Activity activity, OnConsentDialogDismissListener onConsentDialogDismissListener);
}

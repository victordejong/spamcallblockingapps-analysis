package com.applovin.impl.sdk;

import android.app.Activity;
import com.applovin.sdk.AppLovinUserService;
import p131c.p135b.p136a.p148e.C2341l;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/UserServiceImpl.class */
public class UserServiceImpl implements AppLovinUserService {

    /* renamed from: a */
    public final C2341l f21594a;

    public UserServiceImpl(C2341l lVar) {
        this.f21594a = lVar;
    }

    @Override // com.applovin.sdk.AppLovinUserService
    public void showConsentDialog(Activity activity, AppLovinUserService.OnConsentDialogDismissListener onConsentDialogDismissListener) {
        this.f21594a.m30244o().m30338a(activity, onConsentDialogDismissListener);
    }

    public String toString() {
        return "UserService{}";
    }
}

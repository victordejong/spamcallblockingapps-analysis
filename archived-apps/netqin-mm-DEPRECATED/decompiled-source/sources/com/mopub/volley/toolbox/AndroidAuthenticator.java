package com.mopub.volley.toolbox;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerFuture;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.mopub.common.Constants;
import com.mopub.volley.AuthFailureError;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/AndroidAuthenticator.class */
public class AndroidAuthenticator implements Authenticator {

    /* renamed from: a */
    public final AccountManager f35123a;

    /* renamed from: b */
    public final Account f35124b;

    /* renamed from: c */
    public final String f35125c;

    /* renamed from: d */
    public final boolean f35126d;

    public AndroidAuthenticator(AccountManager accountManager, Account account, String str, boolean z) {
        this.f35123a = accountManager;
        this.f35124b = account;
        this.f35125c = str;
        this.f35126d = z;
    }

    public AndroidAuthenticator(Context context, Account account, String str) {
        this(context, account, str, false);
    }

    public AndroidAuthenticator(Context context, Account account, String str, boolean z) {
        this(AccountManager.get(context), account, str, z);
    }

    public Account getAccount() {
        return this.f35124b;
    }

    public String getAuthToken() throws AuthFailureError {
        AccountManagerFuture<Bundle> authToken = this.f35123a.getAuthToken(this.f35124b, this.f35125c, this.f35126d, null, null);
        try {
            Bundle result = authToken.getResult();
            String str = null;
            if (authToken.isDone()) {
                str = null;
                if (!authToken.isCancelled()) {
                    if (!result.containsKey(Constants.INTENT_SCHEME)) {
                        str = result.getString("authtoken");
                    } else {
                        throw new AuthFailureError((Intent) result.getParcelable(Constants.INTENT_SCHEME));
                    }
                }
            }
            if (str != null) {
                return str;
            }
            throw new AuthFailureError("Got null auth token for type: " + this.f35125c);
        } catch (Exception e) {
            throw new AuthFailureError("Error while retrieving auth token", e);
        }
    }

    public String getAuthTokenType() {
        return this.f35125c;
    }

    public void invalidateAuthToken(String str) {
        this.f35123a.invalidateAuthToken(this.f35124b.type, str);
    }
}

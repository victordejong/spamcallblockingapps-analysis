package p193e.p194a.p372b0.p406e;

import android.accounts.AbstractAccountAuthenticator;
import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.accounts.AccountManager;
import android.accounts.NetworkErrorException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.truecaller.common.account.C3661R;
/* renamed from: e.a.b0.e.j */
/* loaded from: classes7-dex2jar.jar:e/a/b0/e/j.class */
public class C8430j extends AbstractAccountAuthenticator {

    /* renamed from: a */
    public final Context f26115a;

    public C8430j(Context context) {
        super(context);
        this.f26115a = context;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle addAccount(AccountAuthenticatorResponse accountAuthenticatorResponse, String str, String str2, String[] strArr, Bundle bundle) throws NetworkErrorException {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setPackage(this.f26115a.getApplicationInfo().packageName);
        intent.addCategory("android.intent.category.DEFAULT");
        intent.setFlags(268435456);
        Bundle bundle2 = new Bundle(1);
        bundle2.putParcelable("intent", intent);
        return bundle2;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle confirmCredentials(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, Bundle bundle) throws NetworkErrorException {
        Bundle bundle2 = new Bundle(1);
        bundle2.putBoolean("booleanResult", true);
        return bundle2;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle editProperties(AccountAuthenticatorResponse accountAuthenticatorResponse, String str) {
        return null;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle getAuthToken(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String str, Bundle bundle) throws NetworkErrorException {
        if (!"com.truecaller.auth_token_default".equals(str) && !"installation_id".equals(str)) {
            Bundle bundle2 = new Bundle(2);
            bundle2.putInt("errorCode", 7);
            bundle2.putString("errorMessage", "Unsupported auth token type");
            return bundle2;
        }
        String string = this.f26115a.getString(C3661R.string.authenticator_account_type);
        if (!string.equals(account.type)) {
            Bundle bundle3 = new Bundle(2);
            bundle3.putInt("errorCode", 7);
            bundle3.putString("errorMessage", "Wrong account type");
            return bundle3;
        }
        String peekAuthToken = AccountManager.get(this.f26115a).peekAuthToken(account, str);
        if (TextUtils.isEmpty(peekAuthToken)) {
            Bundle bundle4 = new Bundle(2);
            bundle4.putInt("errorCode", 5);
            bundle4.putString("errorMessage", "Missing register ID");
            return bundle4;
        }
        Bundle bundle5 = new Bundle(3);
        bundle5.putString("authAccount", account.name);
        bundle5.putString("accountType", string);
        bundle5.putString("authtoken", peekAuthToken);
        return bundle5;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public String getAuthTokenLabel(String str) {
        if ("installation_id".equals(str)) {
            return this.f26115a.getString(C3661R.string.authenticator_account_name);
        }
        return null;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle hasFeatures(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String[] strArr) throws NetworkErrorException {
        return null;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle updateCredentials(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String str, Bundle bundle) throws NetworkErrorException {
        return null;
    }
}

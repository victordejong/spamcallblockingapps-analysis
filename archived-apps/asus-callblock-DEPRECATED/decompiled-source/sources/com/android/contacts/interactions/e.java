package com.android.contacts.interactions;

import android.app.Activity;
import android.app.FragmentManager;
import android.content.Context;
import android.os.Bundle;
import com.android.contacts.ContactSaveService;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/interactions/e.class */
public final class e extends g {

    /* renamed from: a  reason: collision with root package name */
    private final a f1464a;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/interactions/e$a.class */
    public interface a {
        void a();
    }

    public e() {
        this.f1464a = null;
    }

    private e(a aVar) {
        this.f1464a = aVar;
    }

    public static void a(FragmentManager fragmentManager, String str, String str2, String str3, a aVar) {
        e eVar = new e(aVar);
        Bundle bundle = new Bundle();
        bundle.putString("accountType", str);
        bundle.putString("accountName", str2);
        bundle.putString("dataSet", str3);
        eVar.setArguments(bundle);
        eVar.show(fragmentManager, "createGroupDialog");
    }

    @Override // com.android.contacts.interactions.g
    protected final void a(String str) {
        Bundle arguments = getArguments();
        String string = arguments.getString("accountType");
        String string2 = arguments.getString("accountName");
        String string3 = arguments.getString("dataSet");
        if (this.f1464a != null) {
            this.f1464a.a();
        }
        Activity activity = getActivity();
        if (PhoneCapabilityTester.IsAsusDevice()) {
            activity.startService(ContactSaveService.a((Context) activity, str, (long[]) null, (Class<? extends Activity>) activity.getClass(), "android.intent.action.EDIT"));
        } else {
            activity.startService(ContactSaveService.a((Context) activity, new AccountWithDataSet(string2, string, string3), str, (long[]) null, (Class<? extends Activity>) activity.getClass(), "android.intent.action.EDIT"));
        }
    }
}

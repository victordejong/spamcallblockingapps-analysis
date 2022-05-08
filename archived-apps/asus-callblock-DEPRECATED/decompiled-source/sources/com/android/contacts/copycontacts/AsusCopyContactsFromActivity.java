package com.android.contacts.copycontacts;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.android.contacts.activities.AsusDeleteDuplicateActivity;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.b;
import com.android.contacts.copycontacts.a;
import com.android.contacts.model.a;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/copycontacts/AsusCopyContactsFromActivity.class */
public class AsusCopyContactsFromActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private static final String f770a = AsusCopyContactsFromActivity.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private a f771b;
    private final AdapterView.OnItemClickListener c = new AdapterView.OnItemClickListener() { // from class: com.android.contacts.copycontacts.AsusCopyContactsFromActivity.1
        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (AsusCopyContactsFromActivity.this.f771b != null) {
                AccountWithDataSet a2 = AsusCopyContactsFromActivity.this.f771b.getItem(i);
                int b2 = AsusCopyContactsFromActivity.this.f771b.b(i);
                if (!AsusCopyContactsFromActivity.this.f771b.f779a && b2 == 0) {
                    Log.d(AsusCopyContactsFromActivity.f770a, "mAccountListItemClickListener isLoadCountFinish = " + AsusCopyContactsFromActivity.this.f771b.f779a);
                } else if (b2 > 0) {
                    Intent intent = new Intent(AsusCopyContactsFromActivity.this, AsusCopyContactsToActivity.class);
                    intent.putExtra(AsusDeleteDuplicateActivity.ACCOUNT_FROM, a2.name);
                    intent.putExtra("accountTo", b2);
                    intent.putExtra("contactsNumber", b2);
                    ImplicitIntentsUtil.startActivityInApp(AsusCopyContactsFromActivity.this, intent);
                    AsusCopyContactsFromActivity.this.finish();
                } else {
                    b.a(2).show(AsusCopyContactsFromActivity.this.getFragmentManager(), (String) null);
                }
            }
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            boolean z = (getResources().getConfiguration().uiMode & 15) == 3;
            if (PhoneCapabilityTester.isUsingTwoPanes(this) || z) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
            List<AccountWithDataSet> a2 = a.a(this).a(true);
            int size = a2.size();
            AccountWithDataSet accountWithDataSet = new AccountWithDataSet(b.a.c, b.a.d, null);
            AccountWithDataSet accountWithDataSet2 = PhoneCapabilityTester.IsAsusDevice() ? new AccountWithDataSet(b.a.c, "asus.local.simcard2", null) : new AccountWithDataSet("SIM2", b.a.d, null);
            int i = size;
            if (a2.contains(accountWithDataSet)) {
                i = size - 1;
            }
            int i2 = i;
            if (a2.contains(accountWithDataSet2)) {
                i2 = i - 1;
            }
            if (i2 < 0) {
                throw new IllegalStateException("Cannot have a negative number of accounts");
            } else if (i2 >= 2) {
                setContentView(2131427355);
                setTitle(getString(2131755098));
                ListView listView = (ListView) findViewById(2131296272);
                this.f771b = new a(this, a.EnumC0029a.f780a, null, false);
                listView.setAdapter((ListAdapter) this.f771b);
                listView.setOnItemClickListener(this.c);
            } else if (i2 == 1) {
                b.a(1).show(getFragmentManager(), (String) null);
            } else {
                if (PhoneCapabilityTester.IsUnbundled()) {
                    Log.d(f770a, "NO Accout or one account or account is null");
                    b.a(1).show(getFragmentManager(), (String) null);
                }
                if (b.f607a.booleanValue()) {
                    Log.d(f770a, "accountNumber: " + i2);
                }
            }
        }
    }
}

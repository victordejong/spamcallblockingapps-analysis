package com.android.contacts.activities;

import android.accounts.AccountManager;
import android.accounts.AuthenticatorDescription;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.android.contacts.editor.c;
import com.android.contacts.model.a;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.AccountsListAdapter;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactEditorAccountsChangedActivity.class */
public class ContactEditorAccountsChangedActivity extends Activity {
    private static final int SUBACTIVITY_ADD_NEW_ACCOUNT = 1;
    private static final String TAG = ContactEditorAccountsChangedActivity.class.getSimpleName();
    private AccountsListAdapter mAccountListAdapter;
    private ArrayList<String> mAuthenticatorInfosToDisplay;
    private c mEditorUtils;
    private boolean mIsPrivateRestore = false;
    private HashMap<String, String> mTypeToAuthenticatorInfo = new HashMap<>();
    private boolean mNeedAddAccountButton = true;
    private final AdapterView.OnItemClickListener mAccountListItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.android.contacts.activities.ContactEditorAccountsChangedActivity.1
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (ContactEditorAccountsChangedActivity.this.mAccountListAdapter != null) {
                ContactEditorAccountsChangedActivity.this.saveAccountAndReturnResult(ContactEditorAccountsChangedActivity.this.mAccountListAdapter.getItem(i));
            }
        }
    };
    private final View.OnClickListener mAddAccountClickListener = new View.OnClickListener() { // from class: com.android.contacts.activities.ContactEditorAccountsChangedActivity.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ContactEditorAccountsChangedActivity.this.startActivityForResult(AccountManager.newChooseAccountIntent(null, new ArrayList(), ContactEditorAccountsChangedActivity.this.mEditorUtils.c(), false, null, null, null, null), 1);
        }
    };

    private void buildTypeToAuthDescriptionMap() {
        AuthenticatorDescription[] authenticatorTypes;
        String str;
        for (AuthenticatorDescription authenticatorDescription : AccountManager.get(this).getAuthenticatorTypes()) {
            try {
                CharSequence text = createPackageContext(authenticatorDescription.packageName, 0).getResources().getText(authenticatorDescription.labelId);
                str = null;
                if (text != null) {
                    str = text.toString();
                }
            } catch (PackageManager.NameNotFoundException e) {
                Log.w(TAG, "No icon name for account type " + authenticatorDescription.type);
                str = null;
            } catch (Resources.NotFoundException e2) {
                Log.w(TAG, "No icon resource for account type " + authenticatorDescription.type);
                str = null;
            }
            this.mTypeToAuthenticatorInfo.put(authenticatorDescription.type, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveAccountAndReturnResult(AccountWithDataSet accountWithDataSet) {
        Intent intent = new Intent();
        intent.putExtra("com.android.contacts.extra.ACCOUNT", accountWithDataSet);
        setResult(-1, intent);
        finish();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1) {
            AccountWithDataSet a2 = c.a(intent);
            if (a2 == null) {
                setResult(i2);
                finish();
                return;
            }
            saveAccountAndReturnResult(a2);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        boolean z;
        HashSet hashSet;
        super.onCreate(bundle);
        boolean z2 = (getResources().getConfiguration().uiMode & 15) == 3;
        if (PhoneCapabilityTester.isUsingTwoPanes(this) || z2) {
            setRequestedOrientation(-1);
        } else {
            setRequestedOrientation(1);
        }
        if (getIntent() != null) {
            z = getIntent().getBooleanExtra("sim_support", true);
            this.mIsPrivateRestore = getIntent().getBooleanExtra("extra_private_restore", false);
        } else {
            z = true;
        }
        this.mEditorUtils = c.a(this);
        String[] c = this.mEditorUtils.c();
        if (c != null) {
            hashSet = new HashSet(c.length);
            for (String str : c) {
                hashSet.add(str);
                Log.d(TAG, "valid account type:" + str);
            }
        } else {
            Log.d(TAG, "validAccountTypes = null");
            this.mNeedAddAccountButton = false;
            hashSet = null;
        }
        buildTypeToAuthDescriptionMap();
        this.mAuthenticatorInfosToDisplay = new ArrayList<>(this.mTypeToAuthenticatorInfo.size());
        for (Map.Entry<String, String> entry : this.mTypeToAuthenticatorInfo.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (hashSet == null || hashSet.contains(key)) {
                this.mAuthenticatorInfosToDisplay.add(value);
            }
        }
        if (this.mAuthenticatorInfosToDisplay.isEmpty()) {
            Log.d(TAG, "No available account to add new accounts");
            this.mNeedAddAccountButton = false;
        }
        List<AccountWithDataSet> a2 = a.a(this).a(true);
        int size = a2.size();
        if (size < 0) {
            throw new IllegalStateException("Cannot have a negative number of accounts");
        }
        if (this.mIsPrivateRestore) {
            setTitle(2131755973);
        }
        if (size >= 2) {
            setContentView(2131427472);
            TextView textView = (TextView) findViewById(R.id.text);
            textView.setText(getString(2131755446));
            Button button = (Button) findViewById(2131296293);
            if (this.mNeedAddAccountButton) {
                button.setText(getString(2131755035));
                button.setOnClickListener(this.mAddAccountClickListener);
            } else {
                button.setVisibility(8);
            }
            if (this.mIsPrivateRestore) {
                textView.setVisibility(8);
            }
            ListView listView = (ListView) findViewById(2131296272);
            if (z) {
                this.mAccountListAdapter = new AccountsListAdapter(this, AccountsListAdapter.AccountListFilter.ACCOUNTS_CONTACT_WRITABLE);
            } else {
                this.mAccountListAdapter = new AccountsListAdapter(this, AccountsListAdapter.AccountListFilter.ACCOUNTS_GROUP_WRITABLE_NOSIM);
            }
            listView.setAdapter((ListAdapter) this.mAccountListAdapter);
            listView.setOnItemClickListener(this.mAccountListItemClickListener);
        } else if (size == 1) {
            setContentView(2131427473);
            TextView textView2 = (TextView) findViewById(R.id.text);
            Button button2 = (Button) findViewById(2131296987);
            Button button3 = (Button) findViewById(2131297239);
            final AccountWithDataSet accountWithDataSet = a2.get(0);
            textView2.setText(getString(2131755447, new Object[]{accountWithDataSet.name}));
            if (this.mNeedAddAccountButton) {
                button2.setText(getString(2131755035));
                button2.setOnClickListener(this.mAddAccountClickListener);
            } else {
                button2.setVisibility(8);
            }
            button3.setText(getString(17039370));
            button3.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.activities.ContactEditorAccountsChangedActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ContactEditorAccountsChangedActivity.this.saveAccountAndReturnResult(accountWithDataSet);
                }
            });
        } else {
            setContentView(2131427473);
            TextView textView3 = (TextView) findViewById(R.id.text);
            Button button4 = (Button) findViewById(2131296987);
            Button button5 = (Button) findViewById(2131297239);
            textView3.setText(getString(2131755448));
            button4.setText(getString(2131755726));
            button4.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.activities.ContactEditorAccountsChangedActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ContactEditorAccountsChangedActivity.this.mEditorUtils.a((AccountWithDataSet) null);
                    ContactEditorAccountsChangedActivity.this.setResult(-1);
                    ContactEditorAccountsChangedActivity.this.finish();
                }
            });
            if (this.mNeedAddAccountButton) {
                button5.setText(getString(2131755030));
                button5.setOnClickListener(this.mAddAccountClickListener);
                return;
            }
            button5.setVisibility(8);
        }
    }
}

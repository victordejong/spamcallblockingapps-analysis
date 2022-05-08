package com.asus.blocklist;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.FrameLayout;
import com.android.contacts.a.b;
import com.android.contacts.activities.TransactionSafeActivity;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockedLogActivity.class */
public class BlockedLogActivity extends TransactionSafeActivity implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public static Activity f2441a = null;

    /* renamed from: b  reason: collision with root package name */
    private String f2442b = BlockedLogActivity.class.getSimpleName();
    private FrameLayout c;
    private BlockedLogFragment d;
    private SharedPreferences e;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131427402);
        f2441a = this;
        this.e = getSharedPreferences("asus_sim_setting", 0);
        this.e.registerOnSharedPreferenceChangeListener(this);
        this.c = (FrameLayout) findViewById(2131296392);
        this.d = (BlockedLogFragment) getFragmentManager().findFragmentById(2131296391);
        setRequestedOrientation(1);
        if (PhoneCapabilityTester.IsSystemApp()) {
            b.a();
            b.a(18, (Activity) this, "Blocked log list", true);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (f2441a != null) {
            f2441a = null;
        }
        if (this.e != null) {
            this.e.unregisterOnSharedPreferenceChangeListener(this);
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean onOptionsItemSelected;
        if (menuItem.getItemId() == 16908332) {
            if (!isFinishing()) {
                finish();
            }
            onOptionsItemSelected = true;
        } else {
            onOptionsItemSelected = super.onOptionsItemSelected(menuItem);
        }
        return onOptionsItemSelected;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (!com.android.contacts.simcardmanage.b.a(this)) {
            return;
        }
        if ((str.equals("asushadIccCard1") || str.equals("asushadIccCard2") || str.equals("asusIsIccCardFlyMode1") || str.equals("asusIsIccCardFlyMode2")) && this.d != null) {
            this.d.b();
            BlockedLogFragment blockedLogFragment = this.d;
            if (blockedLogFragment.f2443a != null) {
                blockedLogFragment.f2443a.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onStart() {
        super.onStart();
    }
}

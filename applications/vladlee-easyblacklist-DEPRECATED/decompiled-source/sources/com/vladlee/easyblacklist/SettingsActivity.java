package com.vladlee.easyblacklist;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.Button;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.AbstractC0867ab;
import androidx.fragment.app.AbstractC0897m;
import androidx.preference.AbstractC1027o;
import androidx.preference.PreferenceScreen;
import com.google.firebase.analytics.FirebaseAnalytics;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/SettingsActivity.class */
public class SettingsActivity extends AppCompatActivity implements AbstractC1027o.AbstractC1031d {

    /* renamed from: k */
    private C3365dk f19270k = null;

    /* renamed from: a */
    public static void m292a(Context context) {
        int i = Build.VERSION.SDK_INT;
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.vladlee.callsblacklist"));
            intent.addFlags(1208483840);
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://play.google.com/store/apps/details?id=com.vladlee.callsblacklist")));
            FirebaseAnalytics.getInstance(context).m646a("dialogRateApp_ActivityNotFound", new Bundle());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m288h() {
        Button button = (Button) findViewById(2131296352);
        if (!EasyBlacklistActivity.m341a((AppCompatActivity) this) || !EasyBlacklistActivity.m306k()) {
            button.setVisibility(8);
            return;
        }
        button.setVisibility(0);
        C3365dk dkVar = this.f19270k;
        if (dkVar == null || dkVar.m135b(this) || !this.f19270k.m145a()) {
            button.setVisibility(8);
        }
    }

    @Override // androidx.preference.AbstractC1027o.AbstractC1031d
    /* renamed from: a */
    public final boolean mo291a(PreferenceScreen preferenceScreen) {
        AbstractC0867ab a = m7852f().mo7727a();
        C3413ey eyVar = new C3413ey();
        Bundle bundle = new Bundle();
        bundle.putString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT", preferenceScreen.m7446y());
        eyVar.setArguments(bundle);
        a.m7832a(2131296430, eyVar, preferenceScreen.m7446y());
        a.m7826a(preferenceScreen.m7446y());
        a.mo7825b();
        m9926b().mo9831a(preferenceScreen.m7448v());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        C3365dk dkVar = this.f19270k;
        if (dkVar == null || !dkVar.m144a(i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        } else if (i2 == -1) {
            ((Button) findViewById(2131296352)).setVisibility(8);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        m9926b().mo9831a(getString(2131624184));
        super.onBackPressed();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131492976);
        findViewById(2131296352).setVisibility(8);
        if (EasyBlacklistActivity.m306k()) {
            this.f19270k = new C3365dk(this);
            this.f19270k.f19502c = new C3408et(this);
            this.f19270k.f19500a = new C3409eu(this);
            this.f19270k.f19501b = new C3410ev(this);
            this.f19270k.m143a((Context) this);
        }
        Intent intent = getIntent();
        String stringExtra = intent != null ? intent.getStringExtra("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT") : "pref_settings";
        C3413ey eyVar = new C3413ey();
        Bundle bundle2 = new Bundle();
        bundle2.putString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT", stringExtra);
        eyVar.setArguments(bundle2);
        m7852f().mo7727a().m7833a(2131296430, eyVar).mo7825b();
        ((Button) findViewById(2131296352)).setOnClickListener(new View$OnClickListenerC3411ew(this));
        m288h();
        m9926b().mo9830a(true);
        m9926b().mo9831a(getString(2131624184));
        if (stringExtra != null && stringExtra.equals("pref_blocking_settings")) {
            m9926b().mo9831a(getString(2131623999));
        }
        ((Button) findViewById(2131296349)).setOnClickListener(new View$OnClickListenerC3412ex(this));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        FirebaseAnalytics.getInstance(this).m646a("SettingsActivity_destroy", new Bundle());
        C3365dk dkVar = this.f19270k;
        if (dkVar != null) {
            dkVar.m136b();
            this.f19270k = null;
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        AbstractC0897m f = m7852f();
        if (f.mo7669e() > 0) {
            f.mo7679c();
            m9926b().mo9831a(getString(2131624184));
            return true;
        }
        finish();
        return true;
    }
}

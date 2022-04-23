package com.vladlee.easyblacklist;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.inputmethod.InputMethodManager;
import android.widget.CheckBox;
import android.widget.EditText;
import androidx.appcompat.app.AppCompatActivity;
import com.google.firebase.analytics.FirebaseAnalytics;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/AddTextFilterActivity.class */
public class AddTextFilterActivity extends AppCompatActivity {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r0v10, types: [int, boolean] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void m376a(com.vladlee.easyblacklist.AddTextFilterActivity r9) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vladlee.easyblacklist.AddTextFilterActivity.m376a(com.vladlee.easyblacklist.AddTextFilterActivity):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m374h() {
        EditText editText = (EditText) findViewById(2131296414);
        ((InputMethodManager) editText.getContext().getSystemService("input_method")).hideSoftInputFromWindow(editText.getWindowToken(), 0);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131492894);
        ((EditText) findViewById(2131296414)).addTextChangedListener(new C3466i(this));
        ((CheckBox) findViewById(2131296369)).setChecked(true);
        findViewById(2131296344).setOnClickListener(new View$OnClickListenerC3467j(this));
        ((InputMethodManager) getSystemService("input_method")).toggleSoftInput(2, 1);
        findViewById(2131296344).setVisibility(8);
        m9926b().mo9831a(getString(2131623966));
        m9926b().mo9825b(true);
        m9926b().mo9830a(true);
        m9926b().mo9839a(0.0f);
        FirebaseAnalytics.getInstance(this).m646a("addTextFilterActivity", new Bundle());
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        m374h();
        setResult(0, new Intent());
        finish();
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        m374h();
    }
}

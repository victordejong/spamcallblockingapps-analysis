package com.vladlee.easyblacklist;

import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/SmsShareViaActivity.class */
public class SmsShareViaActivity extends AppCompatActivity {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle bundle2 = new Bundle();
        String stringExtra = getIntent().getStringExtra("android.intent.extra.TEXT");
        String str = stringExtra;
        if (stringExtra == null) {
            str = "";
        }
        bundle2.putBoolean(C3356db.f19477f, true);
        bundle2.putString(C3356db.f19473b, str);
        Intent intent = new Intent(this, EasyBlacklistActivity.class);
        intent.putExtras(bundle2);
        startActivity(intent);
        finish();
    }
}

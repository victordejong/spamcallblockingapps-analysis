package com.vladlee.easyblacklist;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/SmsSendMessageActivity.class */
public class SmsSendMessageActivity extends AppCompatActivity {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Uri data;
        super.onCreate(bundle);
        Bundle bundle2 = new Bundle();
        String action = getIntent().getAction();
        String schemeSpecificPart = (("android.intent.action.SENDTO".equals(action) || "android.intent.action.VIEW".equals(action)) && (data = getIntent().getData()) != null) ? data.getSchemeSpecificPart() : "";
        bundle2.putBoolean(C3356db.f19477f, true);
        bundle2.putString(C3356db.f19472a, schemeSpecificPart);
        Intent intent = new Intent(this, EasyBlacklistActivity.class);
        intent.putExtras(bundle2);
        startActivity(intent);
        finish();
    }
}

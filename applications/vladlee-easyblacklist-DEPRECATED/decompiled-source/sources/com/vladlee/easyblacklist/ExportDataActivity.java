package com.vladlee.easyblacklist;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.vladlee.easyblacklist.C3318by;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ExportDataActivity.class */
public class ExportDataActivity extends Activity {
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = new Intent("com.vladlee.callsblacklist.action.IMPORT");
        intent.addFlags(1);
        grantUriPermission("com.vladlee.callsblacklist", C3318by.C3319a.f19425a, 1);
        grantUriPermission("com.vladlee.callsblacklist", C3318by.C3321c.f19427a, 1);
        grantUriPermission("com.vladlee.callsblacklist", C3318by.C3323e.f19429a, 1);
        startActivity(intent);
        finish();
    }
}

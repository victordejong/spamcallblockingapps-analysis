package com.uservoice.uservoicesdk.ui;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;
import com.asus.updatesdk.utility.SystemPropertiesReflection;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.f;
import com.uservoice.uservoicesdk.g;
import com.uservoice.uservoicesdk.j.e;
import com.uservoice.uservoicesdk.model.d;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/ui/a.class */
public abstract class a<T> extends com.uservoice.uservoicesdk.j.a<T> {
    final Context c;

    public a(Context context) {
        this.c = context;
    }

    @Override // com.uservoice.uservoicesdk.j.a
    public void a(e eVar) {
        boolean z;
        Log.e("com.uservoice.uservoicesdk", eVar.a());
        try {
            d.d();
            String lowerCase = f.a(SystemPropertiesReflection.Key.BUILD_ASUS_SKU).toLowerCase();
            String lowerCase2 = f.a("ro.product.name").toLowerCase();
            String lowerCase3 = f.a("ro.build.asus.oem.region").toLowerCase();
            if (lowerCase3 != null && lowerCase3.startsWith("cn")) {
                z = true;
            } else if (lowerCase == null || lowerCase2 == null) {
                z = false;
            } else {
                z = true;
                if (!lowerCase.startsWith("cn")) {
                    z = true;
                    if (!lowerCase.startsWith("cucc")) {
                        z = true;
                        if (!lowerCase2.startsWith("cn")) {
                            z = true;
                            if (!lowerCase2.startsWith("cucc")) {
                                z = false;
                            }
                        }
                    }
                }
            }
            new AlertDialog.Builder(this.c).setTitle(d.f.f4627b).setMessage(d.f.f4626a).setNegativeButton(17039369, (DialogInterface.OnClickListener) null).setPositiveButton(z ? d.f.w : d.f.v, new DialogInterface.OnClickListener() { // from class: com.uservoice.uservoicesdk.ui.a.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    g.c = true;
                    a.this.c.startActivity(new Intent("android.settings.WIFI_SETTINGS"));
                }
            }).show();
        } catch (Exception e) {
            Log.e("com.uservoice.uservoicesdk", "Failed trying to show alert: " + e.getMessage());
        }
    }
}

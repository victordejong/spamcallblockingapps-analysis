package com.asus.c;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import com.asus.c.b;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/asus/c/a.class */
public final class a extends AlertDialog.Builder {

    /* renamed from: a  reason: collision with root package name */
    private final int f2535a = 3;

    /* renamed from: b  reason: collision with root package name */
    private Context f2536b;
    private ArrayList<b> c;
    private final SharedPreferences d;
    private String e;

    public a(final Context context, final String str, String str2) {
        super(context, 5);
        this.f2536b = null;
        this.f2536b = context;
        this.d = context.getSharedPreferences("share-dialog-shareprefs", 0);
        this.e = str2;
        setTitle(2131756123);
        a();
        Collections.sort(this.c, b.a.f2544a);
        setAdapter(new c(this.f2536b, this.c), new DialogInterface.OnClickListener() { // from class: com.asus.c.a.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                a.this.c.get(i);
                String str3 = ((b) a.this.c.get(i)).d;
                String str4 = ((b) a.this.c.get(i)).c;
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(16, context, "ShareVia_Share", "ShareVia_Send", str3, null);
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(16, (Activity) a.this.f2536b, "Click App", true);
                int i2 = a.this.d.getInt(str4, 0);
                int i3 = i2;
                if (i2 < Integer.MAX_VALUE) {
                    i3 = i2 + 1;
                }
                a.this.d.edit().putInt(str4, i3).apply();
                final Intent intent = new Intent();
                intent.setAction("android.intent.action.SEND");
                intent.putExtra("android.intent.extra.TEXT", str);
                intent.setType("text/plain");
                intent.setFlags(453509121);
                intent.setComponent(new ComponentName(((b) a.this.c.get(i)).d, ((b) a.this.c.get(i)).c));
                new Handler().post(new Runnable() { // from class: com.asus.c.a.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        a.this.f2536b.startActivity(intent);
                    }
                });
            }
        });
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.asus.c.a.2
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                a.this.c.clear();
                a.this.c = null;
            }
        });
    }

    private void a() {
        this.c = new ArrayList<>();
        PackageManager packageManager = this.f2536b.getPackageManager();
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.setType("text/plain");
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
            Drawable loadIcon = resolveInfo.loadIcon(packageManager);
            this.c.add(new b(resolveInfo.loadLabel(packageManager).toString(), loadIcon, resolveInfo.activityInfo.name, resolveInfo.activityInfo.packageName, this.d.getInt(resolveInfo.activityInfo.name, 0)));
        }
    }

    @Override // android.app.AlertDialog.Builder
    public final AlertDialog show() {
        int i = this.d.getInt("show-count", 0);
        int i2 = i;
        if (i < Integer.MAX_VALUE) {
            i2 = i + 1;
        }
        this.d.edit().putInt("show-count", i2).apply();
        return super.show();
    }
}

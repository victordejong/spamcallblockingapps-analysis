package com.hiya.stingray.util;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import r.a.a;
/* renamed from: com.hiya.stingray.util.x */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/x.class */
public class C0185x {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m822a(Context context, DialogInterface dialogInterface, int i) {
        Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + context.getPackageName()));
        if (intent.resolveActivity(context.getPackageManager()) != null) {
            context.startActivity(intent);
        } else {
            a.a("There is no activity to handle start overlay permission intent", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ void m821b(DialogInterface dialogInterface, int i) {
    }

    /* renamed from: c */
    public static boolean m820c(Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            return !Settings.canDrawOverlays(context);
        }
        return false;
    }

    /* renamed from: d */
    public static void m819d(final Context context) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(context.getResources().getString(2131821143)).setMessage(context.getResources().getString(2131821142)).setPositiveButton(context.getResources().getString(2131820771), new DialogInterface.OnClickListener() { // from class: com.hiya.stingray.util.a
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C0185x.m822a(context, dialogInterface, i);
            }
        }).setNegativeButton(context.getResources().getString(2131820707), DialogInterface$OnClickListenerC0142b.f305f);
        builder.show();
    }
}

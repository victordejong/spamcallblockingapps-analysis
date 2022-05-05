package com.vladlee.easyblacklist;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
/* renamed from: com.vladlee.easyblacklist.ch */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ch.class */
public final class C3335ch {
    /* renamed from: a */
    public static View m153a(Context context, LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3391ed.m89a(context, "pref_rate_dialog_like_yes", false) ? 2131492971 : 2131492970, viewGroup, false);
        Button button = (Button) inflate.findViewById(2131296355);
        if (button != null) {
            button.setOnClickListener(new View$OnClickListenerC3336ci(viewGroup));
        }
        Button button2 = (Button) inflate.findViewById(2131296351);
        if (button2 != null) {
            button2.setOnClickListener(new View$OnClickListenerC3337cj(z));
        }
        Button button3 = (Button) inflate.findViewById(2131296350);
        if (button3 != null) {
            button3.setOnClickListener(new View$OnClickListenerC3338ck(z));
        }
        Button button4 = (Button) inflate.findViewById(2131296354);
        if (button4 != null) {
            button4.setOnClickListener(new View$OnClickListenerC3339cl(z));
        }
        return inflate;
    }

    /* renamed from: a */
    public static void m154a(Context context, long j, boolean z) {
        if (context == null) {
            return;
        }
        if (z) {
            if (C3318by.m185c(context) <= 0 || !m155a(context, j) || C3318by.m168i(context)) {
                C3318by.m175f(context);
            } else {
                C3318by.m181d(context);
            }
        } else if (C3318by.m166j(context) <= 0 || !m155a(context, j) || C3318by.m170h(context)) {
            C3318by.m172g(context);
        } else {
            C3318by.m178e(context);
        }
    }

    /* renamed from: a */
    public static boolean m155a(Context context, long j) {
        try {
            if (context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime + j > System.currentTimeMillis()) {
                return false;
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        if (!C3391ed.m89a(context, "pref_show_rate_dialog", true)) {
            return false;
        }
        long b = C3391ed.m88b(context, "pref_show_rate_dialog_time");
        if (b != 0 && b + 432000000 > System.currentTimeMillis()) {
            return false;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }
}

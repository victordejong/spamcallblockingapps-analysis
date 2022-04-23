package com.vladlee.easyblacklist;

import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.provider.Telephony;
import android.util.DisplayMetrics;
import android.view.Display;
import com.vladlee.easyblacklist.C3318by;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.cw */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/cw.class */
public final class RunnableC3350cw implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Bundle f19461a;

    /* renamed from: b */
    final /* synthetic */ EasyBlacklistActivity f19462b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC3350cw(EasyBlacklistActivity easyBlacklistActivity, Bundle bundle) {
        this.f19462b = easyBlacklistActivity;
        this.f19461a = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        boolean z2;
        long j;
        ((CallsBlacklistApp) this.f19462b.getApplication()).m356a();
        EasyBlacklistActivity.m314f(this.f19462b);
        BlockService.m367a(this.f19462b);
        this.f19462b.f19264z = 3;
        boolean c = CheckPermissionsActivity.m346c(this.f19462b);
        if (Build.VERSION.SDK_INT >= 19) {
            String packageName = this.f19462b.getPackageName();
            String defaultSmsPackage = Telephony.Sms.getDefaultSmsPackage(this.f19462b);
            boolean z3 = (defaultSmsPackage == null || packageName == null || !defaultSmsPackage.equals(packageName)) ? false : true;
            if (!z3 || !c) {
                C3392ee.m74b((Context) this.f19462b, "pref_block_sms_option", false);
                z = z3;
            } else {
                this.f19462b.f19264z = 4;
                z = z3;
                if (!C3392ee.m76b(this.f19462b, "pref_block_sms_option")) {
                    C3392ee.m74b((Context) this.f19462b, "pref_block_sms_option", true);
                    z = z3;
                }
            }
        } else {
            if (!C3392ee.m76b(this.f19462b, "pref_block_sms_option")) {
                C3392ee.m74b((Context) this.f19462b, "pref_block_sms_option", true);
            }
            z = false;
        }
        this.f19462b.runOnUiThread(new RunnableC3351cx(this, this.f19461a.getBoolean(C3356db.f19477f, false), this.f19461a.getBoolean(C3356db.f19476e, false), z && c, this.f19461a.getBoolean(C3356db.f19478g, false)));
        if (!C3392ee.m76b(this.f19462b, "pref_block_calls_option")) {
            C3392ee.m74b((Context) this.f19462b, "pref_block_calls_option", true);
        }
        PreferenceManager.getDefaultSharedPreferences(this.f19462b).registerOnSharedPreferenceChangeListener(this.f19462b);
        EasyBlacklistActivity easyBlacklistActivity = this.f19462b;
        Cursor query = easyBlacklistActivity.getContentResolver().query(C3318by.C3321c.f19427a, null, "display_name IS NULL", null, null);
        if (query != null) {
            z2 = query.getCount() > 0;
            query.close();
        } else {
            z2 = false;
        }
        boolean z4 = z2;
        if (!z2) {
            Cursor query2 = easyBlacklistActivity.getContentResolver().query(C3318by.C3323e.f19429a, null, "display_name IS NULL", null, null);
            z4 = z2;
            if (query2 != null) {
                z4 = query2.getCount() > 0;
                query2.close();
            }
        }
        if (z4) {
            this.f19462b.runOnUiThread(new RunnableC3352cy(this));
        }
        try {
            Display defaultDisplay = this.f19462b.getWindowManager().getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            this.f19462b.f19250B = (int) (displayMetrics.heightPixels / this.f19462b.getResources().getDisplayMetrics().density);
        } catch (NullPointerException e) {
            this.f19462b.f19250B = 0;
        }
        EasyBlacklistActivity easyBlacklistActivity2 = this.f19462b;
        easyBlacklistActivity2.f19263y = C3391ed.m88b(easyBlacklistActivity2, "pref_app_starts") + 1;
        this.f19462b.f19261w = 0L;
        this.f19462b.f19262x = System.currentTimeMillis();
        EasyBlacklistActivity easyBlacklistActivity3 = this.f19462b;
        j = easyBlacklistActivity3.f19263y;
        C3391ed.m91a(easyBlacklistActivity3, "pref_app_starts", j);
        this.f19462b.runOnUiThread(new RunnableC3353cz(this));
    }
}

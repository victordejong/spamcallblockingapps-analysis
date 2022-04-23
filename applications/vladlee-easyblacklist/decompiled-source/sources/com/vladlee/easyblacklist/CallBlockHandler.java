package com.vladlee.easyblacklist;

import android.app.IntentService;
import android.content.Intent;
import android.database.Cursor;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.vladlee.easyblacklist.C3318by;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/CallBlockHandler.class */
public class CallBlockHandler extends IntentService {
    public CallBlockHandler() {
        super("CallBlockHandler");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v7 */
    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        long currentTimeMillis = System.currentTimeMillis();
        if (intent != null) {
            String stringExtra = intent.getStringExtra(C3356db.f19472a);
            String str = stringExtra;
            if (stringExtra == null) {
                str = "";
            }
            boolean z = false;
            Cursor query = getContentResolver().query(C3318by.C3319a.f19425a, new String[]{"_id", "time"}, "phone = ?", new String[]{str}, "time DESC LIMIT 1");
            boolean z2 = false;
            if (query != null) {
                boolean z3 = false;
                if (query.moveToNext()) {
                    z3 = query.getLong(query.getColumnIndex("time"));
                }
                query.close();
                z2 = z3;
            }
            long j = z2 ? 1L : 0L;
            long j2 = z2 ? 1L : 0L;
            if (currentTimeMillis - j > 4000) {
                if (((AudioManager) getSystemService("audio")).getMode() == 2) {
                    z = true;
                }
                if (Build.VERSION.SDK_INT < 21 || !z) {
                    Bundle bundle = new Bundle();
                    FirebaseAnalytics.getInstance(this).m646a("CallBlockHandler_logBlocked", bundle);
                    try {
                        C3318by.m199a(this, str, "", currentTimeMillis, 0);
                    } catch (IllegalArgumentException e) {
                        FirebaseAnalytics.getInstance(this).m646a("CallBlockHandler_exception", bundle);
                    }
                    try {
                        Thread.sleep(2000L);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                    C3381dz.m107a(this, true);
                    C3307bs.m240b(this);
                }
            }
        }
    }
}

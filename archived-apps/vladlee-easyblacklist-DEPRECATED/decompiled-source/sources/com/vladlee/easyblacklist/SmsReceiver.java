package com.vladlee.easyblacklist;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.RingtoneManager;
import android.os.Build;
import android.provider.Telephony;
import com.vladlee.p077b.p078a.C3251a;
import com.vladlee.p077b.p078a.C3252b;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/SmsReceiver.class */
public class SmsReceiver extends BroadcastReceiver {
    /* renamed from: a */
    public static void m273a(BroadcastReceiver broadcastReceiver, Context context, Intent intent) {
        if (intent != null) {
            C3251a a = C3252b.m393a(intent);
            String str = a.f19224b;
            if (a.f19223a != null && a.f19223a.length() > 0 && C3275aq.m266a(context, a.f19223a, str)) {
                broadcastReceiver.abortBroadcast();
                if (str.length() > 0) {
                    System.currentTimeMillis();
                    C3381dz.m107a(context, false);
                    C3318by.m199a(context, a.f19223a, str, System.currentTimeMillis(), 1);
                    C3318by.m164k(context);
                }
            } else if (Build.VERSION.SDK_INT >= 19) {
                String packageName = context.getPackageName();
                String defaultSmsPackage = Telephony.Sms.getDefaultSmsPackage(context);
                if (defaultSmsPackage != null && CheckPermissionsActivity.m346c(context) && defaultSmsPackage.equals(packageName)) {
                    C3252b.m394a(context, a);
                    if (C3318by.m189b(context, "chat_running_number", "").equals(a.f19223a) || C3318by.m189b(context, "sms_tab_running", "").equals("1")) {
                        try {
                            RingtoneManager.getRingtone(context, RingtoneManager.getDefaultUri(2)).play();
                        } catch (Exception e) {
                        }
                    } else {
                        C3381dz.m108a(context, a.f19223a, C3307bs.m235c(context, a.f19223a), str);
                    }
                }
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        m273a(this, context, intent);
    }
}

package com.android.contacts.quickcontact;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import com.android.contacts.util.ImplicitIntentsUtil;
/* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/QuickContactBroadcastReceiver.class */
public class QuickContactBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getBooleanExtra("isSocilaWidgetContactExist", true)) {
            Uri data = intent.getData();
            Intent intent2 = new Intent("android.provider.action.QUICK_CONTACT");
            intent2.setSourceBounds(intent.getSourceBounds());
            intent2.addFlags(268468224);
            intent2.setData(data);
            ImplicitIntentsUtil.startActivityInApp(context, intent2);
            return;
        }
        Toast.makeText(context, context.getResources().getString(2131755709), 1).show();
    }
}

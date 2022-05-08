package com.asus.updatesdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.asus.updatesdk.cdn.CdnUtils;
import com.asus.updatesdk.utility.PreferenceUtils;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/ZenFamilyShareReceiver.class */
public class ZenFamilyShareReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String packageName = context.getPackageName();
        Log.v("ZenFamilyShareReceiver", "onReceive in " + packageName);
        String action = intent.getAction();
        char c = 65535;
        switch (action.hashCode()) {
            case 460859078:
                if (action.equals(CdnUtils.ACTION_REQUEST_MASTER)) {
                    c = 0;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                String string = PreferenceUtils.getString(context, PreferenceUtils.KEY_MASTER_PACKAGE, null);
                if (string != null && string.equals(packageName)) {
                    Log.v("ZenFamilyShareReceiver", "Send data from " + packageName);
                    Intent intent2 = new Intent(CdnUtils.ACTION_SEND_MASTER_DATA);
                    intent2.putExtra(CdnUtils.KEY_PASSED_IUD_VERSION, PreferenceUtils.getLong(context, PreferenceUtils.KEY_IUD_VERSION, 0L));
                    intent2.putExtra(CdnUtils.KEY_PASSED_STRINGS_JSON_FILE, PreferenceUtils.getString(context, PreferenceUtils.KEY_STRINGS_JSON_FILE, null));
                    intent2.putExtra(CdnUtils.KEY_PASSED_IUD_JSON_FILE, PreferenceUtils.getString(context, PreferenceUtils.KEY_IUD_JSON_FILE, null));
                    intent2.putExtra(CdnUtils.KEY_PASSED_PLAY_JSON_FILE, PreferenceUtils.getString(context, PreferenceUtils.KEY_PLAY_JSON_FILE, null));
                    intent2.putExtra(CdnUtils.KEY_PASSED_STRINGS_VERSION, PreferenceUtils.getLong(context, PreferenceUtils.KEY_STRINGS_VERSION, 0L));
                    intent2.putExtra(CdnUtils.KEY_PASSED_MASTER, PreferenceUtils.getString(context, PreferenceUtils.KEY_MASTER_PACKAGE, string));
                    intent2.putExtra(CdnUtils.KEY_PASSED_LANGUAGE, PreferenceUtils.getString(context, PreferenceUtils.KEY_LANGUAGE_LOCALE, CdnUtils.DEFAULT_LANGUAGE));
                    intent2.putExtra(CdnUtils.KEY_PASSED_PLAY_CHECK_TIME, PreferenceUtils.getLong(context, PreferenceUtils.KEY_PLAY_CHECK_TIME, 0L));
                    intent2.setPackage(intent.getStringExtra(CdnUtils.KEY_SLAVE_PACKAGE));
                    context.sendBroadcast(intent2);
                    return;
                }
                return;
            default:
                return;
        }
    }
}

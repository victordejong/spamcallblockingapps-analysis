package com.android.contacts.activities;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.AsyncTask;
import android.preference.PreferenceManager;
import android.util.Log;
import com.android.contacts.dialpad.SmartDialFirstSyncService;
import com.android.contacts.dialpad.TwelveKeyDialerFragment;
import com.android.contacts.dialpad.d;
import com.android.contacts.f;
import com.asus.contacts.a;
import java.util.Locale;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/DialerDefaultTabReceiver.class */
public class DialerDefaultTabReceiver extends BroadcastReceiver {
    public static final String ACCOUNT_UPDATE = "com.asus.account_update";
    public static final String ACTION_TO_ASUS_SYSTEMUI_SIMSTATUS = "ASUS.SIMSTATUS.SYSTEMUI";
    public static final String EXTRA_TO_ASUS_SYSTEMUI_ACTIVE = "ACTIVE";
    public static final String EXTRA_TO_ASUS_SYSTEMUI_DEACTIVE = "DEACTIVE";
    public static final String KEY_TO_ASUS_SYSTEMUI_SIMINDEX = "SIMINDEX";
    public static final String KEY_TO_ASUS_SYSTEMUI_SIMSTATUS = "SIMSTATUS";
    private static final String LAUNCH_CONTACTS = "launch_contacts";
    private static final String LOCALE_CHANGE = "android.intent.action.LOCALE_CHANGED";
    private static final String PREF_LAST_MANUALLY_SELECTED_TAB = "DialtactsActivity_last_manually_selected_tab";
    private static final int PREF_LAST_MANUALLY_SELECTED_TAB_DEFAULT = 0;
    private static final int TAB_INDEX_DIALER = 0;
    private static final String TAG = "DialerDefaultTabReceiver";
    private static final String TIMEZONE_CHANGE = "android.intent.action.TIMEZONE_CHANGED";
    private SharedPreferences mPrefs;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/DialerDefaultTabReceiver$checkMeProfileAccountTask.class */
    public class checkMeProfileAccountTask extends AsyncTask<Uri, Void, Void> {
        Context mContext;

        public checkMeProfileAccountTask(Context context) {
            this.mContext = context;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Void doInBackground(Uri... uriArr) {
            f.a(this.mContext);
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Void r4) {
            super.onPostExecute((checkMeProfileAccountTask) r4);
            this.mContext = null;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0043 -> B:9:0x0034). Please submit an issue!!! */
    private void executeAccountUpdate(Context context, int i) {
        while (true) {
            Log.d(TAG, "executeAccountUpdate");
            try {
                new checkMeProfileAccountTask(context).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Uri[0]);
                return;
            } catch (RejectedExecutionException e) {
                Log.d(TAG, e.toString());
                if (i > 0) {
                    try {
                        Thread.sleep(5000L);
                    } catch (InterruptedException e2) {
                        Log.d(TAG, e2.toString());
                    }
                    i--;
                    Log.d(TAG, "Retry executeAccountUpdate");
                } else {
                    return;
                }
            }
        }
    }

    int getSmartDialSyncPeference() {
        return a.a("ro.smartdial.upgrade").equals("upgrade") ? this.mPrefs.getInt(MainDialtactsActivity.KEY, 0) : 1;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action;
        if (intent != null && (action = intent.getAction()) != null) {
            if (action.equals(LOCALE_CHANGE)) {
                this.mPrefs = PreferenceManager.getDefaultSharedPreferences(context);
                if (this.mPrefs.getBoolean("pref_use_defalut", true)) {
                    Locale locale = context.getResources().getConfiguration().locale;
                    String locale2 = Locale.getDefault().toString();
                    Log.d(TAG, "LOCALE_CHANGED, current locale = " + locale2);
                    String a2 = TwelveKeyDialerFragment.a(context, locale2);
                    String a3 = TwelveKeyDialerFragment.a(a2);
                    if (!this.mPrefs.getString("pref_last_mode", a2).equals(a3)) {
                        this.mPrefs.edit().putString("pref_last_mode", a3).apply();
                        Log.d(TAG, "First sync , Start service");
                        Intent intent2 = new Intent(context, SmartDialFirstSyncService.class);
                        intent2.setAction("android.intent.action.ASUS_SMARTDIAL_FIRST_SYNC");
                        intent2.putExtra("source", "LOCALE_CHANGE");
                        intent2.putExtra("mode", a3);
                        intent2.putExtra("toast", false);
                        context.stopService(intent2);
                        context.startService(intent2);
                    }
                    d.C0033d.a();
                }
            } else if (action.equals(TIMEZONE_CHANGE)) {
                d.C0033d.a();
            } else if (!action.equals(ACTION_TO_ASUS_SYSTEMUI_SIMSTATUS) && action.equals(ACCOUNT_UPDATE)) {
                executeAccountUpdate(context, 3);
            }
        }
    }
}

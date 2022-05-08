package com.android.contacts.backupandrestore;

import android.app.AlarmManager;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.SharedPreferences;
import android.util.Log;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.asus.updatesdk.BuildConfig;
import java.util.Calendar;
/* loaded from: classes-dex2jar.jar:com/android/contacts/backupandrestore/AsusBackupService.class */
public class AsusBackupService extends IntentService {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f613a = false;

    /* renamed from: b  reason: collision with root package name */
    private SharedPreferences f614b;

    public AsusBackupService() {
        super("AsusBackupService");
        Log.d("AsusBackupService", "create AsusBackupService");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0246  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 600
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.backupandrestore.AsusBackupService.a(java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x028d A[Catch: IOException -> 0x01a6, TRY_ENTER, TRY_LEAVE, TryCatch #1 {IOException -> 0x01a6, blocks: (B:15:0x00b8, B:17:0x00bf, B:19:0x00c6, B:49:0x0190, B:55:0x019e, B:57:0x01a5, B:103:0x028d, B:21:0x00ed, B:23:0x00f5, B:25:0x00fc, B:27:0x0103, B:29:0x010c, B:31:0x011a, B:34:0x0135, B:36:0x013c, B:38:0x0145, B:41:0x015b, B:45:0x0166, B:47:0x0174, B:61:0x01c5, B:63:0x01d3, B:65:0x01ed, B:67:0x01f4, B:69:0x01fc, B:71:0x0202, B:73:0x020a, B:76:0x0217, B:80:0x0222, B:82:0x022c, B:84:0x0236, B:86:0x0243, B:88:0x024b, B:90:0x0255, B:92:0x025e, B:94:0x0265, B:96:0x026d, B:99:0x027c, B:106:0x0299), top: B:109:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:120:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 704
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.backupandrestore.AsusBackupService.b(java.lang.String):void");
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            long currentTimeMillis = System.currentTimeMillis();
            a(getFilesDir() + "/CallLog.clbu");
            b(getFilesDir() + "/Contacts.vcf");
            this.f614b = getSharedPreferences(a.f617a, 0);
            this.f614b.edit().putString(a.f618b, String.valueOf(currentTimeMillis)).commit();
            if (this.f614b.getString("CallLogisZero", BuildConfig.FLAVOR).equals("1") || this.f614b.getString("ContactsisZero", BuildConfig.FLAVOR).equals("1")) {
                Log.d("AsusBackupService", "Contact or CallLog is Zero");
                Calendar instance = Calendar.getInstance();
                this.f614b.edit().putInt("TryBackup", this.f614b.getInt("TryBackup", 0) + 1).commit();
                int i = 24;
                switch (this.f614b.getInt("TryBackup", 0)) {
                    case 1:
                        i = 2;
                        break;
                    case 2:
                        i = 4;
                        break;
                    case 3:
                        i = 8;
                        break;
                    case 4:
                        i = 12;
                        break;
                    case 5:
                        break;
                    default:
                        i = 24;
                        break;
                }
                instance.add(10, i);
                ((AlarmManager) getSystemService("alarm")).set(0, instance.getTimeInMillis(), PendingIntent.getBroadcast(this, 1, new Intent(this, AsusisRestoreReceiver.class), 1073741824));
                return;
            }
            this.f614b.edit().putInt("TryBackup", 0).commit();
            Log.d("AsusBackupService", "Contact or CallLog is not Zero");
            Calendar instance2 = Calendar.getInstance();
            instance2.add(10, 24);
            ((AlarmManager) getSystemService("alarm")).set(0, instance2.getTimeInMillis(), PendingIntent.getBroadcast(this, 1, new Intent(this, AsusisRestoreReceiver.class), 1073741824));
        }
    }
}

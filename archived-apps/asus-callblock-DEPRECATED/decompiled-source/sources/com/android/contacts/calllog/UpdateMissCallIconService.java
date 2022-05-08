package com.android.contacts.calllog;

import android.app.IntentService;
import android.content.ContentValues;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.cdn.CdnUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/UpdateMissCallIconService.class */
public class UpdateMissCallIconService extends IntentService {

    /* renamed from: b  reason: collision with root package name */
    private static final Uri f654b = Uri.parse("content://com.android.launcher2.asus.settings/badge");

    /* renamed from: a  reason: collision with root package name */
    private final String f655a = "UpdateMissCallIconService";
    private int c = -1;

    public UpdateMissCallIconService() {
        super("UpdateMissCallIconService");
        setIntentRedelivery(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x017f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(int r8) {
        /*
            Method dump skipped, instructions count: 632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.calllog.UpdateMissCallIconService.a(int):void");
    }

    private void a(int i, int i2) {
        if (this.c >= 1101406250 || PhoneCapabilityTester.IsUnbundled()) {
            Intent intent = new Intent("android.intent.action.BADGE_COUNT_UPDATE");
            intent.putExtra("badge_count_package_name", "com.asus.contacts");
            intent.putExtra("badge_count_class_name", CallUtil.CALL_ORIGIN_DIALTACTS);
            intent.putExtra("badge_count", i);
            intent.putExtra("badge_vip_count", i2);
            sendBroadcast(intent);
            Log.d("UpdateMissCallIconService", "sendBroadcast = " + intent + " MissedCalls = " + i + " vipCall = " + i2);
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(CdnUtils.NODE_PACKAGE, "com.asus.contacts");
        contentValues.put("class_name", CallUtil.CALL_ORIGIN_DIALTACTS);
        contentValues.put("count", Integer.valueOf(i));
        contentValues.put("vipcount", Integer.valueOf(i2));
        try {
            Log.d("UpdateMissCallIconService", "numberMissedCalls = " + i + " vip= " + i2 + " insert uri = " + getContentResolver().insert(f654b, contentValues));
        } catch (Exception e) {
            Log.e("UpdateMissCallIconService", e.toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r8v8, types: [java.lang.StringBuilder] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // android.app.IntentService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onHandleIntent(android.content.Intent r8) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.calllog.UpdateMissCallIconService.onHandleIntent(android.content.Intent):void");
    }
}

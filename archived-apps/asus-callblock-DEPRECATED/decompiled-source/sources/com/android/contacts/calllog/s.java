package com.android.contacts.calllog;

import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CallLog;
import com.android.contacts.CallDetailActivity;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/s.class */
public abstract class s {
    public static s a(final e eVar, final int i, final long j, final int i2) {
        return new s() { // from class: com.android.contacts.calllog.s.4
            @Override // com.android.contacts.calllog.s
            public final Intent a(Context context) {
                Intent intent;
                Cursor cursor = e.this.f411a;
                cursor.moveToPosition(i);
                if (l.a(cursor)) {
                    intent = null;
                } else {
                    Intent intent2 = new Intent(context, CallDetailActivity.class);
                    String string = cursor.getString(6);
                    if (string != null) {
                        intent2.putExtra("EXTRA_VOICEMAIL_URI", Uri.parse(string));
                    }
                    intent2.putExtra("EXTRA_VOICEMAIL_START_PLAYBACK", false);
                    intent2.putExtra("CALL_LOG_NAME", cursor.getString(8));
                    intent2.putExtra("CALL_LOG_NUMBER", cursor.getString(1) + (CompatUtils.isNCompatible() ? cursor.getString(l.k) : BuildConfig.FLAVOR));
                    intent2.putExtra("FROM_WHICH_TAB", "FROM_CALLLOG_TAB");
                    intent2.putExtra("CALL_LOG_GROUP_SIZE", i2);
                    intent2.putExtra("com.android.phone.FromAsusDialer", true);
                    if (i2 > 1) {
                        long[] jArr = new long[i2];
                        for (int i3 = 0; i3 < i2; i3++) {
                            jArr[i3] = cursor.getLong(0);
                            cursor.moveToNext();
                        }
                        intent2.putExtra("EXTRA_CALL_LOG_IDS", jArr);
                    } else if (PhoneCapabilityTester.IsUnbundled()) {
                        intent2.setData(ContentUris.withAppendedId(CallLog.Calls.CONTENT_URI, j));
                    } else {
                        intent2.setData(ContentUris.withAppendedId(CallLog.Calls.CONTENT_URI_WITH_VOICEMAIL, j));
                    }
                    intent = intent2;
                }
                return intent;
            }
        };
    }

    public abstract Intent a(Context context);
}

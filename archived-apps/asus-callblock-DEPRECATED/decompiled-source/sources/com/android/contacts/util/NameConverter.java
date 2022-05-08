package com.android.contacts.util;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import com.android.contacts.util.CoverUtils;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/NameConverter.class */
public class NameConverter {
    public static final String[] STRUCTURED_NAME_FIELDS = {"data4", CoverUtils.CoverData.COVER_TYPE, "data5", CoverUtils.CoverData.USER_SET, "data6"};

    private static void appendQueryParameter(Uri.Builder builder, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            builder.appendQueryParameter(str, str2);
        }
    }

    public static ContentValues displayNameToStructuredName(Context context, String str, ContentValues contentValues) {
        ContentValues contentValues2 = contentValues;
        if (contentValues == null) {
            contentValues2 = new ContentValues();
        }
        Map<String, String> displayNameToStructuredName = displayNameToStructuredName(context, str);
        for (String str2 : displayNameToStructuredName.keySet()) {
            contentValues2.put(str2, displayNameToStructuredName.get(str2));
        }
        return contentValues2;
    }

    public static Map<String, String> displayNameToStructuredName(Context context, String str) {
        TreeMap treeMap = new TreeMap();
        Uri.Builder appendPath = ContactsContract.AUTHORITY_URI.buildUpon().appendPath("complete_name");
        appendQueryParameter(appendPath, CoverUtils.CoverData.COVER_URI, str);
        Cursor query = context.getContentResolver().query(appendPath.build(), STRUCTURED_NAME_FIELDS, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    for (int i = 0; i < STRUCTURED_NAME_FIELDS.length; i++) {
                        treeMap.put(STRUCTURED_NAME_FIELDS[i], query.getString(i));
                    }
                }
            } finally {
                if (query != null) {
                    query.close();
                }
            }
        }
        return treeMap;
    }

    private static String fetchDisplayName(Context context, Uri uri) {
        String str = null;
        Cursor query = context.getContentResolver().query(uri, new String[]{CoverUtils.CoverData.COVER_URI}, null, null, null);
        try {
            if (query.moveToFirst()) {
                str = query.getString(0);
            }
            return str;
        } finally {
            query.close();
        }
    }

    public static String structuredNameToDisplayName(Context context, ContentValues contentValues) {
        String[] strArr;
        Uri.Builder appendPath = ContactsContract.AUTHORITY_URI.buildUpon().appendPath("complete_name");
        for (String str : STRUCTURED_NAME_FIELDS) {
            if (contentValues.containsKey(str)) {
                appendQueryParameter(appendPath, str, contentValues.getAsString(str));
            }
        }
        return fetchDisplayName(context, appendPath.build());
    }

    public static String structuredNameToDisplayName(Context context, Map<String, String> map) {
        String[] strArr;
        Uri.Builder appendPath = ContactsContract.AUTHORITY_URI.buildUpon().appendPath("complete_name");
        for (String str : STRUCTURED_NAME_FIELDS) {
            if (map.containsKey(str)) {
                appendQueryParameter(appendPath, str, map.get(str));
            }
        }
        return fetchDisplayName(context, appendPath.build());
    }
}

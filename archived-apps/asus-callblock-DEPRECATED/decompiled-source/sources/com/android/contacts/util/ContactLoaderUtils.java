package com.android.contacts.util;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.net.Uri;
import android.provider.ContactsContract;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/ContactLoaderUtils.class */
public final class ContactLoaderUtils {
    private ContactLoaderUtils() {
    }

    public static Uri ensureIsContactUri(ContentResolver contentResolver, Uri uri) {
        if (uri == null) {
            throw new IllegalArgumentException("uri must not be null");
        }
        String authority = uri.getAuthority();
        if ("com.android.contacts".equals(authority)) {
            String type = contentResolver.getType(uri);
            if (!"vnd.android.cursor.item/contact".equals(type)) {
                if ("vnd.android.cursor.item/raw_contact".equals(type)) {
                    uri = ContactsContract.RawContacts.getContactLookupUri(contentResolver, ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, ContentUris.parseId(uri)));
                } else {
                    Log.d("ContactLoaderUtils", "type = " + type);
                    Log.d("ContactLoaderUtils", "uri format is unknown: " + (uri != null ? uri.toString() : "null"));
                    uri = null;
                }
            }
        } else if ("contacts".equals(authority)) {
            uri = ContactsContract.RawContacts.getContactLookupUri(contentResolver, ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, ContentUris.parseId(uri)));
        } else {
            Log.d("ContactLoaderUtils", "uri authority is unknown: " + (uri != null ? uri.toString() : "null"));
            uri = null;
        }
        return uri;
    }

    public static boolean ensureIsContactUriFirst(Uri uri) {
        boolean z;
        if (uri == null) {
            z = false;
        } else {
            String authority = uri.getAuthority();
            z = true;
            if (!"com.android.contacts".equals(authority)) {
                z = true;
                if (!"contacts".equals(authority)) {
                    Log.d("ContactLoaderUtils", "uri authority is unknown: " + (uri != null ? uri.toString() : "null"));
                    z = false;
                }
            }
        }
        return z;
    }
}

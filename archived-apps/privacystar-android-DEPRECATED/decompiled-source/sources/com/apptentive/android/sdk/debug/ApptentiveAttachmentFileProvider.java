package com.apptentive.android.sdk.debug;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.apptentive.android.sdk.ApptentiveLog;
import java.io.File;
import java.io.FileNotFoundException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/debug/ApptentiveAttachmentFileProvider.class */
public class ApptentiveAttachmentFileProvider extends ContentProvider {
    private static final String CLASS_NAME = "ApptentiveAttachmentFileProvider";
    private UriMatcher uriMatcher;

    public static String getAuthority(Context context) {
        return context.getApplicationContext().getPackageName() + "." + CLASS_NAME;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.uriMatcher = new UriMatcher(-1);
        this.uriMatcher.addURI(getAuthority(getContext()), "*", 1);
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        String str2 = CLASS_NAME + " - openFile";
        Log.v(str2, "Called with uri: '" + uri + "'." + uri.getLastPathSegment());
        if (this.uriMatcher.match(uri) != 1) {
            Log.v(str2, "Unsupported uri: '" + uri + "'.");
            throw new FileNotFoundException("Unsupported uri: " + uri.toString());
        }
        return ParcelFileDescriptor.open(new File(ApptentiveLog.getLogsDirectory(getContext()) + File.separator + uri.getLastPathSegment()), 268435456);
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}

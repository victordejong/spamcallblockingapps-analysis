package com.android.vcard;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.OperationApplicationException;
import android.net.Uri;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntryCommitter.class */
public class VCardEntryCommitter implements VCardEntryHandler {
    public static String LOG_TAG = "vCard";
    private final ContentResolver mContentResolver;
    private int mCounter;
    private final ArrayList<Uri> mCreatedUris = new ArrayList<>();
    private ArrayList<ContentProviderOperation> mOperationList;
    private long mTimeToCommit;

    public VCardEntryCommitter(ContentResolver contentResolver) {
        this.mContentResolver = contentResolver;
    }

    private Uri pushIntoContentResolver(ArrayList<ContentProviderOperation> arrayList) {
        Uri uri;
        try {
            ContentProviderResult[] applyBatch = this.mContentResolver.applyBatch("com.android.contacts", arrayList);
            uri = null;
            if (applyBatch != null) {
                uri = null;
                if (applyBatch.length != 0) {
                    uri = applyBatch[0] == null ? null : applyBatch[0].uri;
                }
            }
        } catch (OperationApplicationException e) {
            Log.e(LOG_TAG, String.format("%s: %s", e.toString(), e.getMessage()));
            uri = null;
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, String.format("%s: %s", e2.toString(), e2.getMessage()));
            uri = null;
        }
        return uri;
    }

    public ArrayList<Uri> getCreatedUris() {
        return this.mCreatedUris;
    }

    @Override // com.android.vcard.VCardEntryHandler
    public void onEnd() {
        if (this.mOperationList != null) {
            this.mCreatedUris.add(pushIntoContentResolver(this.mOperationList));
        }
        if (VCardConfig.showPerformanceLog()) {
            Log.d(LOG_TAG, String.format("time to commit entries: %d ms", Long.valueOf(this.mTimeToCommit)));
        }
    }

    @Override // com.android.vcard.VCardEntryHandler
    public void onEntryCreated(VCardEntry vCardEntry) {
        long currentTimeMillis = System.currentTimeMillis();
        this.mOperationList = vCardEntry.constructInsertOperations(this.mContentResolver, this.mOperationList);
        this.mCounter++;
        if (this.mCounter >= 20) {
            this.mCreatedUris.add(pushIntoContentResolver(this.mOperationList));
            this.mCounter = 0;
            this.mOperationList = null;
        }
        this.mTimeToCommit = (System.currentTimeMillis() - currentTimeMillis) + this.mTimeToCommit;
    }

    @Override // com.android.vcard.VCardEntryHandler
    public void onStart() {
    }
}

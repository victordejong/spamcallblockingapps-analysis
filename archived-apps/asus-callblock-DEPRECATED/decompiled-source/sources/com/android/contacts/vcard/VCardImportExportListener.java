package com.android.contacts.vcard;

import android.net.Uri;
import com.android.vcard.VCardEntry;
/* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/VCardImportExportListener.class */
interface VCardImportExportListener {
    void onCancelRequest(CancelRequest cancelRequest, int i);

    void onComplete();

    void onExportFailed(ExportRequest exportRequest);

    void onExportProcessed(ExportRequest exportRequest, int i);

    void onImportCanceled(ImportRequest importRequest, int i);

    void onImportFailed(ImportRequest importRequest);

    void onImportFinished(ImportRequest importRequest, int i, Uri uri);

    void onImportParsed(ImportRequest importRequest, int i, VCardEntry vCardEntry, int i2, int i3);

    void onImportProcessed(ImportRequest importRequest, int i, int i2);
}

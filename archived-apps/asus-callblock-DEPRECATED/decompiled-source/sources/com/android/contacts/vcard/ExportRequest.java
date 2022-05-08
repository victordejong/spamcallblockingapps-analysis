package com.android.contacts.vcard;

import android.net.Uri;
import com.android.contacts.model.account.AccountWithDataSet;
/* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/ExportRequest.class */
public class ExportRequest {
    public final AccountWithDataSet accountFrom;
    public final Uri destUri;
    public final String exportType;

    public ExportRequest(Uri uri) {
        this(uri, null);
    }

    public ExportRequest(Uri uri, String str) {
        this(uri, str, null);
    }

    public ExportRequest(Uri uri, String str, AccountWithDataSet accountWithDataSet) {
        this.destUri = uri;
        this.accountFrom = accountWithDataSet;
        this.exportType = str;
    }
}

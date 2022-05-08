package com.android.contacts;

import android.content.AsyncQueryHandler;
import android.database.Cursor;
import android.provider.VoicemailContract;
import android.util.Log;
import com.android.a.a.a;
import com.android.contacts.k.b;
/* loaded from: classes-dex2jar.jar:com/android/contacts/h.class */
public final class h extends AsyncQueryHandler {

    /* renamed from: a  reason: collision with root package name */
    private final String[] f1427a = {"source_package", "has_content"};

    /* renamed from: b  reason: collision with root package name */
    private final CallDetailActivity f1428b;

    public h(CallDetailActivity callDetailActivity) {
        super(callDetailActivity.getContentResolver());
        this.f1428b = callDetailActivity;
    }

    @Override // android.content.AsyncQueryHandler
    protected final void onQueryComplete(int i, Object obj, Cursor cursor) {
        boolean z;
        boolean z2 = true;
        synchronized (this) {
            if (i == 101) {
                if (cursor == null || !cursor.moveToFirst()) {
                    Log.e("CallDetail", "Cursor not valid, could not move to first");
                    z = false;
                } else {
                    z = true;
                }
                if (z) {
                    if (cursor.getInt(1) != 0) {
                        z2 = false;
                    }
                    if (z2) {
                        startQuery(102, null, VoicemailContract.Status.buildSourceUri(cursor.getString(0)), b.f1582a, null, null, null);
                    }
                }
                this.f1428b.a((Cursor) null);
            } else if (i == 102) {
                this.f1428b.a(cursor);
            } else {
                Log.w("CallDetail", "Unknown query completed: ignoring: " + i);
            }
            a.a(cursor);
        }
    }
}

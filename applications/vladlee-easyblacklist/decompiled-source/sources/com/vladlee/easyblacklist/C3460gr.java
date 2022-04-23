package com.vladlee.easyblacklist;

import android.database.Cursor;
import android.view.ActionMode;
import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.Toolbar;
import com.vladlee.easyblacklist.C3374dt;
/* renamed from: com.vladlee.easyblacklist.gr */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/gr.class */
final class C3460gr implements AdapterView.OnItemLongClickListener {

    /* renamed from: a */
    final /* synthetic */ WhitelistActivity f19642a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3460gr(WhitelistActivity whitelistActivity) {
        this.f19642a = whitelistActivity;
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        ActionMode actionMode;
        ActionMode.Callback callback;
        actionMode = this.f19642a.f19286m;
        if (actionMode != null) {
            return false;
        }
        this.f19642a.f19285l.m119d();
        this.f19642a.f19285l.m121a(j, true);
        Cursor cursor = this.f19642a.f19285l.getCursor();
        cursor.moveToPosition(i);
        this.f19642a.f19285l.m122a(j, new C3374dt.C3375a(cursor.getLong(cursor.getColumnIndex("contact_id")), cursor.getString(cursor.getColumnIndex("phone"))));
        WhitelistActivity whitelistActivity = this.f19642a;
        callback = this.f19642a.f19287n;
        whitelistActivity.f19286m = ((Toolbar) whitelistActivity.findViewById(2131296622)).startActionMode(callback);
        this.f19642a.f19285l.notifyDataSetChanged();
        return true;
    }
}

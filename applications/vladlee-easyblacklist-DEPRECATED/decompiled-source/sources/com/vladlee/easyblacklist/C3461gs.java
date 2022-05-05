package com.vladlee.easyblacklist;

import android.database.Cursor;
import android.view.ActionMode;
import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;
import androidx.appcompat.app.DialogInterfaceC0308m;
import com.vladlee.easyblacklist.C3374dt;
import com.vladlee.easyblacklist.WhitelistActivity;
/* renamed from: com.vladlee.easyblacklist.gs */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/gs.class */
final class C3461gs implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ WhitelistActivity f19643a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3461gs(WhitelistActivity whitelistActivity) {
        this.f19643a = whitelistActivity;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ActionMode actionMode;
        ActionMode actionMode2;
        actionMode = this.f19643a.f19286m;
        if (actionMode == null) {
            String string = this.f19643a.getString(2131624042);
            DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(this.f19643a);
            aVar.m9797a(((TextView) view.findViewById(2131296475)).getText());
            aVar.m9794a(new CharSequence[]{string}, new WhitelistActivity.DialogInterface$OnClickListenerC3257a(i));
            aVar.m9792b().show();
            return;
        }
        this.f19643a.f19285l.m121a(j, !this.f19643a.f19285l.m120b(j));
        Cursor cursor = this.f19643a.f19285l.getCursor();
        cursor.moveToPosition(i);
        this.f19643a.f19285l.m122a(j, new C3374dt.C3375a(cursor.getLong(cursor.getColumnIndex("contact_id")), cursor.getString(cursor.getColumnIndex("phone"))));
        this.f19643a.f19285l.notifyDataSetChanged();
        if (!this.f19643a.f19285l.m117f()) {
            actionMode2 = this.f19643a.f19286m;
            actionMode2.finish();
        }
    }
}

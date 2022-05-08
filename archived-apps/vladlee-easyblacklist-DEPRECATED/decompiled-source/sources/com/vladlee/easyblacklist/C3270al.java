package com.vladlee.easyblacklist;

import android.content.Context;
import android.database.Cursor;
import android.view.ActionMode;
import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;
import androidx.appcompat.app.DialogInterfaceC0308m;
import com.vladlee.easyblacklist.C3468k;
import com.vladlee.easyblacklist.SharedPreferences$OnSharedPreferenceChangeListenerC3472l;
/* renamed from: com.vladlee.easyblacklist.al */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/al.class */
final class C3270al implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ Context f19310a;

    /* renamed from: b */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19311b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3270al(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar, Context context) {
        this.f19311b = lVar;
        this.f19310a = context;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ActionMode actionMode;
        ActionMode actionMode2;
        actionMode = this.f19311b.f19669d;
        if (actionMode != null) {
            this.f19311b.f19668c.m121a(j, !this.f19311b.f19668c.m120b(j));
            Cursor cursor = this.f19311b.f19668c.getCursor();
            cursor.moveToPosition(i);
            this.f19311b.f19668c.m122a(j, new C3468k.C3471c(cursor.getLong(cursor.getColumnIndex("contact_id")), cursor.getString(cursor.getColumnIndex("phone"))));
            this.f19311b.f19668c.notifyDataSetChanged();
            if (!this.f19311b.f19668c.m117f()) {
                actionMode2 = this.f19311b.f19669d;
                actionMode2.finish();
            }
        } else if (i > 0 || view.findViewById(2131296475) != null) {
            String string = this.f19311b.getString(2131624042);
            DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(this.f19310a);
            TextView textView = (TextView) view.findViewById(2131296475);
            aVar.m9797a("\u200e" + ((Object) textView.getText()));
            aVar.m9794a(new CharSequence[]{string}, new SharedPreferences$OnSharedPreferenceChangeListenerC3472l.DialogInterface$OnClickListenerC3473a(i));
            aVar.m9792b().show();
        }
    }
}

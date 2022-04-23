package com.vladlee.easyblacklist;

import android.database.Cursor;
import android.view.ActionMode;
import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.Toolbar;
import com.vladlee.easyblacklist.C3468k;
/* renamed from: com.vladlee.easyblacklist.ak */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ak.class */
final class C3269ak implements AdapterView.OnItemLongClickListener {

    /* renamed from: a */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19309a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3269ak(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar) {
        this.f19309a = lVar;
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        ActionMode actionMode;
        ActionMode.Callback callback;
        actionMode = this.f19309a.f19669d;
        if (actionMode != null) {
            return false;
        }
        this.f19309a.f19668c.m119d();
        this.f19309a.f19668c.m121a(j, true);
        Cursor cursor = this.f19309a.f19668c.getCursor();
        cursor.moveToPosition(i);
        this.f19309a.f19668c.m122a(j, new C3468k.C3471c(cursor.getLong(cursor.getColumnIndex("contact_id")), cursor.getString(cursor.getColumnIndex("phone"))));
        SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar = this.f19309a;
        callback = this.f19309a.f19670e;
        lVar.f19669d = ((Toolbar) lVar.getActivity().findViewById(2131296622)).startActionMode(callback);
        this.f19309a.f19668c.notifyDataSetChanged();
        return true;
    }
}

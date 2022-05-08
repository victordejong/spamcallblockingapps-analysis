package com.vladlee.easyblacklist;

import android.content.Context;
import android.database.Cursor;
import android.view.ActionMode;
import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.Toolbar;
/* renamed from: com.vladlee.easyblacklist.gd */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/gd.class */
final class C3446gd implements AdapterView.OnItemLongClickListener {

    /* renamed from: a */
    final /* synthetic */ Context f19623a;

    /* renamed from: b */
    final /* synthetic */ C3439fx f19624b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3446gd(C3439fx fxVar, Context context) {
        this.f19624b = fxVar;
        this.f19623a = context;
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        ActionMode actionMode;
        C3314bw bwVar;
        C3314bw bwVar2;
        C3314bw bwVar3;
        C3314bw bwVar4;
        ActionMode.Callback callback;
        C3314bw bwVar5;
        actionMode = this.f19624b.f19613c;
        if (actionMode != null) {
            return false;
        }
        bwVar = this.f19624b.f19612b;
        bwVar.m119d();
        bwVar2 = this.f19624b.f19612b;
        bwVar2.m121a(j, true);
        bwVar3 = this.f19624b.f19612b;
        Cursor cursor = bwVar3.getCursor();
        cursor.moveToPosition(i);
        String string = cursor.getString(cursor.getColumnIndex("recipient_ids"));
        bwVar4 = this.f19624b.f19612b;
        bwVar4.m122a(j, C3318by.m171g(this.f19623a, string));
        C3439fx fxVar = this.f19624b;
        callback = this.f19624b.f19614d;
        fxVar.f19613c = ((Toolbar) fxVar.getActivity().findViewById(2131296622)).startActionMode(callback);
        bwVar5 = this.f19624b.f19612b;
        bwVar5.notifyDataSetChanged();
        return true;
    }
}

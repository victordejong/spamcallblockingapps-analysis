package com.vladlee.easyblacklist;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.view.ActionMode;
import android.view.View;
import android.widget.AdapterView;
/* renamed from: com.vladlee.easyblacklist.ge */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ge.class */
final class C3447ge implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ Context f19625a;

    /* renamed from: b */
    final /* synthetic */ C3439fx f19626b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3447ge(C3439fx fxVar, Context context) {
        this.f19626b = fxVar;
        this.f19625a = context;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ActionMode actionMode;
        C3314bw bwVar;
        C3314bw bwVar2;
        C3314bw bwVar3;
        C3314bw bwVar4;
        C3314bw bwVar5;
        C3314bw bwVar6;
        C3314bw bwVar7;
        ActionMode actionMode2;
        ActionMode actionMode3;
        ActionMode actionMode4;
        ActionMode actionMode5;
        ActionMode actionMode6;
        actionMode = this.f19626b.f19613c;
        if (actionMode == null) {
            C3313bv d = C3318by.m180d(this.f19625a, j);
            Intent intent = new Intent(this.f19625a, SmsChatActivity.class);
            intent.putExtra(C3356db.f19472a, d.f19406b);
            intent.putExtra(C3356db.f19474c, d.f19405a);
            this.f19626b.startActivity(intent);
            return;
        }
        bwVar = this.f19626b.f19612b;
        bwVar2 = this.f19626b.f19612b;
        bwVar.m121a(j, !bwVar2.m120b(j));
        bwVar3 = this.f19626b.f19612b;
        Cursor cursor = bwVar3.getCursor();
        cursor.moveToPosition(i);
        String string = cursor.getString(cursor.getColumnIndex("recipient_ids"));
        bwVar4 = this.f19626b.f19612b;
        bwVar4.m122a(j, C3318by.m171g(this.f19625a, string));
        bwVar5 = this.f19626b.f19612b;
        bwVar5.notifyDataSetChanged();
        bwVar6 = this.f19626b.f19612b;
        if (!bwVar6.m117f()) {
            actionMode6 = this.f19626b.f19613c;
            actionMode6.finish();
            return;
        }
        bwVar7 = this.f19626b.f19612b;
        if (bwVar7.m118e()) {
            actionMode4 = this.f19626b.f19613c;
            if (!actionMode4.getMenu().findItem(2131296296).isVisible()) {
                actionMode5 = this.f19626b.f19613c;
                actionMode5.invalidate();
                return;
            }
            return;
        }
        actionMode2 = this.f19626b.f19613c;
        if (actionMode2.getMenu().findItem(2131296296).isVisible()) {
            actionMode3 = this.f19626b.f19613c;
            actionMode3.invalidate();
        }
    }
}

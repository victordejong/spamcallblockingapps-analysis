package com.vladlee.easyblacklist;

import android.view.ActionMode;
import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.Toolbar;
/* renamed from: com.vladlee.easyblacklist.ba */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ba.class */
final class C3289ba implements AdapterView.OnItemLongClickListener {

    /* renamed from: a */
    final /* synthetic */ C3284aw f19354a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3289ba(C3284aw awVar) {
        this.f19354a = awVar;
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        ActionMode actionMode;
        C3281av avVar;
        C3281av avVar2;
        ActionMode.Callback callback;
        C3281av avVar3;
        actionMode = this.f19354a.f19347c;
        if (actionMode != null) {
            return false;
        }
        avVar = this.f19354a.f19345a;
        avVar.m119d();
        avVar2 = this.f19354a.f19345a;
        avVar2.m121a(j, true);
        C3284aw awVar = this.f19354a;
        callback = this.f19354a.f19348d;
        awVar.f19347c = ((Toolbar) awVar.getActivity().findViewById(2131296622)).startActionMode(callback);
        avVar3 = this.f19354a.f19345a;
        avVar3.notifyDataSetChanged();
        return true;
    }
}

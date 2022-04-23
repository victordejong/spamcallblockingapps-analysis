package com.vladlee.easyblacklist;

import android.view.ActionMode;
import android.view.View;
import android.widget.AdapterView;
/* renamed from: com.vladlee.easyblacklist.bb */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bb.class */
final class C3290bb implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ C3284aw f19355a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3290bb(C3284aw awVar) {
        this.f19355a = awVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ActionMode actionMode;
        C3281av avVar;
        C3281av avVar2;
        C3281av avVar3;
        C3281av avVar4;
        ActionMode actionMode2;
        actionMode = this.f19355a.f19347c;
        if (actionMode == null) {
            C3284aw awVar = this.f19355a;
            C3284aw.m257a(awVar, awVar.getContext(), i);
            return;
        }
        avVar = this.f19355a.f19345a;
        avVar2 = this.f19355a.f19345a;
        avVar.m121a(j, !avVar2.m120b(j));
        avVar3 = this.f19355a.f19345a;
        avVar3.notifyDataSetChanged();
        avVar4 = this.f19355a.f19345a;
        if (!avVar4.m117f()) {
            actionMode2 = this.f19355a.f19347c;
            actionMode2.finish();
        }
    }
}

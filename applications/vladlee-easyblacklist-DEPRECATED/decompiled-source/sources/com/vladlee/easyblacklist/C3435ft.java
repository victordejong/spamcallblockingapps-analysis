package com.vladlee.easyblacklist;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.view.AbstractC0343b;
/* renamed from: com.vladlee.easyblacklist.ft */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ft.class */
final class C3435ft implements AdapterView.OnItemLongClickListener {

    /* renamed from: a */
    final /* synthetic */ SmsChatActivity f19607a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3435ft(SmsChatActivity smsChatActivity) {
        this.f19607a = smsChatActivity;
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        AbstractC0343b bVar;
        C3376du duVar;
        C3376du duVar2;
        AbstractC0343b.AbstractC0344a aVar;
        C3376du duVar3;
        bVar = this.f19607a.f19280t;
        if (bVar != null) {
            return false;
        }
        duVar = this.f19607a.f19278r;
        duVar.m113b();
        duVar2 = this.f19607a.f19278r;
        duVar2.m114a(j, true);
        SmsChatActivity smsChatActivity = this.f19607a;
        aVar = smsChatActivity.f19281u;
        smsChatActivity.f19280t = smsChatActivity.m9928a(aVar);
        duVar3 = this.f19607a.f19278r;
        duVar3.notifyDataSetChanged();
        this.f19607a.f19279s = System.currentTimeMillis();
        return true;
    }
}

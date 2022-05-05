package com.vladlee.easyblacklist;

import android.view.View;
import android.widget.AdapterView;
/* renamed from: com.vladlee.easyblacklist.fu */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fu.class */
final class C3436fu implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ SmsChatActivity f19608a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3436fu(SmsChatActivity smsChatActivity) {
        this.f19608a = smsChatActivity;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f19608a.m287a(j);
    }
}

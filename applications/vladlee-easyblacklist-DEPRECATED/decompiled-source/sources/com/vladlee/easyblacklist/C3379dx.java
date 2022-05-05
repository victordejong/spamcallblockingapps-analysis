package com.vladlee.easyblacklist;

import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;
import androidx.appcompat.app.DialogInterfaceC0308m;
import com.vladlee.easyblacklist.MutelistActivity;
/* renamed from: com.vladlee.easyblacklist.dx */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/dx.class */
final class C3379dx implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ MutelistActivity f19529a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3379dx(MutelistActivity mutelistActivity) {
        this.f19529a = mutelistActivity;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        String string = this.f19529a.getString(2131624042);
        DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(this.f19529a);
        aVar.m9797a(((TextView) view.findViewById(2131296475)).getText());
        aVar.m9794a(new CharSequence[]{string}, new MutelistActivity.DialogInterface$OnClickListenerC3256a(i));
        aVar.m9792b().show();
    }
}

package com.vladlee.easyblacklist;

import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.AbstractC0343b;
/* renamed from: com.vladlee.easyblacklist.fs */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fs.class */
final class View$OnLongClickListenerC3434fs implements View.OnLongClickListener {

    /* renamed from: a */
    final /* synthetic */ SmsChatActivity f19606a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnLongClickListenerC3434fs(SmsChatActivity smsChatActivity) {
        this.f19606a = smsChatActivity;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        AbstractC0343b bVar;
        bVar = this.f19606a.f19280t;
        if (bVar != null) {
            return false;
        }
        ((ViewGroup) view.getParent()).performLongClick();
        return true;
    }
}

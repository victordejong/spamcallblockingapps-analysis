package com.vladlee.easyblacklist;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.app.DialogInterfaceC0308m;
import androidx.fragment.app.FragmentActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.ax */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ax.class */
public final class ActionMode$CallbackC3285ax implements ActionMode.Callback {

    /* renamed from: a */
    final /* synthetic */ C3284aw f19349a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActionMode$CallbackC3285ax(C3284aw awVar) {
        this.f19349a = awVar;
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        C3281av avVar;
        int i;
        C3284aw awVar;
        FragmentActivity activity = this.f19349a.getActivity();
        if (menuItem.getItemId() != 2131296309) {
            return false;
        }
        avVar = this.f19349a.f19345a;
        if (avVar.m118e()) {
            awVar = this.f19349a;
            i = 2131624050;
        } else {
            awVar = this.f19349a;
            i = 2131624051;
        }
        String string = awVar.getString(i);
        DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(activity);
        aVar.m9797a(string);
        aVar.m9803a(new DialogInterface$OnClickListenerC3286ay(this, actionMode));
        aVar.m9790b(new DialogInterface$OnClickListenerC3287az(this));
        aVar.m9792b().show();
        return true;
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        actionMode.getMenuInflater().inflate(2131558403, menu);
        return true;
    }

    @Override // android.view.ActionMode.Callback
    public final void onDestroyActionMode(ActionMode actionMode) {
        C3281av avVar;
        C3281av avVar2;
        this.f19349a.f19347c = null;
        avVar = this.f19349a.f19345a;
        avVar.m119d();
        avVar2 = this.f19349a.f19345a;
        avVar2.notifyDataSetChanged();
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return false;
    }
}

package com.vladlee.easyblacklist;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.app.DialogInterfaceC0308m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.go */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/go.class */
public final class ActionMode$CallbackC3457go implements ActionMode.Callback {

    /* renamed from: a */
    final /* synthetic */ WhitelistActivity f19638a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActionMode$CallbackC3457go(WhitelistActivity whitelistActivity) {
        this.f19638a = whitelistActivity;
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        int i;
        WhitelistActivity whitelistActivity;
        if (menuItem.getItemId() != 2131296309) {
            return false;
        }
        if (this.f19638a.f19285l.m118e()) {
            whitelistActivity = this.f19638a;
            i = 2131624048;
        } else {
            whitelistActivity = this.f19638a;
            i = 2131624049;
        }
        String string = whitelistActivity.getString(i);
        DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(this.f19638a);
        aVar.m9797a(string);
        aVar.m9803a(new DialogInterface$OnClickListenerC3458gp(this, actionMode));
        aVar.m9790b(new DialogInterface$OnClickListenerC3459gq(this));
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
        this.f19638a.f19286m = null;
        this.f19638a.f19285l.m119d();
        this.f19638a.f19285l.notifyDataSetChanged();
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return false;
    }
}

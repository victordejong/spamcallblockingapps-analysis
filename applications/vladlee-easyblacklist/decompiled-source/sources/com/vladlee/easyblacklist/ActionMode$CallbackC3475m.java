package com.vladlee.easyblacklist;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.app.DialogInterfaceC0308m;
import androidx.fragment.app.FragmentActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.m */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/m.class */
public final class ActionMode$CallbackC3475m implements ActionMode.Callback {

    /* renamed from: a */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19674a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActionMode$CallbackC3475m(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar) {
        this.f19674a = lVar;
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        int i;
        SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar;
        FragmentActivity activity = this.f19674a.getActivity();
        if (menuItem.getItemId() != 2131296309) {
            return false;
        }
        if (this.f19674a.f19668c.m118e()) {
            lVar = this.f19674a;
            i = 2131624048;
        } else {
            lVar = this.f19674a;
            i = 2131624049;
        }
        String string = lVar.getString(i);
        DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(activity);
        aVar.m9797a(string);
        aVar.m9803a(new DialogInterface$OnClickListenerC3476n(this, actionMode));
        aVar.m9790b(new DialogInterface$OnClickListenerC3477o(this));
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
        this.f19674a.f19669d = null;
        this.f19674a.f19668c.m119d();
        this.f19674a.f19668c.notifyDataSetChanged();
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return false;
    }
}

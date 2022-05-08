package com.vladlee.easyblacklist;

import android.content.Intent;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.app.DialogInterfaceC0308m;
import androidx.fragment.app.FragmentActivity;
/* renamed from: com.vladlee.easyblacklist.fy */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fy.class */
final class ActionMode$CallbackC3440fy implements ActionMode.Callback {

    /* renamed from: a */
    final /* synthetic */ C3439fx f19615a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActionMode$CallbackC3440fy(C3439fx fxVar) {
        this.f19615a = fxVar;
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        int i;
        C3439fx fxVar;
        int i2;
        C3439fx fxVar2;
        FragmentActivity activity = this.f19615a.getActivity();
        int itemId = menuItem.getItemId();
        if (itemId == 2131296296) {
            String str = (String) C3439fx.m47a(this.f19615a).m123a(C3439fx.m47a(this.f19615a).m116g());
            Intent intent = new Intent("android.intent.action.INSERT_OR_EDIT");
            intent.setType("vnd.android.cursor.item/contact");
            intent.putExtra("phone", str);
            this.f19615a.startActivity(intent);
            return true;
        } else if (itemId == 2131296304) {
            if (C3439fx.m47a(this.f19615a).m118e()) {
                fxVar = this.f19615a;
                i = 2131623984;
            } else {
                fxVar = this.f19615a;
                i = 2131623985;
            }
            String string = fxVar.getString(i);
            DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(activity);
            aVar.m9797a(string);
            aVar.m9803a(new DialogInterface$OnClickListenerC3444gb(this, actionMode));
            aVar.m9790b(new DialogInterface$OnClickListenerC3445gc(this));
            aVar.m9792b().show();
            return true;
        } else if (itemId != 2131296309) {
            return false;
        } else {
            if (C3439fx.m47a(this.f19615a).m118e()) {
                fxVar2 = this.f19615a;
                i2 = 2131624044;
            } else {
                fxVar2 = this.f19615a;
                i2 = 2131624045;
            }
            String string2 = fxVar2.getString(i2);
            DialogInterfaceC0308m.C0309a aVar2 = new DialogInterfaceC0308m.C0309a(activity);
            aVar2.m9797a(string2);
            aVar2.m9803a(new DialogInterface$OnClickListenerC3441fz(this, actionMode));
            aVar2.m9790b(new DialogInterface$OnClickListenerC3443ga(this));
            aVar2.m9792b().show();
            return true;
        }
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        actionMode.getMenuInflater().inflate(2131558405, menu);
        return true;
    }

    @Override // android.view.ActionMode.Callback
    public final void onDestroyActionMode(ActionMode actionMode) {
        C3439fx.m46a(this.f19615a, (ActionMode) null);
        C3439fx.m47a(this.f19615a).m119d();
        C3439fx.m47a(this.f19615a).notifyDataSetChanged();
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        menu.findItem(2131296296).setVisible(C3439fx.m47a(this.f19615a).m118e());
        return true;
    }
}

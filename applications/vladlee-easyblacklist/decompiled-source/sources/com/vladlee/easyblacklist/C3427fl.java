package com.vladlee.easyblacklist;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.database.Cursor;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.app.DialogInterfaceC0308m;
import androidx.appcompat.view.AbstractC0343b;
import com.vladlee.easyblacklist.C3318by;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.fl */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fl.class */
public final class C3427fl implements AbstractC0343b.AbstractC0344a {

    /* renamed from: a */
    final /* synthetic */ SmsChatActivity f19598a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3427fl(SmsChatActivity smsChatActivity) {
        this.f19598a = smsChatActivity;
    }

    @Override // androidx.appcompat.view.AbstractC0343b.AbstractC0344a
    /* renamed from: a */
    public final void mo51a(AbstractC0343b bVar) {
        C3376du duVar;
        C3376du duVar2;
        this.f19598a.f19280t = null;
        duVar = this.f19598a.f19278r;
        duVar.m113b();
        duVar2 = this.f19598a.f19278r;
        duVar2.notifyDataSetChanged();
    }

    @Override // androidx.appcompat.view.AbstractC0343b.AbstractC0344a
    /* renamed from: a */
    public final boolean mo50a(AbstractC0343b bVar, Menu menu) {
        bVar.mo9692a().inflate(2131558404, menu);
        return true;
    }

    @Override // androidx.appcompat.view.AbstractC0343b.AbstractC0344a
    /* renamed from: a */
    public final boolean mo49a(AbstractC0343b bVar, MenuItem menuItem) {
        C3376du duVar;
        AbstractC0343b bVar2;
        C3376du duVar2;
        int i;
        SmsChatActivity smsChatActivity;
        switch (menuItem.getItemId()) {
            case 2131296308:
                duVar = this.f19598a.f19278r;
                long e = duVar.m110e();
                SmsChatActivity smsChatActivity2 = this.f19598a;
                Cursor query = smsChatActivity2.getContentResolver().query(C3318by.C3322d.f19428a, new String[]{"_id", "address", "body", "date", "type", "status", "thread_id"}, "_id = ?", new String[]{String.valueOf(e)}, null);
                if (query != null) {
                    if (query.moveToNext()) {
                        ((ClipboardManager) this.f19598a.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("", query.getString(query.getColumnIndex("body"))));
                    }
                    query.close();
                }
                bVar2 = this.f19598a.f19280t;
                bVar2.mo9684c();
                return true;
            case 2131296309:
                duVar2 = this.f19598a.f19278r;
                if (duVar2.m112c()) {
                    smsChatActivity = this.f19598a;
                    i = 2131624046;
                } else {
                    smsChatActivity = this.f19598a;
                    i = 2131624047;
                }
                String string = smsChatActivity.getString(i);
                DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(this.f19598a);
                aVar.m9797a(string);
                aVar.m9803a(new DialogInterface$OnClickListenerC3428fm(this, bVar));
                aVar.m9790b(new DialogInterface$OnClickListenerC3429fn(this));
                aVar.m9792b().show();
                return true;
            default:
                return false;
        }
    }

    @Override // androidx.appcompat.view.AbstractC0343b.AbstractC0344a
    /* renamed from: b */
    public final boolean mo48b(AbstractC0343b bVar, Menu menu) {
        C3376du duVar;
        MenuItem findItem = menu.findItem(2131296308);
        duVar = this.f19598a.f19278r;
        findItem.setVisible(duVar.m112c());
        return true;
    }
}

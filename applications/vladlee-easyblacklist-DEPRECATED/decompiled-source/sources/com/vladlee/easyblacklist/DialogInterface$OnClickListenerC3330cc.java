package com.vladlee.easyblacklist;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import java.util.Vector;
/* renamed from: com.vladlee.easyblacklist.cc */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/cc.class */
final class DialogInterface$OnClickListenerC3330cc implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ Vector f19437a;

    /* renamed from: b */
    final /* synthetic */ Context f19438b;

    /* renamed from: c */
    final /* synthetic */ int f19439c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3330cc(Vector vector, Context context, int i) {
        this.f19437a = vector;
        this.f19438b = context;
        this.f19439c = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Intent intent;
        String str;
        int i2;
        if (((Integer) this.f19437a.get(i)).intValue() == 2131624071) {
            intent = new Intent(this.f19438b, AddListActivity.class);
            intent.putExtra(C3356db.f19482k, this.f19439c);
            str = C3356db.f19475d;
            i2 = 1;
        } else if (((Integer) this.f19437a.get(i)).intValue() == 2131624072) {
            intent = new Intent(this.f19438b, AddListActivity.class);
            intent.putExtra(C3356db.f19482k, this.f19439c);
            str = C3356db.f19475d;
            i2 = 2;
        } else if (((Integer) this.f19437a.get(i)).intValue() == 2131624073) {
            intent = new Intent(this.f19438b, AddListActivity.class);
            intent.putExtra(C3356db.f19482k, this.f19439c);
            str = C3356db.f19475d;
            i2 = 3;
        } else if (((Integer) this.f19437a.get(i)).intValue() == 2131624201) {
            intent = new Intent(this.f19438b, AddManuallyActivity.class);
            intent.putExtra(C3356db.f19482k, this.f19439c);
            str = C3356db.f19475d;
            i2 = 5;
        } else if (((Integer) this.f19437a.get(i)).intValue() == 2131624037) {
            intent = new Intent(this.f19438b, AddManuallyActivity.class);
            intent.putExtra(C3356db.f19482k, this.f19439c);
            str = C3356db.f19475d;
            i2 = 7;
        } else if (((Integer) this.f19437a.get(i)).intValue() == 2131624038) {
            intent = new Intent(this.f19438b, AddTextFilterActivity.class);
            this.f19438b.startActivity(intent);
        } else {
            intent = new Intent(this.f19438b, AddManuallyActivity.class);
            intent.putExtra(C3356db.f19482k, this.f19439c);
            str = C3356db.f19475d;
            i2 = 4;
        }
        intent.putExtra(str, i2);
        this.f19438b.startActivity(intent);
    }
}

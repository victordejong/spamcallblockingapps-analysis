package com.vladlee.easyblacklist;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.DialogInterfaceC0308m;
import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.df */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/df.class */
public final class C3360df implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ C3364dj f19486a;

    /* renamed from: b */
    final /* synthetic */ boolean f19487b;

    /* renamed from: c */
    final /* synthetic */ String f19488c;

    /* renamed from: d */
    final /* synthetic */ DialogC3357dc f19489d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3360df(DialogC3357dc dcVar, C3364dj djVar, boolean z, String str) {
        this.f19489d = dcVar;
        this.f19486a = djVar;
        this.f19487b = z;
        this.f19488c = str;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        Context context;
        Context context2;
        Context context3;
        Context context4;
        C3363di a = this.f19486a.getItem(i);
        if (!a.f19495c) {
            context = this.f19489d.f19483a;
            DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(context);
            aVar.m9804a(2131624106);
            StringBuilder sb = new StringBuilder();
            sb.append(a.f19494b);
            sb.append("\n\n");
            context2 = this.f19489d.f19483a;
            sb.append(context2.getString(2131624061));
            aVar.m9788b(sb.toString());
            context3 = this.f19489d.f19483a;
            aVar.m9796a(context3.getResources().getString(2131624222), new DialogInterface$OnClickListenerC3361dg(this, a));
            context4 = this.f19489d.f19483a;
            aVar.m9787b(context4.getResources().getString(2131624114), new DialogInterface$OnClickListenerC3362dh(this));
            aVar.m9792b().show();
        } else if (i != 0 || this.f19487b) {
            this.f19489d.m147a(a.f19494b);
        } else {
            this.f19489d.m147a(new File(this.f19488c).getParentFile().getAbsolutePath());
        }
    }
}

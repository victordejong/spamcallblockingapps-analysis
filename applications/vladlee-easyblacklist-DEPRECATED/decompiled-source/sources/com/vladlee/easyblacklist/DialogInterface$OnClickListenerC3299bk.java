package com.vladlee.easyblacklist;

import android.app.Activity;
import android.content.DialogInterface;
import androidx.core.app.C0598a;
import androidx.preference.AbstractC1027o;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.bk */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bk.class */
public final class DialogInterface$OnClickListenerC3299bk implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ AbstractC1027o f19369a;

    /* renamed from: b */
    final /* synthetic */ Activity f19370b;

    /* renamed from: c */
    final /* synthetic */ ArrayList f19371c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3299bk(AbstractC1027o oVar, Activity activity, ArrayList arrayList) {
        this.f19369a = oVar;
        this.f19370b = activity;
        this.f19371c = arrayList;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        AbstractC1027o oVar = this.f19369a;
        if (oVar == null) {
            Activity activity = this.f19370b;
            ArrayList arrayList = this.f19371c;
            C0598a.m8758a(activity, (String[]) arrayList.toArray(new String[arrayList.size()]), 10005);
            return;
        }
        ArrayList arrayList2 = this.f19371c;
        oVar.requestPermissions((String[]) arrayList2.toArray(new String[arrayList2.size()]), 10005);
    }
}

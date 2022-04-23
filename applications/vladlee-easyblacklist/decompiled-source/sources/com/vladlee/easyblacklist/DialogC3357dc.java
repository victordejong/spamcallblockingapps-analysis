package com.vladlee.easyblacklist;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Environment;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
/* renamed from: com.vladlee.easyblacklist.dc */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/dc.class */
public final class DialogC3357dc extends Dialog {

    /* renamed from: a */
    private Context f19483a;

    public DialogC3357dc(Context context) {
        super(context);
        this.f19483a = null;
        this.f19483a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m147a(String str) {
        ((TextView) findViewById(2131296605)).setText(str);
        File[] listFiles = new File(str).listFiles();
        ArrayList arrayList = new ArrayList();
        boolean equals = Environment.getExternalStorageDirectory().getAbsolutePath().equals(str);
        C3363di diVar = new C3363di();
        if (!equals && !str.equals("/")) {
            diVar.f19493a = "..";
            diVar.f19494b = str;
            diVar.f19495c = true;
            diVar.f19496d = true;
            arrayList.add(diVar);
        }
        for (int i = 0; i < listFiles.length; i++) {
            C3363di diVar2 = new C3363di();
            diVar2.f19493a = listFiles[i].getName();
            diVar2.f19494b = listFiles[i].getAbsolutePath();
            diVar2.f19495c = listFiles[i].isDirectory();
            diVar2.f19496d = false;
            arrayList.add(diVar2);
        }
        Collections.sort(arrayList, new C3359de(this));
        C3364dj djVar = new C3364dj(this.f19483a, arrayList);
        ListView listView = (ListView) findViewById(2131296474);
        listView.setAdapter((ListAdapter) djVar);
        listView.setTextFilterEnabled(true);
        listView.setOnItemClickListener(new C3360df(this, djVar, equals, str));
    }

    @Override // android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131492922);
        setTitle(2131624179);
        ((Button) findViewById(2131296345)).setOnClickListener(new View$OnClickListenerC3358dd(this));
        m147a(Environment.getExternalStorageDirectory().getAbsolutePath());
    }
}

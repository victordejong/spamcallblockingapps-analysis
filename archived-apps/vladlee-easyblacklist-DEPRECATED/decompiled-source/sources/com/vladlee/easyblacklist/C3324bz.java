package com.vladlee.easyblacklist;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.DialogInterfaceC0308m;
import java.util.ArrayList;
import java.util.Arrays;
/* renamed from: com.vladlee.easyblacklist.bz */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bz.class */
public final class C3324bz {

    /* renamed from: a */
    public static int f19430a = 0;

    /* renamed from: b */
    public static int f19431b = 2;

    /* renamed from: com.vladlee.easyblacklist.bz$a */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bz$a.class */
    static final class C3325a extends ArrayAdapter<C3326b> {

        /* renamed from: a */
        ArrayList<C3326b> f19432a = new ArrayList<>();

        /* renamed from: b */
        private LayoutInflater f19433b;

        public C3325a(Context context, C3326b[] bVarArr) {
            super(context, 2131492920, bVarArr);
            this.f19432a.addAll(Arrays.asList(bVarArr));
            this.f19433b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                view2 = this.f19433b.inflate(2131492920, viewGroup, false);
            }
            C3326b bVar = this.f19432a.get(i);
            ((TextView) view2.findViewById(2131296613)).setText(bVar.f19435b);
            ((ImageView) view2.findViewById(2131296447)).setImageResource(bVar.f19434a);
            return view2;
        }
    }

    /* renamed from: com.vladlee.easyblacklist.bz$b */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bz$b.class */
    static final class C3326b {

        /* renamed from: a */
        int f19434a;

        /* renamed from: b */
        int f19435b;

        C3326b(int i, int i2) {
            this.f19434a = 0;
            this.f19435b = 0;
            this.f19434a = i;
            this.f19435b = i2;
        }
    }

    /* renamed from: a */
    public static ArrayList<C3305bq> m157a(Context context, String str) {
        ArrayList<String> a = str != null ? C3456gn.m30a(str) : C3456gn.m34a(context);
        if (a != null) {
            return C3311bt.m229a(context).m226a(context, a);
        }
        return null;
    }

    /* renamed from: a */
    public static void m159a(Context context) {
        if (!C3456gn.m29b(context)) {
            SharedPreferences$OnSharedPreferenceChangeListenerC3472l.m11d(true);
            return;
        }
        DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(context);
        aVar.m9804a(2131624106);
        aVar.m9791b(2131624062);
        aVar.m9796a(context.getResources().getString(2131624105), new DialogInterface$OnClickListenerC3328ca());
        aVar.m9787b(context.getResources().getString(2131624178), new DialogInterface$OnClickListenerC3329cb());
        aVar.m9792b().show();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0101  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m158a(android.content.Context r8, int r9) {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vladlee.easyblacklist.C3324bz.m158a(android.content.Context, int):void");
    }

    /* renamed from: a */
    public static void m156a(Context context, ArrayList<C3305bq> arrayList) {
        context.getString(2131623966);
        Intent intent = new Intent(context, AddListActivity.class);
        intent.putExtra(C3356db.f19475d, 6);
        EasyBlacklistActivity.m329a(arrayList);
        context.startActivity(intent);
    }
}

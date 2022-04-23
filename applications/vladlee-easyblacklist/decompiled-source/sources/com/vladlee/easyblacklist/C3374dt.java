package com.vladlee.easyblacklist;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.util.LruCache;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.gms.ads.AdRequest;
import com.vladlee.easyblacklist.C3318by;
import java.util.Map;
/* renamed from: com.vladlee.easyblacklist.dt */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/dt.class */
public final class C3374dt extends AbstractC3377dv {

    /* renamed from: d */
    private Context f19517d;

    /* renamed from: e */
    private LayoutInflater f19518e;

    /* renamed from: g */
    private int f19520g;

    /* renamed from: c */
    private LruCache<String, Bitmap> f19516c = new LruCache<>(AdRequest.MAX_CONTENT_URL_LENGTH);

    /* renamed from: f */
    private int f19519f = 2131492896;

    /* renamed from: com.vladlee.easyblacklist.dt$a */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/dt$a.class */
    public static final class C3375a {

        /* renamed from: a */
        long f19521a;

        /* renamed from: b */
        String f19522b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C3375a(long j, String str) {
            this.f19521a = 0L;
            this.f19521a = j;
            this.f19522b = str;
        }
    }

    public C3374dt(Context context, int i) {
        super(context);
        this.f19517d = null;
        this.f19520g = 0;
        this.f19518e = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f19517d = context;
        this.f19520g = i;
    }

    /* renamed from: a */
    public final void m125a() {
        for (Map.Entry<Long, Boolean> entry : this.f19525a.entrySet()) {
            if (entry.getValue().booleanValue()) {
                C3375a aVar = (C3375a) this.f19526b.get(entry.getKey());
                if (aVar.f19521a > 0) {
                    C3318by.m195a(C3318by.C3323e.f19429a, this.f19517d, aVar.f19521a);
                } else {
                    C3318by.m187b(C3318by.C3323e.f19429a, this.f19517d, aVar.f19522b);
                }
            }
        }
    }

    @Override // com.vladlee.easyblacklist.AbstractC3377dv, android.widget.CursorAdapter
    public final void bindView(View view, Context context, Cursor cursor) {
        view.setVisibility(0);
        int i = this.f19520g;
        C3304bp b = C3311bt.m229a(context).m220b(context, cursor.getString(cursor.getColumnIndex("phone")));
        ((TextView) view.findViewById(2131296475)).setText(C3456gn.m28b(b.f19373a));
        boolean endsWith = b.f19373a.endsWith("?");
        if (!m120b(cursor.getLong(0))) {
            C3303bo.m252a(view, b, b.f19373a, this.f19516c, endsWith ? 1 : 0);
            view.findViewById(2131296381).setVisibility(8);
            view.findViewById(2131296382).setVisibility(0);
            return;
        }
        view.findViewById(2131296381).setVisibility(0);
        view.findViewById(2131296382).setVisibility(8);
    }

    @Override // android.widget.CursorAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = newView(this.f19517d, getCursor(), viewGroup);
        }
        view2.setVisibility(0);
        bindView(view2, view2.getContext(), (Cursor) getItem(i));
        return view2;
    }

    @Override // com.vladlee.easyblacklist.AbstractC3377dv, android.widget.CursorAdapter
    public final View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f19518e.inflate(this.f19519f, viewGroup, false);
    }
}

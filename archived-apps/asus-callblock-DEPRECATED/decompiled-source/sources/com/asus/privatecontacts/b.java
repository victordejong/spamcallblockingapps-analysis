package com.asus.privatecontacts;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.support.v4.b.e;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CursorAdapter;
import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.k;
import com.asus.privatecontacts.b.c;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/b.class */
public class b extends CursorAdapter {
    private static final String c = b.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<Long> f2999a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    public e<String> f3000b = new e<>();
    private Context d;
    private View.OnClickListener e;
    private int f;
    private boolean g;
    private View.OnClickListener h;

    public b(Context context, View.OnClickListener onClickListener, int i, View.OnClickListener onClickListener2) {
        super(context, null);
        this.h = null;
        this.d = context;
        this.e = onClickListener;
        this.f = i;
        if (i == 2131427630) {
            this.g = true;
        } else {
            this.g = false;
        }
        this.h = onClickListener2;
    }

    private void a(Context context, c cVar, Cursor cursor) {
        k.d dVar;
        Uri uri;
        boolean z = false;
        String b2 = c.b(cursor, PhotoSelectionActivity.PHOTO_URI);
        String b3 = c.b(cursor, "photo_thumb_uri");
        context.getResources().getColor(17170452);
        String b4 = c.b(cursor, "display_name");
        int c2 = c.c(cursor, "photo_file_id");
        int c3 = c.c(cursor, "photo_id");
        cVar.f3010b = b2;
        cVar.c = b3;
        if (c2 > 0 || c3 > 0) {
            z = true;
        }
        try {
            if (cVar.c != null && z) {
                uri = Uri.parse(cVar.c);
                dVar = null;
            } else if (cVar.f3010b == null || !z) {
                dVar = new k.d(b4, null, true);
                uri = null;
            } else {
                uri = Uri.parse(cVar.f3010b);
                dVar = null;
            }
            k.a(context).a(cVar.d, uri, cVar.d.getWidth(), false, true, dVar);
        } catch (Exception e) {
            e.printStackTrace();
        }
        String string = cursor.getString(cursor.getColumnIndex("display_name"));
        if (cVar.j) {
            cVar.f.setText(string);
        } else {
            cVar.e.setText(string);
        }
        long a2 = c.a(cursor, "_id");
        String b5 = c.b(cursor, "lookup");
        cVar.g = a2;
        cVar.h = b5;
        cVar.i = Uri.withAppendedPath(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_LOOKUP_URI, cVar.h), String.valueOf(cVar.g)).toString();
        if (this.g) {
            cVar.a(this.f2999a.contains(Long.valueOf(cVar.g)));
        }
    }

    public final boolean a() {
        return this.f2999a != null && this.f2999a.size() > 0 && this.f2999a.size() == getCount();
    }

    @Override // android.widget.CursorAdapter
    public void bindView(View view, Context context, Cursor cursor) {
        c cVar = (c) view.getTag();
        if (cursor != null) {
            try {
                a(context, cVar, cursor);
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        if (this.e != null) {
            view.setOnClickListener(this.e);
        }
    }

    @Override // android.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(context).inflate(this.f, (ViewGroup) null);
        c cVar = new c(inflate, this.g, this.h);
        if (cursor != null) {
            try {
                a(context, cVar, cursor);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        inflate.setTag(cVar);
        return inflate;
    }
}

package p459j.p460a.p474c0.p491g.p492a0;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CursorAdapter;
import android.widget.SectionIndexer;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.messaging.p078ui.contact.ContactListItemView;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.g.a0.c */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/a0/c.class */
public class C11913c extends CursorAdapter implements SectionIndexer {

    /* renamed from: a */
    public final ContactListItemView.AbstractC4717a f26705a;

    /* renamed from: b */
    public final boolean f26706b;

    /* renamed from: c */
    public C11920f f26707c;

    public C11913c(Context context, Cursor cursor, ContactListItemView.AbstractC4717a aVar, boolean z) {
        super(context, cursor, 0);
        this.f26705a = aVar;
        this.f26706b = z;
        this.f26707c = new C11920f(cursor);
    }

    @Override // android.widget.CursorAdapter
    public void bindView(View view, Context context, Cursor cursor) {
        String str;
        C12151d.m6999b(view instanceof ContactListItemView);
        ContactListItemView contactListItemView = (ContactListItemView) view;
        if (this.f26706b) {
            int position = cursor.getPosition();
            int sectionForPosition = this.f26707c.getSectionForPosition(position);
            if (this.f26707c.getPositionForSection(sectionForPosition) == position) {
                str = (String) this.f26707c.getSections()[sectionForPosition];
                contactListItemView.m27274a(cursor, this.f26705a, this.f26706b, str);
            }
        }
        str = null;
        contactListItemView.m27274a(cursor, this.f26705a, this.f26706b, str);
    }

    @Override // android.widget.SectionIndexer
    public int getPositionForSection(int i) {
        return this.f26707c.getPositionForSection(i);
    }

    @Override // android.widget.SectionIndexer
    public int getSectionForPosition(int i) {
        return this.f26707c.getSectionForPosition(i);
    }

    @Override // android.widget.SectionIndexer
    public Object[] getSections() {
        return this.f26707c.getSections();
    }

    @Override // android.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(R$layout.contact_list_item_view, viewGroup, false);
    }

    @Override // android.widget.CursorAdapter
    public Cursor swapCursor(Cursor cursor) {
        this.f26707c = new C11920f(cursor);
        return super.swapCursor(cursor);
    }
}

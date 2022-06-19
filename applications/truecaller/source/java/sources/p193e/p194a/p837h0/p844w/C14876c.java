package p193e.p194a.p837h0.p844w;

import android.database.Cursor;
import android.database.CursorWrapper;
import com.truecaller.blocking.FiltersContract;
import p193e.p194a.p837h0.p844w.C14872a;
/* renamed from: e.a.h0.w.c */
/* loaded from: classes9-dex2jar.jar:e/a/h0/w/c.class */
public class C14876c extends CursorWrapper implements AbstractC14875b {

    /* renamed from: a */
    public final int f42520a;

    /* renamed from: b */
    public final int f42521b;

    /* renamed from: c */
    public final int f42522c;

    /* renamed from: d */
    public final int f42523d;

    /* renamed from: e */
    public final int f42524e;

    /* renamed from: f */
    public final int f42525f;

    /* renamed from: g */
    public final int f42526g;

    /* renamed from: h */
    public final int f42527h;

    /* renamed from: i */
    public final int f42528i;

    /* renamed from: j */
    public final int f42529j;

    /* renamed from: k */
    public final int f42530k;

    /* renamed from: l */
    public final int f42531l;

    public C14876c(Cursor cursor) {
        super(cursor);
        this.f42520a = cursor.getColumnIndexOrThrow("_id");
        this.f42521b = cursor.getColumnIndexOrThrow("rule");
        this.f42522c = cursor.getColumnIndexOrThrow("sync_state");
        this.f42523d = cursor.getColumnIndexOrThrow("wildcard_type");
        this.f42524e = cursor.getColumnIndexOrThrow("label");
        this.f42525f = cursor.getColumnIndexOrThrow("value");
        this.f42526g = cursor.getColumnIndexOrThrow("tracking_type");
        this.f42527h = cursor.getColumnIndexOrThrow("tracking_source");
        this.f42528i = cursor.getColumnIndexOrThrow("entity_type");
        this.f42529j = cursor.getColumnIndexOrThrow("category_id");
        this.f42530k = cursor.getColumnIndexOrThrow("spam_version");
        this.f42531l = cursor.getColumnIndexOrThrow("history_event_id");
    }

    @Override // p193e.p194a.p837h0.p844w.AbstractC14875b
    public C14872a getFilter() {
        C14872a.C14874b c14874b = new C14872a.C14874b();
        c14874b.f42508a = getLong(this.f42520a);
        c14874b.f42509b = getInt(this.f42521b);
        c14874b.f42510c = getInt(this.f42522c);
        c14874b.f42519l = FiltersContract.Filters.WildCardType.valueOfType(getInt(this.f42523d));
        c14874b.f42511d = getString(this.f42524e);
        c14874b.f42512e = getString(this.f42525f);
        c14874b.f42513f = getString(this.f42526g);
        c14874b.f42514g = getString(this.f42527h);
        c14874b.f42515h = getInt(this.f42528i);
        c14874b.f42516i = isNull(this.f42529j) ? null : Long.valueOf(getLong(this.f42529j));
        c14874b.f42517j = isNull(this.f42530k) ? null : Integer.valueOf(getInt(this.f42530k));
        c14874b.f42518k = getString(this.f42531l);
        return new C14872a(c14874b, null);
    }
}

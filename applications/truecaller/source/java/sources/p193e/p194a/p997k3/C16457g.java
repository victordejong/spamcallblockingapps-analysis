package p193e.p194a.p997k3;

import android.database.Cursor;
import android.database.CursorWrapper;
import com.truecaller.data.entity.Contact;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p997k3.C16449c;
import p193e.p194a.p997k3.p1000l.C16502j;
import p193e.p194a.p997k3.p998j.C16463d;
import s1.u.t;
import s1.z.c.l;
/* renamed from: e.a.k3.g */
/* loaded from: classes8-dex2jar.jar:e/a/k3/g.class */
public final class C16457g extends CursorWrapper {

    /* renamed from: a */
    public final C16463d f46209a;

    /* renamed from: b */
    public final int f46210b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C16457g(Cursor cursor) {
        this(cursor, new C16448b(new C16449c.C16450a(t.a)));
        l.e(cursor, "cursor");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16457g(Cursor cursor, C16449c c16449c) {
        super(cursor);
        l.e(cursor, "cursor");
        l.e(c16449c, "extraMetaInfoReader");
        this.f46209a = new C16463d(cursor, c16449c, C16502j.f46396b);
        this.f46210b = getColumnIndex("matched_value");
    }

    /* renamed from: b */
    public final Contact m17378b() {
        Contact m17354g = this.f46209a.m17354g(this);
        this.f46209a.m17355f(this, m17354g);
        if (!C17891a1.C17902k.m15569u0(m17354g)) {
            m17354g = null;
        }
        return m17354g;
    }

    /* renamed from: d */
    public final String m17377d() {
        String string = getString(this.f46210b);
        l.d(string, "getString(matchedValueIndex)");
        return string;
    }
}

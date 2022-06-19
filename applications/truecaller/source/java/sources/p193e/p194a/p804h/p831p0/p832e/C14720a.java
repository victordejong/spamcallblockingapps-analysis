package p193e.p194a.p804h.p831p0.p832e;

import android.content.ContentValues;
import s1.z.c.l;
/* renamed from: e.a.h.p0.e.a */
/* loaded from: classes3-dex2jar.jar:e/a/h/p0/e/a.class */
public final class C14720a {

    /* renamed from: a */
    public String f42219a;

    /* renamed from: b */
    public boolean f42220b;

    public C14720a(String str, boolean z) {
        l.e(str, "tcId");
        this.f42219a = str;
        this.f42220b = z;
    }

    /* renamed from: a */
    public final ContentValues m19726a() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("tc_id", this.f42219a);
        contentValues.put("hidden_from_identified", Boolean.valueOf(this.f42220b));
        return contentValues;
    }
}

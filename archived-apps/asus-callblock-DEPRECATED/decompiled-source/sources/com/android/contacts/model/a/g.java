package com.android.contacts.model.a;

import android.content.ContentValues;
import com.android.contacts.model.e;
import com.android.contacts.util.CoverUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/a/g.class */
public final class g extends a {
    public final boolean d = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(e eVar, ContentValues contentValues) {
        super(eVar, contentValues);
    }

    private g(e eVar, ContentValues contentValues, byte b2) {
        super(eVar, contentValues);
    }

    public static g a(c cVar) {
        g gVar = new g(cVar.f1995b, new ContentValues(cVar.f1994a), (byte) 0);
        gVar.f1994a.put("mimetype", "vnd.android.cursor.item/im");
        return gVar;
    }

    public final String k() {
        return this.d ? this.f1994a.getAsString(CoverUtils.CoverData.COVER_URI) : this.f1994a.getAsString(CoverUtils.CoverData.COVER_URI);
    }

    public final Integer l() {
        return this.f1994a.getAsInteger("data5");
    }

    public final boolean m() {
        return l() != null;
    }

    public final String n() {
        return this.f1994a.getAsString("data6");
    }

    public final int o() {
        Integer asInteger = this.f1994a.getAsInteger("chat_capability");
        return asInteger == null ? 0 : asInteger.intValue();
    }
}

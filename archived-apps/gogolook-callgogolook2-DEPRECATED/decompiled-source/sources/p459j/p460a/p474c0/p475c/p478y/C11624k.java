package p459j.p460a.p474c0.p475c.p478y;

import android.content.ContentUris;
import android.database.Cursor;
import android.graphics.Rect;
import android.net.Uri;
import android.provider.MediaStore;
import android.text.TextUtils;
import gogolook.callgogolook2.messaging.datamodel.data.MediaPickerMessagePartData;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p474c0.p475c.p479z.C11641b0;
import p459j.p460a.p474c0.p475c.p479z.C11664k;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12205r;
/* renamed from: j.a.c0.c.y.k */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/k.class */
public class C11624k {

    /* renamed from: e */
    public static final String[] f26099e = {"_id", "_data", "width", "height", "mime_type", "date_modified"};

    /* renamed from: f */
    public static final String[] f26100f = {"_id"};

    /* renamed from: a */
    public C11641b0 f26101a;

    /* renamed from: b */
    public String f26102b;

    /* renamed from: c */
    public boolean f26103c;

    /* renamed from: d */
    public long f26104d;

    /* renamed from: a */
    public MessagePartData m8778a(Rect rect) {
        C12151d.m6999b(!this.f26103c);
        String str = this.f26102b;
        C11641b0 b0Var = this.f26101a;
        return new MediaPickerMessagePartData(rect, str, b0Var.f26138i, b0Var.f26186c, b0Var.f26187d);
    }

    /* renamed from: a */
    public String m8780a() {
        return this.f26102b;
    }

    /* renamed from: a */
    public void m8779a(Cursor cursor, int i, int i2) {
        C11641b0 b0Var;
        this.f26103c = TextUtils.equals(cursor.getString(0), FavoriteGroupRealmObject.PARENDID_DELETED);
        if (this.f26103c) {
            this.f26101a = null;
            this.f26102b = null;
            return;
        }
        int i3 = cursor.getInt(2);
        int i4 = cursor.getInt(3);
        if (i3 <= 0) {
            i3 = -1;
        }
        if (i4 <= 0) {
            i4 = -1;
        }
        this.f26102b = cursor.getString(4);
        String string = cursor.getString(5);
        this.f26104d = !TextUtils.isEmpty(string) ? Long.parseLong(string) : -1L;
        Uri withAppendedId = ContentUris.withAppendedId(C12205r.m6809d(this.f26102b) ? MediaStore.Images.Media.EXTERNAL_CONTENT_URI : MediaStore.Video.Media.EXTERNAL_CONTENT_URI, cursor.getLong(cursor.getColumnIndexOrThrow("_id")));
        if (C6298e.m23342c()) {
            C11641b0.C11642a aVar = new C11641b0.C11642a(withAppendedId);
            aVar.m8680b(i);
            C11641b0.C11642a aVar2 = aVar;
            aVar2.m8681a(i2);
            C11641b0.C11642a aVar3 = aVar2;
            aVar3.m8678d(i3);
            C11641b0.C11642a aVar4 = aVar3;
            aVar4.m8679c(i4);
            C11641b0.C11642a aVar5 = aVar4;
            aVar5.m8727b();
            aVar5.m8682a();
            C11641b0.C11642a aVar6 = aVar5;
            aVar6.m8725d();
            b0Var = aVar6.m8726c();
        } else {
            b0Var = new C11664k(cursor.getString(1), i, i2, i3, i4, true, true, true);
        }
        this.f26101a = b0Var;
    }

    /* renamed from: b */
    public long m8777b() {
        return this.f26104d;
    }

    /* renamed from: c */
    public C11641b0 m8776c() {
        return this.f26101a;
    }

    /* renamed from: d */
    public Uri m8775d() {
        return this.f26101a.f26138i;
    }

    /* renamed from: e */
    public boolean m8774e() {
        return this.f26103c;
    }
}

package com.asus.privatecontacts.a;

import android.content.ContentValues;
import com.asus.privatecontacts.b.c;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/a/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public ContentValues f2997a = new ContentValues();

    public final void a(String str) {
        if (str != null) {
            c.a(this.f2997a, "normalized_number", str);
        }
    }

    public final void b(String str) {
        if (str != null) {
            c.a(this.f2997a, "min_match", str);
        }
    }
}

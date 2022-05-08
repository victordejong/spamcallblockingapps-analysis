package com.android.contacts.list;

import android.content.Intent;
import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ad.class */
public final class ad {
    public Intent c;
    public CharSequence d;
    public boolean e;
    public String f;
    public boolean g;
    public boolean h;
    public Uri j;

    /* renamed from: a  reason: collision with root package name */
    public boolean f1764a = true;

    /* renamed from: b  reason: collision with root package name */
    public int f1765b = 60;
    public boolean i = true;

    public final String toString() {
        return "{ContactsRequest:mValid=" + this.f1764a + " mActionCode=" + this.f1765b + " mRedirectIntent=" + this.c + " mTitle=" + ((Object) this.d) + " mSearchMode=" + this.e + " mQueryString=" + this.f + " mIncludeProfile=" + this.g + " mLegacyCompatibilityMode=" + this.h + " mDirectorySearchEnabled=" + this.i + " mContactUri=" + this.j + "}";
    }
}

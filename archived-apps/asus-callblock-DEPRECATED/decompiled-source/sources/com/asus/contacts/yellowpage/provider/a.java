package com.asus.contacts.yellowpage.provider;

import android.net.Uri;
import android.provider.BaseColumns;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/provider/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f2859a = {"_id", "category_name", "subcategory_name", "tag_name", "code", "source"};

    /* renamed from: com.asus.contacts.yellowpage.provider.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/provider/a$a.class */
    public static final class C0080a implements BaseColumns {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f2860a = Uri.parse("content://com.asus.yellowpage.provider/asuscategory");

        /* renamed from: b  reason: collision with root package name */
        public static final Uri f2861b = Uri.parse("content://com.asus.yellowpage.provider/asuscategory/category");
        public static final Uri c = Uri.parse("content://com.asus.yellowpage.provider/asuscategory/#");
    }

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/provider/a$b.class */
    public static final class b implements BaseColumns {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f2862a = Uri.parse("content://com.asus.yellowpage.provider/data_cache");
    }

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/provider/a$c.class */
    public static final class c implements BaseColumns {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f2863a = Uri.parse("content://com.asus.yellowpage.provider/request_cache");
    }
}

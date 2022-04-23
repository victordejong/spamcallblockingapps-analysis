package com.hiya.stingray.p000ui.local.location;

import com.google.android.gms.maps.model.LatLng;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.location.a$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/location/a$a.class */
public final class a$a {

    /* renamed from: a */
    private final String f60a;

    /* renamed from: b */
    private final int f61b;

    /* renamed from: c */
    private final LatLng f62c;

    /* renamed from: d */
    private final String f63d;

    /* renamed from: e */
    private final String f64e;

    public a$a(String str, int i, LatLng latLng, String str2, String str3) {
        k.g(str, "name");
        k.g(latLng, "location");
        k.g(str2, "price");
        k.g(str3, "description");
        this.f60a = str;
        this.f61b = i;
        this.f62c = latLng;
        this.f63d = str2;
        this.f64e = str3;
    }

    /* renamed from: a */
    public final String m1335a() {
        return this.f64e;
    }

    /* renamed from: b */
    public final LatLng m1334b() {
        return this.f62c;
    }

    /* renamed from: c */
    public final String m1333c() {
        return this.f60a;
    }

    /* renamed from: d */
    public final String m1332d() {
        return this.f63d;
    }

    /* renamed from: e */
    public final int m1331e() {
        return this.f61b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a$a)) {
            return false;
        }
        a$a a_a = (a$a) obj;
        return k.b(this.f60a, a_a.f60a) && this.f61b == a_a.f61b && k.b(this.f62c, a_a.f62c) && k.b(this.f63d, a_a.f63d) && k.b(this.f64e, a_a.f64e);
    }

    public int hashCode() {
        String str = this.f60a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i2 = this.f61b;
        LatLng latLng = this.f62c;
        int hashCode2 = latLng != null ? latLng.hashCode() : 0;
        String str2 = this.f63d;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f64e;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        return "PersonalDirectoryItem(name=" + this.f60a + ", rating=" + this.f61b + ", location=" + this.f62c + ", price=" + this.f63d + ", description=" + this.f64e + ")";
    }
}

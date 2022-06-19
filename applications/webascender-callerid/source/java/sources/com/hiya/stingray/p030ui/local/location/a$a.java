package com.hiya.stingray.p030ui.local.location;

import com.google.android.gms.maps.model.LatLng;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.location.a$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/location/a$a.class */
public final class a$a {

    /* renamed from: a */
    private final String f4739a;

    /* renamed from: b */
    private final int f4740b;

    /* renamed from: c */
    private final LatLng f4741c;

    /* renamed from: d */
    private final String f4742d;

    /* renamed from: e */
    private final String f4743e;

    public a$a(String str, int i, LatLng latLng, String str2, String str3) {
        k.g(str, "name");
        k.g(latLng, "location");
        k.g(str2, "price");
        k.g(str3, "description");
        this.f4739a = str;
        this.f4740b = i;
        this.f4741c = latLng;
        this.f4742d = str2;
        this.f4743e = str3;
    }

    /* renamed from: a */
    public final String m1335a() {
        return this.f4743e;
    }

    /* renamed from: b */
    public final LatLng m1334b() {
        return this.f4741c;
    }

    /* renamed from: c */
    public final String m1333c() {
        return this.f4739a;
    }

    /* renamed from: d */
    public final String m1332d() {
        return this.f4742d;
    }

    /* renamed from: e */
    public final int m1331e() {
        return this.f4740b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof a$a)) {
                return false;
            }
            a$a a_a = (a$a) obj;
            return k.b(this.f4739a, a_a.f4739a) && this.f4740b == a_a.f4740b && k.b(this.f4741c, a_a.f4741c) && k.b(this.f4742d, a_a.f4742d) && k.b(this.f4743e, a_a.f4743e);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f4739a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i2 = this.f4740b;
        LatLng latLng = this.f4741c;
        int hashCode2 = latLng != null ? latLng.hashCode() : 0;
        String str2 = this.f4742d;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f4743e;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        return "PersonalDirectoryItem(name=" + this.f4739a + ", rating=" + this.f4740b + ", location=" + this.f4741c + ", price=" + this.f4742d + ", description=" + this.f4743e + ")";
    }
}

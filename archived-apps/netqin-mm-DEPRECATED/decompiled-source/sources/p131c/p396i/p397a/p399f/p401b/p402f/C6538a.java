package p131c.p396i.p397a.p399f.p401b.p402f;

import p131c.p161d.p354f.p355s.AbstractC6136e;
import p131c.p396i.p397a.C6490b;
/* renamed from: c.i.a.f.b.f.a */
/* loaded from: classes2-dex2jar.jar:c/i/a/f/b/f/a.class */
public class C6538a {
    @AbstractC6136e(1.0d)
    public String action;
    @AbstractC6136e(1.0d)
    public String path;

    public C6538a(String str, String str2) {
        this.action = str2;
        this.path = str;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6538a)) {
            return getClass().getName().equals(obj.getClass().getName());
        }
        return false;
    }

    public String getAction() {
        return this.action;
    }

    public String getPath() {
        return this.path;
    }

    public String getUrl() {
        String str;
        String str2 = getPath() + getAction();
        if (C6490b.m20686m()) {
            str = "http://192.168.36.59:9212/BOSS_AD_SDKPlatform/" + str2;
        } else {
            str = "https://sekef.a8a7a6.com/BOSS_AD_SDKPlatform/" + str2;
        }
        return str;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public boolean isZip() {
        return false;
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + Integer.toHexString(hashCode());
    }
}

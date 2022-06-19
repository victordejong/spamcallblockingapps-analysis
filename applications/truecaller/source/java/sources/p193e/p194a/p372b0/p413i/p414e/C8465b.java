package p193e.p194a.p372b0.p413i.p414e;

import android.net.Uri;
import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
/* renamed from: e.a.b0.i.e.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/i/e/b.class */
public class C8465b {

    /* renamed from: a */
    public final C8467d f26184a;

    /* renamed from: b */
    public final String f26185b;

    /* renamed from: c */
    public final String f26186c;

    /* renamed from: d */
    public final int f26187d;

    /* renamed from: e */
    public String f26188e;

    /* renamed from: f */
    public boolean f26189f;

    /* renamed from: g */
    public boolean f26190g;

    /* renamed from: h */
    public boolean f26191h;

    /* renamed from: i */
    public int f26192i = 2;

    /* renamed from: j */
    public Boolean f26193j;

    /* renamed from: k */
    public Boolean f26194k;

    /* renamed from: l */
    public Set<Uri> f26195l;

    /* renamed from: m */
    public C8456a.AbstractC8463g f26196m;

    /* renamed from: n */
    public C8456a.AbstractC8462f f26197n;

    /* renamed from: o */
    public C8456a.AbstractC8464h f26198o;

    /* renamed from: p */
    public C8456a.AbstractC8461e f26199p;

    /* renamed from: q */
    public C8456a.AbstractC8458b f26200q;

    /* renamed from: r */
    public C8456a.AbstractC8459c f26201r;

    /* renamed from: s */
    public C8456a.AbstractC8457a f26202s;

    public C8465b(C8467d c8467d, String str, String str2, int i) {
        this.f26184a = c8467d;
        this.f26185b = str;
        this.f26186c = str2;
        this.f26187d = i;
    }

    /* renamed from: a */
    public C8465b m28514a(Collection<Uri> collection) {
        if (!collection.isEmpty()) {
            if (this.f26195l == null) {
                this.f26195l = new HashSet();
            }
            this.f26195l.addAll(collection);
        }
        return this;
    }

    /* renamed from: b */
    public C8465b m28513b(Uri... uriArr) {
        if (uriArr.length > 0) {
            if (this.f26195l == null) {
                this.f26195l = new HashSet();
            }
            Collections.addAll(this.f26195l, uriArr);
        }
        return this;
    }

    /* renamed from: c */
    public C8467d m28512c() {
        String str;
        boolean z = this.f26191h;
        if (!z || !this.f26189f) {
            HashSet hashSet = null;
            if (this.f26195l != null) {
                if (z || this.f26190g) {
                    throw new IllegalStateException("Cannot use \"alsoNotify(Uri)\" for views or counts");
                }
                hashSet = new HashSet(this.f26195l);
            }
            String str2 = this.f26188e;
            if (str2 != null && (TextUtils.isEmpty(str2.trim()) || this.f26188e.contains(StringConstant.HASH) || this.f26188e.contains("*"))) {
                throw new IllegalStateException(C22128a.m8618h(C22128a.m8728C("Bad path, '"), this.f26188e, "'"));
            }
            m28508g(this.f26192i);
            m28508g(2);
            String str3 = this.f26188e;
            String str4 = str3;
            if (str3 == null) {
                str4 = this.f26186c;
            }
            String str5 = str4;
            if (this.f26191h) {
                str5 = C22128a.m8543z2(str4, "/count");
            }
            String str6 = str5;
            if (this.f26189f) {
                str6 = C22128a.m8543z2(str5, "/#");
            }
            if (this.f26189f) {
                StringBuilder m8728C = C22128a.m8728C("vnd.");
                m8728C.append(this.f26185b);
                m8728C.append(".cursor.item/");
                m8728C.append(this.f26186c);
                str = m8728C.toString();
            } else {
                StringBuilder m8728C2 = C22128a.m8728C("vnd.");
                m8728C2.append(this.f26185b);
                m8728C2.append(".cursor.dir/");
                m8728C2.append(this.f26186c);
                str = m8728C2.toString();
            }
            Boolean bool = this.f26193j;
            boolean booleanValue = bool == null ? true : bool.booleanValue();
            Boolean bool2 = this.f26194k;
            boolean booleanValue2 = bool2 == null ? !this.f26191h && !this.f26190g : bool2.booleanValue();
            C8467d c8467d = this.f26184a;
            int i = this.f26187d;
            C8456a c8456a = new C8456a(i, this.f26186c, this.f26192i, 2, booleanValue, booleanValue2, this.f26189f, this.f26191h, str, m28511d(), hashSet, this.f26196m, this.f26197n, this.f26198o, this.f26199p, null, this.f26200q, this.f26201r, this.f26202s);
            if (c8467d.f26207a.indexOfKey(i) <= -1) {
                c8467d.f26207a.put(i, c8456a);
                this.f26184a.f26208b.addURI(this.f26185b, str6, this.f26187d);
                return this.f26184a;
            }
            StringBuilder m8728C3 = C22128a.m8728C("Duplicated match, previous match=");
            m8728C3.append(c8467d.f26207a.get(i));
            m8728C3.append(", replaced by match=");
            m8728C3.append(c8456a);
            throw new IllegalArgumentException(m8728C3.toString());
        }
        throw new IllegalStateException("Cannot combine \"count()\" with \"row()\"");
    }

    /* renamed from: d */
    public Uri m28511d() {
        String str = this.f26188e;
        String str2 = str;
        if (str == null) {
            str2 = this.f26186c;
        }
        StringBuilder m8728C = C22128a.m8728C("content://");
        m8728C.append(this.f26185b);
        m8728C.append(StringConstant.SLASH);
        m8728C.append(str2);
        return Uri.parse(m8728C.toString());
    }

    /* renamed from: e */
    public C8465b m28510e(boolean z) {
        this.f26193j = Boolean.valueOf(z);
        return this;
    }

    /* renamed from: f */
    public C8465b m28509f(boolean z) {
        this.f26194k = Boolean.valueOf(z);
        return this;
    }

    /* renamed from: g */
    public final void m28508g(int i) {
        if (i == 0 || i == 1 || i == 2 || i == 3 || i == 4 || i == 5) {
            return;
        }
        throw new IllegalStateException(C22128a.m8611i2("Invalid conflict resolution method, ", i));
    }
}

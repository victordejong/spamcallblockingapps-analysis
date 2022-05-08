package p081h.p093b.p113e;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* renamed from: h.b.e.k */
/* loaded from: classes-dex2jar.jar:h/b/e/k.class */
public class C5702k {

    /* renamed from: a */
    public String f14296a;

    /* renamed from: b */
    public List<String> f14297b;

    /* renamed from: c */
    public Map<String, Collection<String>> f14298c = new HashMap();

    /* renamed from: d */
    public String f14299d;

    /* renamed from: e */
    public List<String> f14300e;

    /* renamed from: f */
    public byte[] f14301f;

    /* renamed from: a */
    public void m24690a(String str) {
        if (this.f14297b == null) {
            this.f14297b = new ArrayList();
        }
        this.f14297b.add(str);
    }

    /* renamed from: a */
    public void m24689a(String str, String str2) {
        Collection<String> collection;
        if (!this.f14298c.containsKey(str)) {
            collection = str.equals("TYPE") ? new HashSet<>() : new ArrayList<>();
            this.f14298c.put(str, collection);
        } else {
            collection = this.f14298c.get(str);
        }
        collection.add(str2);
    }

    /* renamed from: a */
    public void m24688a(List<String> list) {
        this.f14300e = list;
    }

    /* renamed from: a */
    public void m24687a(byte[] bArr) {
        this.f14301f = bArr;
    }

    /* renamed from: a */
    public void m24686a(String... strArr) {
        this.f14300e = Arrays.asList(strArr);
    }

    /* renamed from: a */
    public byte[] m24691a() {
        return this.f14301f;
    }

    /* renamed from: b */
    public String m24685b() {
        return this.f14296a;
    }

    /* renamed from: b */
    public Collection<String> m24684b(String str) {
        return this.f14298c.get(str);
    }

    /* renamed from: c */
    public Map<String, Collection<String>> m24683c() {
        return this.f14298c;
    }

    /* renamed from: c */
    public void m24682c(String str) {
        String str2 = this.f14296a;
        if (str2 != null) {
            String.format("Property name is re-defined (existing: %s, requested: %s", str2, str);
        }
        this.f14296a = str;
    }

    /* renamed from: d */
    public String m24681d() {
        return this.f14299d;
    }

    /* renamed from: d */
    public void m24680d(String str) {
        this.f14299d = str;
    }

    /* renamed from: e */
    public List<String> m24679e() {
        return this.f14300e;
    }
}

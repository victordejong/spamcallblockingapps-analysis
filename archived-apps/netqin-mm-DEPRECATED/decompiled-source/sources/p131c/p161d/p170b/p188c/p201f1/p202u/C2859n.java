package p131c.p161d.p170b.p188c.p201f1.p202u;

import android.net.Uri;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.f1.u.n */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f1/u/n.class */
public class C2859n {

    /* renamed from: a */
    public final Map<String, Object> f10399a = new HashMap();

    /* renamed from: b */
    public final List<String> f10400b = new ArrayList();

    /* renamed from: a */
    public static C2859n m28803a(C2859n nVar, long j) {
        nVar.m28800a("exo_len", j);
        return nVar;
    }

    /* renamed from: a */
    public static C2859n m28802a(C2859n nVar, Uri uri) {
        if (uri == null) {
            nVar.m28801a("exo_redir");
            return nVar;
        }
        nVar.m28798a("exo_redir", uri.toString());
        return nVar;
    }

    /* renamed from: a */
    public C2859n m28801a(String str) {
        this.f10400b.add(str);
        this.f10399a.remove(str);
        return this;
    }

    /* renamed from: a */
    public C2859n m28800a(String str, long j) {
        m28799a(str, Long.valueOf(j));
        return this;
    }

    /* renamed from: a */
    public final C2859n m28799a(String str, Object obj) {
        Map<String, Object> map = this.f10399a;
        C2877e.m28737a(str);
        C2877e.m28737a(obj);
        map.put(str, obj);
        this.f10400b.remove(str);
        return this;
    }

    /* renamed from: a */
    public C2859n m28798a(String str, String str2) {
        m28799a(str, (Object) str2);
        return this;
    }

    /* renamed from: a */
    public Map<String, Object> m28804a() {
        HashMap hashMap = new HashMap(this.f10399a);
        for (Map.Entry entry : hashMap.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                entry.setValue(Arrays.copyOf(bArr, bArr.length));
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: b */
    public List<String> m28797b() {
        return Collections.unmodifiableList(new ArrayList(this.f10400b));
    }
}

package p081h.p203i.p325c.p337n.p338d.p348n.p349c;

import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c;
/* renamed from: h.i.c.n.d.n.c.d */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/n/c/d.class */
public class C9795d implements AbstractC9793c {

    /* renamed from: a */
    public final File f22226a;

    /* renamed from: b */
    public final File[] f22227b;

    /* renamed from: c */
    public final Map<String, String> f22228c;

    public C9795d(File file) {
        this(file, Collections.emptyMap());
    }

    public C9795d(File file, Map<String, String> map) {
        this.f22226a = file;
        this.f22227b = new File[]{file};
        this.f22228c = new HashMap(map);
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c
    /* renamed from: a */
    public Map<String, String> mo14190a() {
        return Collections.unmodifiableMap(this.f22228c);
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c
    /* renamed from: b */
    public String mo14189b() {
        String c = mo14188c();
        return c.substring(0, c.lastIndexOf(46));
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c
    /* renamed from: c */
    public String mo14188c() {
        return mo14187d().getName();
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c
    /* renamed from: d */
    public File mo14187d() {
        return this.f22226a;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c
    /* renamed from: e */
    public File[] mo14186e() {
        return this.f22227b;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c
    public AbstractC9793c.EnumC9794a getType() {
        return AbstractC9793c.EnumC9794a.JAVA;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c
    public void remove() {
        C9513b a = C9513b.m15015a();
        a.m15013a("Removing report at " + this.f22226a.getPath());
        this.f22226a.delete();
    }
}

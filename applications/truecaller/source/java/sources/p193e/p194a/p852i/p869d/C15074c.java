package p193e.p194a.p852i.p869d;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.i.d.c */
/* loaded from: classes2-dex2jar.jar:e/a/i/d/c.class */
public final class C15074c implements AbstractC15073b {

    /* renamed from: a */
    public int f43022a;

    /* renamed from: b */
    public String f43023b;

    @Override // p193e.p194a.p852i.p869d.AbstractC15073b
    /* renamed from: E3 */
    public void mo19180E3() {
        this.f43022a = 0;
        this.f43023b = null;
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15073b
    /* renamed from: F3 */
    public String mo19179F3() {
        String str;
        String str2 = this.f43023b;
        if (str2 != null) {
            StringBuilder m8724D = C22128a.m8724D(str2, '_');
            m8724D.append(this.f43022a);
            str = m8724D.toString();
        } else {
            str = null;
        }
        return str;
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15073b
    /* renamed from: G3 */
    public void mo19178G3(String str) {
        l.e(str, "adPlacement");
        this.f43022a++;
        this.f43023b = str;
    }
}

package p193e.p194a.p937j4.p939b.p942c;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1114o5.C19090q;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.p699c2.C13197i0;
import p193e.p194a.p937j4.p939b.p941b.C15577c;
@Deprecated
/* renamed from: e.a.j4.b.c.b */
/* loaded from: classes11-dex2jar.jar:e/a/j4/b/c/b.class */
public class C15582b extends C13197i0 {

    /* renamed from: j */
    public long f44066j;

    /* renamed from: k */
    public String f44067k;

    /* renamed from: l */
    public C15577c f44068l;

    /* renamed from: m */
    public List<C15583c> f44069m;

    /* renamed from: n */
    public List<String> f44070n;

    @Override // p193e.p194a.p682e.p699c2.C13197i0
    /* renamed from: d */
    public String mo18608d(Context context) {
        List<C15583c> list = this.f44069m;
        String str = (list == null || list.size() <= 0) ? "" : this.f44069m.get(0).f44072b;
        return !TextUtils.isEmpty(str) ? str : super.mo18608d(context);
    }

    @Override // p193e.p194a.p682e.p699c2.C13197i0
    /* renamed from: e */
    public Object mo18607e() {
        StringBuilder m8728C = C22128a.m8728C("");
        m8728C.append(this.f44066j);
        return C19231g0.m13808I(m8728C.toString());
    }

    @Override // p193e.p194a.p682e.p699c2.C13197i0
    /* renamed from: f */
    public Bitmap mo18606f(Context context) {
        List<C15583c> list;
        String m14142b;
        if (this.f44066j <= 0 && (list = this.f44069m) != null && !list.isEmpty() && (m14142b = C19090q.m14142b(context, this.f44069m.get(0).f44072b)) != null) {
            try {
                this.f44066j = Long.valueOf(m14142b).longValue();
            } catch (NumberFormatException e) {
                C10480a.m26057J1(e, "OldContact.getImage error");
            }
        }
        return C19090q.m14138f(context, this.f44066j, true);
    }

    @Override // p193e.p194a.p682e.p699c2.C13197i0
    /* renamed from: h */
    public String mo18605h(Context context) {
        return this.f44067k;
    }
}

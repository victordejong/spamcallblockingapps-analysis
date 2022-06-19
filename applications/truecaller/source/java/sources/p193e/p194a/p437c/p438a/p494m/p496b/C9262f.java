package p193e.p194a.p437c.p438a.p494m.p496b;

import android.widget.TextView;
import p193e.p194a.p437c.p438a.p477g.C9088y1;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.c.a.m.b.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/f.class */
public final class C9262f extends m implements l<String, s> {

    /* renamed from: b */
    public final /* synthetic */ C9088y1 f28191b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9262f(C9088y1 c9088y1) {
        super(1);
        this.f28191b = c9088y1;
    }

    /* renamed from: d */
    public Object m27771d(Object obj) {
        String str = (String) obj;
        if (str != null) {
            TextView textView = this.f28191b.f27739f;
            s1.z.c.l.d(textView, "deepLink");
            textView.setText(str);
        } else {
            TextView textView2 = this.f28191b.f27739f;
            s1.z.c.l.d(textView2, "deepLink");
            textView2.setText("null link");
        }
        return s.a;
    }
}

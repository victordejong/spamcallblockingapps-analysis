package p193e.p194a.p372b0.p430q;

import androidx.recyclerview.widget.RecyclerView;
import e.m.f.a.f;
import e.m.f.a.g;
import e.m.f.a.j;
import java.util.Objects;
/* renamed from: e.a.b0.q.e0 */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/e0.class */
public class C8578e0 {

    /* renamed from: a */
    public static final String f26395a = Character.toString(8206);

    /* renamed from: b */
    public static final String f26396b = Character.toString(8236);

    /* renamed from: a */
    public static String m28344a(String str) {
        if (str == null || str.isEmpty()) {
            str = "";
        } else {
            j q = j.q();
            Objects.requireNonNull(q);
            g gVar = new g(q, str, (String) null, j.a.b, (long) RecyclerView.FOREVER_NS);
            if (gVar.hasNext()) {
                StringBuilder sb = new StringBuilder(str);
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (!gVar.hasNext()) {
                        break;
                    }
                    f fVar = (f) gVar.next();
                    int i3 = fVar.a;
                    String str2 = f26395a;
                    sb.insert(i3 + i2, str2);
                    int length = str2.length() + i2;
                    int a = fVar.a();
                    String str3 = f26396b;
                    sb.insert(a + length, str3);
                    i = str3.length() + length;
                }
                str = sb.toString();
            }
        }
        return str;
    }
}

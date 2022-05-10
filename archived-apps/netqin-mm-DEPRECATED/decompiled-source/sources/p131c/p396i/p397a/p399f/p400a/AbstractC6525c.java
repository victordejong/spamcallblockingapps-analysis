package p131c.p396i.p397a.p399f.p400a;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
@Retention(RetentionPolicy.SOURCE)
/* renamed from: c.i.a.f.a.c */
/* loaded from: classes-dex2jar.jar:c/i/a/f/a/c.class */
public @interface AbstractC6525c {

    /* renamed from: b */
    public static final int[] f20293b = {-1, 1, 2, 4, 8, 16};

    /* renamed from: c.i.a.f.a.c$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/f/a/c$a.class */
    public static class C6526a {
        /* renamed from: a */
        public static List<Integer> m20572a(int i) {
            int[] iArr;
            ArrayList arrayList = new ArrayList();
            if (i == -1) {
                arrayList.add(-1);
            } else {
                for (int i2 : AbstractC6525c.f20293b) {
                    if ((i & i2) == i2) {
                        arrayList.add(Integer.valueOf(i2));
                    }
                }
            }
            return arrayList;
        }
    }
}

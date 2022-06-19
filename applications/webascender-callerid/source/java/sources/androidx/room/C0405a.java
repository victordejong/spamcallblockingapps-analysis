package androidx.room;

import android.content.Context;
import androidx.room.AbstractC0419j;
import f.t.a.c;
import java.io.File;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: androidx.room.a */
/* loaded from: classes-dex2jar.jar:androidx/room/a.class */
public class C0405a {

    /* renamed from: a */
    public final c.c f2161a;

    /* renamed from: b */
    public final Context f2162b;

    /* renamed from: c */
    public final String f2163c;

    /* renamed from: d */
    public final AbstractC0419j.C0423d f2164d;

    /* renamed from: e */
    public final List<AbstractC0419j.AbstractC0421b> f2165e;

    /* renamed from: f */
    public final boolean f2166f;

    /* renamed from: g */
    public final AbstractC0419j.EnumC0422c f2167g;

    /* renamed from: h */
    public final Executor f2168h;

    /* renamed from: i */
    public final Executor f2169i;

    /* renamed from: j */
    public final boolean f2170j;

    /* renamed from: k */
    public final boolean f2171k;

    /* renamed from: l */
    public final boolean f2172l;

    /* renamed from: m */
    private final Set<Integer> f2173m;

    public C0405a(Context context, String str, c.c cVar, AbstractC0419j.C0423d c0423d, List<AbstractC0419j.AbstractC0421b> list, boolean z, AbstractC0419j.EnumC0422c enumC0422c, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set<Integer> set, String str2, File file) {
        this.f2161a = cVar;
        this.f2162b = context;
        this.f2163c = str;
        this.f2164d = c0423d;
        this.f2165e = list;
        this.f2166f = z;
        this.f2167g = enumC0422c;
        this.f2168h = executor;
        this.f2169i = executor2;
        this.f2170j = z2;
        this.f2171k = z3;
        this.f2172l = z4;
        this.f2173m = set;
    }

    /* renamed from: a */
    public boolean m4843a(int i, int i2) {
        boolean z;
        if (!(i > i2) || !this.f2172l) {
            if (this.f2171k) {
                Set<Integer> set = this.f2173m;
                z = true;
                if (set != null) {
                    if (!set.contains(Integer.valueOf(i))) {
                        z = true;
                    }
                }
                return z;
            }
            z = false;
            return z;
        }
        return false;
    }
}

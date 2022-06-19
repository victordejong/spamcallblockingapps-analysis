package p193e.p194a.p437c.p438a.p494m.p497c;

import android.widget.SearchView;
import java.util.Objects;
import p193e.p194a.p437c.p438a.p494m.p496b.C9256c;
import s1.z.c.l;
/* renamed from: e.a.c.a.m.c.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/d.class */
public final class C9308d implements SearchView.OnQueryTextListener {

    /* renamed from: a */
    public final /* synthetic */ C9298b f28300a;

    public C9308d(C9298b c9298b) {
        this.f28300a = c9298b;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        if (str != null) {
            C9256c c9256c = (C9256c) this.f28300a.f28285b.getValue();
            Objects.requireNonNull(c9256c);
            l.e(str, "searchTerm");
            c9256c.f28176a.mo1001j(str);
            return true;
        }
        return true;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        if (str != null) {
            C9256c c9256c = (C9256c) this.f28300a.f28285b.getValue();
            Objects.requireNonNull(c9256c);
            l.e(str, "searchTerm");
            c9256c.f28176a.mo1001j(str);
            return true;
        }
        return true;
    }
}

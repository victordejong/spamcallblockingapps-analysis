package p193e.p194a.p682e.p699c2;

import android.view.MenuItem;
import com.truecaller.p183ui.components.DropdownMenuTextView;
import p1727n3.p1734b.p1743f.C25508g0;
/* renamed from: e.a.e.c2.a0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c2/a0.class */
public class C13178a0 implements C25508g0.AbstractC25510b {

    /* renamed from: a */
    public final /* synthetic */ DropdownMenuTextView f38295a;

    public C13178a0(DropdownMenuTextView dropdownMenuTextView) {
        this.f38295a = dropdownMenuTextView;
    }

    @Override // p1727n3.p1734b.p1743f.C25508g0.AbstractC25510b
    public boolean onMenuItemClick(MenuItem menuItem) {
        C25508g0.AbstractC25510b abstractC25510b = this.f38295a.f15738g;
        if (abstractC25510b != null) {
            return abstractC25510b.onMenuItemClick(menuItem);
        }
        return false;
    }
}

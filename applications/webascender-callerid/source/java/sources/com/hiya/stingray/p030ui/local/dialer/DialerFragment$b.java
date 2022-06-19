package com.hiya.stingray.p030ui.local.dialer;

import android.widget.Filter;
import androidx.recyclerview.widget.RecyclerView;
import com.hiya.stingray.o;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.dialer.DialerFragment$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/DialerFragment$b.class */
final class DialerFragment$b implements Filter.FilterListener {

    /* renamed from: f */
    final /* synthetic */ DialerFragment f4689f;

    DialerFragment$b(DialerFragment dialerFragment) {
        this.f4689f = dialerFragment;
    }

    @Override // android.widget.Filter.FilterListener
    public final void onFilterComplete(int i) {
        RecyclerView f1 = this.f4689f.f1(o.E3);
        k.c(f1, "searchRecyclerView");
        f1.setVisibility(0);
    }
}

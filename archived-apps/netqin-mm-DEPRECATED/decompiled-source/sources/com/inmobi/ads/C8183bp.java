package com.inmobi.ads;

import android.content.Context;
import android.os.Build;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.inmobi.ads.NativeScrollableContainer;
/* renamed from: com.inmobi.ads.bp */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bp.class */
public class C8183bp extends NativeScrollableContainer {

    /* renamed from: a */
    public RecyclerView f31919a;

    /* renamed from: b */
    public boolean f31920b = false;

    public C8183bp(Context context) {
        super(context, 1);
    }

    @Override // com.inmobi.ads.NativeScrollableContainer
    /* renamed from: a */
    public final void mo6243a(C8105am amVar, AbstractC8137ax axVar, int i, int i2, NativeScrollableContainer.AbstractC8029a aVar) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) C8154bf.m6295a(amVar.m6440a(0), this);
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.setMarginStart(20);
            layoutParams.setMarginEnd(20);
        } else {
            layoutParams.setMargins(20, 0, 20, 0);
        }
        layoutParams.gravity = i2;
        RecyclerView recyclerView = new RecyclerView(getContext());
        this.f31919a = recyclerView;
        recyclerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f31919a.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        addView(this.f31919a);
        this.f31919a.setAdapter((NativeRecyclerViewAdapter) axVar);
    }
}

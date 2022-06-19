package com.hiya.stingray.p030ui.local.p034g;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.fragment.app.e;
import com.hiya.stingray.ui.local.search.SearchActivity;
/* renamed from: com.hiya.stingray.ui.local.g.a$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/g/a$b.class */
final class a$b implements View.OnFocusChangeListener {

    /* renamed from: f */
    final /* synthetic */ a f4725f;

    a$b(a aVar) {
        this.f4725f = aVar;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        if (z) {
            this.f4725f.startActivity(new Intent((Context) this.f4725f.getActivity(), (Class<?>) SearchActivity.class));
            e activity = this.f4725f.getActivity();
            if (activity != null) {
                activity.overridePendingTransition(17432576, 17432577);
            }
            view.clearFocus();
        }
    }
}

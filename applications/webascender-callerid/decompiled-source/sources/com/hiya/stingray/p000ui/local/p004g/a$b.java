package com.hiya.stingray.p000ui.local.p004g;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.fragment.app.e;
import com.hiya.stingray.ui.local.search.SearchActivity;
/* renamed from: com.hiya.stingray.ui.local.g.a$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/g/a$b.class */
final class a$b implements View.OnFocusChangeListener {

    /* renamed from: f */
    final /* synthetic */ a f46f;

    a$b(a aVar) {
        this.f46f = aVar;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        if (z) {
            this.f46f.startActivity(new Intent((Context) this.f46f.getActivity(), (Class<?>) SearchActivity.class));
            e activity = this.f46f.getActivity();
            if (activity != null) {
                activity.overridePendingTransition(17432576, 17432577);
            }
            view.clearFocus();
        }
    }
}

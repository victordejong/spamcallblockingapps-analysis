package com.hiya.stingray.p000ui.local.settings;

import android.widget.CompoundButton;
import com.hiya.stingray.t.a1;
import com.hiya.stingray.ui.local.settings.m;
import kotlin.r;
import kotlin.w.b.p;
/* renamed from: com.hiya.stingray.ui.local.settings.m$a$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/m$a$b.class */
final class m$a$b implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ m.a f105a;

    /* renamed from: b */
    final /* synthetic */ a1 f106b;

    m$a$b(m.a aVar, a1 a1Var) {
        this.f105a = aVar;
        this.f106b = a1Var;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        p c = this.f105a.a.c();
        if (c != null) {
            r rVar = (r) c.invoke(this.f106b, Boolean.valueOf(z));
        }
    }
}

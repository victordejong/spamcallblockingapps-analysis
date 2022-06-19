package com.hiya.stingray.p030ui.local.settings;

import android.widget.CompoundButton;
import com.hiya.stingray.t.a1;
import com.hiya.stingray.ui.local.settings.m;
import kotlin.r;
import kotlin.w.b.p;
/* renamed from: com.hiya.stingray.ui.local.settings.m$a$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/m$a$b.class */
final class m$a$b implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ m.a f4784a;

    /* renamed from: b */
    final /* synthetic */ a1 f4785b;

    m$a$b(m.a aVar, a1 a1Var) {
        this.f4784a = aVar;
        this.f4785b = a1Var;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        p c = this.f4784a.a.c();
        if (c != null) {
            r rVar = (r) c.invoke(this.f4785b, Boolean.valueOf(z));
        }
    }
}

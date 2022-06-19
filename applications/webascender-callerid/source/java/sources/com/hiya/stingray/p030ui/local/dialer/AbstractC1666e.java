package com.hiya.stingray.p030ui.local.dialer;

import android.content.Context;
import com.hiya.stingray.t.n0;
import java.util.List;
/* renamed from: com.hiya.stingray.ui.local.dialer.e */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/e.class */
public interface AbstractC1666e {

    /* renamed from: com.hiya.stingray.ui.local.dialer.e$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/e$a.class */
    public enum EnumC1667a {
        LIST_ITEM,
        DIAL_PAD
    }

    /* renamed from: B0 */
    void m1396B0(String str, EnumC1667a enumC1667a);

    /* renamed from: e */
    void m1395e(List<? extends n0> list, List<? extends n0> list2);

    Context getContext();
}

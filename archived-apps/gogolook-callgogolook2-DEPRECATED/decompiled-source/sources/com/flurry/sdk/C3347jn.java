package com.flurry.sdk;

import java.util.Comparator;
/* renamed from: com.flurry.sdk.jn */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jn.class */
public class C3347jn implements Comparator<Runnable> {

    /* renamed from: a */
    public static final String f5726a = C3347jn.class.getSimpleName();

    /* renamed from: a */
    public static int m32629a(Runnable runnable) {
        int i = Integer.MAX_VALUE;
        if (runnable != null) {
            if (runnable instanceof C3348jo) {
                AbstractC3451le leVar = (AbstractC3451le) ((C3348jo) runnable).m32628a();
                i = Integer.MAX_VALUE;
                if (leVar != null) {
                    i = leVar.f5941u;
                }
            } else if (runnable instanceof AbstractC3451le) {
                i = ((AbstractC3451le) runnable).f5941u;
            } else {
                C3356jq.m32615a(6, f5726a, "Unknown runnable class: " + runnable.getClass().getName());
                i = Integer.MAX_VALUE;
            }
        }
        return i;
    }

    @Override // java.util.Comparator
    public /* synthetic */ int compare(Runnable runnable, Runnable runnable2) {
        int a = m32629a(runnable);
        int a2 = m32629a(runnable2);
        if (a < a2) {
            return -1;
        }
        return a > a2 ? 1 : 0;
    }
}

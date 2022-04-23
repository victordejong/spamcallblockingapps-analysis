package com.vladlee.easyblacklist;

import android.database.ContentObserver;
import android.os.Handler;
import androidx.p043e.p044a.AbstractC0816a;
/* renamed from: com.vladlee.easyblacklist.fp */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fp.class */
final class C3431fp extends ContentObserver {

    /* renamed from: a */
    final /* synthetic */ SmsChatActivity f19603a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3431fp(SmsChatActivity smsChatActivity, Handler handler) {
        super(handler);
        this.f19603a = smsChatActivity;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        String str;
        long j;
        String str2;
        long j2;
        super.onChange(z);
        if (!z) {
            SmsChatActivity smsChatActivity = this.f19603a;
            str = smsChatActivity.f19271k;
            C3318by.m173f(smsChatActivity, str);
            j = this.f19603a.f19272l;
            if (j != 0) {
                SmsChatActivity smsChatActivity2 = this.f19603a;
                j2 = smsChatActivity2.f19272l;
                if (C3318by.m184c(smsChatActivity2, j2) != 0) {
                    return;
                }
            }
            SmsChatActivity smsChatActivity3 = this.f19603a;
            str2 = smsChatActivity3.f19271k;
            smsChatActivity3.f19272l = C3318by.m176e(smsChatActivity3, str2);
            this.f19603a.m7851g().mo8001a((AbstractC0816a.AbstractC0817a) this.f19603a);
        }
    }
}

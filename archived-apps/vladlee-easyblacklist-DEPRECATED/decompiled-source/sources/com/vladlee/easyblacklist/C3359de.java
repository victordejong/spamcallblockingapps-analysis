package com.vladlee.easyblacklist;

import java.util.Comparator;
/* renamed from: com.vladlee.easyblacklist.de */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/de.class */
final class C3359de implements Comparator<C3363di> {

    /* renamed from: a */
    final /* synthetic */ DialogC3357dc f19485a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3359de(DialogC3357dc dcVar) {
        this.f19485a = dcVar;
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(C3363di diVar, C3363di diVar2) {
        C3363di diVar3 = diVar;
        C3363di diVar4 = diVar2;
        return ((!diVar3.f19495c || !diVar4.f19495c) && (diVar3.f19495c || diVar4.f19495c)) ? diVar3.f19495c ? -1 : 1 : diVar3.f19493a.compareTo(diVar4.f19493a);
    }
}

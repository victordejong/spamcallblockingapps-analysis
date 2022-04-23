package com.vladlee.easyblacklist;

import com.vladlee.p076a.C3238b;
import com.vladlee.p076a.C3246f;
import com.vladlee.p076a.C3247g;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.dl */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/dl.class */
public final class C3366dl implements C3238b.AbstractC3242d {

    /* renamed from: a */
    final /* synthetic */ C3365dk f19509a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3366dl(C3365dk dkVar) {
        this.f19509a = dkVar;
    }

    @Override // com.vladlee.p076a.C3238b.AbstractC3242d
    /* renamed from: a */
    public final void mo57a(C3246f fVar, C3247g gVar) {
        if (fVar.m405c()) {
            this.f19509a.f19507h = false;
        } else if (gVar.m402a("no_ads")) {
            this.f19509a.f19507h = true;
        }
    }
}

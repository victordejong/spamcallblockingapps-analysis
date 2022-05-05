package com.vladlee.easyblacklist;

import android.util.Log;
import com.vladlee.p076a.C3238b;
import com.vladlee.p076a.C3246f;
import com.vladlee.p076a.C3248h;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.dm */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/dm.class */
public final class C3367dm implements C3238b.AbstractC3240b {

    /* renamed from: a */
    final /* synthetic */ C3365dk f19510a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3367dm(C3365dk dkVar) {
        this.f19510a = dkVar;
    }

    @Override // com.vladlee.p076a.C3238b.AbstractC3240b
    /* renamed from: a */
    public final void mo56a(C3246f fVar, C3248h hVar) {
        if (fVar.m405c()) {
            Log.d("DEBUG", "Error purchasing: ".concat(String.valueOf(fVar)));
            this.f19510a.f19507h = false;
        } else if (hVar.m400a().equals("no_ads")) {
            this.f19510a.f19507h = true;
        }
    }
}

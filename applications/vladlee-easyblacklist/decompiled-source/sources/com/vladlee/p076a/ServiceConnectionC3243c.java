package com.vladlee.p076a;

import android.content.ComponentName;
import android.content.ServiceConnection;
import com.vladlee.p076a.C3238b;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.a.c */
/* loaded from: classes-dex2jar.jar:com/vladlee/a/c.class */
public final class ServiceConnectionC3243c implements ServiceConnection {

    /* renamed from: a */
    final /* synthetic */ C3238b.AbstractC3241c f19188a;

    /* renamed from: b */
    final /* synthetic */ C3238b f19189b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ServiceConnectionC3243c(C3238b bVar, C3238b.AbstractC3241c cVar) {
        this.f19189b = bVar;
        this.f19188a = cVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    @Override // android.content.ServiceConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onServiceConnected(android.content.ComponentName r7, android.os.IBinder r8) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vladlee.p076a.ServiceConnectionC3243c.onServiceConnected(android.content.ComponentName, android.os.IBinder):void");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f19189b.m416a("Billing service disconnected.");
        this.f19189b.f19181k = null;
    }
}

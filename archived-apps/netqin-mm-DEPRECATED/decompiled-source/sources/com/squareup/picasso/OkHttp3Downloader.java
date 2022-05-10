package com.squareup.picasso;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import p599h.AbstractC10210e;
import p599h.C10091a0;
import p599h.C10097c;
import p599h.C10244w;
import p599h.C10250y;
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/OkHttp3Downloader.class */
public final class OkHttp3Downloader implements Downloader {
    public final C10097c cache;
    public final AbstractC10210e.AbstractC10211a client;
    public boolean sharedClient;

    public OkHttp3Downloader(Context context) {
        this(Utils.createDefaultCacheDir(context));
    }

    public OkHttp3Downloader(Context context, long j) {
        this(Utils.createDefaultCacheDir(context), j);
    }

    public OkHttp3Downloader(AbstractC10210e.AbstractC10211a aVar) {
        this.sharedClient = true;
        this.client = aVar;
        this.cache = null;
    }

    public OkHttp3Downloader(C10244w wVar) {
        this.sharedClient = true;
        this.client = wVar;
        this.cache = wVar.m868e();
    }

    public OkHttp3Downloader(File file) {
        this(file, Utils.calculateDiskCacheSize(file));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public OkHttp3Downloader(java.io.File r8, long r9) {
        /*
            r7 = this;
            h.w$b r0 = new h.w$b
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            h.c r1 = new h.c
            r2 = r1
            r3 = r8
            r4 = r9
            r2.<init>(r3, r4)
            h.w$b r0 = r0.m838a(r1)
            r0 = r7
            r1 = r11
            h.w r1 = r1.m840a()
            r0.<init>(r1)
            r0 = r7
            r1 = 0
            r0.sharedClient = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.OkHttp3Downloader.<init>(java.io.File, long):void");
    }

    @Override // com.squareup.picasso.Downloader
    public C10091a0 load(C10250y yVar) throws IOException {
        return this.client.mo871a(yVar).execute();
    }

    @Override // com.squareup.picasso.Downloader
    public void shutdown() {
        C10097c cVar;
        if (!this.sharedClient && (cVar = this.cache) != null) {
            try {
                cVar.close();
            } catch (IOException e) {
            }
        }
    }
}

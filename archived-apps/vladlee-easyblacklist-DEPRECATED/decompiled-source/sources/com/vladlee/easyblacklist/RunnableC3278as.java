package com.vladlee.easyblacklist;

import android.content.Context;
import android.media.AudioManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.as */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/as.class */
public final class RunnableC3278as implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Context f19325a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC3278as(Context context) {
        this.f19325a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AudioManager audioManager = (AudioManager) this.f19325a.getSystemService("audio");
        int ringerMode = audioManager.getRingerMode();
        BlockService.m363a(audioManager, ringerMode);
        try {
            Thread.sleep(1000L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        BlockService.m359b(audioManager, ringerMode);
    }
}

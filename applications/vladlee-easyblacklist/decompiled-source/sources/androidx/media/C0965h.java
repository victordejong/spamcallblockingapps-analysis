package androidx.media;

import android.os.Bundle;
import android.support.p014v4.p015os.ResultReceiver;
import androidx.media.MediaBrowserServiceCompat;
/* renamed from: androidx.media.h */
/* loaded from: classes-dex2jar.jar:androidx/media/h.class */
final class C0965h extends MediaBrowserServiceCompat.C0953c<Bundle> {

    /* renamed from: a */
    final /* synthetic */ ResultReceiver f3968a;

    /* renamed from: b */
    final /* synthetic */ MediaBrowserServiceCompat f3969b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0965h(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
        super(obj);
        this.f3969b = mediaBrowserServiceCompat;
        this.f3968a = resultReceiver;
    }

    @Override // androidx.media.MediaBrowserServiceCompat.C0953c
    /* renamed from: a */
    final /* synthetic */ void mo7526a() {
        this.f3968a.m9983b(0, null);
    }

    @Override // androidx.media.MediaBrowserServiceCompat.C0953c
    /* renamed from: b */
    final void mo7525b() {
        this.f3968a.m9983b(-1, null);
    }
}

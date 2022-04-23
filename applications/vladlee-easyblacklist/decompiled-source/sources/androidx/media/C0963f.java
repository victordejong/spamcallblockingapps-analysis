package androidx.media;

import android.os.Bundle;
import android.support.p014v4.media.MediaBrowserCompat;
import android.support.p014v4.p015os.ResultReceiver;
import androidx.media.MediaBrowserServiceCompat;
/* renamed from: androidx.media.f */
/* loaded from: classes-dex2jar.jar:androidx/media/f.class */
final class C0963f extends MediaBrowserServiceCompat.C0953c<MediaBrowserCompat.MediaItem> {

    /* renamed from: a */
    final /* synthetic */ ResultReceiver f3964a;

    /* renamed from: b */
    final /* synthetic */ MediaBrowserServiceCompat f3965b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0963f(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
        super(obj);
        this.f3965b = mediaBrowserServiceCompat;
        this.f3964a = resultReceiver;
    }

    @Override // androidx.media.MediaBrowserServiceCompat.C0953c
    /* renamed from: a */
    final /* synthetic */ void mo7526a() {
        if ((m7534f() & 2) != 0) {
            this.f3964a.m9983b(-1, null);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("media_item", null);
        this.f3964a.m9983b(0, bundle);
    }
}

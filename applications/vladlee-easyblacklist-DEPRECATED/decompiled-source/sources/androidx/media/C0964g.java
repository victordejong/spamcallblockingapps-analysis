package androidx.media;

import android.support.p014v4.media.MediaBrowserCompat;
import android.support.p014v4.p015os.ResultReceiver;
import androidx.media.MediaBrowserServiceCompat;
import java.util.List;
/* renamed from: androidx.media.g */
/* loaded from: classes-dex2jar.jar:androidx/media/g.class */
final class C0964g extends MediaBrowserServiceCompat.C0953c<List<MediaBrowserCompat.MediaItem>> {

    /* renamed from: a */
    final /* synthetic */ ResultReceiver f3966a;

    /* renamed from: b */
    final /* synthetic */ MediaBrowserServiceCompat f3967b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0964g(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
        super(obj);
        this.f3967b = mediaBrowserServiceCompat;
        this.f3966a = resultReceiver;
    }

    @Override // androidx.media.MediaBrowserServiceCompat.C0953c
    /* renamed from: a */
    final /* synthetic */ void mo7526a() {
        this.f3966a.m9983b(-1, null);
    }
}

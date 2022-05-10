package p012b.p076s.p116d;

import androidx.media.MediaBrowserServiceCompat;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaParcelUtils;
import androidx.media2.common.ParcelImplListSlice;
import androidx.versionedparcelable.ParcelImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
/* renamed from: b.s.d.i */
/* loaded from: classes-dex2jar.jar:b/s/d/i.class */
public class C1796i {

    /* renamed from: a */
    public static final Map<String, String> f7235a = new HashMap();

    /* renamed from: b */
    public static final Map<String, String> f7236b = new HashMap();

    /* renamed from: b.s.d.i$a */
    /* loaded from: classes-dex2jar.jar:b/s/d/i$a.class */
    public static final class ExecutorC1797a implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            runnable.run();
        }
    }

    static {
        new MediaBrowserServiceCompat.C0242e("androidx.media2.session.MediaLibraryService", null);
        new ExecutorC1797a();
        f7235a.put("android.media.metadata.ADVERTISEMENT", "androidx.media2.metadata.ADVERTISEMENT");
        f7235a.put("android.media.metadata.BT_FOLDER_TYPE", "androidx.media2.metadata.BROWSABLE");
        f7235a.put("android.media.metadata.DOWNLOAD_STATUS", "androidx.media2.metadata.DOWNLOAD_STATUS");
        for (Map.Entry<String, String> entry : f7235a.entrySet()) {
            if (!f7236b.containsKey(entry.getValue())) {
                f7236b.put(entry.getValue(), entry.getKey());
            } else {
                throw new RuntimeException("Shouldn't map to the same value");
            }
        }
    }

    /* renamed from: a */
    public static MediaItem m32079a(MediaItem mediaItem) {
        MediaItem mediaItem2 = mediaItem;
        if (mediaItem != null) {
            if (mediaItem.getClass() == MediaItem.class) {
                mediaItem2 = mediaItem;
            } else {
                MediaItem.C0273a aVar = new MediaItem.C0273a();
                aVar.mo38198b(mediaItem.m38231j());
                aVar.mo38200a(mediaItem.m38234g());
                aVar.mo38199a(mediaItem.m38232i());
                mediaItem2 = aVar.mo38201a();
            }
        }
        return mediaItem2;
    }

    /* renamed from: a */
    public static ParcelImplListSlice m32077a(List<MediaItem> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            MediaItem mediaItem = list.get(i);
            if (mediaItem != null) {
                arrayList.add(MediaParcelUtils.m38221a(mediaItem));
            }
        }
        return new ParcelImplListSlice(arrayList);
    }

    /* renamed from: a */
    public static List<MediaItem> m32078a(ParcelImplListSlice parcelImplListSlice) {
        if (parcelImplListSlice == null) {
            return null;
        }
        List<ParcelImpl> a = parcelImplListSlice.m38220a();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < a.size(); i++) {
            ParcelImpl parcelImpl = a.get(i);
            if (parcelImpl != null) {
                arrayList.add((MediaItem) MediaParcelUtils.m38222a(parcelImpl));
            }
        }
        return arrayList;
    }
}

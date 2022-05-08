package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.mediastore.MediaStoreUtil;
import com.bumptech.glide.load.data.mediastore.ThumbFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import com.bumptech.glide.signature.ObjectKey;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader.class */
public class MediaStoreVideoThumbLoader implements ModelLoader<Uri, InputStream> {
    private final Context context;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory.class */
    public static class Factory implements ModelLoaderFactory<Uri, InputStream> {
        private final Context context;

        public Factory(Context context) {
            this.context = context;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Uri, InputStream> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new MediaStoreVideoThumbLoader(this.context);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public MediaStoreVideoThumbLoader(Context context) {
        this.context = context.getApplicationContext();
    }

    private boolean isRequestingDefaultFrame(Options options) {
        Long l = (Long) options.get(VideoDecoder.TARGET_FRAME);
        return l != null && l.longValue() == -1;
    }

    @Nullable
    public ModelLoader.LoadData<InputStream> buildLoadData(@NonNull Uri uri, int i, int i2, @NonNull Options options) {
        if (!MediaStoreUtil.isThumbnailSize(i, i2) || !isRequestingDefaultFrame(options)) {
            return null;
        }
        return new ModelLoader.LoadData<>(new ObjectKey(uri), ThumbFetcher.buildVideoFetcher(this.context, uri));
    }

    public boolean handles(@NonNull Uri uri) {
        return MediaStoreUtil.isMediaStoreVideoUri(uri);
    }
}

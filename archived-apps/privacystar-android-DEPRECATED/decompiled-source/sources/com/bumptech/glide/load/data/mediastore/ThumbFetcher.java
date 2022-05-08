package com.bumptech.glide.load.data.mediastore;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.ExifOrientationStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/mediastore/ThumbFetcher.class */
public class ThumbFetcher implements DataFetcher<InputStream> {
    private static final String TAG = "MediaStoreThumbFetcher";
    private InputStream inputStream;
    private final Uri mediaStoreImageUri;
    private final ThumbnailStreamOpener opener;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/mediastore/ThumbFetcher$ImageThumbnailQuery.class */
    static class ImageThumbnailQuery implements ThumbnailQuery {
        private static final String[] PATH_PROJECTION = {"_data"};
        private static final String PATH_SELECTION = "kind = 1 AND image_id = ?";
        private final ContentResolver contentResolver;

        ImageThumbnailQuery(ContentResolver contentResolver) {
            this.contentResolver = contentResolver;
        }

        @Override // com.bumptech.glide.load.data.mediastore.ThumbnailQuery
        public Cursor query(Uri uri) {
            return this.contentResolver.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, PATH_PROJECTION, PATH_SELECTION, new String[]{uri.getLastPathSegment()}, null);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/mediastore/ThumbFetcher$VideoThumbnailQuery.class */
    static class VideoThumbnailQuery implements ThumbnailQuery {
        private static final String[] PATH_PROJECTION = {"_data"};
        private static final String PATH_SELECTION = "kind = 1 AND video_id = ?";
        private final ContentResolver contentResolver;

        VideoThumbnailQuery(ContentResolver contentResolver) {
            this.contentResolver = contentResolver;
        }

        @Override // com.bumptech.glide.load.data.mediastore.ThumbnailQuery
        public Cursor query(Uri uri) {
            return this.contentResolver.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, PATH_PROJECTION, PATH_SELECTION, new String[]{uri.getLastPathSegment()}, null);
        }
    }

    @VisibleForTesting
    ThumbFetcher(Uri uri, ThumbnailStreamOpener thumbnailStreamOpener) {
        this.mediaStoreImageUri = uri;
        this.opener = thumbnailStreamOpener;
    }

    private static ThumbFetcher build(Context context, Uri uri, ThumbnailQuery thumbnailQuery) {
        return new ThumbFetcher(uri, new ThumbnailStreamOpener(Glide.get(context).getRegistry().getImageHeaderParsers(), thumbnailQuery, Glide.get(context).getArrayPool(), context.getContentResolver()));
    }

    public static ThumbFetcher buildImageFetcher(Context context, Uri uri) {
        return build(context, uri, new ImageThumbnailQuery(context.getContentResolver()));
    }

    public static ThumbFetcher buildVideoFetcher(Context context, Uri uri) {
        return build(context, uri, new VideoThumbnailQuery(context.getContentResolver()));
    }

    private InputStream openThumbInputStream() throws FileNotFoundException {
        InputStream open = this.opener.open(this.mediaStoreImageUri);
        int orientation = open != null ? this.opener.getOrientation(this.mediaStoreImageUri) : -1;
        InputStream inputStream = open;
        if (orientation != -1) {
            inputStream = new ExifOrientationStream(open, orientation);
        }
        return inputStream;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cleanup() {
        if (this.inputStream != null) {
            try {
                this.inputStream.close();
            } catch (IOException e) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public DataSource getDataSource() {
        return DataSource.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void loadData(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super InputStream> dataCallback) {
        try {
            this.inputStream = openThumbInputStream();
            dataCallback.onDataReady(this.inputStream);
        } catch (FileNotFoundException e) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Failed to find thumbnail file", e);
            }
            dataCallback.onLoadFailed(e);
        }
    }
}

package com.apptentive.android.sdk.util.image;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.URLUtil;
import android.widget.ImageView;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.util.cache.ImageMemoryCache;
import com.apptentive.android.sdk.util.task.ApptentiveDownloaderTask;
import com.apptentive.android.sdk.util.task.ApptentiveDrawableLoaderTask;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader.class */
public class ApptentiveAttachmentLoader {
    public static final int DRAWABLE_DOWNLOAD_TAG = C0724R.C0727id.apptentive_drawable_downloader;
    private static volatile ApptentiveAttachmentLoader instance;
    private ImageMemoryCache bitmapMemoryCache;
    private HashMap<String, ArrayList<LoaderRequest>> duplicateDownloads;
    private HashSet<String> filesBeingDownloaded;
    private int maxDownloads;
    private ArrayList<LoaderRequest> queuedDownLoaderRequests;
    private ArrayList<LoaderRequest> runningDownLoaderRequests;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback.class */
    public interface LoaderCallback {
        void onDownloadProgress(int i);

        void onDownloadStart();

        void onLoadTerminated();

        void onLoaded(ImageView imageView, int i, Bitmap bitmap);
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest.class */
    public class LoaderRequest implements ApptentiveDownloaderTask.FileDownloadListener, ApptentiveDrawableLoaderTask.BitmapLoadListener {
        private boolean bLoadImage;
        private final String conversationToken;
        private String diskCacheFilePath;
        private int imageViewHeight;
        private int imageViewWidth;
        private LoaderCallback loadingTaskCallback;
        private ApptentiveDownloaderTask mDrawableDownloaderTask;
        private ApptentiveDrawableLoaderTask mDrawableLoaderTask;
        private WeakReference<ImageView> mImageViewRef;
        private boolean mIsCancelled;
        private boolean mWasDownloaded = false;
        private int pos;
        private String uri;

        public LoaderRequest(String str, String str2, String str3, int i, ImageView imageView, int i2, int i3, boolean z, LoaderCallback loaderCallback) {
            if (str == null) {
                throw new IllegalArgumentException("Conversation token is null");
            }
            this.conversationToken = str;
            this.uri = str2;
            this.diskCacheFilePath = str3;
            this.imageViewWidth = i2;
            this.imageViewHeight = i3;
            this.mImageViewRef = new WeakReference<>(imageView);
            this.mIsCancelled = false;
            this.bLoadImage = z;
            this.loadingTaskCallback = loaderCallback;
            this.pos = i;
        }

        private void cancel() {
            ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.UTIL;
            ApptentiveLog.m403v(apptentiveLogTag, "ApptentiveAttachmentLoader cancel requested for: " + this.uri, new Object[0]);
            this.mIsCancelled = true;
            ArrayList arrayList = (ArrayList) ApptentiveAttachmentLoader.this.duplicateDownloads.get(this.uri);
            if (arrayList != null) {
                arrayList.remove(this);
                if (arrayList.size() > 0) {
                    ApptentiveAttachmentLoader.this.duplicateDownloads.put(this.uri, arrayList);
                } else {
                    ApptentiveAttachmentLoader.this.duplicateDownloads.remove(this.uri);
                }
            }
            if (ApptentiveAttachmentLoader.this.queuedDownLoaderRequests.contains(this)) {
                ApptentiveAttachmentLoader.this.queuedDownLoaderRequests.remove(this);
            }
            if (this.mDrawableDownloaderTask != null) {
                this.mDrawableDownloaderTask.cancel(true);
            }
            if (this.mDrawableLoaderTask != null) {
                this.mDrawableLoaderTask.cancel(true);
            }
        }

        private int indexOfDownloadWithDifferentURL() {
            Iterator it = ApptentiveAttachmentLoader.this.runningDownLoaderRequests.iterator();
            while (it.hasNext()) {
                LoaderRequest loaderRequest = (LoaderRequest) it.next();
                if (loaderRequest != null) {
                    ImageView imageView = loaderRequest.getImageView();
                    ImageView imageView2 = getImageView();
                    if (imageView2 != null && imageView != null && imageView.equals(imageView2) && !loaderRequest.getUrl().equals(this.uri)) {
                        return ApptentiveAttachmentLoader.this.runningDownLoaderRequests.indexOf(loaderRequest);
                    }
                }
            }
            return -1;
        }

        private int indexOfQueuedDownloadWithDifferentURL() {
            Iterator it = ApptentiveAttachmentLoader.this.queuedDownLoaderRequests.iterator();
            while (it.hasNext()) {
                LoaderRequest loaderRequest = (LoaderRequest) it.next();
                if (loaderRequest != null) {
                    ImageView imageView = loaderRequest.getImageView();
                    ImageView imageView2 = getImageView();
                    if (imageView2 != null && imageView != null && imageView.equals(imageView2) && !loaderRequest.getUrl().equals(this.uri)) {
                        return ApptentiveAttachmentLoader.this.queuedDownLoaderRequests.indexOf(loaderRequest);
                    }
                }
            }
            return -1;
        }

        private LoaderRequest isAnotherQueuedOrRunningWithSameUrl() {
            Iterator it = ApptentiveAttachmentLoader.this.queuedDownLoaderRequests.iterator();
            while (it.hasNext()) {
                LoaderRequest loaderRequest = (LoaderRequest) it.next();
                if (loaderRequest != null && loaderRequest.getUrl().equals(this.uri)) {
                    return loaderRequest;
                }
            }
            Iterator it2 = ApptentiveAttachmentLoader.this.runningDownLoaderRequests.iterator();
            while (it2.hasNext()) {
                LoaderRequest loaderRequest2 = (LoaderRequest) it2.next();
                if (loaderRequest2 != null && loaderRequest2.getUrl().equals(this.uri)) {
                    return loaderRequest2;
                }
            }
            return null;
        }

        private boolean isBeingDownloaded() {
            Iterator it = ApptentiveAttachmentLoader.this.runningDownLoaderRequests.iterator();
            while (it.hasNext()) {
                LoaderRequest loaderRequest = (LoaderRequest) it.next();
                if (loaderRequest != null) {
                    ImageView imageView = loaderRequest.getImageView();
                    ImageView imageView2 = getImageView();
                    if (!(imageView2 == null || imageView == null || (!imageView.equals(imageView2) && loaderRequest.getPosition() != getPosition()))) {
                        if (loaderRequest.getUrl().equals(this.uri)) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }

        private boolean isQueuedForDownload() {
            Iterator it = ApptentiveAttachmentLoader.this.queuedDownLoaderRequests.iterator();
            while (it.hasNext()) {
                LoaderRequest loaderRequest = (LoaderRequest) it.next();
                if (loaderRequest != null) {
                    ImageView imageView = loaderRequest.getImageView();
                    ImageView imageView2 = getImageView();
                    if (imageView2 != null && imageView != null && imageView.equals(imageView2) && loaderRequest.getUrl().equals(this.uri)) {
                        return true;
                    }
                }
            }
            return false;
        }

        @SuppressLint({"NewApi"})
        private void loadAttachmentFromDisk(ImageView imageView) {
            if (!this.mIsCancelled) {
                notFound();
            }
        }

        private void loadDrawable(Bitmap bitmap) {
            loadDrawable(bitmap, true);
        }

        private void loadDrawable(Bitmap bitmap, boolean z) {
            ApptentiveLog.m403v(ApptentiveLogTag.UTIL, "ApptentiveAttachmentLoader loadDrawable", new Object[0]);
            ImageView imageView = getImageView();
            if (imageView != null && this.loadingTaskCallback != null) {
                this.loadingTaskCallback.onLoaded(imageView, this.pos, bitmap);
            }
        }

        @SuppressLint({"NewApi"})
        private void loadImageFromDisk(ImageView imageView) {
            if (imageView != null && !this.mIsCancelled) {
                ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.UTIL;
                ApptentiveLog.m403v(apptentiveLogTag, "ApptentiveAttachmentLoader loadImageFromDisk: " + this.uri, new Object[0]);
                this.mDrawableLoaderTask = new ApptentiveDrawableLoaderTask(imageView, this);
                try {
                    if (Build.VERSION.SDK_INT >= 11) {
                        this.mDrawableLoaderTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.uri, this.diskCacheFilePath, String.valueOf(this.imageViewWidth), String.valueOf(this.imageViewHeight));
                    } else {
                        this.mDrawableLoaderTask.execute(this.uri, this.diskCacheFilePath, String.valueOf(this.imageViewWidth), String.valueOf(this.imageViewHeight));
                    }
                } catch (RejectedExecutionException e) {
                }
            }
        }

        public void doDownload() {
            if (!this.mIsCancelled) {
                ImageView imageView = this.mImageViewRef.get();
                if (imageView != null && imageView.getTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG) == this && URLUtil.isNetworkUrl(this.uri)) {
                    this.mDrawableDownloaderTask = new ApptentiveDownloaderTask(imageView, this);
                    try {
                        ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.UTIL;
                        ApptentiveLog.m403v(apptentiveLogTag, "ApptentiveAttachmentLoader doDownload: " + this.uri, new Object[0]);
                        if (Build.VERSION.SDK_INT >= 11) {
                            this.mDrawableDownloaderTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.uri, this.diskCacheFilePath, this.conversationToken);
                        } else {
                            this.mDrawableDownloaderTask.execute(this.uri, this.diskCacheFilePath, this.conversationToken);
                        }
                    } catch (RejectedExecutionException e) {
                    }
                    ApptentiveAttachmentLoader.this.runningDownLoaderRequests.add(this);
                    ApptentiveAttachmentLoader.this.filesBeingDownloaded.add(this.diskCacheFilePath);
                }
            } else if (!ApptentiveAttachmentLoader.this.queuedDownLoaderRequests.isEmpty() && ApptentiveAttachmentLoader.this.runningDownLoaderRequests.size() < ApptentiveAttachmentLoader.this.maxDownloads) {
                ((LoaderRequest) ApptentiveAttachmentLoader.this.queuedDownLoaderRequests.remove(0)).doDownload();
            }
        }

        public ApptentiveDownloaderTask getDrawableDownloaderTask() {
            return this.mDrawableDownloaderTask;
        }

        public ImageView getImageView() {
            return this.mImageViewRef.get();
        }

        public LoaderCallback getLoaderCallback() {
            return this.loadingTaskCallback;
        }

        public int getPosition() {
            return this.pos;
        }

        public String getUrl() {
            return this.uri;
        }

        public boolean isLoadingImage() {
            return this.bLoadImage;
        }

        public void load() {
            ImageView imageView = this.mImageViewRef.get();
            if (imageView != null) {
                ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.UTIL;
                ApptentiveLog.m403v(apptentiveLogTag, "ApptentiveAttachmentLoader load requested:" + this.uri, new Object[0]);
                ApptentiveLogTag apptentiveLogTag2 = ApptentiveLogTag.UTIL;
                ApptentiveLog.m403v(apptentiveLogTag2, "ApptentiveAttachmentLoader load requested on:" + imageView.toString(), new Object[0]);
                LoaderRequest loaderRequest = (LoaderRequest) imageView.getTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG);
                if (loaderRequest != null) {
                    if (loaderRequest.getUrl().equals(this.uri)) {
                        ApptentiveLogTag apptentiveLogTag3 = ApptentiveLogTag.UTIL;
                        ApptentiveLog.m403v(apptentiveLogTag3, "ApptentiveAttachmentLoader load new request denied:" + this.uri, new Object[0]);
                        return;
                    }
                    loaderRequest.cancel();
                }
                if (TextUtils.isEmpty(this.uri)) {
                    ApptentiveLog.m403v(ApptentiveLogTag.UTIL, "ApptentiveAttachmentLoader loadDrawable(clear)", new Object[0]);
                    loadDrawable(null);
                    imageView.setTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG, null);
                    return;
                }
                Bitmap bitmap = this.bLoadImage ? (Bitmap) ApptentiveAttachmentLoader.this.bitmapMemoryCache.getObjectFromCache(ImageMemoryCache.generateMemoryCacheEntryKey(this.uri, this.imageViewWidth, this.imageViewHeight)) : null;
                if (bitmap != null) {
                    this.mWasDownloaded = false;
                    ApptentiveLog.m403v(ApptentiveLogTag.UTIL, "ApptentiveAttachmentLoader loadDrawable(found in cache)", new Object[0]);
                    loadDrawable(bitmap);
                    imageView.setTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG, null);
                    return;
                }
                imageView.setTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG, this);
                if (this.bLoadImage) {
                    loadImageFromDisk(imageView);
                } else {
                    loadAttachmentFromDisk(imageView);
                }
            }
        }

        @Override // com.apptentive.android.sdk.util.task.ApptentiveDrawableLoaderTask.BitmapLoadListener
        public void loadBitmap(Bitmap bitmap) {
            ApptentiveAttachmentLoader.this.bitmapMemoryCache.addObjectToCache(ImageMemoryCache.generateMemoryCacheEntryKey(this.uri, this.imageViewWidth, this.imageViewHeight), bitmap);
            ImageView imageView = getImageView();
            if (imageView != null && this == imageView.getTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG)) {
                ApptentiveLog.m403v(ApptentiveLogTag.UTIL, "ApptentiveAttachmentLoader loadDrawable(add to cache)", new Object[0]);
                loadDrawable(bitmap);
                imageView.setTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG, null);
            }
            this.mWasDownloaded = false;
        }

        @Override // com.apptentive.android.sdk.util.task.ApptentiveDrawableLoaderTask.BitmapLoadListener
        public void notFound() {
            ImageView imageView;
            ApptentiveDownloaderTask drawableDownloaderTask;
            ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.UTIL;
            ApptentiveLog.m403v(apptentiveLogTag, "ApptentiveAttachmentLoader notFound: " + this.uri, new Object[0]);
            if (this.mIsCancelled || (imageView = getImageView()) == null || this != imageView.getTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG)) {
                return;
            }
            if (isAnotherQueuedOrRunningWithSameUrl() == null) {
                int indexOfQueuedDownloadWithDifferentURL = indexOfQueuedDownloadWithDifferentURL();
                int indexOfDownloadWithDifferentURL = indexOfDownloadWithDifferentURL();
                while (indexOfQueuedDownloadWithDifferentURL != -1) {
                    ApptentiveAttachmentLoader.this.queuedDownLoaderRequests.remove(indexOfQueuedDownloadWithDifferentURL);
                    ApptentiveLogTag apptentiveLogTag2 = ApptentiveLogTag.UTIL;
                    ApptentiveLog.m403v(apptentiveLogTag2, "ApptentiveAttachmentLoader notFound(Removing): " + this.uri, new Object[0]);
                    indexOfQueuedDownloadWithDifferentURL = indexOfQueuedDownloadWithDifferentURL();
                }
                if (!(indexOfDownloadWithDifferentURL == -1 || (drawableDownloaderTask = ((LoaderRequest) ApptentiveAttachmentLoader.this.runningDownLoaderRequests.get(indexOfDownloadWithDifferentURL)).getDrawableDownloaderTask()) == null)) {
                    drawableDownloaderTask.cancel(true);
                    ApptentiveLogTag apptentiveLogTag3 = ApptentiveLogTag.UTIL;
                    ApptentiveLog.m403v(apptentiveLogTag3, "ApptentiveAttachmentLoader notFound(Cancelling): " + this.uri, new Object[0]);
                }
                if (!isBeingDownloaded() && !isQueuedForDownload()) {
                    if (ApptentiveAttachmentLoader.this.runningDownLoaderRequests.size() >= ApptentiveAttachmentLoader.this.maxDownloads) {
                        ApptentiveLogTag apptentiveLogTag4 = ApptentiveLogTag.UTIL;
                        ApptentiveLog.m403v(apptentiveLogTag4, "ApptentiveAttachmentLoader notFound(Queuing): " + this.uri, new Object[0]);
                        ApptentiveAttachmentLoader.this.queuedDownLoaderRequests.add(this);
                        return;
                    }
                    ApptentiveLogTag apptentiveLogTag5 = ApptentiveLogTag.UTIL;
                    ApptentiveLog.m403v(apptentiveLogTag5, "ApptentiveAttachmentLoader notFound(Downloading): " + this.uri, new Object[0]);
                    doDownload();
                }
            } else if (ApptentiveAttachmentLoader.this.duplicateDownloads.containsKey(this.uri)) {
                ArrayList arrayList = (ArrayList) ApptentiveAttachmentLoader.this.duplicateDownloads.get(this.uri);
                arrayList.add(this);
                ApptentiveAttachmentLoader.this.duplicateDownloads.put(this.uri, arrayList);
            } else {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(this);
                ApptentiveAttachmentLoader.this.duplicateDownloads.put(this.uri, arrayList2);
            }
        }

        @Override // com.apptentive.android.sdk.util.task.ApptentiveDownloaderTask.FileDownloadListener
        public void onDownloadCancel() {
            this.mIsCancelled = true;
            ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.UTIL;
            ApptentiveLog.m403v(apptentiveLogTag, "ApptentiveAttachmentLoader onDownloadCancel: " + this.uri, new Object[0]);
            ApptentiveAttachmentLoader.this.runningDownLoaderRequests.remove(this);
            ApptentiveAttachmentLoader.this.filesBeingDownloaded.remove(this.diskCacheFilePath);
            ImageView imageView = this.mImageViewRef.get();
            if (imageView != null && this == imageView.getTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG)) {
                imageView.setTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG, null);
            }
            ArrayList arrayList = (ArrayList) ApptentiveAttachmentLoader.this.duplicateDownloads.get(this.uri);
            if (arrayList != null) {
                arrayList.remove(this);
                if (arrayList.size() > 0) {
                    ApptentiveAttachmentLoader.this.duplicateDownloads.put(this.uri, arrayList);
                } else {
                    ApptentiveAttachmentLoader.this.duplicateDownloads.remove(this.uri);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    LoaderRequest loaderRequest = (LoaderRequest) it.next();
                    if (loaderRequest != null && loaderRequest.getImageView() != null && loaderRequest.getImageView().getTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG) == loaderRequest) {
                        arrayList.remove(0);
                        if (arrayList.size() > 0) {
                            ApptentiveAttachmentLoader.this.duplicateDownloads.put(this.uri, arrayList);
                        } else {
                            ApptentiveAttachmentLoader.this.duplicateDownloads.remove(this.uri);
                        }
                        loaderRequest.doDownload();
                        return;
                    }
                }
            }
            if (!ApptentiveAttachmentLoader.this.queuedDownLoaderRequests.isEmpty()) {
                LoaderRequest loaderRequest2 = (LoaderRequest) ApptentiveAttachmentLoader.this.queuedDownLoaderRequests.remove(0);
                ApptentiveLogTag apptentiveLogTag2 = ApptentiveLogTag.UTIL;
                ApptentiveLog.m403v(apptentiveLogTag2, "ApptentiveAttachmentLoader starting DL of: " + loaderRequest2.getUrl(), new Object[0]);
                loaderRequest2.doDownload();
            }
        }

        @Override // com.apptentive.android.sdk.util.task.ApptentiveDownloaderTask.FileDownloadListener
        public void onDownloadComplete() {
            ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.UTIL;
            ApptentiveLog.m403v(apptentiveLogTag, "ApptentiveAttachmentLoader onDownloadComplete: " + this.uri, new Object[0]);
            ApptentiveAttachmentLoader.this.runningDownLoaderRequests.remove(this);
            ApptentiveAttachmentLoader.this.filesBeingDownloaded.remove(this.diskCacheFilePath);
            this.mWasDownloaded = true;
            ImageView imageView = this.mImageViewRef.get();
            if (imageView != null && this == imageView.getTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG)) {
                if (!this.bLoadImage) {
                    imageView.setTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG, null);
                    if (this.loadingTaskCallback != null) {
                        this.loadingTaskCallback.onLoaded(imageView, this.pos, null);
                    }
                } else {
                    loadImageFromDisk(getImageView());
                }
            }
            ArrayList arrayList = (ArrayList) ApptentiveAttachmentLoader.this.duplicateDownloads.get(this.uri);
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    LoaderRequest loaderRequest = (LoaderRequest) it.next();
                    ApptentiveLogTag apptentiveLogTag2 = ApptentiveLogTag.UTIL;
                    ApptentiveLog.m403v(apptentiveLogTag2, "ApptentiveAttachmentLoader onDownloadComplete (dup): " + loaderRequest.uri, new Object[0]);
                    if (!(loaderRequest == null || loaderRequest.getImageView() == null || loaderRequest.getImageView().getTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG) != loaderRequest)) {
                        if (!loaderRequest.isLoadingImage()) {
                            loaderRequest.getImageView().setTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG, null);
                            if (loaderRequest.getLoaderCallback() != null) {
                                loaderRequest.getLoaderCallback().onLoaded(loaderRequest.getImageView(), loaderRequest.pos, null);
                            }
                        } else {
                            loaderRequest.loadImageFromDisk(loaderRequest.getImageView());
                        }
                    }
                }
                ApptentiveAttachmentLoader.this.duplicateDownloads.remove(this.uri);
            }
            if (!ApptentiveAttachmentLoader.this.queuedDownLoaderRequests.isEmpty()) {
                ((LoaderRequest) ApptentiveAttachmentLoader.this.queuedDownLoaderRequests.remove(0)).doDownload();
            }
        }

        @Override // com.apptentive.android.sdk.util.task.ApptentiveDownloaderTask.FileDownloadListener
        public void onDownloadError() {
            ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.UTIL;
            ApptentiveLog.m403v(apptentiveLogTag, "ApptentiveAttachmentLoader onDownloadError: " + this.uri, new Object[0]);
            ApptentiveAttachmentLoader.this.runningDownLoaderRequests.remove(this);
            ApptentiveAttachmentLoader.this.filesBeingDownloaded.remove(this.diskCacheFilePath);
            ImageView imageView = getImageView();
            this.mWasDownloaded = true;
            if (!(imageView == null || this.loadingTaskCallback == null)) {
                this.loadingTaskCallback.onDownloadProgress(-1);
            }
            if (imageView != null && this == imageView.getTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG)) {
                imageView.setTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG, null);
            }
            ArrayList arrayList = (ArrayList) ApptentiveAttachmentLoader.this.duplicateDownloads.get(this.uri);
            if (arrayList != null) {
                arrayList.remove(this);
                if (arrayList.size() > 0) {
                    ApptentiveAttachmentLoader.this.duplicateDownloads.put(this.uri, arrayList);
                } else {
                    ApptentiveAttachmentLoader.this.duplicateDownloads.remove(this.uri);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    LoaderRequest loaderRequest = (LoaderRequest) it.next();
                    ApptentiveLogTag apptentiveLogTag2 = ApptentiveLogTag.UTIL;
                    ApptentiveLog.m403v(apptentiveLogTag2, "ApptentiveAttachmentLoader onDownloadError (dup): " + loaderRequest.uri, new Object[0]);
                    if (loaderRequest != null && loaderRequest.getImageView() != null && loaderRequest.getImageView().getTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG) == loaderRequest) {
                        arrayList.remove(0);
                        if (arrayList.size() > 0) {
                            ApptentiveAttachmentLoader.this.duplicateDownloads.put(this.uri, arrayList);
                        } else {
                            ApptentiveAttachmentLoader.this.duplicateDownloads.remove(this.uri);
                        }
                        loaderRequest.doDownload();
                        return;
                    }
                }
            }
            if (!ApptentiveAttachmentLoader.this.queuedDownLoaderRequests.isEmpty()) {
                ((LoaderRequest) ApptentiveAttachmentLoader.this.queuedDownLoaderRequests.remove(0)).doDownload();
            }
        }

        @Override // com.apptentive.android.sdk.util.task.ApptentiveDownloaderTask.FileDownloadListener
        public void onDownloadStart() {
            ApptentiveLog.m403v(ApptentiveLogTag.UTIL, "ApptentiveAttachmentLoader onDownloadStarted", new Object[0]);
            if (getImageView() != null && this.loadingTaskCallback != null) {
                this.loadingTaskCallback.onDownloadStart();
            }
        }

        @Override // com.apptentive.android.sdk.util.task.ApptentiveDrawableLoaderTask.BitmapLoadListener
        public void onLoadCancelled() {
            ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.UTIL;
            ApptentiveLog.m403v(apptentiveLogTag, "ApptentiveAttachmentLoader onLoadCancelled: " + this.uri, new Object[0]);
            ImageView imageView = getImageView();
            if (imageView != null && this == imageView.getTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG)) {
                imageView.setTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG, null);
                if (this.loadingTaskCallback != null) {
                    this.loadingTaskCallback.onLoadTerminated();
                }
            }
        }

        @Override // com.apptentive.android.sdk.util.task.ApptentiveDrawableLoaderTask.BitmapLoadListener
        public void onLoadError() {
            ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.UTIL;
            ApptentiveLog.m403v(apptentiveLogTag, "ApptentiveAttachmentLoader onLoadError: " + this.uri, new Object[0]);
            ImageView imageView = getImageView();
            if (imageView != null && this == imageView.getTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG)) {
                imageView.setTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG, null);
                if (this.loadingTaskCallback != null) {
                    this.loadingTaskCallback.onLoadTerminated();
                }
            }
        }

        @Override // com.apptentive.android.sdk.util.task.ApptentiveDownloaderTask.FileDownloadListener
        public void onProgress(int i) {
            ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.UTIL;
            ApptentiveLog.m403v(apptentiveLogTag, "ApptentiveAttachmentLoader onProgress: " + i, new Object[0]);
            if (!(getImageView() == null || this.loadingTaskCallback == null)) {
                this.loadingTaskCallback.onDownloadProgress(i);
            }
            ArrayList arrayList = (ArrayList) ApptentiveAttachmentLoader.this.duplicateDownloads.get(this.uri);
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    LoaderRequest loaderRequest = (LoaderRequest) it.next();
                    ApptentiveLogTag apptentiveLogTag2 = ApptentiveLogTag.UTIL;
                    ApptentiveLog.m403v(apptentiveLogTag2, "ApptentiveAttachmentLoader onProgress (dup): " + i, new Object[0]);
                    if (!(loaderRequest == null || loaderRequest.getImageView() == null || loaderRequest.getImageView().getTag(ApptentiveAttachmentLoader.DRAWABLE_DOWNLOAD_TAG) != loaderRequest)) {
                        loaderRequest.getLoaderCallback().onDownloadProgress(i);
                    }
                }
            }
        }
    }

    protected ApptentiveAttachmentLoader() {
        setup(10);
    }

    protected ApptentiveAttachmentLoader(int i) {
        setup(i);
    }

    public static ApptentiveAttachmentLoader getInstance() {
        if (instance == null) {
            synchronized (ApptentiveAttachmentLoader.class) {
                try {
                    if (instance == null) {
                        instance = new ApptentiveAttachmentLoader();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    private void setup(int i) {
        this.queuedDownLoaderRequests = new ArrayList<>();
        this.runningDownLoaderRequests = new ArrayList<>();
        this.filesBeingDownloaded = new HashSet<>();
        this.maxDownloads = i;
        this.duplicateDownloads = new HashMap<>();
        this.bitmapMemoryCache = new ImageMemoryCache(30);
    }

    public void cancelAllDownloads() {
        this.queuedDownLoaderRequests.clear();
        Iterator<LoaderRequest> it = this.runningDownLoaderRequests.iterator();
        while (it.hasNext()) {
            ApptentiveDownloaderTask drawableDownloaderTask = it.next().getDrawableDownloaderTask();
            if (drawableDownloaderTask != null) {
                drawableDownloaderTask.cancel(true);
            }
        }
        this.runningDownLoaderRequests.clear();
        this.filesBeingDownloaded.clear();
    }

    public void clearMemoryCache() {
        this.bitmapMemoryCache.evictAll();
    }

    public boolean isBitmapLoaded(String str) {
        return ((Bitmap) this.bitmapMemoryCache.getObjectFromCache(str)) != null;
    }

    public boolean isFileCompletelyDownloaded(String str) {
        return !this.filesBeingDownloaded.contains(str);
    }

    public void load(String str, String str2, String str3, int i, ImageView imageView, int i2, int i3, boolean z, LoaderCallback loaderCallback) {
        new LoaderRequest(str, str2, str3, i, imageView, i2, i3, z, loaderCallback).load();
    }
}

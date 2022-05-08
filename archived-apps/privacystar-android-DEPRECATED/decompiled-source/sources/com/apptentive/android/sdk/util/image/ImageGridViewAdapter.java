package com.apptentive.android.sdk.util.image;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Environment;
import android.support.p004v7.app.AppCompatDelegate;
import android.support.p004v7.widget.AppCompatImageView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.MimeTypeMap;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.image.ApptentiveAttachmentLoader;
import com.apptentive.android.sdk.view.ApptentiveMaterialDeterminateProgressBar;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/image/ImageGridViewAdapter.class */
public class ImageGridViewAdapter extends BaseAdapter {
    public static final int GONE = 8;
    private static final int TYPE_CAMERA = 0;
    private static final int TYPE_IMAGE = 1;
    private boolean bHasWritePermission;
    private final String conversationToken;
    private int defaultImageIndicator;
    private LayoutInflater inflater;
    private int itemHeight;
    private AbsListView.LayoutParams itemLayoutParams;
    private int itemWidth;
    private Callback localCallback;
    private boolean showCamera;
    private boolean showImageIndicator = true;
    private List<ImageItem> images = new ArrayList();
    private List<ImageItem> selectedImages = new ArrayList();
    private List<String> downloadItems = new ArrayList();

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/image/ImageGridViewAdapter$Callback.class */
    public interface Callback {
        void onCameraShot(File file);

        void onImageSelected(int i);

        void onImageUnselected(String str);
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder.class */
    class ViewHolder {
        TextView attachmentExtension;
        boolean bLoadThumbnail;
        ImageView image;
        AppCompatImageView imagePlaceholder;
        AppCompatImageView indicator;
        View mask;
        int pos;
        ApptentiveMaterialDeterminateProgressBar progressBarDownload;
        ProgressBar progressBarLoading;

        ViewHolder(View view, int i) {
            this.imagePlaceholder = (AppCompatImageView) view.findViewById(C0724R.C0727id.image_placeholder);
            this.image = (ImageView) view.findViewById(C0724R.C0727id.image);
            this.indicator = (AppCompatImageView) view.findViewById(C0724R.C0727id.indicator);
            this.mask = view.findViewById(C0724R.C0727id.mask);
            this.attachmentExtension = (TextView) view.findViewById(C0724R.C0727id.image_file_extension);
            this.progressBarLoading = (ProgressBar) view.findViewById(C0724R.C0727id.thumbnail_progress);
            this.progressBarDownload = (ApptentiveMaterialDeterminateProgressBar) view.findViewById(C0724R.C0727id.thumbnail_progress_determinate);
            this.pos = i;
            view.setTag(this);
        }

        void bindData(final int i) {
            final ImageItem item = ImageGridViewAdapter.this.getItem(i);
            if (item != null) {
                if (ImageGridViewAdapter.this.showImageIndicator) {
                    this.indicator.setVisibility(0);
                    this.image.setVisibility(0);
                    if (ImageGridViewAdapter.this.selectedImages.contains(item)) {
                        this.mask.setVisibility(0);
                    } else {
                        if (item.originalPath == null) {
                            this.indicator.setVisibility(8);
                            this.image.setVisibility(8);
                        } else {
                            AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
                            this.indicator.setImageResource(ImageGridViewAdapter.this.defaultImageIndicator);
                            this.indicator.setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.util.image.ImageGridViewAdapter.ViewHolder.1
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view) {
                                    if (ImageGridViewAdapter.this.localCallback != null) {
                                        ImageGridViewAdapter.this.localCallback.onImageSelected(i);
                                    }
                                }
                            }));
                        }
                        this.mask.setVisibility(8);
                    }
                } else {
                    this.indicator.setVisibility(8);
                    if (item.originalPath == null) {
                        this.image.setVisibility(8);
                    } else {
                        this.image.setVisibility(0);
                    }
                }
                this.image.setContentDescription(this.image.getContext().getResources().getString(C0724R.string.apptentive_message_center_content_description_attachment));
                if (!Util.isMimeTypeImage(item.mimeType)) {
                    this.bLoadThumbnail = false;
                    TextView textView = this.attachmentExtension;
                    textView.setText("." + MimeTypeMap.getSingleton().getExtensionFromMimeType(item.mimeType));
                    this.attachmentExtension.setVisibility(0);
                    this.image.setVisibility(8);
                    this.progressBarLoading.setVisibility(8);
                    this.imagePlaceholder.setVisibility(0);
                    if (ImageGridViewAdapter.this.downloadItems.contains(item.originalPath)) {
                        this.imagePlaceholder.setImageResource(C0724R.C0726drawable.apptentive_file_download);
                    } else if (!new File(item.localCachePath).exists() || !ApptentiveAttachmentLoader.getInstance().isFileCompletelyDownloaded(item.localCachePath)) {
                        this.imagePlaceholder.setImageResource(C0724R.C0726drawable.apptentive_file_download);
                    } else {
                        this.imagePlaceholder.setImageResource(C0724R.C0726drawable.apptentive_file_icon);
                    }
                } else if (TextUtils.isEmpty(item.originalPath)) {
                    this.bLoadThumbnail = false;
                    this.imagePlaceholder.setContentDescription(this.image.getContext().getResources().getString(C0724R.string.apptentive_message_center_content_description_attachment_add));
                    this.imagePlaceholder.setImageResource(C0724R.C0726drawable.apptentive_add_circle_outline);
                    this.imagePlaceholder.setVisibility(0);
                    this.image.setVisibility(8);
                    this.indicator.setVisibility(8);
                    this.progressBarLoading.setVisibility(8);
                    this.attachmentExtension.setVisibility(8);
                    this.progressBarDownload.setVisibility(8);
                } else {
                    this.bLoadThumbnail = true;
                    this.imagePlaceholder.setImageResource(C0724R.C0726drawable.apptentive_image_placeholder);
                    this.imagePlaceholder.setVisibility(0);
                    this.image.setVisibility(0);
                    this.attachmentExtension.setVisibility(8);
                    this.progressBarLoading.setVisibility(0);
                }
                if (this.progressBarDownload != null) {
                    this.progressBarDownload.setVisibility(8);
                }
                if (ImageGridViewAdapter.this.itemWidth <= 0) {
                    return;
                }
                if (this.bLoadThumbnail) {
                    ApptentiveAttachmentLoader.getInstance().load(ImageGridViewAdapter.this.conversationToken, item.originalPath, item.localCachePath, this.pos, this.image, ImageGridViewAdapter.this.itemWidth, ImageGridViewAdapter.this.itemHeight, true, new ApptentiveAttachmentLoader.LoaderCallback() { // from class: com.apptentive.android.sdk.util.image.ImageGridViewAdapter.ViewHolder.2
                        @Override // com.apptentive.android.sdk.util.image.ApptentiveAttachmentLoader.LoaderCallback
                        public void onDownloadProgress(int i2) {
                            if (ViewHolder.this.progressBarDownload != null) {
                                if (i2 == 100 || i2 == -1) {
                                    ViewHolder.this.progressBarDownload.setVisibility(8);
                                    if (ViewHolder.this.progressBarLoading != null) {
                                        if (i2 == 100) {
                                            ViewHolder.this.progressBarLoading.setVisibility(0);
                                        } else {
                                            ViewHolder.this.progressBarLoading.setVisibility(8);
                                        }
                                    }
                                }
                                if (i2 >= 0) {
                                    ViewHolder.this.progressBarDownload.setVisibility(0);
                                    ViewHolder.this.progressBarDownload.setProgress(i2);
                                }
                            }
                        }

                        @Override // com.apptentive.android.sdk.util.image.ApptentiveAttachmentLoader.LoaderCallback
                        public void onDownloadStart() {
                            if (ViewHolder.this.progressBarLoading != null) {
                                ViewHolder.this.progressBarLoading.setVisibility(8);
                                ViewHolder.this.imagePlaceholder.setVisibility(0);
                            }
                            if (ViewHolder.this.progressBarDownload != null) {
                                ViewHolder.this.imagePlaceholder.setVisibility(8);
                                ViewHolder.this.progressBarDownload.setVisibility(0);
                                ViewHolder.this.progressBarDownload.setProgress(0);
                            }
                        }

                        @Override // com.apptentive.android.sdk.util.image.ApptentiveAttachmentLoader.LoaderCallback
                        public void onLoadTerminated() {
                            if (ViewHolder.this.progressBarLoading != null) {
                                ViewHolder.this.progressBarLoading.setVisibility(8);
                                ViewHolder.this.imagePlaceholder.setVisibility(0);
                            }
                            if (ViewHolder.this.progressBarDownload != null) {
                                ViewHolder.this.progressBarDownload.setVisibility(8);
                                ViewHolder.this.imagePlaceholder.setVisibility(0);
                            }
                        }

                        @Override // com.apptentive.android.sdk.util.image.ApptentiveAttachmentLoader.LoaderCallback
                        public void onLoaded(ImageView imageView, int i2, Bitmap bitmap) {
                            if (ViewHolder.this.progressBarLoading != null) {
                                ViewHolder.this.progressBarLoading.setVisibility(8);
                                ViewHolder.this.imagePlaceholder.setVisibility(8);
                            }
                            if (ViewHolder.this.progressBarDownload != null) {
                                ViewHolder.this.progressBarDownload.setVisibility(8);
                                ViewHolder.this.imagePlaceholder.setVisibility(8);
                            }
                            if (i2 == ViewHolder.this.pos && ViewHolder.this.image == imageView) {
                                ViewHolder.this.image.setImageBitmap(bitmap);
                            }
                        }
                    });
                } else if (TextUtils.isEmpty(item.originalPath) || !ImageGridViewAdapter.this.downloadItems.contains(item.originalPath)) {
                    ApptentiveAttachmentLoader.getInstance().load(ImageGridViewAdapter.this.conversationToken, null, null, i, this.image, 0, 0, false, new ApptentiveAttachmentLoader.LoaderCallback() { // from class: com.apptentive.android.sdk.util.image.ImageGridViewAdapter.ViewHolder.4
                        @Override // com.apptentive.android.sdk.util.image.ApptentiveAttachmentLoader.LoaderCallback
                        public void onDownloadProgress(int i2) {
                        }

                        @Override // com.apptentive.android.sdk.util.image.ApptentiveAttachmentLoader.LoaderCallback
                        public void onDownloadStart() {
                        }

                        @Override // com.apptentive.android.sdk.util.image.ApptentiveAttachmentLoader.LoaderCallback
                        public void onLoadTerminated() {
                        }

                        @Override // com.apptentive.android.sdk.util.image.ApptentiveAttachmentLoader.LoaderCallback
                        public void onLoaded(ImageView imageView, int i2, Bitmap bitmap) {
                            if (ViewHolder.this.progressBarDownload != null) {
                                ViewHolder.this.progressBarDownload.setVisibility(8);
                            }
                        }
                    });
                } else {
                    ApptentiveAttachmentLoader.getInstance().load(ImageGridViewAdapter.this.conversationToken, item.originalPath, item.localCachePath, i, this.image, 0, 0, false, new ApptentiveAttachmentLoader.LoaderCallback() { // from class: com.apptentive.android.sdk.util.image.ImageGridViewAdapter.ViewHolder.3
                        @Override // com.apptentive.android.sdk.util.image.ApptentiveAttachmentLoader.LoaderCallback
                        public void onDownloadProgress(int i2) {
                            if (ViewHolder.this.progressBarDownload == null) {
                                return;
                            }
                            if (i2 == -1) {
                                ImageGridViewAdapter.this.downloadItems.remove(item.originalPath);
                                ViewHolder.this.progressBarDownload.setVisibility(8);
                            } else if (i2 >= 0) {
                                ViewHolder.this.progressBarDownload.setVisibility(0);
                                ViewHolder.this.progressBarDownload.setProgress(i2);
                                ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.UTIL;
                                ApptentiveLog.m403v(apptentiveLogTag, "ApptentiveAttachmentLoader progress callback: " + i2, new Object[0]);
                            }
                        }

                        @Override // com.apptentive.android.sdk.util.image.ApptentiveAttachmentLoader.LoaderCallback
                        public void onDownloadStart() {
                            if (ViewHolder.this.progressBarDownload != null) {
                                ViewHolder.this.progressBarDownload.setVisibility(0);
                            }
                            ViewHolder.this.progressBarDownload.setProgress(0);
                        }

                        @Override // com.apptentive.android.sdk.util.image.ApptentiveAttachmentLoader.LoaderCallback
                        public void onLoadTerminated() {
                            ImageGridViewAdapter.this.downloadItems.remove(item.originalPath);
                            if (ViewHolder.this.progressBarLoading != null) {
                                ViewHolder.this.progressBarLoading.setVisibility(8);
                            }
                            if (ViewHolder.this.progressBarDownload != null) {
                                ViewHolder.this.progressBarDownload.setVisibility(8);
                            }
                        }

                        @Override // com.apptentive.android.sdk.util.image.ApptentiveAttachmentLoader.LoaderCallback
                        public void onLoaded(ImageView imageView, int i2, Bitmap bitmap) {
                            if (ViewHolder.this.progressBarDownload != null) {
                                ViewHolder.this.progressBarDownload.setVisibility(8);
                            }
                            ViewHolder.this.image.setImageResource(C0724R.C0726drawable.apptentive_generic_file_thumbnail);
                            if (ImageGridViewAdapter.this.downloadItems.contains(item.originalPath)) {
                                ApptentiveLog.m403v(ApptentiveLogTag.UTIL, "ApptentiveAttachmentLoader onLoaded callback", new Object[0]);
                                ImageGridViewAdapter.this.downloadItems.remove(item.originalPath);
                                Util.openFileAttachment(imageView.getContext(), item.originalPath, item.localCachePath, item.mimeType);
                            }
                        }
                    });
                }
            }
        }
    }

    public ImageGridViewAdapter(Context context, String str, boolean z) {
        boolean z2 = true;
        this.showCamera = true;
        if (context == null) {
            throw new IllegalArgumentException("Context is null");
        } else if (str == null) {
            throw new IllegalArgumentException("Conversation token is null");
        } else {
            this.conversationToken = str;
            this.inflater = (LayoutInflater) context.getSystemService("layout_inflater");
            this.showCamera = z;
            this.itemLayoutParams = new AbsListView.LayoutParams(-1, -1);
            if ((!"mounted".equals(Environment.getExternalStorageState()) && Environment.isExternalStorageRemovable()) || !Util.hasPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                z2 = false;
            }
            this.bHasWritePermission = z2;
        }
    }

    private ImageItem getImageByUri(String str) {
        if (this.images == null || this.images.size() <= 0) {
            return null;
        }
        for (ImageItem imageItem : this.images) {
            if (imageItem.originalPath.equalsIgnoreCase(str)) {
                return imageItem;
            }
        }
        return null;
    }

    public boolean clickOn(int i) {
        ImageItem item = getItem(i);
        if (item == null || TextUtils.isEmpty(item.mimeType) || Util.isMimeTypeImage(item.mimeType)) {
            return false;
        }
        if (this.downloadItems.contains(item.originalPath)) {
            return true;
        }
        if (!this.bHasWritePermission) {
            return false;
        }
        if (new File(item.localCachePath).exists() && ApptentiveAttachmentLoader.getInstance().isFileCompletelyDownloaded(item.localCachePath)) {
            return false;
        }
        this.downloadItems.add(item.originalPath);
        notifyDataSetChanged();
        return true;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.showCamera ? this.images.size() + 1 : this.images.size();
    }

    @Override // android.widget.Adapter
    public ImageItem getItem(int i) {
        if (!this.showCamera) {
            return this.images.get(i);
        }
        if (i == 0) {
            return null;
        }
        return this.images.get(i - 1);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        int i2 = 1;
        if (!this.showCamera) {
            return 1;
        }
        if (i == 0) {
            i2 = 0;
        }
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        ViewHolder viewHolder;
        int itemViewType = getItemViewType(i);
        if (itemViewType == 0) {
            view.setTag(null);
            view2 = view;
        } else {
            view2 = view;
            if (itemViewType == 1) {
                if (view == null) {
                    view = this.inflater.inflate(C0724R.C0728layout.apptentive_image_grid_view_item, viewGroup, false);
                    viewHolder = new ViewHolder(view, i);
                } else {
                    ViewHolder viewHolder2 = (ViewHolder) view.getTag();
                    if (viewHolder2 == null) {
                        view = this.inflater.inflate(C0724R.C0728layout.apptentive_image_grid_view_item, viewGroup, false);
                        viewHolder = new ViewHolder(view, i);
                    } else {
                        viewHolder = viewHolder2;
                    }
                }
                view2 = view;
                if (viewHolder != null) {
                    viewHolder.bindData(i);
                    view2 = view;
                }
            }
        }
        if (((AbsListView.LayoutParams) view2.getLayoutParams()).height != this.itemHeight) {
            view2.setLayoutParams(this.itemLayoutParams);
        }
        return view2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }

    public boolean isShowCamera() {
        return this.showCamera;
    }

    public void select(ImageItem imageItem) {
        if (this.selectedImages.contains(imageItem)) {
            this.selectedImages.remove(imageItem);
        } else {
            this.selectedImages.add(imageItem);
        }
        notifyDataSetChanged();
    }

    public void setData(List<ImageItem> list) {
        this.selectedImages.clear();
        if (list == null || list.size() <= 0) {
            this.images.clear();
        } else {
            this.images = list;
        }
        notifyDataSetChanged();
    }

    public void setDefaultSelected(ArrayList<String> arrayList) {
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            ImageItem imageByUri = getImageByUri(it.next());
            if (imageByUri != null) {
                this.selectedImages.add(imageByUri);
            }
        }
        if (this.selectedImages.size() > 0) {
            notifyDataSetChanged();
        }
    }

    public void setImageIndicator(int i) {
        this.defaultImageIndicator = i;
    }

    public void setIndicatorCallback(Callback callback) {
        this.localCallback = callback;
    }

    public void setItemSize(int i, int i2) {
        if (this.itemWidth != i) {
            this.itemWidth = i;
            this.itemHeight = i2;
            this.itemLayoutParams = new AbsListView.LayoutParams(this.itemWidth, this.itemHeight);
            notifyDataSetChanged();
        }
    }

    public void setShowCamera(boolean z) {
        if (this.showCamera != z) {
            this.showCamera = z;
            notifyDataSetChanged();
        }
    }

    public void showImageIndicator(boolean z) {
        this.showImageIndicator = z;
    }
}

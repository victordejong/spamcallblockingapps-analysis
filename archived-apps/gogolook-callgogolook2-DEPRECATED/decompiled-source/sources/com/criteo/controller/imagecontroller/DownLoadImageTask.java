package com.criteo.controller.imagecontroller;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.widget.ImageView;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/criteo/controller/imagecontroller/DownLoadImageTask.class */
public class DownLoadImageTask extends AsyncTask<String, Void, Bitmap> {
    public ImageView imageView;
    public OnFetchImage onFetchImageController;

    /* loaded from: classes-dex2jar.jar:com/criteo/controller/imagecontroller/DownLoadImageTask$OnFetchImage.class */
    public interface OnFetchImage {
        void onDownloadImageFailed(int i, String str, String str2, int i2);

        void onDownloadImageSuccess(Bitmap bitmap);
    }

    public DownLoadImageTask(ImageView imageView) {
        this.imageView = imageView;
    }

    public Bitmap doInBackground(String... strArr) {
        Bitmap bitmap;
        try {
            bitmap = BitmapFactory.decodeStream(FirebasePerfUrlConnection.openStream(new URL(strArr[0])));
        } catch (Exception e) {
            e.printStackTrace();
            bitmap = null;
        }
        return bitmap;
    }

    public void onPostExecute(Bitmap bitmap) {
        ImageView imageView = this.imageView;
        if (imageView != null) {
            imageView.setImageBitmap(bitmap);
        }
        OnFetchImage onFetchImage = this.onFetchImageController;
        if (onFetchImage != null) {
            onFetchImage.onDownloadImageSuccess(bitmap);
        }
    }
}

package zendesk.belvedere;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.annotation.RestrictTo;
import android.support.p004v7.widget.AppCompatImageView;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.widget.ImageView;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.Target;
import java.util.concurrent.atomic.AtomicBoolean;
import zendesk.belvedere.p041ui.C2612R;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/FixedWidthImageView.class */
public class FixedWidthImageView extends AppCompatImageView implements Target {
    private static final String LOG_TAG = "FixedWidthImageView";
    private DimensionsCallback dimensionsCallback;
    private Picasso picasso;
    private int rawImageHeight;
    private int rawImageWidth;
    private int viewWidth = -1;
    private int viewHeight = -1;
    private Uri uri = null;
    private final AtomicBoolean imageWaiting = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/FixedWidthImageView$CalculatedDimensions.class */
    public static class CalculatedDimensions {
        private final int rawImageHeight;
        private final int rawImageWidth;
        private final int viewHeight;
        private final int viewWidth;

        CalculatedDimensions(int i, int i2, int i3, int i4) {
            this.rawImageHeight = i;
            this.rawImageWidth = i2;
            this.viewHeight = i3;
            this.viewWidth = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/FixedWidthImageView$DimensionsCallback.class */
    public interface DimensionsCallback {
        void onImageDimensionsFound(CalculatedDimensions calculatedDimensions);
    }

    public FixedWidthImageView(Context context) {
        super(context);
        init();
    }

    public FixedWidthImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public FixedWidthImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    private void loadImage(Picasso picasso, int i, int i2, Uri uri) {
        this.viewHeight = i2;
        post(new Runnable() { // from class: zendesk.belvedere.FixedWidthImageView.1
            @Override // java.lang.Runnable
            public void run() {
                FixedWidthImageView.this.requestLayout();
            }
        });
        if (this.dimensionsCallback != null) {
            this.dimensionsCallback.onImageDimensionsFound(new CalculatedDimensions(this.rawImageHeight, this.rawImageWidth, this.viewHeight, this.viewWidth));
            this.dimensionsCallback = null;
        }
        picasso.load(uri).resize(i, i2).transform(Utils.roundTransformation(getContext(), C2612R.dimen.belvedere_image_stream_item_radius)).into((ImageView) this);
    }

    private Pair<Integer, Integer> scale(int i, int i2, int i3) {
        return Pair.create(Integer.valueOf(i), Integer.valueOf((int) (i3 * (i / i2))));
    }

    private void startImageLoading(Picasso picasso, Uri uri, int i, int i2, int i3) {
        C2598L.m7d(LOG_TAG, "Start loading image: " + i + " " + i2 + " " + i3);
        if (i2 <= 0 || i3 <= 0) {
            picasso.load(uri).into((Target) this);
            return;
        }
        Pair<Integer, Integer> scale = scale(i, i2, i3);
        loadImage(picasso, ((Integer) scale.first).intValue(), ((Integer) scale.second).intValue(), uri);
    }

    void init() {
        this.viewHeight = getResources().getDimensionPixelOffset(C2612R.dimen.belvedere_image_stream_image_height);
    }

    @Override // com.squareup.picasso.Target
    public void onBitmapFailed(Drawable drawable) {
    }

    @Override // com.squareup.picasso.Target
    public void onBitmapLoaded(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        this.rawImageHeight = bitmap.getHeight();
        this.rawImageWidth = bitmap.getWidth();
        Pair<Integer, Integer> scale = scale(this.viewWidth, this.rawImageWidth, this.rawImageHeight);
        loadImage(this.picasso, ((Integer) scale.first).intValue(), ((Integer) scale.second).intValue(), this.uri);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.viewHeight, 1073741824);
        if (this.viewWidth == -1) {
            this.viewWidth = size;
        }
        if (this.viewWidth > 0) {
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(this.viewWidth, 1073741824);
            i = makeMeasureSpec2;
            if (this.imageWaiting.compareAndSet(true, false)) {
                startImageLoading(this.picasso, this.uri, this.viewWidth, this.rawImageWidth, this.rawImageHeight);
                i = makeMeasureSpec2;
            }
        }
        super.onMeasure(i, makeMeasureSpec);
    }

    @Override // com.squareup.picasso.Target
    public void onPrepareLoad(Drawable drawable) {
    }

    public void showImage(Picasso picasso, Uri uri, long j, long j2, DimensionsCallback dimensionsCallback) {
        if (uri == null || uri.equals(this.uri)) {
            C2598L.m7d(LOG_TAG, "Image already loaded. " + uri);
            return;
        }
        if (this.picasso != null) {
            this.picasso.cancelRequest((Target) this);
            this.picasso.cancelRequest((ImageView) this);
        }
        this.uri = uri;
        this.picasso = picasso;
        this.rawImageWidth = (int) j;
        this.rawImageHeight = (int) j2;
        this.dimensionsCallback = dimensionsCallback;
        if (this.viewWidth > 0) {
            startImageLoading(picasso, uri, this.viewWidth, this.rawImageWidth, this.rawImageHeight);
        } else {
            this.imageWaiting.set(true);
        }
    }

    public void showImage(Picasso picasso, Uri uri, CalculatedDimensions calculatedDimensions) {
        if (uri == null || uri.equals(this.uri)) {
            C2598L.m7d(LOG_TAG, "Image already loaded. " + uri);
            return;
        }
        if (this.picasso != null) {
            this.picasso.cancelRequest((Target) this);
            this.picasso.cancelRequest((ImageView) this);
        }
        this.uri = uri;
        this.picasso = picasso;
        this.rawImageWidth = calculatedDimensions.rawImageWidth;
        this.rawImageHeight = calculatedDimensions.rawImageHeight;
        this.viewHeight = calculatedDimensions.viewHeight;
        this.viewWidth = calculatedDimensions.viewWidth;
        startImageLoading(picasso, uri, this.viewWidth, this.rawImageWidth, this.rawImageHeight);
    }
}

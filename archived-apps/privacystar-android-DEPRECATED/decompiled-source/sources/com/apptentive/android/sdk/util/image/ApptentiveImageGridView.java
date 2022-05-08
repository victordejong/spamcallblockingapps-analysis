package com.apptentive.android.sdk.util.image;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.conversation.ConversationProxy;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.image.ImageGridViewAdapter;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/image/ApptentiveImageGridView.class */
public class ApptentiveImageGridView extends GridView implements AdapterView.OnItemClickListener {
    private ImageGridViewAdapter imageBandAdapter;
    private ImageItemClickedListener listener;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/image/ApptentiveImageGridView$ImageItemClickedListener.class */
    public interface ImageItemClickedListener {
        void onClick(int i, ImageItem imageItem);
    }

    public ApptentiveImageGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOnItemClickListener(this);
    }

    public void notifyDataSetChanged() {
        this.imageBandAdapter.notifyDataSetChanged();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        if (!this.imageBandAdapter.clickOn(i) && this.listener != null) {
            this.listener.onClick(i, this.imageBandAdapter.getItem(i));
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        if (getLayoutParams().height == -2) {
            i2 = View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE);
        }
        super.onMeasure(i, i2);
    }

    public void setAdapterIndicator(int i) {
        if (i != 0) {
            this.imageBandAdapter.showImageIndicator(true);
            this.imageBandAdapter.setImageIndicator(i);
            return;
        }
        this.imageBandAdapter.showImageIndicator(false);
    }

    public void setAdapterItemSize(int i, int i2) {
        int dimensionPixelOffset = (i - (getResources().getDimensionPixelOffset(C0724R.dimen.apptentive_image_grid_space_size) * (i2 - 1))) / i2;
        Point screenSize = Util.getScreenSize(getContext().getApplicationContext());
        this.imageBandAdapter.setItemSize(dimensionPixelOffset, (int) ((screenSize.y / screenSize.x) * dimensionPixelOffset));
    }

    public void setData(List<ImageItem> list) {
        this.imageBandAdapter.setData(list);
    }

    public void setImageIndicatorCallback(ImageGridViewAdapter.Callback callback) {
        this.imageBandAdapter.setIndicatorCallback(callback);
    }

    public void setListener(ImageItemClickedListener imageItemClickedListener) {
        this.listener = imageItemClickedListener;
    }

    public void setupLayoutListener() {
        final int integer = getResources().getInteger(C0724R.integer.apptentive_image_grid_default_column_number);
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.apptentive.android.sdk.util.image.ApptentiveImageGridView.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            @TargetApi(16)
            public void onGlobalLayout() {
                int width = (ApptentiveImageGridView.this.getWidth() - (ApptentiveImageGridView.this.getResources().getDimensionPixelOffset(C0724R.dimen.apptentive_image_grid_space_size) * (integer - 1))) / integer;
                Point screenSize = Util.getScreenSize(ApptentiveImageGridView.this.getContext().getApplicationContext());
                ApptentiveImageGridView.this.imageBandAdapter.setItemSize(width, (int) ((screenSize.y / screenSize.x) * width));
                if (Build.VERSION.SDK_INT >= 16) {
                    ApptentiveImageGridView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                } else {
                    ApptentiveImageGridView.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                }
            }
        });
    }

    public void setupUi() {
        ConversationProxy conversationProxy = ApptentiveInternal.getInstance().getConversationProxy();
        Assert.assertNotNull(conversationProxy);
        if (conversationProxy != null) {
            this.imageBandAdapter = new ImageGridViewAdapter(getContext(), conversationProxy.getConversationToken(), false);
            setAdapter((ListAdapter) this.imageBandAdapter);
        }
    }
}

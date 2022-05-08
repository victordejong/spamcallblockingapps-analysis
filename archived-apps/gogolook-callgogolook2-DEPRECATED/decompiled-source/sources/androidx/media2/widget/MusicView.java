package androidx.media2.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MusicView.class */
public class MusicView extends ViewGroup {
    public MusicViewType mType = MusicViewType.WITHOUT_TITLE;
    public View mWithTitleLandscape;
    public View mWithTitlePortrait;
    public View mWithoutTitle;

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MusicView$MusicViewType.class */
    public enum MusicViewType {
        WITH_TITLE_LANDSCAPE,
        WITH_TITLE_PORTRAIT,
        WITHOUT_TITLE
    }

    public MusicView(@NonNull Context context) {
        super(context);
        inflateLayout();
    }

    public static boolean hasTooSmallMeasuredState(@NonNull View view) {
        return ((view.getMeasuredHeightAndState() & 16777216) | (view.getMeasuredWidthAndState() & 16777216)) != 0;
    }

    private void inflateLayout() {
        LayoutInflater layoutInflater = (LayoutInflater) getContext().getSystemService("layout_inflater");
        this.mWithTitleLandscape = layoutInflater.inflate(C0995R.layout.music_with_title_landscape, (ViewGroup) null);
        this.mWithTitlePortrait = layoutInflater.inflate(C0995R.layout.music_with_title_portrait, (ViewGroup) null);
        this.mWithoutTitle = layoutInflater.inflate(C0995R.layout.music_without_title, (ViewGroup) null);
        addView(this.mWithTitleLandscape);
        addView(this.mWithTitlePortrait);
        addView(this.mWithoutTitle);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        MusicViewType musicViewType = this.mType;
        View view = musicViewType == MusicViewType.WITH_TITLE_LANDSCAPE ? this.mWithTitleLandscape : musicViewType == MusicViewType.WITH_TITLE_PORTRAIT ? this.mWithTitlePortrait : this.mWithoutTitle;
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt == view) {
                childAt.setVisibility(0);
            } else {
                childAt.setVisibility(4);
            }
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i6 = ((i3 - i) - measuredWidth) / 2;
        int i7 = ((i4 - i2) - measuredHeight) / 2;
        view.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (View.MeasureSpec.getMode(i) == 1073741824 && View.MeasureSpec.getMode(i2) == 1073741824) {
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            if (size > size2) {
                this.mType = MusicViewType.WITH_TITLE_LANDSCAPE;
                this.mWithTitleLandscape.measure(View.MeasureSpec.makeMeasureSpec(size, 0), View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
                if (hasTooSmallMeasuredState(this.mWithTitleLandscape) || this.mWithTitleLandscape.getMeasuredWidth() > size) {
                    this.mType = MusicViewType.WITHOUT_TITLE;
                }
            } else {
                this.mType = MusicViewType.WITH_TITLE_PORTRAIT;
                this.mWithTitlePortrait.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, 0));
                if (hasTooSmallMeasuredState(this.mWithTitlePortrait) || this.mWithTitlePortrait.getMeasuredHeight() > size2) {
                    this.mType = MusicViewType.WITHOUT_TITLE;
                }
            }
            if (this.mType == MusicViewType.WITHOUT_TITLE) {
                this.mWithoutTitle.measure(View.MeasureSpec.makeMeasureSpec(size / 2, 1073741824), View.MeasureSpec.makeMeasureSpec(size2 / 2, 1073741824));
            }
            setMeasuredDimension(size, size2);
            return;
        }
        throw new AssertionError("MusicView should be measured in MeasureSpec.EXACTLY");
    }

    public void setAlbumDrawable(Drawable drawable) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ImageView imageView = (ImageView) getChildAt(i).findViewById(C0995R.C0997id.album);
            if (imageView != null) {
                imageView.setImageDrawable(drawable);
            }
        }
    }

    public void setArtistText(String str) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            TextView textView = (TextView) getChildAt(i).findViewById(C0995R.C0997id.artist);
            if (textView != null) {
                textView.setText(str);
            }
        }
    }

    public void setTitleText(String str) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            TextView textView = (TextView) getChildAt(i).findViewById(C0995R.C0997id.title);
            if (textView != null) {
                textView.setText(str);
            }
        }
    }
}

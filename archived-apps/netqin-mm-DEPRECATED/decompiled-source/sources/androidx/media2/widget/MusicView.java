package androidx.media2.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import p012b.p076s.p118e.C1852n;
import p012b.p076s.p118e.C1853o;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MusicView.class */
public class MusicView extends ViewGroup {

    /* renamed from: a */
    public MusicViewType f2397a = MusicViewType.WITHOUT_TITLE;

    /* renamed from: b */
    public View f2398b;

    /* renamed from: c */
    public View f2399c;

    /* renamed from: d */
    public View f2400d;

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MusicView$MusicViewType.class */
    public enum MusicViewType {
        WITH_TITLE_LANDSCAPE,
        WITH_TITLE_PORTRAIT,
        WITHOUT_TITLE
    }

    public MusicView(Context context) {
        super(context);
        m37654a();
    }

    /* renamed from: a */
    public static boolean m37652a(View view) {
        return ((view.getMeasuredHeightAndState() & 16777216) | (view.getMeasuredWidthAndState() & 16777216)) != 0;
    }

    /* renamed from: a */
    public final void m37654a() {
        LayoutInflater layoutInflater = (LayoutInflater) getContext().getSystemService("layout_inflater");
        this.f2398b = layoutInflater.inflate(C1853o.music_with_title_landscape, (ViewGroup) null);
        this.f2399c = layoutInflater.inflate(C1853o.music_with_title_portrait, (ViewGroup) null);
        this.f2400d = layoutInflater.inflate(C1853o.music_without_title, (ViewGroup) null);
        addView(this.f2398b);
        addView(this.f2399c);
        addView(this.f2400d);
    }

    /* renamed from: a */
    public void m37653a(Drawable drawable) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ImageView imageView = (ImageView) getChildAt(i).findViewById(C1852n.album);
            if (imageView != null) {
                imageView.setImageDrawable(drawable);
            }
        }
    }

    /* renamed from: a */
    public void m37651a(String str) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            TextView textView = (TextView) getChildAt(i).findViewById(C1852n.artist);
            if (textView != null) {
                textView.setText(str);
            }
        }
    }

    /* renamed from: b */
    public void m37650b(String str) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            TextView textView = (TextView) getChildAt(i).findViewById(C1852n.title);
            if (textView != null) {
                textView.setText(str);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        MusicViewType musicViewType = this.f2397a;
        View view = musicViewType == MusicViewType.WITH_TITLE_LANDSCAPE ? this.f2398b : musicViewType == MusicViewType.WITH_TITLE_PORTRAIT ? this.f2399c : this.f2400d;
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
                this.f2397a = MusicViewType.WITH_TITLE_LANDSCAPE;
                this.f2398b.measure(View.MeasureSpec.makeMeasureSpec(size, 0), View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
                if (m37652a(this.f2398b) || this.f2398b.getMeasuredWidth() > size) {
                    this.f2397a = MusicViewType.WITHOUT_TITLE;
                }
            } else {
                this.f2397a = MusicViewType.WITH_TITLE_PORTRAIT;
                this.f2399c.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, 0));
                if (m37652a(this.f2399c) || this.f2399c.getMeasuredHeight() > size2) {
                    this.f2397a = MusicViewType.WITHOUT_TITLE;
                }
            }
            if (this.f2397a == MusicViewType.WITHOUT_TITLE) {
                this.f2400d.measure(View.MeasureSpec.makeMeasureSpec(size / 2, 1073741824), View.MeasureSpec.makeMeasureSpec(size2 / 2, 1073741824));
            }
            setMeasuredDimension(size, size2);
            return;
        }
        throw new AssertionError("MusicView should be measured in MeasureSpec.EXACTLY");
    }
}

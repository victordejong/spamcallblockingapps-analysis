package com.google.android.exoplayer2.p492ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import p131c.p161d.p170b.p188c.p198d1.AbstractC2777d;
import p131c.p161d.p170b.p188c.p199e1.AbstractC2803n;
import p131c.p161d.p170b.p188c.p199e1.C2792d;
import p131c.p161d.p170b.p188c.p199e1.C2797i;
import p131c.p161d.p170b.p188c.p199e1.C2798j;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: com.google.android.exoplayer2.ui.TrackSelectionView */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/TrackSelectionView.class */
public class TrackSelectionView extends LinearLayout {

    /* renamed from: a */
    public final int f22496a;

    /* renamed from: b */
    public final LayoutInflater f22497b;

    /* renamed from: c */
    public final CheckedTextView f22498c;

    /* renamed from: d */
    public final CheckedTextView f22499d;

    /* renamed from: e */
    public final View$OnClickListenerC7196b f22500e;

    /* renamed from: f */
    public final SparseArray<DefaultTrackSelector.SelectionOverride> f22501f;

    /* renamed from: g */
    public boolean f22502g;

    /* renamed from: h */
    public boolean f22503h;

    /* renamed from: i */
    public AbstractC2803n f22504i;

    /* renamed from: j */
    public CheckedTextView[][] f22505j;

    /* renamed from: k */
    public AbstractC2777d.C2778a f22506k;

    /* renamed from: l */
    public int f22507l;

    /* renamed from: m */
    public TrackGroupArray f22508m;

    /* renamed from: n */
    public boolean f22509n;

    /* renamed from: o */
    public AbstractC7197c f22510o;

    /* renamed from: com.google.android.exoplayer2.ui.TrackSelectionView$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/TrackSelectionView$b.class */
    public class View$OnClickListenerC7196b implements View.OnClickListener {
        public View$OnClickListenerC7196b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TrackSelectionView.this.m18308a(view);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.TrackSelectionView$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/TrackSelectionView$c.class */
    public interface AbstractC7197c {
        /* renamed from: a */
        void m18299a(boolean z, List<DefaultTrackSelector.SelectionOverride> list);
    }

    public TrackSelectionView(Context context) {
        this(context, null);
    }

    public TrackSelectionView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TrackSelectionView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setOrientation(1);
        this.f22501f = new SparseArray<>();
        setSaveFromParentEnabled(false);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{16843534});
        this.f22496a = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        this.f22497b = LayoutInflater.from(context);
        this.f22500e = new View$OnClickListenerC7196b();
        this.f22504i = new C2792d(getResources());
        this.f22508m = TrackGroupArray.f22260d;
        CheckedTextView checkedTextView = (CheckedTextView) this.f22497b.inflate(17367055, (ViewGroup) this, false);
        this.f22498c = checkedTextView;
        checkedTextView.setBackgroundResource(this.f22496a);
        this.f22498c.setText(C2798j.exo_track_selection_none);
        this.f22498c.setEnabled(false);
        this.f22498c.setFocusable(true);
        this.f22498c.setOnClickListener(this.f22500e);
        this.f22498c.setVisibility(8);
        addView(this.f22498c);
        addView(this.f22497b.inflate(C2797i.exo_list_divider, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) this.f22497b.inflate(17367055, (ViewGroup) this, false);
        this.f22499d = checkedTextView2;
        checkedTextView2.setBackgroundResource(this.f22496a);
        this.f22499d.setText(C2798j.exo_track_selection_auto);
        this.f22499d.setEnabled(false);
        this.f22499d.setFocusable(true);
        this.f22499d.setOnClickListener(this.f22500e);
        addView(this.f22499d);
    }

    /* renamed from: a */
    public static int[] m18306a(int[] iArr, int i) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length + 1);
        copyOf[copyOf.length - 1] = i;
        return copyOf;
    }

    /* renamed from: b */
    public static int[] m18303b(int[] iArr, int i) {
        int[] iArr2 = new int[iArr.length - 1];
        int i2 = 0;
        for (int i3 : iArr) {
            i2 = i2;
            if (i3 != i) {
                iArr2[i2] = i3;
                i2++;
            }
        }
        return iArr2;
    }

    /* renamed from: a */
    public final void m18310a() {
        this.f22509n = false;
        this.f22501f.clear();
    }

    /* renamed from: a */
    public final void m18308a(View view) {
        if (view == this.f22498c) {
            m18305b();
        } else if (view == this.f22499d) {
            m18310a();
        } else {
            m18304b(view);
        }
        m18301d();
        AbstractC7197c cVar = this.f22510o;
        if (cVar != null) {
            cVar.m18299a(getIsDisabled(), getOverrides());
        }
    }

    @RequiresNonNull({"mappedTrackInfo"})
    /* renamed from: a */
    public final boolean m18309a(int i) {
        boolean z = true;
        if (!this.f22502g || this.f22508m.m18479a(i).f22257a <= 1 || this.f22506k.m29034a(this.f22507l, i, false) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final void m18305b() {
        this.f22509n = true;
        this.f22501f.clear();
    }

    /* renamed from: b */
    public final void m18304b(View view) {
        this.f22509n = false;
        Pair pair = (Pair) view.getTag();
        int intValue = ((Integer) pair.first).intValue();
        int intValue2 = ((Integer) pair.second).intValue();
        DefaultTrackSelector.SelectionOverride selectionOverride = this.f22501f.get(intValue);
        C2877e.m28737a(this.f22506k);
        if (selectionOverride == null) {
            if (!this.f22503h && this.f22501f.size() > 0) {
                this.f22501f.clear();
            }
            this.f22501f.put(intValue, new DefaultTrackSelector.SelectionOverride(intValue, intValue2));
            return;
        }
        int i = selectionOverride.f22303c;
        int[] iArr = selectionOverride.f22302b;
        boolean isChecked = ((CheckedTextView) view).isChecked();
        boolean a = m18309a(intValue);
        boolean z = a || m18302c();
        if (!isChecked || !z) {
            if (isChecked) {
                return;
            }
            if (a) {
                this.f22501f.put(intValue, new DefaultTrackSelector.SelectionOverride(intValue, m18306a(iArr, intValue2)));
            } else {
                this.f22501f.put(intValue, new DefaultTrackSelector.SelectionOverride(intValue, intValue2));
            }
        } else if (i == 1) {
            this.f22501f.remove(intValue);
        } else {
            this.f22501f.put(intValue, new DefaultTrackSelector.SelectionOverride(intValue, m18303b(iArr, intValue2)));
        }
    }

    /* renamed from: c */
    public final boolean m18302c() {
        boolean z = true;
        if (!this.f22503h || this.f22508m.f22261a <= 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    public final void m18301d() {
        this.f22498c.setChecked(this.f22509n);
        this.f22499d.setChecked(!this.f22509n && this.f22501f.size() == 0);
        for (int i = 0; i < this.f22505j.length; i++) {
            DefaultTrackSelector.SelectionOverride selectionOverride = this.f22501f.get(i);
            int i2 = 0;
            while (true) {
                CheckedTextView[][] checkedTextViewArr = this.f22505j;
                if (i2 < checkedTextViewArr[i].length) {
                    checkedTextViewArr[i][i2].setChecked(selectionOverride != null && selectionOverride.m18443a(i2));
                    i2++;
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v9, types: [android.widget.CheckedTextView[], android.widget.CheckedTextView[][]] */
    /* renamed from: e */
    public final void m18300e() {
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        if (this.f22506k == null) {
            this.f22498c.setEnabled(false);
            this.f22499d.setEnabled(false);
            return;
        }
        this.f22498c.setEnabled(true);
        this.f22499d.setEnabled(true);
        TrackGroupArray b = this.f22506k.m29032b(this.f22507l);
        this.f22508m = b;
        this.f22505j = new CheckedTextView[b.f22261a];
        boolean c = m18302c();
        int i = 0;
        while (true) {
            TrackGroupArray trackGroupArray = this.f22508m;
            if (i < trackGroupArray.f22261a) {
                TrackGroup a = trackGroupArray.m18479a(i);
                boolean a2 = m18309a(i);
                this.f22505j[i] = new CheckedTextView[a.f22257a];
                for (int i2 = 0; i2 < a.f22257a; i2++) {
                    if (i2 == 0) {
                        addView(this.f22497b.inflate(C2797i.exo_list_divider, (ViewGroup) this, false));
                    }
                    CheckedTextView checkedTextView = (CheckedTextView) this.f22497b.inflate((a2 || c) ? 17367056 : 17367055, (ViewGroup) this, false);
                    checkedTextView.setBackgroundResource(this.f22496a);
                    checkedTextView.setText(this.f22504i.mo28993a(a.m18482a(i2)));
                    if (this.f22506k.m29035a(this.f22507l, i, i2) == 4) {
                        checkedTextView.setFocusable(true);
                        checkedTextView.setTag(Pair.create(Integer.valueOf(i), Integer.valueOf(i2)));
                        checkedTextView.setOnClickListener(this.f22500e);
                    } else {
                        checkedTextView.setFocusable(false);
                        checkedTextView.setEnabled(false);
                    }
                    this.f22505j[i][i2] = checkedTextView;
                    addView(checkedTextView);
                }
                i++;
            } else {
                m18301d();
                return;
            }
        }
    }

    public boolean getIsDisabled() {
        return this.f22509n;
    }

    public List<DefaultTrackSelector.SelectionOverride> getOverrides() {
        ArrayList arrayList = new ArrayList(this.f22501f.size());
        for (int i = 0; i < this.f22501f.size(); i++) {
            arrayList.add(this.f22501f.valueAt(i));
        }
        return arrayList;
    }

    public void setAllowAdaptiveSelections(boolean z) {
        if (this.f22502g != z) {
            this.f22502g = z;
            m18300e();
        }
    }

    public void setAllowMultipleOverrides(boolean z) {
        if (this.f22503h != z) {
            this.f22503h = z;
            if (!z && this.f22501f.size() > 1) {
                for (int size = this.f22501f.size() - 1; size > 0; size--) {
                    this.f22501f.remove(size);
                }
            }
            m18300e();
        }
    }

    public void setShowDisableOption(boolean z) {
        this.f22498c.setVisibility(z ? 0 : 8);
    }

    public void setTrackNameProvider(AbstractC2803n nVar) {
        C2877e.m28737a(nVar);
        this.f22504i = nVar;
        m18300e();
    }
}

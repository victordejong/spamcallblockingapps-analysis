package com.mopub.nativeads;

import android.app.Activity;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibilityTracker;
import com.mopub.common.VisibleForTesting;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.List;
import java.util.WeakHashMap;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter.class */
public class MoPubAdAdapter extends BaseAdapter {

    /* renamed from: a */
    public final WeakHashMap<View, Integer> f34695a;

    /* renamed from: b */
    public final Adapter f34696b;

    /* renamed from: c */
    public final MoPubStreamAdPlacer f34697c;

    /* renamed from: d */
    public final VisibilityTracker f34698d;

    /* renamed from: e */
    public MoPubNativeAdLoadedListener f34699e;

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$a.class */
    public class C8925a implements VisibilityTracker.VisibilityTrackerListener {
        public C8925a() {
        }

        @Override // com.mopub.common.VisibilityTracker.VisibilityTrackerListener
        public void onVisibilityChanged(List<View> list, List<View> list2) {
            MoPubAdAdapter.this.m4004a(list);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$b.class */
    public class C8926b extends DataSetObserver {
        public C8926b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            MoPubAdAdapter.this.f34697c.setItemCount(MoPubAdAdapter.this.f34696b.getCount());
            MoPubAdAdapter.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            MoPubAdAdapter.this.notifyDataSetInvalidated();
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$c.class */
    public class C8927c implements MoPubNativeAdLoadedListener {
        public C8927c() {
        }

        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdLoaded(int i) {
            MoPubAdAdapter.this.m4007a(i);
        }

        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdRemoved(int i) {
            MoPubAdAdapter.this.m4003b(i);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$d.class */
    public class C8928d implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public final /* synthetic */ AdapterView.OnItemClickListener f34703a;

        public C8928d(AdapterView.OnItemClickListener onItemClickListener) {
            this.f34703a = onItemClickListener;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (!MoPubAdAdapter.this.f34697c.isAd(i)) {
                this.f34703a.onItemClick(adapterView, view, MoPubAdAdapter.this.f34697c.getOriginalPosition(i), j);
            }
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$e.class */
    public class C8929e implements AdapterView.OnItemLongClickListener {

        /* renamed from: a */
        public final /* synthetic */ AdapterView.OnItemLongClickListener f34705a;

        public C8929e(AdapterView.OnItemLongClickListener onItemLongClickListener) {
            this.f34705a = onItemLongClickListener;
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
            return MoPubAdAdapter.this.isAd(i) || this.f34705a.onItemLongClick(adapterView, view, MoPubAdAdapter.this.f34697c.getOriginalPosition(i), j);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$f */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$f.class */
    public class C8930f implements AdapterView.OnItemSelectedListener {

        /* renamed from: a */
        public final /* synthetic */ AdapterView.OnItemSelectedListener f34707a;

        public C8930f(AdapterView.OnItemSelectedListener onItemSelectedListener) {
            this.f34707a = onItemSelectedListener;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (!MoPubAdAdapter.this.isAd(i)) {
                this.f34707a.onItemSelected(adapterView, view, MoPubAdAdapter.this.f34697c.getOriginalPosition(i), j);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
            this.f34707a.onNothingSelected(adapterView);
        }
    }

    public MoPubAdAdapter(Activity activity, Adapter adapter) {
        this(activity, adapter, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubAdAdapter(Activity activity, Adapter adapter, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubClientPositioning), adapter, new VisibilityTracker(activity));
    }

    public MoPubAdAdapter(Activity activity, Adapter adapter, MoPubNativeAdPositioning.MoPubServerPositioning moPubServerPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubServerPositioning), adapter, new VisibilityTracker(activity));
    }

    @VisibleForTesting
    public MoPubAdAdapter(MoPubStreamAdPlacer moPubStreamAdPlacer, Adapter adapter, VisibilityTracker visibilityTracker) {
        this.f34696b = adapter;
        this.f34697c = moPubStreamAdPlacer;
        this.f34695a = new WeakHashMap<>();
        this.f34698d = visibilityTracker;
        visibilityTracker.setVisibilityTrackerListener(new C8925a());
        this.f34696b.registerDataSetObserver(new C8926b());
        this.f34697c.setAdLoadedListener(new C8927c());
        this.f34697c.setItemCount(this.f34696b.getCount());
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m4007a(int i) {
        MoPubNativeAdLoadedListener moPubNativeAdLoadedListener = this.f34699e;
        if (moPubNativeAdLoadedListener != null) {
            moPubNativeAdLoadedListener.onAdLoaded(i);
        }
        notifyDataSetChanged();
    }

    /* renamed from: a */
    public final void m4004a(List<View> list) {
        int i = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        int i2 = 0;
        for (View view : list) {
            Integer num = this.f34695a.get(view);
            if (num != null) {
                i = Math.min(num.intValue(), i);
                i2 = Math.max(num.intValue(), i2);
            }
        }
        this.f34697c.placeAdsInRange(i, i2 + 1);
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        Adapter adapter = this.f34696b;
        return (adapter instanceof ListAdapter) && ((ListAdapter) adapter).areAllItemsEnabled();
    }

    @VisibleForTesting
    /* renamed from: b */
    public void m4003b(int i) {
        MoPubNativeAdLoadedListener moPubNativeAdLoadedListener = this.f34699e;
        if (moPubNativeAdLoadedListener != null) {
            moPubNativeAdLoadedListener.onAdRemoved(i);
        }
        notifyDataSetChanged();
    }

    public void clearAds() {
        this.f34697c.clearAds();
    }

    public void destroy() {
        this.f34697c.destroy();
        this.f34698d.destroy();
    }

    public int getAdjustedPosition(int i) {
        return this.f34697c.getAdjustedPosition(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f34697c.getAdjustedCount(this.f34696b.getCount());
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Object adData = this.f34697c.getAdData(i);
        return adData != null ? adData : this.f34696b.getItem(this.f34697c.getOriginalPosition(i));
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Object adData = this.f34697c.getAdData(i);
        return adData != null ? -System.identityHashCode(adData) : this.f34696b.getItemId(this.f34697c.getOriginalPosition(i));
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        int adViewType = this.f34697c.getAdViewType(i);
        return adViewType != 0 ? (adViewType + this.f34696b.getViewTypeCount()) - 1 : this.f34696b.getItemViewType(this.f34697c.getOriginalPosition(i));
    }

    public int getOriginalPosition(int i) {
        return this.f34697c.getOriginalPosition(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View adView = this.f34697c.getAdView(i, view, viewGroup);
        View view2 = adView != null ? adView : this.f34696b.getView(this.f34697c.getOriginalPosition(i), view, viewGroup);
        this.f34695a.put(view2, Integer.valueOf(i));
        this.f34698d.addView(view2, 0, null);
        return view2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.f34696b.getViewTypeCount() + this.f34697c.getAdViewTypeCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.f34696b.hasStableIds();
    }

    public void insertItem(int i) {
        this.f34697c.insertItem(i);
    }

    public boolean isAd(int i) {
        return this.f34697c.isAd(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        boolean z = false;
        if (this.f34696b.isEmpty()) {
            z = false;
            if (this.f34697c.getAdjustedCount(0) == 0) {
                z = true;
            }
        }
        return z;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        boolean z;
        if (!isAd(i)) {
            Adapter adapter = this.f34696b;
            if (!(adapter instanceof ListAdapter) || !((ListAdapter) adapter).isEnabled(this.f34697c.getOriginalPosition(i))) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }

    public void loadAds(String str) {
        this.f34697c.loadAds(str);
    }

    public void loadAds(String str, RequestParameters requestParameters) {
        this.f34697c.loadAds(str, requestParameters);
    }

    public void refreshAds(ListView listView, String str) {
        refreshAds(listView, str, null);
    }

    public void refreshAds(ListView listView, String str, RequestParameters requestParameters) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.refreshAds with a null ListView")) {
            View childAt = listView.getChildAt(0);
            int top = childAt == null ? 0 : childAt.getTop();
            int firstVisiblePosition = listView.getFirstVisiblePosition();
            int max = Math.max(firstVisiblePosition - 1, 0);
            while (this.f34697c.isAd(max) && max > 0) {
                max--;
            }
            int lastVisiblePosition = listView.getLastVisiblePosition();
            while (this.f34697c.isAd(lastVisiblePosition) && lastVisiblePosition < getCount() - 1) {
                lastVisiblePosition++;
            }
            int originalPosition = this.f34697c.getOriginalPosition(max);
            this.f34697c.removeAdsInRange(this.f34697c.getOriginalCount(lastVisiblePosition + 1), this.f34697c.getOriginalCount(getCount()));
            int removeAdsInRange = this.f34697c.removeAdsInRange(0, originalPosition);
            if (removeAdsInRange > 0) {
                listView.setSelectionFromTop(firstVisiblePosition - removeAdsInRange, top);
            }
            loadAds(str, requestParameters);
        }
    }

    public final void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        if (Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Tried to set a null ad renderer on the placer.")) {
            this.f34697c.registerAdRenderer(moPubAdRenderer);
        }
    }

    public void removeItem(int i) {
        this.f34697c.removeItem(i);
    }

    public final void setAdLoadedListener(MoPubNativeAdLoadedListener moPubNativeAdLoadedListener) {
        this.f34699e = moPubNativeAdLoadedListener;
    }

    public void setOnClickListener(ListView listView, AdapterView.OnItemClickListener onItemClickListener) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnClickListener with a null ListView")) {
            if (onItemClickListener == null) {
                listView.setOnItemClickListener(null);
            } else {
                listView.setOnItemClickListener(new C8928d(onItemClickListener));
            }
        }
    }

    public void setOnItemLongClickListener(ListView listView, AdapterView.OnItemLongClickListener onItemLongClickListener) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnItemLongClickListener with a null ListView")) {
            if (onItemLongClickListener == null) {
                listView.setOnItemLongClickListener(null);
            } else {
                listView.setOnItemLongClickListener(new C8929e(onItemLongClickListener));
            }
        }
    }

    public void setOnItemSelectedListener(ListView listView, AdapterView.OnItemSelectedListener onItemSelectedListener) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnItemSelectedListener with a null ListView")) {
            if (onItemSelectedListener == null) {
                listView.setOnItemSelectedListener(null);
            } else {
                listView.setOnItemSelectedListener(new C8930f(onItemSelectedListener));
            }
        }
    }

    public void setSelection(ListView listView, int i) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setSelection with a null ListView")) {
            listView.setSelection(this.f34697c.getAdjustedPosition(i));
        }
    }

    public void smoothScrollToPosition(ListView listView, int i) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.smoothScrollToPosition with a null ListView")) {
            listView.smoothScrollToPosition(this.f34697c.getAdjustedPosition(i));
        }
    }
}

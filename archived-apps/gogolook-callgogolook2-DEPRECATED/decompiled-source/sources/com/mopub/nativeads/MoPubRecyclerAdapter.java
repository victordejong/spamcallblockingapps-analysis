package com.mopub.nativeads;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibilityTracker;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.List;
import java.util.WeakHashMap;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubRecyclerAdapter.class */
public final class MoPubRecyclerAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    @NonNull

    /* renamed from: a */
    public final RecyclerView.AdapterDataObserver f9156a;
    @Nullable

    /* renamed from: b */
    public RecyclerView f9157b;
    @NonNull

    /* renamed from: c */
    public final MoPubStreamAdPlacer f9158c;
    @NonNull

    /* renamed from: d */
    public final RecyclerView.Adapter f9159d;
    @NonNull

    /* renamed from: e */
    public final VisibilityTracker f9160e;
    @NonNull

    /* renamed from: f */
    public final WeakHashMap<View, Integer> f9161f;
    @NonNull

    /* renamed from: g */
    public ContentChangeStrategy f9162g;
    @Nullable

    /* renamed from: h */
    public MoPubNativeAdLoadedListener f9163h;

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy.class */
    public enum ContentChangeStrategy {
        INSERT_AT_END,
        MOVE_ALL_ADS_WITH_CONTENT,
        KEEP_ADS_FIXED
    }

    /* renamed from: com.mopub.nativeads.MoPubRecyclerAdapter$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubRecyclerAdapter$a.class */
    public class C3973a implements VisibilityTracker.VisibilityTrackerListener {
        public C3973a() {
        }

        @Override // com.mopub.common.VisibilityTracker.VisibilityTrackerListener
        public void onVisibilityChanged(List<View> list, List<View> list2) {
            MoPubRecyclerAdapter.this.m30123a(list, list2);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubRecyclerAdapter$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubRecyclerAdapter$b.class */
    public class C3974b implements MoPubNativeAdLoadedListener {
        public C3974b() {
        }

        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdLoaded(int i) {
            MoPubRecyclerAdapter.this.m30126a(i);
        }

        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdRemoved(int i) {
            MoPubRecyclerAdapter.this.m30121b(i);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubRecyclerAdapter$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubRecyclerAdapter$c.class */
    public class C3975c extends RecyclerView.AdapterDataObserver {
        public C3975c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            MoPubRecyclerAdapter.this.f9158c.setItemCount(MoPubRecyclerAdapter.this.f9159d.getItemCount());
            MoPubRecyclerAdapter.this.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2) {
            int adjustedPosition = MoPubRecyclerAdapter.this.f9158c.getAdjustedPosition((i2 + i) - 1);
            int adjustedPosition2 = MoPubRecyclerAdapter.this.f9158c.getAdjustedPosition(i);
            MoPubRecyclerAdapter.this.notifyItemRangeChanged(adjustedPosition2, (adjustedPosition - adjustedPosition2) + 1);
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x005c, code lost:
            if (r10 != false) goto L_0x0085;
         */
        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onItemRangeInserted(int r5, int r6) {
            /*
                r4 = this;
                r0 = r4
                com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                com.mopub.nativeads.MoPubStreamAdPlacer r0 = com.mopub.nativeads.MoPubRecyclerAdapter.m30120b(r0)
                r1 = r5
                int r0 = r0.getAdjustedPosition(r1)
                r7 = r0
                r0 = r4
                com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                androidx.recyclerview.widget.RecyclerView$Adapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.m30125a(r0)
                int r0 = r0.getItemCount()
                r8 = r0
                r0 = r4
                com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                com.mopub.nativeads.MoPubStreamAdPlacer r0 = com.mopub.nativeads.MoPubRecyclerAdapter.m30120b(r0)
                r1 = r8
                r0.setItemCount(r1)
                r0 = 0
                r9 = r0
                r0 = r5
                r1 = r6
                int r0 = r0 + r1
                r1 = r8
                if (r0 < r1) goto L_0x0035
                r0 = 1
                r10 = r0
                goto L_0x0038
            L_0x0035:
                r0 = 0
                r10 = r0
            L_0x0038:
                com.mopub.nativeads.MoPubRecyclerAdapter$ContentChangeStrategy r0 = com.mopub.nativeads.MoPubRecyclerAdapter.ContentChangeStrategy.KEEP_ADS_FIXED
                r1 = r4
                com.mopub.nativeads.MoPubRecyclerAdapter r1 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                com.mopub.nativeads.MoPubRecyclerAdapter$ContentChangeStrategy r1 = com.mopub.nativeads.MoPubRecyclerAdapter.m30119c(r1)
                if (r0 == r1) goto L_0x0085
                r0 = r9
                r8 = r0
                com.mopub.nativeads.MoPubRecyclerAdapter$ContentChangeStrategy r0 = com.mopub.nativeads.MoPubRecyclerAdapter.ContentChangeStrategy.INSERT_AT_END
                r1 = r4
                com.mopub.nativeads.MoPubRecyclerAdapter r1 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                com.mopub.nativeads.MoPubRecyclerAdapter$ContentChangeStrategy r1 = com.mopub.nativeads.MoPubRecyclerAdapter.m30119c(r1)
                if (r0 != r1) goto L_0x0062
                r0 = r9
                r8 = r0
                r0 = r10
                if (r0 == 0) goto L_0x0062
                goto L_0x0085
            L_0x0062:
                r0 = r8
                r1 = r6
                if (r0 >= r1) goto L_0x0079
                r0 = r4
                com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                com.mopub.nativeads.MoPubStreamAdPlacer r0 = com.mopub.nativeads.MoPubRecyclerAdapter.m30120b(r0)
                r1 = r5
                r0.insertItem(r1)
                int r8 = r8 + 1
                goto L_0x0062
            L_0x0079:
                r0 = r4
                com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                r1 = r7
                r2 = r6
                r0.notifyItemRangeInserted(r1, r2)
                goto L_0x008c
            L_0x0085:
                r0 = r4
                com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                r0.notifyDataSetChanged()
            L_0x008c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mopub.nativeads.MoPubRecyclerAdapter.C3975c.onItemRangeInserted(int, int):void");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i, int i2, int i3) {
            MoPubRecyclerAdapter.this.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i, int i2) {
            int adjustedPosition = MoPubRecyclerAdapter.this.f9158c.getAdjustedPosition(i);
            int itemCount = MoPubRecyclerAdapter.this.f9159d.getItemCount();
            MoPubRecyclerAdapter.this.f9158c.setItemCount(itemCount);
            boolean z = i + i2 >= itemCount;
            if (ContentChangeStrategy.KEEP_ADS_FIXED == MoPubRecyclerAdapter.this.f9162g || (ContentChangeStrategy.INSERT_AT_END == MoPubRecyclerAdapter.this.f9162g && z)) {
                MoPubRecyclerAdapter.this.notifyDataSetChanged();
                return;
            }
            int adjustedCount = MoPubRecyclerAdapter.this.f9158c.getAdjustedCount(itemCount + i2);
            for (int i3 = 0; i3 < i2; i3++) {
                MoPubRecyclerAdapter.this.f9158c.removeItem(i);
            }
            int adjustedCount2 = adjustedCount - MoPubRecyclerAdapter.this.f9158c.getAdjustedCount(itemCount);
            MoPubRecyclerAdapter.this.notifyItemRangeRemoved(adjustedPosition - (adjustedCount2 - i2), adjustedCount2);
        }
    }

    public MoPubRecyclerAdapter(@NonNull Activity activity, @NonNull RecyclerView.Adapter adapter) {
        this(activity, adapter, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubRecyclerAdapter(@NonNull Activity activity, @NonNull RecyclerView.Adapter adapter, @NonNull MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubClientPositioning), adapter, new VisibilityTracker(activity));
    }

    public MoPubRecyclerAdapter(@NonNull Activity activity, @NonNull RecyclerView.Adapter adapter, @NonNull MoPubNativeAdPositioning.MoPubServerPositioning moPubServerPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubServerPositioning), adapter, new VisibilityTracker(activity));
    }

    @VisibleForTesting
    public MoPubRecyclerAdapter(@NonNull MoPubStreamAdPlacer moPubStreamAdPlacer, @NonNull RecyclerView.Adapter adapter, @NonNull VisibilityTracker visibilityTracker) {
        this.f9162g = ContentChangeStrategy.INSERT_AT_END;
        this.f9161f = new WeakHashMap<>();
        this.f9159d = adapter;
        this.f9160e = visibilityTracker;
        this.f9160e.setVisibilityTrackerListener(new C3973a());
        m30122a(this.f9159d.hasStableIds());
        this.f9158c = moPubStreamAdPlacer;
        this.f9158c.setAdLoadedListener(new C3974b());
        this.f9158c.setItemCount(this.f9159d.getItemCount());
        this.f9156a = new C3975c();
        this.f9159d.registerAdapterDataObserver(this.f9156a);
    }

    public static int computeScrollOffset(@NonNull LinearLayoutManager linearLayoutManager, @Nullable RecyclerView.ViewHolder viewHolder) {
        int i = 0;
        if (viewHolder == null) {
            return 0;
        }
        View view = viewHolder.itemView;
        if (linearLayoutManager.canScrollVertically()) {
            i = linearLayoutManager.getStackFromEnd() ? view.getBottom() : view.getTop();
        } else if (linearLayoutManager.canScrollHorizontally()) {
            i = linearLayoutManager.getStackFromEnd() ? view.getRight() : view.getLeft();
        }
        return i;
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m30126a(int i) {
        MoPubNativeAdLoadedListener moPubNativeAdLoadedListener = this.f9163h;
        if (moPubNativeAdLoadedListener != null) {
            moPubNativeAdLoadedListener.onAdLoaded(i);
        }
        notifyItemInserted(i);
    }

    /* renamed from: a */
    public final void m30123a(List<View> list, List<View> list2) {
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        for (View view : list) {
            Integer num = this.f9161f.get(view);
            if (num != null) {
                i = Math.min(num.intValue(), i);
                i2 = Math.max(num.intValue(), i2);
            }
        }
        this.f9158c.placeAdsInRange(i, i2 + 1);
    }

    /* renamed from: a */
    public final void m30122a(boolean z) {
        super.setHasStableIds(z);
    }

    @VisibleForTesting
    /* renamed from: b */
    public void m30121b(int i) {
        MoPubNativeAdLoadedListener moPubNativeAdLoadedListener = this.f9163h;
        if (moPubNativeAdLoadedListener != null) {
            moPubNativeAdLoadedListener.onAdRemoved(i);
        }
        notifyItemRemoved(i);
    }

    public void clearAds() {
        this.f9158c.clearAds();
    }

    public void destroy() {
        this.f9159d.unregisterAdapterDataObserver(this.f9156a);
        this.f9158c.destroy();
        this.f9160e.destroy();
    }

    public int getAdjustedPosition(int i) {
        return this.f9158c.getAdjustedPosition(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f9158c.getAdjustedCount(this.f9159d.getItemCount());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        if (!this.f9159d.hasStableIds()) {
            return -1L;
        }
        Object adData = this.f9158c.getAdData(i);
        return adData != null ? -System.identityHashCode(adData) : this.f9159d.getItemId(this.f9158c.getOriginalPosition(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        int adViewType = this.f9158c.getAdViewType(i);
        return adViewType != 0 ? adViewType - 56 : this.f9159d.getItemViewType(this.f9158c.getOriginalPosition(i));
    }

    public int getOriginalPosition(int i) {
        return this.f9158c.getOriginalPosition(i);
    }

    public boolean isAd(int i) {
        return this.f9158c.isAd(i);
    }

    public void loadAds(@NonNull String str) {
        this.f9158c.loadAds(str);
    }

    public void loadAds(@NonNull String str, @Nullable RequestParameters requestParameters) {
        this.f9158c.loadAds(str, requestParameters);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.f9157b = recyclerView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        Object adData = this.f9158c.getAdData(i);
        if (adData != null) {
            this.f9158c.bindAdView((NativeAd) adData, viewHolder.itemView);
            return;
        }
        this.f9161f.put(viewHolder.itemView, Integer.valueOf(i));
        this.f9160e.addView(viewHolder.itemView, 0, null);
        this.f9159d.onBindViewHolder(viewHolder, this.f9158c.getOriginalPosition(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i < -56 || i > this.f9158c.getAdViewTypeCount() - 56) {
            return this.f9159d.onCreateViewHolder(viewGroup, i);
        }
        MoPubAdRenderer adRendererForViewType = this.f9158c.getAdRendererForViewType(i + 56);
        if (adRendererForViewType != null) {
            return new MoPubRecyclerViewHolder(adRendererForViewType.createAdView((Activity) viewGroup.getContext(), viewGroup));
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "No view binder was registered for ads in MoPubRecyclerAdapter.");
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        this.f9157b = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
        return viewHolder instanceof MoPubRecyclerViewHolder ? super.onFailedToRecycleView(viewHolder) : this.f9159d.onFailedToRecycleView(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder instanceof MoPubRecyclerViewHolder) {
            super.onViewAttachedToWindow(viewHolder);
        } else {
            this.f9159d.onViewAttachedToWindow(viewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder instanceof MoPubRecyclerViewHolder) {
            super.onViewDetachedFromWindow(viewHolder);
        } else {
            this.f9159d.onViewDetachedFromWindow(viewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder instanceof MoPubRecyclerViewHolder) {
            super.onViewRecycled(viewHolder);
        } else {
            this.f9159d.onViewRecycled(viewHolder);
        }
    }

    public void refreshAds(@NonNull String str) {
        refreshAds(str, null);
    }

    public void refreshAds(@NonNull String str, @Nullable RequestParameters requestParameters) {
        RecyclerView recyclerView = this.f9157b;
        if (recyclerView == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "This adapter is not attached to a RecyclerView and cannot be refreshed.");
            return;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't refresh ads when there is no layout manager on a RecyclerView.");
        } else if (layoutManager instanceof LinearLayoutManager) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
            int computeScrollOffset = computeScrollOffset(linearLayoutManager, this.f9157b.findViewHolderForLayoutPosition(findFirstVisibleItemPosition));
            int max = Math.max(0, findFirstVisibleItemPosition - 1);
            while (this.f9158c.isAd(max) && max > 0) {
                max--;
            }
            int itemCount = getItemCount();
            int findLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
            while (this.f9158c.isAd(findLastVisibleItemPosition) && findLastVisibleItemPosition < itemCount - 1) {
                findLastVisibleItemPosition++;
            }
            int originalPosition = this.f9158c.getOriginalPosition(max);
            this.f9158c.removeAdsInRange(this.f9158c.getOriginalPosition(findLastVisibleItemPosition), this.f9159d.getItemCount());
            int removeAdsInRange = this.f9158c.removeAdsInRange(0, originalPosition);
            if (removeAdsInRange > 0) {
                linearLayoutManager.scrollToPositionWithOffset(findFirstVisibleItemPosition - removeAdsInRange, computeScrollOffset);
            }
            loadAds(str, requestParameters);
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "This LayoutManager can't be refreshed.");
        }
    }

    public void registerAdRenderer(@NonNull MoPubAdRenderer moPubAdRenderer) {
        if (Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Cannot register a null adRenderer")) {
            this.f9158c.registerAdRenderer(moPubAdRenderer);
        }
    }

    public void setAdLoadedListener(@Nullable MoPubNativeAdLoadedListener moPubNativeAdLoadedListener) {
        this.f9163h = moPubNativeAdLoadedListener;
    }

    public void setContentChangeStrategy(@NonNull ContentChangeStrategy contentChangeStrategy) {
        if (Preconditions.NoThrow.checkNotNull(contentChangeStrategy)) {
            this.f9162g = contentChangeStrategy;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void setHasStableIds(boolean z) {
        m30122a(z);
        this.f9159d.unregisterAdapterDataObserver(this.f9156a);
        this.f9159d.setHasStableIds(z);
        this.f9159d.registerAdapterDataObserver(this.f9156a);
    }
}

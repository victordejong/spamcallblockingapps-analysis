package android.support.p004v7.recyclerview.extensions;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p004v7.recyclerview.extensions.AsyncDifferConfig;
import android.support.p004v7.util.AdapterListUpdateCallback;
import android.support.p004v7.util.DiffUtil;
import android.support.p004v7.util.ListUpdateCallback;
import android.support.p004v7.widget.RecyclerView;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
/* renamed from: android.support.v7.recyclerview.extensions.AsyncListDiffer */
/* loaded from: classes-dex2jar.jar:android/support/v7/recyclerview/extensions/AsyncListDiffer.class */
public class AsyncListDiffer<T> {
    private static final Executor sMainThreadExecutor = new MainThreadExecutor();
    final AsyncDifferConfig<T> mConfig;
    @Nullable
    private List<T> mList;
    final Executor mMainThreadExecutor;
    int mMaxScheduledGeneration;
    @NonNull
    private List<T> mReadOnlyList;
    private final ListUpdateCallback mUpdateCallback;

    /* renamed from: android.support.v7.recyclerview.extensions.AsyncListDiffer$MainThreadExecutor */
    /* loaded from: classes-dex2jar.jar:android/support/v7/recyclerview/extensions/AsyncListDiffer$MainThreadExecutor.class */
    private static class MainThreadExecutor implements Executor {
        final Handler mHandler = new Handler(Looper.getMainLooper());

        MainThreadExecutor() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            this.mHandler.post(runnable);
        }
    }

    public AsyncListDiffer(@NonNull ListUpdateCallback listUpdateCallback, @NonNull AsyncDifferConfig<T> asyncDifferConfig) {
        this.mReadOnlyList = Collections.emptyList();
        this.mUpdateCallback = listUpdateCallback;
        this.mConfig = asyncDifferConfig;
        if (asyncDifferConfig.getMainThreadExecutor() != null) {
            this.mMainThreadExecutor = asyncDifferConfig.getMainThreadExecutor();
        } else {
            this.mMainThreadExecutor = sMainThreadExecutor;
        }
    }

    public AsyncListDiffer(@NonNull RecyclerView.Adapter adapter, @NonNull DiffUtil.ItemCallback<T> itemCallback) {
        this(new AdapterListUpdateCallback(adapter), new AsyncDifferConfig.Builder(itemCallback).build());
    }

    @NonNull
    public List<T> getCurrentList() {
        return this.mReadOnlyList;
    }

    void latchList(@NonNull List<T> list, @NonNull DiffUtil.DiffResult diffResult) {
        this.mList = list;
        this.mReadOnlyList = Collections.unmodifiableList(list);
        diffResult.dispatchUpdatesTo(this.mUpdateCallback);
    }

    public void submitList(@Nullable final List<T> list) {
        final int i = this.mMaxScheduledGeneration + 1;
        this.mMaxScheduledGeneration = i;
        if (list != this.mList) {
            if (list == null) {
                int size = this.mList.size();
                this.mList = null;
                this.mReadOnlyList = Collections.emptyList();
                this.mUpdateCallback.onRemoved(0, size);
            } else if (this.mList == null) {
                this.mList = list;
                this.mReadOnlyList = Collections.unmodifiableList(list);
                this.mUpdateCallback.onInserted(0, list.size());
            } else {
                final List<T> list2 = this.mList;
                this.mConfig.getBackgroundThreadExecutor().execute(new Runnable() { // from class: android.support.v7.recyclerview.extensions.AsyncListDiffer.1
                    @Override // java.lang.Runnable
                    public void run() {
                        final DiffUtil.DiffResult calculateDiff = DiffUtil.calculateDiff(new DiffUtil.Callback() { // from class: android.support.v7.recyclerview.extensions.AsyncListDiffer.1.1
                            @Override // android.support.p004v7.util.DiffUtil.Callback
                            public boolean areContentsTheSame(int i2, int i3) {
                                Object obj = list2.get(i2);
                                Object obj2 = list.get(i3);
                                if (obj != null && obj2 != null) {
                                    return AsyncListDiffer.this.mConfig.getDiffCallback().areContentsTheSame(obj, obj2);
                                }
                                if (obj == null && obj2 == null) {
                                    return true;
                                }
                                throw new AssertionError();
                            }

                            @Override // android.support.p004v7.util.DiffUtil.Callback
                            public boolean areItemsTheSame(int i2, int i3) {
                                Object obj = list2.get(i2);
                                Object obj2 = list.get(i3);
                                if (obj != null && obj2 != null) {
                                    return AsyncListDiffer.this.mConfig.getDiffCallback().areItemsTheSame(obj, obj2);
                                }
                                return obj == null && obj2 == null;
                            }

                            @Override // android.support.p004v7.util.DiffUtil.Callback
                            @Nullable
                            public Object getChangePayload(int i2, int i3) {
                                Object obj = list2.get(i2);
                                Object obj2 = list.get(i3);
                                if (obj != null && obj2 != null) {
                                    return AsyncListDiffer.this.mConfig.getDiffCallback().getChangePayload(obj, obj2);
                                }
                                throw new AssertionError();
                            }

                            @Override // android.support.p004v7.util.DiffUtil.Callback
                            public int getNewListSize() {
                                return list.size();
                            }

                            @Override // android.support.p004v7.util.DiffUtil.Callback
                            public int getOldListSize() {
                                return list2.size();
                            }
                        });
                        AsyncListDiffer.this.mMainThreadExecutor.execute(new Runnable() { // from class: android.support.v7.recyclerview.extensions.AsyncListDiffer.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                if (AsyncListDiffer.this.mMaxScheduledGeneration == i) {
                                    AsyncListDiffer.this.latchList(list, calculateDiff);
                                }
                            }
                        });
                    }
                });
            }
        }
    }
}

package com.mixpanel.android.viewcrawler;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/EditState.class */
public class EditState extends UIThreadSet<Activity> {
    private static final String LOGTAG = "MixpanelAPI.EditState";
    private final Handler mUiThreadHandler = new Handler(Looper.getMainLooper());
    private final Map<String, List<ViewVisitor>> mIntendedEdits = new HashMap();
    private final Set<EditBinding> mCurrentEdits = new HashSet();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/EditState$EditBinding.class */
    public static class EditBinding implements ViewTreeObserver.OnGlobalLayoutListener, Runnable {
        private boolean mAlive = true;
        private volatile boolean mDying = false;
        private final ViewVisitor mEdit;
        private final Handler mHandler;
        private final WeakReference<View> mViewRoot;

        public EditBinding(View view, ViewVisitor viewVisitor, Handler handler) {
            this.mEdit = viewVisitor;
            this.mViewRoot = new WeakReference<>(view);
            this.mHandler = handler;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnGlobalLayoutListener(this);
            }
            run();
        }

        private void cleanUp() {
            if (this.mAlive) {
                View view = this.mViewRoot.get();
                if (view != null) {
                    ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                    if (viewTreeObserver.isAlive()) {
                        viewTreeObserver.removeGlobalOnLayoutListener(this);
                    }
                }
                this.mEdit.cleanup();
            }
            this.mAlive = false;
        }

        public void kill() {
            this.mDying = true;
            this.mHandler.post(this);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            run();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mAlive) {
                View view = this.mViewRoot.get();
                if (view == null || this.mDying) {
                    cleanUp();
                    return;
                }
                this.mEdit.visit(view);
                this.mHandler.removeCallbacks(this);
                this.mHandler.postDelayed(this, 1000L);
            }
        }
    }

    private void applyChangesFromList(View view, List<ViewVisitor> list) {
        synchronized (this.mCurrentEdits) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                this.mCurrentEdits.add(new EditBinding(view, list.get(i), this.mUiThreadHandler));
            }
        }
    }

    private void applyEditsOnUiThread() {
        if (Thread.currentThread() == this.mUiThreadHandler.getLooper().getThread()) {
            applyIntendedEdits();
        } else {
            this.mUiThreadHandler.post(new Runnable() { // from class: com.mixpanel.android.viewcrawler.EditState.1
                @Override // java.lang.Runnable
                public void run() {
                    EditState.this.applyIntendedEdits();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyIntendedEdits() {
        List<ViewVisitor> list;
        List<ViewVisitor> list2;
        for (Activity activity : getAll()) {
            String canonicalName = activity.getClass().getCanonicalName();
            View rootView = activity.getWindow().getDecorView().getRootView();
            synchronized (this.mIntendedEdits) {
                list = this.mIntendedEdits.get(canonicalName);
                list2 = this.mIntendedEdits.get(null);
            }
            if (list != null) {
                applyChangesFromList(rootView, list);
            }
            if (list2 != null) {
                applyChangesFromList(rootView, list2);
            }
        }
    }

    public void add(Activity activity) {
        super.add((EditState) activity);
        applyEditsOnUiThread();
    }

    public void remove(Activity activity) {
        super.remove((EditState) activity);
    }

    public void setEdits(Map<String, List<ViewVisitor>> map) {
        synchronized (this.mCurrentEdits) {
            for (EditBinding editBinding : this.mCurrentEdits) {
                editBinding.kill();
            }
            this.mCurrentEdits.clear();
        }
        synchronized (this.mIntendedEdits) {
            this.mIntendedEdits.clear();
            this.mIntendedEdits.putAll(map);
        }
        applyEditsOnUiThread();
    }
}

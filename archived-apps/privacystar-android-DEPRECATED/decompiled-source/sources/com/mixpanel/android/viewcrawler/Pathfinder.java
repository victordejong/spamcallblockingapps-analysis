package com.mixpanel.android.viewcrawler;

import android.view.View;
import android.view.ViewGroup;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mixpanel.android.util.MPLog;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/Pathfinder.class */
class Pathfinder {
    private static final String LOGTAG = "MixpanelAPI.PathFinder";
    private final IntStack mIndexStack = new IntStack();

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/Pathfinder$Accumulator.class */
    public interface Accumulator {
        void accumulate(View view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/Pathfinder$IntStack.class */
    public static class IntStack {
        private static final int MAX_INDEX_STACK_SIZE = 256;
        private final int[] mStack = new int[256];
        private int mStackSize = 0;

        public int alloc() {
            int i = this.mStackSize;
            this.mStackSize++;
            this.mStack[i] = 0;
            return i;
        }

        public void free() {
            this.mStackSize--;
            if (this.mStackSize < 0) {
                throw new ArrayIndexOutOfBoundsException(this.mStackSize);
            }
        }

        public boolean full() {
            return this.mStack.length == this.mStackSize;
        }

        public void increment(int i) {
            int[] iArr = this.mStack;
            iArr[i] = iArr[i] + 1;
        }

        public int read(int i) {
            return this.mStack[i];
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/Pathfinder$PathElement.class */
    public static class PathElement {
        public static final int SHORTEST_PREFIX = 1;
        public static final int ZERO_LENGTH_PREFIX = 0;
        public final String contentDescription;
        public final int index;
        public final int prefix;
        public final String tag;
        public final String viewClassName;
        public final int viewId;

        public PathElement(int i, String str, int i2, int i3, String str2, String str3) {
            this.prefix = i;
            this.viewClassName = str;
            this.index = i2;
            this.viewId = i3;
            this.contentDescription = str2;
            this.tag = str3;
        }

        public String toString() {
            try {
                JSONObject jSONObject = new JSONObject();
                if (this.prefix == 1) {
                    jSONObject.put("prefix", "shortest");
                }
                if (this.viewClassName != null) {
                    jSONObject.put("view_class", this.viewClassName);
                }
                if (this.index > -1) {
                    jSONObject.put(FirebaseAnalytics.Param.INDEX, this.index);
                }
                if (this.viewId > -1) {
                    jSONObject.put("id", this.viewId);
                }
                if (this.contentDescription != null) {
                    jSONObject.put("contentDescription", this.contentDescription);
                }
                if (this.tag != null) {
                    jSONObject.put("tag", this.tag);
                }
                return jSONObject.toString();
            } catch (JSONException e) {
                throw new RuntimeException("Can't serialize PathElement to String", e);
            }
        }
    }

    private View findPrefixedMatch(PathElement pathElement, View view, int i) {
        int read = this.mIndexStack.read(i);
        if (matches(pathElement, view)) {
            this.mIndexStack.increment(i);
            if (pathElement.index == -1 || pathElement.index == read) {
                return view;
            }
        }
        if (pathElement.prefix != 1 || !(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View findPrefixedMatch = findPrefixedMatch(pathElement, viewGroup.getChildAt(i2), i);
            if (findPrefixedMatch != null) {
                return findPrefixedMatch;
            }
        }
        return null;
    }

    private void findTargetsInMatchedView(View view, List<PathElement> list, Accumulator accumulator) {
        if (list.isEmpty()) {
            accumulator.accumulate(view);
        } else if (view instanceof ViewGroup) {
            if (this.mIndexStack.full()) {
                MPLog.m307v(LOGTAG, "Path is too deep, will not match");
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            PathElement pathElement = list.get(0);
            List<PathElement> subList = list.subList(1, list.size());
            int childCount = viewGroup.getChildCount();
            int alloc = this.mIndexStack.alloc();
            for (int i = 0; i < childCount; i++) {
                View findPrefixedMatch = findPrefixedMatch(pathElement, viewGroup.getChildAt(i), alloc);
                if (findPrefixedMatch != null) {
                    findTargetsInMatchedView(findPrefixedMatch, subList, accumulator);
                }
                if (pathElement.index >= 0 && this.mIndexStack.read(alloc) > pathElement.index) {
                    break;
                }
            }
            this.mIndexStack.free();
        }
    }

    private static boolean hasClassName(Object obj, String str) {
        for (Class<?> cls = obj.getClass(); !cls.getCanonicalName().equals(str); cls = cls.getSuperclass()) {
            if (cls == Object.class) {
                return false;
            }
        }
        return true;
    }

    private boolean matches(PathElement pathElement, View view) {
        if (pathElement.viewClassName != null && !hasClassName(view, pathElement.viewClassName)) {
            return false;
        }
        if (-1 != pathElement.viewId && view.getId() != pathElement.viewId) {
            return false;
        }
        if (pathElement.contentDescription != null && !pathElement.contentDescription.equals(view.getContentDescription())) {
            return false;
        }
        String str = pathElement.tag;
        if (pathElement.tag != null) {
            return view.getTag() != null && str.equals(view.getTag().toString());
        }
        return true;
    }

    public void findTargetsInRoot(View view, List<PathElement> list, Accumulator accumulator) {
        if (!list.isEmpty()) {
            if (this.mIndexStack.full()) {
                MPLog.m305w(LOGTAG, "There appears to be a concurrency issue in the pathfinding code. Path will not be matched.");
                return;
            }
            PathElement pathElement = list.get(0);
            List<PathElement> subList = list.subList(1, list.size());
            View findPrefixedMatch = findPrefixedMatch(pathElement, view, this.mIndexStack.alloc());
            this.mIndexStack.free();
            if (findPrefixedMatch != null) {
                findTargetsInMatchedView(findPrefixedMatch, subList, accumulator);
            }
        }
    }
}

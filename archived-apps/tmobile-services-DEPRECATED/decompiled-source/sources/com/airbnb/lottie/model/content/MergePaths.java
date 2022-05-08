package com.airbnb.lottie.model.content;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.MergePathsContent;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.Logger;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/MergePaths.class */
public class MergePaths implements ContentModel {

    /* renamed from: a */
    private final String f6138a;

    /* renamed from: b */
    private final MergePathsMode f6139b;

    /* renamed from: c */
    private final boolean f6140c;

    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/MergePaths$MergePathsMode.class */
    public enum MergePathsMode {
        MERGE,
        ADD,
        SUBTRACT,
        INTERSECT,
        EXCLUDE_INTERSECTIONS;

        public static MergePathsMode forId(int i) {
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? MERGE : EXCLUDE_INTERSECTIONS : INTERSECT : SUBTRACT : ADD : MERGE;
        }
    }

    public MergePaths(String str, MergePathsMode mergePathsMode, boolean z) {
        this.f6138a = str;
        this.f6139b = mergePathsMode;
        this.f6140c = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    @Nullable
    /* renamed from: a */
    public Content mo15977a(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        if (lottieDrawable.m16243k()) {
            return new MergePathsContent(this);
        }
        Logger.m15736c("Animation contains merge paths but they are disabled.");
        return null;
    }

    /* renamed from: b */
    public MergePathsMode m16026b() {
        return this.f6139b;
    }

    /* renamed from: c */
    public String m16025c() {
        return this.f6138a;
    }

    /* renamed from: d */
    public boolean m16024d() {
        return this.f6140c;
    }

    public String toString() {
        return "MergePaths{mode=" + this.f6139b + '}';
    }
}

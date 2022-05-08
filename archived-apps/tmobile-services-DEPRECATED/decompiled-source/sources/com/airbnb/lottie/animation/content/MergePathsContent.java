package com.airbnb.lottie.animation.content;

import android.annotation.TargetApi;
import android.graphics.Path;
import android.os.Build;
import com.airbnb.lottie.model.content.MergePaths;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
@TargetApi(19)
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/content/MergePathsContent.class */
public class MergePathsContent implements PathContent, GreedyContent {

    /* renamed from: d */
    private final String f5941d;

    /* renamed from: f */
    private final MergePaths f5943f;

    /* renamed from: a */
    private final Path f5938a = new Path();

    /* renamed from: b */
    private final Path f5939b = new Path();

    /* renamed from: c */
    private final Path f5940c = new Path();

    /* renamed from: e */
    private final List<PathContent> f5942e = new ArrayList();

    /* renamed from: com.airbnb.lottie.animation.content.MergePathsContent$1 */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/content/MergePathsContent$1.class */
    static /* synthetic */ class C06561 {

        /* renamed from: a */
        static final /* synthetic */ int[] f5944a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[MergePaths.MergePathsMode.values().length];
            f5944a = iArr;
            try {
                iArr[MergePaths.MergePathsMode.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5944a[MergePaths.MergePathsMode.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5944a[MergePaths.MergePathsMode.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f5944a[MergePaths.MergePathsMode.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f5944a[MergePaths.MergePathsMode.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public MergePathsContent(MergePaths mergePaths) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f5941d = mergePaths.m16025c();
            this.f5943f = mergePaths;
            return;
        }
        throw new IllegalStateException("Merge paths are not supported pre-KitKat.");
    }

    /* renamed from: a */
    private void m16175a() {
        for (int i = 0; i < this.f5942e.size(); i++) {
            this.f5940c.addPath(this.f5942e.get(i).getPath());
        }
    }

    @TargetApi(19)
    /* renamed from: c */
    private void m16174c(Path.Op op) {
        this.f5939b.reset();
        this.f5938a.reset();
        for (int size = this.f5942e.size() - 1; size >= 1; size--) {
            PathContent pathContent = this.f5942e.get(size);
            if (pathContent instanceof ContentGroup) {
                ContentGroup contentGroup = (ContentGroup) pathContent;
                List<PathContent> i = contentGroup.m16187i();
                for (int size2 = i.size() - 1; size2 >= 0; size2--) {
                    Path path = i.get(size2).getPath();
                    path.transform(contentGroup.m16186j());
                    this.f5939b.addPath(path);
                }
            } else {
                this.f5939b.addPath(pathContent.getPath());
            }
        }
        PathContent pathContent2 = this.f5942e.get(0);
        if (pathContent2 instanceof ContentGroup) {
            ContentGroup contentGroup2 = (ContentGroup) pathContent2;
            List<PathContent> i2 = contentGroup2.m16187i();
            for (int i3 = 0; i3 < i2.size(); i3++) {
                Path path2 = i2.get(i3).getPath();
                path2.transform(contentGroup2.m16186j());
                this.f5938a.addPath(path2);
            }
        } else {
            this.f5938a.set(pathContent2.getPath());
        }
        this.f5940c.op(this.f5938a, this.f5939b, op);
    }

    @Override // com.airbnb.lottie.animation.content.Content
    /* renamed from: b */
    public void mo15963b(List<Content> list, List<Content> list2) {
        for (int i = 0; i < this.f5942e.size(); i++) {
            this.f5942e.get(i).mo15963b(list, list2);
        }
    }

    @Override // com.airbnb.lottie.animation.content.GreedyContent
    /* renamed from: e */
    public void mo16169e(ListIterator<Content> listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            Content previous = listIterator.previous();
            if (previous instanceof PathContent) {
                this.f5942e.add((PathContent) previous);
                listIterator.remove();
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.f5941d;
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public Path getPath() {
        this.f5940c.reset();
        if (this.f5943f.m16024d()) {
            return this.f5940c;
        }
        int i = C06561.f5944a[this.f5943f.m16026b().ordinal()];
        if (i == 1) {
            m16175a();
        } else if (i == 2) {
            m16174c(Path.Op.UNION);
        } else if (i == 3) {
            m16174c(Path.Op.REVERSE_DIFFERENCE);
        } else if (i == 4) {
            m16174c(Path.Op.INTERSECT);
        } else if (i == 5) {
            m16174c(Path.Op.XOR);
        }
        return this.f5940c;
    }
}

.class public final Le/a/a/c/r8/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Le/a/a/c/r8/e;Le/a/a/c/r8/c;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p0, p1, Le/a/a/c/r8/c;->a:Landroid/view/View;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public static final b(Le/a/a/c/r8/e;Le/a/a/c/r8/c;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p0, p1, Le/a/a/c/r8/c;->a:Landroid/view/View;

    const p1, 0x7f0a0987

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 4
    invoke-static {p2}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object p2

    check-cast p2, Le/a/z3/e;

    .line 5
    invoke-virtual {p2, p1}, Le/f/a/i;->m(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final c(Le/a/a/c/r8/e;Le/a/a/c/r8/c;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p0, p1, Le/a/a/c/r8/c;->a:Landroid/view/View;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 5
    iget-object p0, p1, Le/a/a/c/r8/c;->a:Landroid/view/View;

    const p1, 0x7f0a13f8

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string p1, "instance.findViewById(R.id.visualizerView)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;

    .line 7
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 8
    iget-object p0, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->c:Landroid/media/audiofx/Visualizer;

    if-eqz p0, :cond_0

    .line 9
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1, v1}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final d(Landroid/content/Context;Le/a/a/c/r8/b;Ls1/z/b/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/a/c/r8/b;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewCacher"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/a/c/r8/e$b;

    const/16 v4, 0xc

    const v5, 0x7f0d04aa

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p1

    .line 2
    invoke-direct/range {v1 .. v6}, Le/a/a/c/r8/e$b;-><init>(Le/a/a/c/r8/e;Landroid/content/Context;IILandroid/content/Context;)V

    .line 3
    iget-object v1, p2, Le/a/a/c/r8/b;->a:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x2

    .line 4
    new-instance v7, Le/a/a/c/r8/e$c;

    const/16 v4, 0xc

    const v5, 0x7f0d04a9

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v6, p1

    .line 5
    invoke-direct/range {v1 .. v6}, Le/a/a/c/r8/e$c;-><init>(Le/a/a/c/r8/e;Landroid/content/Context;IILandroid/content/Context;)V

    .line 6
    iget-object v1, p2, Le/a/a/c/r8/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x4

    .line 7
    new-instance v7, Le/a/a/c/r8/e$d;

    const/16 v4, 0xc

    const v5, 0x7f0d04a6

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v6, p1

    .line 8
    invoke-direct/range {v1 .. v6}, Le/a/a/c/r8/e$d;-><init>(Le/a/a/c/r8/e;Landroid/content/Context;IILandroid/content/Context;)V

    .line 9
    iget-object v1, p2, Le/a/a/c/r8/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x5

    .line 10
    new-instance v7, Le/a/a/c/r8/e$e;

    const/16 v4, 0xc

    const v5, 0x7f0d04a5

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v6, p1

    .line 11
    invoke-direct/range {v1 .. v6}, Le/a/a/c/r8/e$e;-><init>(Le/a/a/c/r8/e;Landroid/content/Context;IILandroid/content/Context;)V

    .line 12
    iget-object v1, p2, Le/a/a/c/r8/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x62

    .line 13
    new-instance v7, Le/a/a/c/r8/e$f;

    const/16 v4, 0xc

    const v5, 0x7f0d04a3

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v6, p1

    .line 14
    invoke-direct/range {v1 .. v6}, Le/a/a/c/r8/e$f;-><init>(Le/a/a/c/r8/e;Landroid/content/Context;IILandroid/content/Context;)V

    .line 15
    iget-object v1, p2, Le/a/a/c/r8/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x63

    .line 16
    new-instance v7, Le/a/a/c/r8/e$g;

    const/16 v4, 0xc

    const v5, 0x7f0d04a2

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v6, p1

    .line 17
    invoke-direct/range {v1 .. v6}, Le/a/a/c/r8/e$g;-><init>(Le/a/a/c/r8/e;Landroid/content/Context;IILandroid/content/Context;)V

    .line 18
    iget-object v1, p2, Le/a/a/c/r8/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x6

    .line 19
    new-instance v8, Le/a/a/c/r8/e$h;

    const/16 v5, 0xc

    const v6, 0x7f0d04b0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v7, p1

    .line 20
    invoke-direct/range {v1 .. v7}, Le/a/a/c/r8/e$h;-><init>(Le/a/a/c/r8/e;Ls1/z/b/a;Landroid/content/Context;IILandroid/content/Context;)V

    .line 21
    iget-object v1, p2, Le/a/a/c/r8/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x7

    .line 22
    new-instance v8, Le/a/a/c/r8/e$i;

    const/16 v5, 0xc

    const v6, 0x7f0d04af

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v7, p1

    .line 23
    invoke-direct/range {v1 .. v7}, Le/a/a/c/r8/e$i;-><init>(Le/a/a/c/r8/e;Ls1/z/b/a;Landroid/content/Context;IILandroid/content/Context;)V

    .line 24
    iget-object p3, p2, Le/a/a/c/r8/b;->a:Landroid/util/SparseArray;

    invoke-virtual {p3, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p3, 0x61

    .line 25
    new-instance v0, Le/a/a/c/r8/a$d;

    const v1, 0x7f0d04ad

    const/16 v2, 0xc

    invoke-direct {v0, v2, v1, p1}, Le/a/a/c/r8/a$d;-><init>(IILandroid/content/Context;)V

    .line 26
    iget-object v1, p2, Le/a/a/c/r8/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p3, 0x64

    .line 27
    new-instance v0, Le/a/a/c/r8/a$c;

    const v1, 0x7f0d04a8

    invoke-direct {v0, v2, v1, p1}, Le/a/a/c/r8/a$c;-><init>(IILandroid/content/Context;)V

    .line 28
    iget-object v3, p2, Le/a/a/c/r8/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p3, 0x65

    .line 29
    new-instance v0, Le/a/a/c/r8/a$e;

    invoke-direct {v0, v2, v1, p1}, Le/a/a/c/r8/a$e;-><init>(IILandroid/content/Context;)V

    .line 30
    iget-object v1, p2, Le/a/a/c/r8/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p3, 0x66

    .line 31
    new-instance v0, Le/a/a/c/r8/e$j;

    const/16 v6, 0xc

    const v7, 0x7f0d04a0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p1

    .line 32
    invoke-direct/range {v3 .. v8}, Le/a/a/c/r8/e$j;-><init>(Le/a/a/c/r8/e;Landroid/content/Context;IILandroid/content/Context;)V

    .line 33
    iget-object v1, p2, Le/a/a/c/r8/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p3, 0x67

    .line 34
    new-instance v0, Le/a/a/c/r8/e$a;

    const/16 v6, 0xc

    const v7, 0x7f0d04a1

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p1

    .line 35
    invoke-direct/range {v3 .. v8}, Le/a/a/c/r8/e$a;-><init>(Le/a/a/c/r8/e;Landroid/content/Context;IILandroid/content/Context;)V

    .line 36
    iget-object v1, p2, Le/a/a/c/r8/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p3, 0x68

    .line 37
    new-instance v0, Le/a/a/c/r8/a$b;

    const v1, 0x7f0d04d2

    invoke-direct {v0, v2, v1, p1}, Le/a/a/c/r8/a$b;-><init>(IILandroid/content/Context;)V

    .line 38
    iget-object p1, p2, Le/a/a/c/r8/b;->a:Landroid/util/SparseArray;

    invoke-virtual {p1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

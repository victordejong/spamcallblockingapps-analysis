.class public final Lt3/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Random;

.field public b:Lt3/a/a/f/a;

.field public c:Lt3/a/a/f/b;

.field public d:[I

.field public e:[Lt3/a/a/e/c;

.field public f:[Lt3/a/a/e/b;

.field public g:Lt3/a/a/e/a;

.field public h:Lt3/a/a/c/c;

.field public final i:Lnl/dionsegijn/konfetti/KonfettiView;


# direct methods
.method public constructor <init>(Lnl/dionsegijn/konfetti/KonfettiView;)V
    .locals 5

    const-string v0, "konfettiView"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/a/a/b;->i:Lnl/dionsegijn/konfetti/KonfettiView;

    .line 2
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lt3/a/a/b;->a:Ljava/util/Random;

    .line 3
    new-instance v0, Lt3/a/a/f/a;

    invoke-direct {v0, p1}, Lt3/a/a/f/a;-><init>(Ljava/util/Random;)V

    iput-object v0, p0, Lt3/a/a/b;->b:Lt3/a/a/f/a;

    .line 4
    new-instance v0, Lt3/a/a/f/b;

    invoke-direct {v0, p1}, Lt3/a/a/f/b;-><init>(Ljava/util/Random;)V

    iput-object v0, p0, Lt3/a/a/b;->c:Lt3/a/a/f/b;

    const/4 p1, 0x1

    new-array v0, p1, [I

    const/4 v1, 0x0

    const/high16 v2, -0x10000

    aput v2, v0, v1

    .line 5
    iput-object v0, p0, Lt3/a/a/b;->d:[I

    new-array v0, p1, [Lt3/a/a/e/c;

    .line 6
    new-instance v2, Lt3/a/a/e/c;

    const/16 v3, 0x10

    const/high16 v4, 0x40a00000    # 5.0f

    .line 7
    invoke-direct {v2, v3, v4}, Lt3/a/a/e/c;-><init>(IF)V

    aput-object v2, v0, v1

    .line 8
    iput-object v0, p0, Lt3/a/a/b;->e:[Lt3/a/a/e/c;

    new-array p1, p1, [Lt3/a/a/e/b;

    .line 9
    sget-object v0, Lt3/a/a/e/b;->a:Lt3/a/a/e/b;

    aput-object v0, p1, v1

    iput-object p1, p0, Lt3/a/a/b;->f:[Lt3/a/a/e/b;

    .line 10
    new-instance p1, Lt3/a/a/e/a;

    const-wide/16 v2, 0x0

    const/4 v0, 0x3

    invoke-direct {p1, v1, v2, v3, v0}, Lt3/a/a/e/a;-><init>(ZJI)V

    iput-object p1, p0, Lt3/a/a/b;->g:Lt3/a/a/e/a;

    return-void
.end method


# virtual methods
.method public final varargs a([Lt3/a/a/e/b;)Lt3/a/a/b;
    .locals 6

    const-string v0, "shapes"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    instance-of v5, v4, Lt3/a/a/e/b;

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v2, [Lt3/a/a/e/b;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, [Lt3/a/a/e/b;

    iput-object p1, p0, Lt3/a/a/b;->f:[Lt3/a/a/e/b;

    return-object p0

    :cond_2
    new-instance p1, Ls1/p;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs b([Lt3/a/a/e/c;)Lt3/a/a/b;
    .locals 6

    const-string v0, "possibleSizes"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    instance-of v5, v4, Lt3/a/a/e/c;

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v2, [Lt3/a/a/e/c;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, [Lt3/a/a/e/c;

    iput-object p1, p0, Lt3/a/a/b;->e:[Lt3/a/a/e/c;

    return-object p0

    :cond_2
    new-instance p1, Ls1/p;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(DD)Lt3/a/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lt3/a/a/b;->c:Lt3/a/a/f/b;

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    .line 2
    iput-wide p1, v0, Lt3/a/a/f/b;->a:D

    .line 3
    iget-object p1, p0, Lt3/a/a/b;->c:Lt3/a/a/f/b;

    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 4
    iput-object p2, p1, Lt3/a/a/f/b;->b:Ljava/lang/Double;

    return-object p0
.end method

.method public final d(FF)Lt3/a/a/b;
    .locals 4

    .line 1
    iget-object v0, p0, Lt3/a/a/b;->c:Lt3/a/a/f/b;

    const/4 v1, 0x0

    int-to-float v1, v1

    cmpg-float v2, p1, v1

    const/4 v3, 0x0

    if-gez v2, :cond_0

    move p1, v3

    .line 2
    :cond_0
    iput p1, v0, Lt3/a/a/f/b;->c:F

    .line 3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpg-float p2, p2, v1

    if-gez p2, :cond_1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :cond_1
    iput-object p1, v0, Lt3/a/a/f/b;->d:Ljava/lang/Float;

    return-object p0

    :cond_2
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final e(Lt3/a/a/c/b;)V
    .locals 9

    .line 1
    new-instance v8, Lt3/a/a/c/c;

    iget-object v1, p0, Lt3/a/a/b;->b:Lt3/a/a/f/a;

    iget-object v2, p0, Lt3/a/a/b;->c:Lt3/a/a/f/b;

    iget-object v3, p0, Lt3/a/a/b;->e:[Lt3/a/a/e/c;

    iget-object v4, p0, Lt3/a/a/b;->f:[Lt3/a/a/e/b;

    iget-object v5, p0, Lt3/a/a/b;->d:[I

    iget-object v6, p0, Lt3/a/a/b;->g:Lt3/a/a/e/a;

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lt3/a/a/c/c;-><init>(Lt3/a/a/f/a;Lt3/a/a/f/b;[Lt3/a/a/e/c;[Lt3/a/a/e/b;[ILt3/a/a/e/a;Lt3/a/a/c/b;)V

    iput-object v8, p0, Lt3/a/a/b;->h:Lt3/a/a/c/c;

    .line 2
    iget-object p1, p0, Lt3/a/a/b;->i:Lnl/dionsegijn/konfetti/KonfettiView;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "particleSystem"

    invoke-static {p0, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p1, Lnl/dionsegijn/konfetti/KonfettiView;->c:Lt3/a/a/d/a;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p1, p0, v1}, Lt3/a/a/d/a;->b(Lnl/dionsegijn/konfetti/KonfettiView;Lt3/a/a/b;I)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

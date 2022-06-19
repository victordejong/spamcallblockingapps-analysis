.class public final Le/a/b/a/a/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/a/a/c/d;->b:Le/a/p5/c0;

    .line 2
    new-instance p1, Le/a/b/a/a/c/d$a;

    invoke-direct {p1, p0}, Le/a/b/a/a/c/d$a;-><init>(Le/a/b/a/a/c/d;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/b/a/a/c/d;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;ILandroid/app/Activity;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/b0/p/c;",
            ">;I",
            "Landroid/app/Activity;",
            ")I"
        }
    .end annotation

    const-string v0, "tags"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/a/a/c/d;->b:Le/a/p5/c0;

    sget v1, Lcom/truecaller/bizmon/R$dimen;->doubleSpace:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->H(I)I

    move-result v0

    .line 2
    iget-object v2, p0, Le/a/b/a/a/c/d;->b:Le/a/p5/c0;

    invoke-interface {v2, v1}, Le/a/p5/c0;->H(I)I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    .line 3
    invoke-static {p3}, Le/a/e/a2;->p(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr p3, v0

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 5
    iget-object v3, p0, Le/a/b/a/a/c/d;->a:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Paint;

    const-string v4, "S"

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 6
    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 8
    iget-object v3, p0, Le/a/b/a/a/c/d;->b:Le/a/p5/c0;

    invoke-interface {v3, v1}, Le/a/p5/c0;->H(I)I

    move-result v1

    .line 9
    iget-object v3, p0, Le/a/b/a/a/c/d;->b:Le/a/p5/c0;

    sget v4, Lcom/truecaller/bizmon/R$dimen;->semiSpace:I

    invoke-interface {v3, v4}, Le/a/p5/c0;->H(I)I

    move-result v3

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v1

    add-int/2addr v4, v0

    add-int/2addr v4, v3

    .line 10
    div-int/2addr p2, v4

    sub-int/2addr p2, v6

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v5

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/p/c;

    .line 12
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 13
    iget-object v7, p0, Le/a/b/a/a/c/d;->a:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Paint;

    .line 14
    iget-object v3, v3, Le/a/b0/p/c;->b:Ljava/lang/String;

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v3, v5, v8, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 16
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v3, v2

    if-ne v6, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v0, v3

    if-le v0, p3, :cond_1

    if-ge v6, p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    move v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

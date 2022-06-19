.class public Le/b/a/w/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/b/a/w/b/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/b/a/w/b/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/b/a/w/b/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 2
    iget-object v1, p0, Le/b/a/w/b/b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/w/b/s;

    .line 3
    sget-object v2, Le/b/a/b0/e;->a:Landroid/graphics/PathMeasure;

    if-eqz v1, :cond_1

    .line 4
    iget-boolean v2, v1, Le/b/a/w/b/s;->a:Z

    if-eqz v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v2, v1, Le/b/a/w/b/s;->d:Le/b/a/w/c/a;

    .line 6
    check-cast v2, Le/b/a/w/c/c;

    invoke-virtual {v2}, Le/b/a/w/c/c;->j()F

    move-result v2

    .line 7
    iget-object v3, v1, Le/b/a/w/b/s;->e:Le/b/a/w/c/a;

    .line 8
    check-cast v3, Le/b/a/w/c/c;

    invoke-virtual {v3}, Le/b/a/w/c/c;->j()F

    move-result v3

    .line 9
    iget-object v1, v1, Le/b/a/w/b/s;->f:Le/b/a/w/c/a;

    .line 10
    check-cast v1, Le/b/a/w/c/c;

    invoke-virtual {v1}, Le/b/a/w/c/c;->j()F

    move-result v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v1, v4

    .line 11
    invoke-static {p1, v2, v3, v1}, Le/b/a/b0/e;->a(Landroid/graphics/Path;FFF)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

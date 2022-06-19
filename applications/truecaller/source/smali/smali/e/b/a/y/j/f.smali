.class public Le/b/a/y/j/f;
.super Le/b/a/y/j/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/b/a/y/j/n<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/b/a/c0/a<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/b/a/y/j/n;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public f()Le/b/a/w/c/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/b/a/w/c/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/b/a/w/c/j;

    iget-object v1, p0, Le/b/a/y/j/n;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Le/b/a/w/c/j;-><init>(Ljava/util/List;)V

    return-object v0
.end method

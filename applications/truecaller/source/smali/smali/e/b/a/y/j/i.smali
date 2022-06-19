.class public Le/b/a/y/j/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/y/j/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/b/a/y/j/m<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/b/a/y/j/b;

.field public final b:Le/b/a/y/j/b;


# direct methods
.method public constructor <init>(Le/b/a/y/j/b;Le/b/a/y/j/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/b/a/y/j/i;->a:Le/b/a/y/j/b;

    .line 3
    iput-object p2, p0, Le/b/a/y/j/i;->b:Le/b/a/y/j/b;

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/y/j/i;->a:Le/b/a/y/j/b;

    invoke-virtual {v0}, Le/b/a/y/j/n;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/b/a/y/j/i;->b:Le/b/a/y/j/b;

    invoke-virtual {v0}, Le/b/a/y/j/n;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Le/b/a/w/c/a;
    .locals 3
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
    new-instance v0, Le/b/a/w/c/m;

    iget-object v1, p0, Le/b/a/y/j/i;->a:Le/b/a/y/j/b;

    .line 2
    invoke-virtual {v1}, Le/b/a/y/j/b;->f()Le/b/a/w/c/a;

    move-result-object v1

    iget-object v2, p0, Le/b/a/y/j/i;->b:Le/b/a/y/j/b;

    invoke-virtual {v2}, Le/b/a/y/j/b;->f()Le/b/a/w/c/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Le/b/a/w/c/m;-><init>(Le/b/a/w/c/a;Le/b/a/w/c/a;)V

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/b/a/c0/a<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

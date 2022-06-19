.class public Le/b/a/y/l/g;
.super Le/b/a/y/l/b;
.source "SourceFile"


# instance fields
.field public final w:Le/b/a/w/b/d;


# direct methods
.method public constructor <init>(Le/b/a/k;Le/b/a/y/l/e;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Le/b/a/y/l/b;-><init>(Le/b/a/k;Le/b/a/y/l/e;)V

    .line 2
    new-instance v0, Le/b/a/y/k/n;

    .line 3
    iget-object p2, p2, Le/b/a/y/l/e;->a:Ljava/util/List;

    const-string v1, "__container"

    const/4 v2, 0x0

    .line 4
    invoke-direct {v0, v1, p2, v2}, Le/b/a/y/k/n;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 5
    new-instance p2, Le/b/a/w/b/d;

    invoke-direct {p2, p1, p0, v0}, Le/b/a/w/b/d;-><init>(Le/b/a/k;Le/b/a/y/l/b;Le/b/a/y/k/n;)V

    iput-object p2, p0, Le/b/a/y/l/g;->w:Le/b/a/w/b/d;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Le/b/a/w/b/d;->e(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Le/b/a/y/l/b;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    iget-object p2, p0, Le/b/a/y/l/g;->w:Le/b/a/w/b/d;

    iget-object v0, p0, Le/b/a/y/l/b;->m:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v0, p3}, Le/b/a/w/b/d;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/y/l/g;->w:Le/b/a/w/b/d;

    invoke-virtual {v0, p1, p2, p3}, Le/b/a/w/b/d;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public n(Le/b/a/y/e;ILjava/util/List;Le/b/a/y/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/y/e;",
            "I",
            "Ljava/util/List<",
            "Le/b/a/y/e;",
            ">;",
            "Le/b/a/y/e;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/b/a/y/l/g;->w:Le/b/a/w/b/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Le/b/a/w/b/d;->g(Le/b/a/y/e;ILjava/util/List;Le/b/a/y/e;)V

    return-void
.end method

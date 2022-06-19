.class public Le/b/a/w/c/m;
.super Le/b/a/w/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/b/a/w/c/a<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public final l:Landroid/graphics/PointF;

.field public final m:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/b/a/w/c/a;Le/b/a/w/c/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/w/c/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Le/b/a/w/c/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Le/b/a/w/c/a;-><init>(Ljava/util/List;)V

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Le/b/a/w/c/m;->l:Landroid/graphics/PointF;

    .line 3
    iput-object p1, p0, Le/b/a/w/c/m;->m:Le/b/a/w/c/a;

    .line 4
    iput-object p2, p0, Le/b/a/w/c/m;->n:Le/b/a/w/c/a;

    .line 5
    iget p1, p0, Le/b/a/w/c/a;->d:F

    .line 6
    invoke-virtual {p0, p1}, Le/b/a/w/c/m;->i(F)V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/w/c/m;->l:Landroid/graphics/PointF;

    return-object v0
.end method

.method public g(Le/b/a/c0/a;F)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Le/b/a/w/c/m;->l:Landroid/graphics/PointF;

    return-object p1
.end method

.method public i(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/w/c/m;->m:Le/b/a/w/c/a;

    invoke-virtual {v0, p1}, Le/b/a/w/c/a;->i(F)V

    .line 2
    iget-object v0, p0, Le/b/a/w/c/m;->n:Le/b/a/w/c/a;

    invoke-virtual {v0, p1}, Le/b/a/w/c/a;->i(F)V

    .line 3
    iget-object p1, p0, Le/b/a/w/c/m;->l:Landroid/graphics/PointF;

    iget-object v0, p0, Le/b/a/w/c/m;->m:Le/b/a/w/c/a;

    invoke-virtual {v0}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Le/b/a/w/c/m;->n:Le/b/a/w/c/a;

    invoke-virtual {v1}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 5
    iget-object v0, p0, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/w/c/a$a;

    invoke-interface {v0}, Le/b/a/w/c/a$a;->d()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

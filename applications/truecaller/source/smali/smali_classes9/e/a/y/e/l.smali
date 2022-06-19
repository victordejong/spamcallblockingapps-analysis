.class public Le/a/y/e/l;
.super Le/a/y/e/k;
.source "SourceFile"

# interfaces
.implements Le/a/y/e/m;


# instance fields
.field public final c:Le/a/y/e/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Le/a/y/e/i;Le/a/y/e/m;Le/a/y/e/k$a;Le/a/y/b/z;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Le/a/y/e/i;",
            "Le/a/y/e/m;",
            "Le/a/y/e/k$a;",
            "Le/a/y/b/z<",
            "Le/a/y/e/i;",
            ">;J)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Le/a/y/e/k;-><init>(Landroid/content/Context;[Le/a/y/e/i;Le/a/y/e/m;Le/a/y/e/k$a;Le/a/y/b/z;J)V

    .line 2
    new-instance p2, Le/a/y/e/j;

    iget-object p3, p0, Le/a/y/e/k;->b:Le/a/y/b/z;

    invoke-interface {p3}, Le/a/y/b/z;->getAll()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Le/a/y/e/j;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Le/a/y/e/l;->c:Le/a/y/e/j;

    .line 3
    new-instance p1, Le/a/y/e/f;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Le/a/y/e/f;-><init>(Le/a/y/e/l;Le/a/y/e/k$a;Le/a/y/e/m;J)V

    .line 4
    iput-object p1, p2, Le/a/y/e/j;->a:Le/a/y/e/k$a;

    .line 5
    iget-object p1, p0, Le/a/y/e/k;->a:Landroid/view/View;

    sget p3, Lcom/truecaller/flashsdk/R$id;->grid_view:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/content/Context;Le/a/y/e/i;J)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/y/e/k;->b:Le/a/y/b/z;

    invoke-interface {p1, p2}, Le/a/y/b/z;->push(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/y/e/l;->c:Le/a/y/e/j;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/y/e/k;->b:Le/a/y/b/z;

    invoke-interface {p1, p3, p4}, Le/a/y/b/z;->d(J)V

    return-void
.end method

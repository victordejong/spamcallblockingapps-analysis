.class public final Le/a/c/a/m/c/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic a:Le/a/c/a/m/c/i;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/c/a/m/c/j;->a:Le/a/c/a/m/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/c/a/m/c/j;->a:Le/a/c/a/m/c/i;

    .line 2
    sget-object p2, Le/a/c/a/m/c/i;->i:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/c/a/m/c/i;->PA()Le/a/c/a/g/w1;

    move-result-object p1

    .line 4
    iget-object p1, p1, Le/a/c/a/g/w1;->a:Landroid/widget/Spinner;

    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 5
    iget-object p2, p0, Le/a/c/a/m/c/j;->a:Le/a/c/a/m/c/i;

    .line 6
    iget-object v0, p2, Le/a/c/a/m/c/i;->e:Lq3/a/i0;

    .line 7
    new-instance v3, Le/a/c/a/m/c/j$a;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p1, p2}, Le/a/c/a/m/c/j$a;-><init>(Le/a/c/a/m/c/j;Ljava/lang/String;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/c/a/m/c/j;->a:Le/a/c/a/m/c/i;

    .line 2
    iget-object p1, p1, Le/a/c/a/m/c/i;->f:Le/a/c/a/m/b/u;

    .line 3
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "newData"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p1, Le/a/c/a/m/b/u;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    iget-object p1, p1, Le/a/c/a/m/b/u;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object p1, p0, Le/a/c/a/m/c/j;->a:Le/a/c/a/m/c/i;

    .line 8
    iget-object p1, p1, Le/a/c/a/m/c/i;->f:Le/a/c/a/m/b/u;

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

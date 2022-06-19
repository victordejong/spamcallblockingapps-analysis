.class public final Le/a/c/a/m/c/w$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/m/c/w;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/models/InsightsReminder;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/m/c/w;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/w;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/w$c;->a:Le/a/c/a/m/c/w;

    iput-object p2, p0, Le/a/c/a/m/c/w$c;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Le/a/c/a/m/c/w$c;->a:Le/a/c/a/m/c/w;

    .line 3
    iget-object v0, v0, Le/a/c/a/m/c/w;->c:Le/a/c/a/m/b/g;

    if-eqz v0, :cond_0

    const-string v1, "it"

    .line 4
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    .line 5
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, v0, Le/a/c/a/m/b/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    iget-object v1, v0, Le/a/c/a/m/b/g;->a:Ljava/util/List;

    .line 8
    new-instance v2, Le/a/c/a/m/b/h;

    invoke-direct {v2}, Le/a/c/a/m/b/h;-><init>()V

    invoke-static {p1, v2}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void

    :cond_0
    const-string p1, "rvDataAdapter"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

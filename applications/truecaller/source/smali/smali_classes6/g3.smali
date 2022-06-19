.class public final Lg3;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg3;->b:I

    iput-object p2, p0, Lg3;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg3;->d:Ljava/lang/Object;

    iput-object p4, p0, Lg3;->e:Ljava/lang/Object;

    iput-object p5, p0, Lg3;->f:Ljava/lang/Object;

    iput-object p6, p0, Lg3;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Lg3;->b:I

    const-string v2, "this"

    const-string v3, "it"

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lg3;->d:Ljava/lang/Object;

    check-cast p1, Le/a/o2/m;

    new-instance v1, Le/a/o2/h;

    iget-object v3, p0, Lg3;->g:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    iget-object v3, p0, Lg3;->f:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$c0;

    iget-object v3, p0, Lg3;->c:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Lcom/truecaller/common/ui/banner/BannerViewX;

    invoke-static {v6, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {p1, v1}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    check-cast p1, Landroid/view/View;

    .line 6
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lg3;->d:Ljava/lang/Object;

    check-cast p1, Le/a/o2/m;

    new-instance v1, Le/a/o2/h;

    iget-object v3, p0, Lg3;->e:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    iget-object v3, p0, Lg3;->f:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$c0;

    iget-object v3, p0, Lg3;->c:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Lcom/truecaller/common/ui/banner/BannerViewX;

    invoke-static {v6, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {p1, v1}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-object v0
.end method

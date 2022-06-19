.class public final Le/a/a/m/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/m/a;-><init>(Landroid/view/View;Le/a/o2/m;Lcom/truecaller/premium/PremiumLaunchContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/a/m/a$a;->b:I

    iput-object p2, p0, Le/a/a/m/a$a;->c:Ljava/lang/Object;

    iput-object p3, p0, Le/a/a/m/a$a;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/a/m/a$a;->b:I

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
    iget-object p1, p0, Le/a/a/m/a$a;->d:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Le/a/a/m/a;

    .line 4
    iget-object p1, v5, Le/a/a/m/a;->b:Le/a/o2/m;

    .line 5
    new-instance v1, Le/a/o2/h;

    iget-object v3, p0, Le/a/a/m/a$a;->c:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Lcom/truecaller/common/ui/banner/BannerViewX;

    invoke-static {v6, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x8

    const-string v4, "ItemEvent.ACTION_DISMISS_PREMIUM_BLOCKING"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {p1, v1}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1

    .line 7
    :cond_1
    check-cast p1, Landroid/view/View;

    .line 8
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Le/a/a/m/a$a;->d:Ljava/lang/Object;

    check-cast p1, Le/a/a/m/a;

    .line 10
    iget-object v1, p1, Le/a/a/m/a;->b:Le/a/o2/m;

    .line 11
    new-instance v3, Le/a/o2/h;

    iget-object v4, p0, Le/a/a/m/a$a;->c:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/common/ui/banner/BannerViewX;

    invoke-static {v4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Le/a/a/m/a$a;->d:Ljava/lang/Object;

    check-cast v2, Le/a/a/m/a;

    .line 12
    iget-object v2, v2, Le/a/a/m/a;->c:Lcom/truecaller/premium/PremiumLaunchContext;

    const-string v5, "ItemEvent.ACTION_PREMIUM_BLOCKING_LEARN_MORE"

    .line 13
    invoke-direct {v3, v5, p1, v4, v2}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-object v0
.end method

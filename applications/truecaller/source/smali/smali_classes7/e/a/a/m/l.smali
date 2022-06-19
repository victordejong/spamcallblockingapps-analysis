.class public final Le/a/a/m/l;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/n1;


# instance fields
.field public final a:Lcom/truecaller/common/ui/banner/BannerViewX;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const-string v0, "ItemEvent.ACTION_TRY_INBOX_CLEANER"

    const-string v1, "ItemEvent.ACTION_DISMISS_INBOX_CLEANER"

    .line 2
    invoke-static {p1, p2, p0, v0, v1}, Le/a/c/p/a;->q(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/common/ui/banner/BannerViewX;

    move-result-object p1

    iput-object p1, p0, Le/a/a/m/l;->a:Lcom/truecaller/common/ui/banner/BannerViewX;

    return-void
.end method


# virtual methods
.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/m/l;->a:Lcom/truecaller/common/ui/banner/BannerViewX;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/banner/BannerViewX;->setTitle(Ljava/lang/String;)V

    return-void
.end method

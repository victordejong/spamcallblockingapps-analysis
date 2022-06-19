.class public final Le/a/h/f/a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/h/f/e;


# instance fields
.field public a:Lcom/truecaller/common/ui/banner/BannerViewX;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/h/f/e$a;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 2
    check-cast p1, Lcom/truecaller/common/ui/banner/BannerViewX;

    iput-object p1, p0, Le/a/h/f/a;->a:Lcom/truecaller/common/ui/banner/BannerViewX;

    .line 3
    new-instance v0, Le/a/h/f/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Le/a/h/f/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/banner/BannerViewX;->setPrimaryButtonCLickListener(Ls1/z/b/l;)V

    .line 4
    iget-object p1, p0, Le/a/h/f/a;->a:Lcom/truecaller/common/ui/banner/BannerViewX;

    new-instance v0, Le/a/h/f/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Le/a/h/f/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/banner/BannerViewX;->setSecondaryButtonCLickListener(Ls1/z/b/l;)V

    return-void
.end method


# virtual methods
.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/f/a;->a:Lcom/truecaller/common/ui/banner/BannerViewX;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/banner/BannerViewX;->setTitle(Ljava/lang/String;)V

    return-void
.end method

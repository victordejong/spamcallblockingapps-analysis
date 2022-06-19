.class public final Lcom/hiya/stingray/ui/local/h/b;
.super Landroidx/viewpager/widget/a;
.source "SourceFile"


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/k;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lkotlin/w/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/hiya/stingray/t/h1/k;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    .line 2
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/h/b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "container"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "object"

    invoke-static {p3, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/h/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public h(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/local/h/a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "container.context"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/hiya/stingray/ui/local/h/a;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/h/b;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/t/h1/k;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/h/a;->setTheme(Lcom/hiya/stingray/t/h1/k;)V

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/local/h/b$a;

    invoke-direct {v1, p0, p2}, Lcom/hiya/stingray/ui/local/h/b$a;-><init>(Lcom/hiya/stingray/ui/local/h/b;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public i(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "object"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final t()Lkotlin/w/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/w/b/l<",
            "Lcom/hiya/stingray/t/h1/k;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/h/b;->d:Lkotlin/w/b/l;

    return-object v0
.end method

.method public final u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/h/b;->c:Ljava/util/List;

    return-object v0
.end method

.method public final v(Lkotlin/w/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/hiya/stingray/t/h1/k;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/h/b;->d:Lkotlin/w/b/l;

    return-void
.end method

.method public final w(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/k;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/h/b;->c:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/viewpager/widget/a;->j()V

    return-void
.end method

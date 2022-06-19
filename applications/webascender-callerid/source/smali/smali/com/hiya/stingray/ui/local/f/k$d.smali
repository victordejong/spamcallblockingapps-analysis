.class final Lcom/hiya/stingray/ui/local/f/k$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/f/k;->m1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/local/f/k;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/f/k;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/k$d;->a:Lcom/hiya/stingray/ui/local/f/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090387

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0903cc

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The ID is not a support operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Menu ID: %s"

    .line 4
    invoke-static {v0, p1, v1}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 5
    :cond_0
    sget-object p1, Lcom/hiya/stingray/ui/local/f/c;->a:Lcom/hiya/stingray/ui/local/f/c$a;

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/k$d;->a:Lcom/hiya/stingray/ui/local/f/k;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/f/k;->j1()Lcom/hiya/stingray/manager/e1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/local/f/c$a;->c(Lcom/hiya/stingray/manager/e1;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/k$d;->a:Lcom/hiya/stingray/ui/local/f/k;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/k$d;->a:Lcom/hiya/stingray/ui/local/f/k;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/f/k;->g1(Lcom/hiya/stingray/ui/local/f/k;)Lcom/hiya/stingray/t/h1/d;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/stingray/t/h1/e;->d(Lcom/hiya/stingray/t/h1/d;)Lcom/hiya/stingray/t/n0;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/u;->m(Landroid/content/Context;Lcom/hiya/stingray/t/n0;)V

    :goto_0
    const/4 v2, 0x1

    goto :goto_2

    .line 7
    :cond_1
    sget-object p1, Lcom/hiya/stingray/ui/local/f/c;->a:Lcom/hiya/stingray/ui/local/f/c$a;

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/k$d;->a:Lcom/hiya/stingray/ui/local/f/k;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/f/k;->j1()Lcom/hiya/stingray/manager/e1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/local/f/c$a;->b(Lcom/hiya/stingray/manager/e1;)V

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/k$d;->a:Lcom/hiya/stingray/ui/local/f/k;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/f/k;->g1(Lcom/hiya/stingray/ui/local/f/k;)Lcom/hiya/stingray/t/h1/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/d;->i()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/k$d;->a:Lcom/hiya/stingray/ui/local/f/k;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/f/k;->g1(Lcom/hiya/stingray/ui/local/f/k;)Lcom/hiya/stingray/t/h1/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/h1/d;->j()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/s/k;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    invoke-static {v0}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/f/k$d;->a:Lcom/hiya/stingray/ui/local/f/k;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 11
    invoke-static {p1, v0, v1}, Lcom/hiya/stingray/util/u;->h(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :goto_2
    return v2
.end method

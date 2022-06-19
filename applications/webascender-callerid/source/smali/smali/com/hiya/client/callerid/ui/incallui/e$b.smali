.class final Lcom/hiya/client/callerid/ui/incallui/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/u<",
        "Lcom/hiya/client/callerid/ui/a0/c$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/ui/incallui/e;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$b;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/client/callerid/ui/a0/c$b;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/e$b;->b(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    return-void
.end method

.method public final b(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e$b;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/incallui/e;->b1(Lcom/hiya/client/callerid/ui/incallui/e;)Lcom/hiya/client/callerid/ui/incallui/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/l;->r()Landroidx/lifecycle/t;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/e$b;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->d1(Lcom/hiya/client/callerid/ui/incallui/e;Ljava/util/List;)V

    :cond_0
    if-eqz p1, :cond_3

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e$b;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/e;->f1()Lcom/hiya/client/callerid/ui/incallui/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->q()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->q()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/incallui/c;->m(Ljava/lang/Integer;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e$b;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/e;->f1()Lcom/hiya/client/callerid/ui/incallui/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/b;->n(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    .line 4
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e$b;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v1, Lcom/hiya/client/callerid/ui/p;->X:I

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v2, "mute"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->d()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/hiya/client/callerid/ui/incallui/e;->e1(Lcom/hiya/client/callerid/ui/incallui/e;Landroid/view/View;Z)V

    :cond_3
    return-void
.end method

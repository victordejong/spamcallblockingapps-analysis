.class final Lcom/hiya/client/callerid/ui/incallui/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/j;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lcom/hiya/client/callerid/ui/b0/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/ui/incallui/j;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/j$c;->a:Lcom/hiya/client/callerid/ui/incallui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/client/callerid/ui/b0/e;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/j$c;->b(Lcom/hiya/client/callerid/ui/b0/e;)V

    return-void
.end method

.method public final b(Lcom/hiya/client/callerid/ui/b0/e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/j$c;->a:Lcom/hiya/client/callerid/ui/incallui/j;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v2, Lg/g/b/c/q;->FRAUD:Lg/g/b/c/q;

    if-ne p1, v2, :cond_1

    .line 4
    sget p1, Lcom/hiya/client/callerid/ui/m;->e:I

    goto :goto_1

    .line 5
    :cond_1
    sget p1, Lcom/hiya/client/callerid/ui/m;->d:I

    .line 6
    :goto_1
    invoke-static {v1, p1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    .line 7
    invoke-static {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/j;->c1(Lcom/hiya/client/callerid/ui/incallui/j;I)V

    .line 8
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/j$c;->a:Lcom/hiya/client/callerid/ui/incallui/j;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/incallui/j;->b1(Lcom/hiya/client/callerid/ui/incallui/j;)Lcom/hiya/client/callerid/ui/incallui/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/incallui/l;->o()Landroidx/lifecycle/t;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/client/callerid/ui/a0/c$b;

    if-eqz p1, :cond_2

    .line 9
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/j$c;->a:Lcom/hiya/client/callerid/ui/incallui/j;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/j;->d1()Lcom/hiya/client/callerid/ui/incallui/b;

    move-result-object v0

    const-string v1, "callInfo"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/b;->n(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    :cond_2
    return-void
.end method

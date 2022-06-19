.class final Lcom/hiya/client/callerid/ui/incallui/e$c;
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
        "Lcom/hiya/client/callerid/ui/b0/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/ui/incallui/e;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$c;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/client/callerid/ui/b0/e;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/e$c;->b(Lcom/hiya/client/callerid/ui/b0/e;)V

    return-void
.end method

.method public final b(Lcom/hiya/client/callerid/ui/b0/e;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$c;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/incallui/e;->b1(Lcom/hiya/client/callerid/ui/incallui/e;)Lcom/hiya/client/callerid/ui/incallui/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/incallui/l;->o()Landroidx/lifecycle/t;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/client/callerid/ui/a0/c$b;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e$c;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/e;->f1()Lcom/hiya/client/callerid/ui/incallui/b;

    move-result-object v0

    const-string v1, "callInfo"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/b;->n(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    :cond_0
    return-void
.end method

.class final Lcom/hiya/client/callerid/ui/incallui/j$b;
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
        "Lcom/hiya/client/callerid/ui/a0/c$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/ui/incallui/j;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/j$b;->a:Lcom/hiya/client/callerid/ui/incallui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/client/callerid/ui/a0/c$b;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/j$b;->b(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    return-void
.end method

.method public final b(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/j$b;->a:Lcom/hiya/client/callerid/ui/incallui/j;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/j;->d1()Lcom/hiya/client/callerid/ui/incallui/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/b;->n(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    return-void
.end method

.class final Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->onScreenCall(Landroid/telecom/Call$Details;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/b0/j;

.field final synthetic g:Z


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/b0/j;Z)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$i;->f:Lcom/hiya/client/callerid/ui/b0/j;

    iput-boolean p2, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$i;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/l<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/l;

    .line 2
    sget-object v1, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/e;->b()Lcom/hiya/client/callerid/ui/a;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$i;->f:Lcom/hiya/client/callerid/ui/b0/j;

    .line 4
    iget-boolean v4, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$i;->g:Z

    .line 5
    invoke-interface {v1, v3, v4}, Lcom/hiya/client/callerid/ui/a;->a(Lcom/hiya/client/callerid/ui/b0/j;Z)Z

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 7
    invoke-direct {v0, v1, v2}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$i;->a()Lkotlin/l;

    move-result-object v0

    return-object v0
.end method

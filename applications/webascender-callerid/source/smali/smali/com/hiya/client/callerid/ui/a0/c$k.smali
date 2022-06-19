.class final Lcom/hiya/client/callerid/ui/a0/c$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/a0/c;->I(Landroid/telecom/Call;)V
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

.field final synthetic g:Landroid/telecom/Call;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/b0/j;Landroid/telecom/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/c$k;->f:Lcom/hiya/client/callerid/ui/b0/j;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/a0/c$k;->g:Landroid/telecom/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/e;->b()Lcom/hiya/client/callerid/ui/a;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/c$k;->f:Lcom/hiya/client/callerid/ui/b0/j;

    iget-object v3, p0, Lcom/hiya/client/callerid/ui/a0/c$k;->g:Landroid/telecom/Call;

    invoke-static {v3}, Lcom/hiya/client/callerid/ui/e0/a;->e(Landroid/telecom/Call;)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/hiya/client/callerid/ui/a;->a(Lcom/hiya/client/callerid/ui/b0/j;Z)Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/c$k;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

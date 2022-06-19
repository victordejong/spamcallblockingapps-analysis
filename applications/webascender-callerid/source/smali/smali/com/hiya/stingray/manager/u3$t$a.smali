.class final Lcom/hiya/stingray/manager/u3$t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/u3$t;->a(Li/c/b0/b/f;)V
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
        "Li/c/b0/d/g<",
        "Lcom/hiya/stingray/manager/u3$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/u3$t;

.field final synthetic g:Lkotlin/w/c/q;

.field final synthetic h:Li/c/b0/b/f;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/u3$t;Lkotlin/w/c/q;Li/c/b0/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3$t$a;->f:Lcom/hiya/stingray/manager/u3$t;

    iput-object p2, p0, Lcom/hiya/stingray/manager/u3$t$a;->g:Lkotlin/w/c/q;

    iput-object p3, p0, Lcom/hiya/stingray/manager/u3$t$a;->h:Li/c/b0/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/manager/u3$a;)V
    .locals 10

    const-string v0, "PremiumManagerLog"

    .line 1
    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "connectClient(): successfully connected to the client"

    invoke-virtual {v0, v3, v2}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$t$a;->g:Lkotlin/w/c/q;

    iget-object v0, v0, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    check-cast v0, Li/c/b0/c/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3$t$a;->h:Li/c/b0/b/f;

    invoke-interface {p1}, Li/c/b0/b/f;->onComplete()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$t$a;->h:Li/c/b0/b/f;

    new-instance v9, Lcom/hiya/stingray/manager/u3$d;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/hiya/stingray/manager/u3$d;-><init>(Lcom/android/billingclient/api/g;Ljava/lang/String;ZZILkotlin/w/c/g;)V

    invoke-interface {v0, v9}, Li/c/b0/b/f;->onError(Ljava/lang/Throwable;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3$t$a;->f:Lcom/hiya/stingray/manager/u3$t;

    iget-object p1, p1, Lcom/hiya/stingray/manager/u3$t;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {p1}, Lcom/hiya/stingray/manager/u3;->f(Lcom/hiya/stingray/manager/u3;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/manager/u3$a;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/u3$t$a;->a(Lcom/hiya/stingray/manager/u3$a;)V

    return-void
.end method

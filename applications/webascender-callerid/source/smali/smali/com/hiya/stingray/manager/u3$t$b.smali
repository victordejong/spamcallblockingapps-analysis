.class final Lcom/hiya/stingray/manager/u3$t$b;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/u3$t;

.field final synthetic g:Li/c/b0/b/f;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/u3$t;Li/c/b0/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3$t$b;->f:Lcom/hiya/stingray/manager/u3$t;

    iput-object p2, p0, Lcom/hiya/stingray/manager/u3$t$b;->g:Li/c/b0/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "PremiumManagerLog"

    .line 1
    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "connectClient(): error while trying to connect client"

    invoke-virtual {v0, v3, v2}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$t$b;->g:Li/c/b0/b/f;

    invoke-interface {v0, p1}, Li/c/b0/b/f;->onError(Ljava/lang/Throwable;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3$t$b;->f:Lcom/hiya/stingray/manager/u3$t;

    iget-object p1, p1, Lcom/hiya/stingray/manager/u3$t;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {p1}, Lcom/hiya/stingray/manager/u3;->f(Lcom/hiya/stingray/manager/u3;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/u3$t$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

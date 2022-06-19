.class final Lcom/hiya/stingray/manager/u3$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/u3;->t()Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/manager/u3;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/u3;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3$t;->a:Lcom/hiya/stingray/manager/u3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/f;)V
    .locals 4

    .line 1
    new-instance v0, Lkotlin/w/c/q;

    invoke-direct {v0}, Lkotlin/w/c/q;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/manager/u3$t;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {v1}, Lcom/hiya/stingray/manager/u3;->e(Lcom/hiya/stingray/manager/u3;)Lcom/hiya/stingray/manager/u3$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/u3$b;->a()Li/c/b0/k/b;

    move-result-object v1

    .line 3
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v1

    .line 4
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/hiya/stingray/manager/u3$t$a;

    invoke-direct {v2, p0, v0, p1}, Lcom/hiya/stingray/manager/u3$t$a;-><init>(Lcom/hiya/stingray/manager/u3$t;Lkotlin/w/c/q;Li/c/b0/b/f;)V

    .line 6
    new-instance v3, Lcom/hiya/stingray/manager/u3$t$b;

    invoke-direct {v3, p0, p1}, Lcom/hiya/stingray/manager/u3$t$b;-><init>(Lcom/hiya/stingray/manager/u3$t;Li/c/b0/b/f;)V

    .line 7
    invoke-virtual {v1, v2, v3}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    iput-object p1, v0, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3$t;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {p1}, Lcom/hiya/stingray/manager/u3;->f(Lcom/hiya/stingray/manager/u3;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "PremiumManagerLog"

    if-nez p1, :cond_0

    .line 9
    invoke-static {v1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "connectClient(): starting connecting client"

    invoke-virtual {p1, v1, v0}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3$t;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {p1}, Lcom/hiya/stingray/manager/u3;->f(Lcom/hiya/stingray/manager/u3;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3$t;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {p1}, Lcom/hiya/stingray/manager/u3;->d(Lcom/hiya/stingray/manager/u3;)Lcom/android/billingclient/api/c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$t;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {v0}, Lcom/hiya/stingray/manager/u3;->e(Lcom/hiya/stingray/manager/u3;)Lcom/hiya/stingray/manager/u3$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/c;->k(Lcom/android/billingclient/api/e;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "connectClient(): we are already in process of connecting client, skipping establishing new connection"

    .line 13
    invoke-virtual {p1, v1, v0}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

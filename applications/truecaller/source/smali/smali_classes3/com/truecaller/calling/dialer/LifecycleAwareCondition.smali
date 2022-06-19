.class public final Lcom/truecaller/calling/dialer/LifecycleAwareCondition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/l;
.implements Ln3/v/a0;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u000c\u001a\u00020\t\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0011\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u000c\u001a\u00020\t8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR*\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/truecaller/calling/dialer/LifecycleAwareCondition;",
        "Le/a/h/b/l;",
        "Ln3/v/a0;",
        "Ls1/s;",
        "onLifeCycleStateChange",
        "()Ls1/s;",
        "",
        "a",
        "()Z",
        "Ln3/v/u;",
        "b",
        "Ln3/v/u;",
        "lifecycle",
        "Lkotlin/Function0;",
        "Ls1/z/b/a;",
        "getUpdater",
        "()Ls1/z/b/a;",
        "setUpdater",
        "(Ls1/z/b/a;)V",
        "updater",
        "Ln3/v/u$b;",
        "c",
        "Ln3/v/u$b;",
        "minState",
        "<init>",
        "(Ln3/v/u;Ln3/v/u$b;)V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ln3/v/u;

.field public final c:Ln3/v/u$b;


# direct methods
.method public constructor <init>(Ln3/v/u;Ln3/v/u$b;)V
    .locals 1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minState"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/calling/dialer/LifecycleAwareCondition;->b:Ln3/v/u;

    iput-object p2, p0, Lcom/truecaller/calling/dialer/LifecycleAwareCondition;->c:Ln3/v/u$b;

    .line 2
    invoke-virtual {p1, p0}, Ln3/v/u;->a(Ln3/v/a0;)V

    return-void
.end method

.method private final onLifeCycleStateChange()Ls1/s;
    .locals 1
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_ANY:Ln3/v/u$a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/dialer/LifecycleAwareCondition;->a:Ls1/z/b/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/dialer/LifecycleAwareCondition;->b:Ln3/v/u;

    check-cast v0, Ln3/v/c0;

    .line 2
    iget-object v0, v0, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 3
    iget-object v1, p0, Lcom/truecaller/calling/dialer/LifecycleAwareCondition;->c:Ln3/v/u$b;

    invoke-virtual {v0, v1}, Ln3/v/u$b;->a(Ln3/v/u$b;)Z

    move-result v0

    return v0
.end method

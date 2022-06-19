.class public final Lp3/a/n1/j1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/j1$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lp3/a/n1/x;


# direct methods
.method public constructor <init>(Lp3/a/n1/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/n1/j1$c;->a:Lp3/a/n1/x;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/j1$c;->a:Lp3/a/n1/x;

    sget-object v1, Lp3/a/g1;->p:Lp3/a/g1;

    const-string v2, "Keepalive failed. The connection is likely gone"

    invoke-virtual {v1, v2}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v1

    invoke-interface {v0, v1}, Lp3/a/n1/t1;->f(Lp3/a/g1;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/j1$c;->a:Lp3/a/n1/x;

    new-instance v1, Lp3/a/n1/j1$c$a;

    invoke-direct {v1, p0}, Lp3/a/n1/j1$c$a;-><init>(Lp3/a/n1/j1$c;)V

    .line 2
    sget-object v2, Lcom/google/common/util/concurrent/DirectExecutor;->INSTANCE:Lcom/google/common/util/concurrent/DirectExecutor;

    .line 3
    invoke-interface {v0, v1, v2}, Lp3/a/n1/u;->c(Lp3/a/n1/u$a;Ljava/util/concurrent/Executor;)V

    return-void
.end method

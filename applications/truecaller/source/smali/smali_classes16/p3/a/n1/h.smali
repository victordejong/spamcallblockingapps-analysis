.class public final Lp3/a/n1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/u1$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/h$d;
    }
.end annotation


# instance fields
.field public final a:Lp3/a/n1/h$d;

.field public final b:Lp3/a/n1/u1$b;

.field public final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp3/a/n1/u1$b;Lp3/a/n1/h$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lp3/a/n1/h;->c:Ljava/util/Queue;

    const-string v0, "listener"

    .line 3
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/a/n1/h;->b:Lp3/a/n1/u1$b;

    const-string p1, "transportExecutor"

    .line 4
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp3/a/n1/h;->a:Lp3/a/n1/h$d;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/n1/t2$a;)V
    .locals 2

    .line 1
    :goto_0
    invoke-interface {p1}, Lp3/a/n1/t2$a;->next()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lp3/a/n1/h;->c:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/h;->a:Lp3/a/n1/h$d;

    new-instance v1, Lp3/a/n1/h$a;

    invoke-direct {v1, p0, p1}, Lp3/a/n1/h$a;-><init>(Lp3/a/n1/h;I)V

    invoke-interface {v0, v1}, Lp3/a/n1/h$d;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/h;->a:Lp3/a/n1/h$d;

    new-instance v1, Lp3/a/n1/h$b;

    invoke-direct {v1, p0, p1}, Lp3/a/n1/h$b;-><init>(Lp3/a/n1/h;Z)V

    invoke-interface {v0, v1}, Lp3/a/n1/h$d;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/h;->a:Lp3/a/n1/h$d;

    new-instance v1, Lp3/a/n1/h$c;

    invoke-direct {v1, p0, p1}, Lp3/a/n1/h$c;-><init>(Lp3/a/n1/h;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lp3/a/n1/h$d;->d(Ljava/lang/Runnable;)V

    return-void
.end method

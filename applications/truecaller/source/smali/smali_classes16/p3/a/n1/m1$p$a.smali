.class public Lp3/a/n1/m1$p$a;
.super Lp3/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/m1$p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/m1$p;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1$p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$p$a;->a:Lp3/a/n1/m1$p;

    invoke-direct {p0}, Lp3/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$p$a;->a:Lp3/a/n1/m1$p;

    .line 2
    iget-object v0, v0, Lp3/a/n1/m1$p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lp3/a/p0<",
            "TRequestT;TResponseT;>;",
            "Lp3/a/c;",
            ")",
            "Lp3/a/f<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Lp3/a/n1/q;

    iget-object v0, p0, Lp3/a/n1/m1$p$a;->a:Lp3/a/n1/m1$p;

    iget-object v0, v0, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    .line 2
    invoke-static {v0, p2}, Lp3/a/n1/m1;->j(Lp3/a/n1/m1;Lp3/a/c;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v0, p0, Lp3/a/n1/m1$p$a;->a:Lp3/a/n1/m1$p;

    iget-object v0, v0, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    .line 3
    iget-object v4, v0, Lp3/a/n1/m1;->e0:Lp3/a/n1/q$e;

    .line 4
    iget-boolean v0, v0, Lp3/a/n1/m1;->L:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lp3/a/n1/m1$p$a;->a:Lp3/a/n1/m1$p;

    iget-object v0, v0, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    .line 6
    iget-object v0, v0, Lp3/a/n1/m1;->h:Lp3/a/n1/v;

    .line 7
    invoke-interface {v0}, Lp3/a/n1/v;->Z()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    :goto_0
    move-object v5, v0

    iget-object v0, p0, Lp3/a/n1/m1$p$a;->a:Lp3/a/n1/m1$p;

    iget-object v0, v0, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    .line 8
    iget-object v6, v0, Lp3/a/n1/m1;->O:Lp3/a/n1/n;

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    .line 9
    invoke-direct/range {v0 .. v6}, Lp3/a/n1/q;-><init>(Lp3/a/p0;Ljava/util/concurrent/Executor;Lp3/a/c;Lp3/a/n1/q$e;Ljava/util/concurrent/ScheduledExecutorService;Lp3/a/n1/n;)V

    iget-object p1, p0, Lp3/a/n1/m1$p$a;->a:Lp3/a/n1/m1$p;

    iget-object p1, p1, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, v7, Lp3/a/n1/q;->q:Z

    .line 12
    iget-object p1, p0, Lp3/a/n1/m1$p$a;->a:Lp3/a/n1/m1$p;

    iget-object p1, p1, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    .line 13
    iget-object p2, p1, Lp3/a/n1/m1;->q:Lp3/a/t;

    .line 14
    iput-object p2, v7, Lp3/a/n1/q;->r:Lp3/a/t;

    .line 15
    iget-object p1, p1, Lp3/a/n1/m1;->r:Lp3/a/n;

    .line 16
    iput-object p1, v7, Lp3/a/n1/q;->s:Lp3/a/n;

    return-object v7
.end method

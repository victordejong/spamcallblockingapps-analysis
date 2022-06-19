.class public Lp3/a/n1/m1$p$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/m1$p;->h(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/m1$p$e;

.field public final synthetic b:Lp3/a/n1/m1$p;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1$p;Lp3/a/n1/m1$p$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$p$d;->b:Lp3/a/n1/m1$p;

    iput-object p2, p0, Lp3/a/n1/m1$p$d;->a:Lp3/a/n1/m1$p$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$p$d;->b:Lp3/a/n1/m1$p;

    .line 2
    iget-object v0, v0, Lp3/a/n1/m1$p;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 4
    sget-object v1, Lp3/a/n1/m1;->m0:Lp3/a/c0;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lp3/a/n1/m1$p$d;->b:Lp3/a/n1/m1$p;

    iget-object v0, v0, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    .line 6
    iget-object v1, v0, Lp3/a/n1/m1;->E:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 8
    iput-object v1, v0, Lp3/a/n1/m1;->E:Ljava/util/Collection;

    .line 9
    iget-object v0, p0, Lp3/a/n1/m1$p$d;->b:Lp3/a/n1/m1$p;

    iget-object v0, v0, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    iget-object v1, v0, Lp3/a/n1/m1;->b0:Lp3/a/n1/y0;

    .line 10
    iget-object v0, v0, Lp3/a/n1/m1;->F:Ljava/lang/Object;

    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v0, v2}, Lp3/a/n1/y0;->c(Ljava/lang/Object;Z)V

    .line 12
    :cond_0
    iget-object v0, p0, Lp3/a/n1/m1$p$d;->b:Lp3/a/n1/m1$p;

    iget-object v0, v0, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    .line 13
    iget-object v0, v0, Lp3/a/n1/m1;->E:Ljava/util/Collection;

    .line 14
    iget-object v1, p0, Lp3/a/n1/m1$p$d;->a:Lp3/a/n1/m1$p$e;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lp3/a/n1/m1$p$d;->a:Lp3/a/n1/m1$p$e;

    .line 16
    iget-object v1, v0, Lp3/a/n1/m1$p$e;->o:Lp3/a/n1/m1$p;

    iget-object v1, v1, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    iget-object v2, v0, Lp3/a/n1/m1$p$e;->n:Lp3/a/c;

    invoke-static {v1, v2}, Lp3/a/n1/m1;->j(Lp3/a/n1/m1;Lp3/a/c;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lp3/a/n1/p1;

    invoke-direct {v2, v0}, Lp3/a/n1/p1;-><init>(Lp3/a/n1/m1$p$e;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.class public Lp3/a/n1/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lp3/a/n1/a1;


# direct methods
.method public constructor <init>(Lp3/a/n1/a1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/e1;->a:Lp3/a/n1/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/e1;->a:Lp3/a/n1/a1;

    .line 2
    iget-object v0, v0, Lp3/a/n1/a1;->j:Lp3/a/e;

    .line 3
    sget-object v1, Lp3/a/e$a;->b:Lp3/a/e$a;

    const-string v2, "Terminated"

    invoke-virtual {v0, v1, v2}, Lp3/a/e;->a(Lp3/a/e$a;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lp3/a/n1/e1;->a:Lp3/a/n1/a1;

    .line 5
    iget-object v1, v0, Lp3/a/n1/a1;->e:Lp3/a/n1/a1$e;

    .line 6
    check-cast v1, Lp3/a/n1/m1$t$a;

    .line 7
    iget-object v2, v1, Lp3/a/n1/m1$t$a;->b:Lp3/a/n1/m1$t;

    iget-object v2, v2, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    .line 8
    iget-object v2, v2, Lp3/a/n1/m1;->D:Ljava/util/Set;

    .line 9
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    iget-object v2, v1, Lp3/a/n1/m1$t$a;->b:Lp3/a/n1/m1$t;

    iget-object v2, v2, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    .line 11
    iget-object v2, v2, Lp3/a/n1/m1;->R:Lp3/a/a0;

    .line 12
    iget-object v2, v2, Lp3/a/a0;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2, v0}, Lp3/a/a0;->b(Ljava/util/Map;Lp3/a/d0;)V

    .line 13
    iget-object v0, v1, Lp3/a/n1/m1$t$a;->b:Lp3/a/n1/m1$t;

    iget-object v0, v0, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    invoke-static {v0}, Lp3/a/n1/m1;->k(Lp3/a/n1/m1;)V

    return-void
.end method

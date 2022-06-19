.class public Lp3/a/n1/a1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/a1;->g(Lp3/a/g1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/g1;

.field public final synthetic b:Lp3/a/n1/a1;


# direct methods
.method public constructor <init>(Lp3/a/n1/a1;Lp3/a/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/a1$c;->b:Lp3/a/n1/a1;

    iput-object p2, p0, Lp3/a/n1/a1$c;->a:Lp3/a/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1$c;->b:Lp3/a/n1/a1;

    .line 2
    iget-object v0, v0, Lp3/a/n1/a1;->w:Lp3/a/p;

    .line 3
    iget-object v0, v0, Lp3/a/p;->a:Lp3/a/o;

    .line 4
    sget-object v1, Lp3/a/o;->e:Lp3/a/o;

    if-ne v0, v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lp3/a/n1/a1$c;->b:Lp3/a/n1/a1;

    iget-object v2, p0, Lp3/a/n1/a1$c;->a:Lp3/a/g1;

    .line 6
    iput-object v2, v0, Lp3/a/n1/a1;->x:Lp3/a/g1;

    .line 7
    iget-object v0, v0, Lp3/a/n1/a1;->v:Lp3/a/n1/t1;

    .line 8
    iget-object v2, p0, Lp3/a/n1/a1$c;->b:Lp3/a/n1/a1;

    .line 9
    iget-object v3, v2, Lp3/a/n1/a1;->u:Lp3/a/n1/x;

    const/4 v4, 0x0

    .line 10
    iput-object v4, v2, Lp3/a/n1/a1;->v:Lp3/a/n1/t1;

    .line 11
    iget-object v2, p0, Lp3/a/n1/a1$c;->b:Lp3/a/n1/a1;

    .line 12
    iput-object v4, v2, Lp3/a/n1/a1;->u:Lp3/a/n1/x;

    .line 13
    iget-object v5, v2, Lp3/a/n1/a1;->k:Lp3/a/k1;

    invoke-virtual {v5}, Lp3/a/k1;->d()V

    .line 14
    invoke-static {v1}, Lp3/a/p;->a(Lp3/a/o;)Lp3/a/p;

    move-result-object v1

    invoke-virtual {v2, v1}, Lp3/a/n1/a1;->j(Lp3/a/p;)V

    .line 15
    iget-object v1, p0, Lp3/a/n1/a1$c;->b:Lp3/a/n1/a1;

    .line 16
    iget-object v1, v1, Lp3/a/n1/a1;->l:Lp3/a/n1/a1$f;

    .line 17
    invoke-virtual {v1}, Lp3/a/n1/a1$f;->b()V

    .line 18
    iget-object v1, p0, Lp3/a/n1/a1$c;->b:Lp3/a/n1/a1;

    .line 19
    iget-object v1, v1, Lp3/a/n1/a1;->s:Ljava/util/Collection;

    .line 20
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    iget-object v1, p0, Lp3/a/n1/a1$c;->b:Lp3/a/n1/a1;

    .line 22
    iget-object v2, v1, Lp3/a/n1/a1;->k:Lp3/a/k1;

    new-instance v5, Lp3/a/n1/e1;

    invoke-direct {v5, v1}, Lp3/a/n1/e1;-><init>(Lp3/a/n1/a1;)V

    .line 23
    iget-object v1, v2, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v6, "runnable is null"

    invoke-static {v5, v6}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v2}, Lp3/a/k1;->a()V

    .line 25
    :cond_1
    iget-object v1, p0, Lp3/a/n1/a1$c;->b:Lp3/a/n1/a1;

    .line 26
    iget-object v2, v1, Lp3/a/n1/a1;->k:Lp3/a/k1;

    invoke-virtual {v2}, Lp3/a/k1;->d()V

    .line 27
    iget-object v2, v1, Lp3/a/n1/a1;->p:Lp3/a/k1$c;

    if-eqz v2, :cond_2

    .line 28
    invoke-virtual {v2}, Lp3/a/k1$c;->a()V

    .line 29
    iput-object v4, v1, Lp3/a/n1/a1;->p:Lp3/a/k1$c;

    .line 30
    iput-object v4, v1, Lp3/a/n1/a1;->n:Lp3/a/n1/l;

    .line 31
    :cond_2
    iget-object v1, p0, Lp3/a/n1/a1$c;->b:Lp3/a/n1/a1;

    .line 32
    iget-object v1, v1, Lp3/a/n1/a1;->q:Lp3/a/k1$c;

    if-eqz v1, :cond_3

    .line 33
    invoke-virtual {v1}, Lp3/a/k1$c;->a()V

    .line 34
    iget-object v1, p0, Lp3/a/n1/a1$c;->b:Lp3/a/n1/a1;

    .line 35
    iget-object v1, v1, Lp3/a/n1/a1;->r:Lp3/a/n1/t1;

    .line 36
    iget-object v2, p0, Lp3/a/n1/a1$c;->a:Lp3/a/g1;

    invoke-interface {v1, v2}, Lp3/a/n1/t1;->g(Lp3/a/g1;)V

    .line 37
    iget-object v1, p0, Lp3/a/n1/a1$c;->b:Lp3/a/n1/a1;

    .line 38
    iput-object v4, v1, Lp3/a/n1/a1;->q:Lp3/a/k1$c;

    .line 39
    iput-object v4, v1, Lp3/a/n1/a1;->r:Lp3/a/n1/t1;

    :cond_3
    if-eqz v0, :cond_4

    .line 40
    iget-object v1, p0, Lp3/a/n1/a1$c;->a:Lp3/a/g1;

    invoke-interface {v0, v1}, Lp3/a/n1/t1;->g(Lp3/a/g1;)V

    :cond_4
    if-eqz v3, :cond_5

    .line 41
    iget-object v0, p0, Lp3/a/n1/a1$c;->a:Lp3/a/g1;

    invoke-interface {v3, v0}, Lp3/a/n1/t1;->g(Lp3/a/g1;)V

    :cond_5
    return-void
.end method

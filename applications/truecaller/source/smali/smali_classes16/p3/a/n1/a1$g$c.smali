.class public Lp3/a/n1/a1$g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/a1$g;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/a1$g;


# direct methods
.method public constructor <init>(Lp3/a/n1/a1$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/a1$g$c;->a:Lp3/a/n1/a1$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1$g$c;->a:Lp3/a/n1/a1$g;

    iget-object v1, v0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 2
    iget-object v1, v1, Lp3/a/n1/a1;->s:Ljava/util/Collection;

    .line 3
    iget-object v0, v0, Lp3/a/n1/a1$g;->a:Lp3/a/n1/x;

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lp3/a/n1/a1$g$c;->a:Lp3/a/n1/a1$g;

    iget-object v0, v0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 5
    iget-object v0, v0, Lp3/a/n1/a1;->w:Lp3/a/p;

    .line 6
    iget-object v0, v0, Lp3/a/p;->a:Lp3/a/o;

    .line 7
    sget-object v1, Lp3/a/o;->e:Lp3/a/o;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lp3/a/n1/a1$g$c;->a:Lp3/a/n1/a1$g;

    iget-object v0, v0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 8
    iget-object v0, v0, Lp3/a/n1/a1;->s:Ljava/util/Collection;

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lp3/a/n1/a1$g$c;->a:Lp3/a/n1/a1$g;

    iget-object v0, v0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 11
    iget-object v1, v0, Lp3/a/n1/a1;->k:Lp3/a/k1;

    new-instance v2, Lp3/a/n1/e1;

    invoke-direct {v2, v0}, Lp3/a/n1/e1;-><init>(Lp3/a/n1/a1;)V

    .line 12
    iget-object v0, v1, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v3, "runnable is null"

    invoke-static {v2, v3}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v1}, Lp3/a/k1;->a()V

    :cond_0
    return-void
.end method

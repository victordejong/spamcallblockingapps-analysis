.class public Lp3/a/n1/i2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/i2;->q(Lp3/a/n1/i2$x;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Collection;

.field public final synthetic b:Lp3/a/n1/i2$x;

.field public final synthetic c:Ljava/util/concurrent/Future;

.field public final synthetic d:Ljava/util/concurrent/Future;

.field public final synthetic e:Lp3/a/n1/i2;


# direct methods
.method public constructor <init>(Lp3/a/n1/i2;Ljava/util/Collection;Lp3/a/n1/i2$x;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lp3/a/n1/i2$c;->e:Lp3/a/n1/i2;

    iput-object p2, p0, Lp3/a/n1/i2$c;->a:Ljava/util/Collection;

    iput-object p3, p0, Lp3/a/n1/i2$c;->b:Lp3/a/n1/i2$x;

    iput-object p4, p0, Lp3/a/n1/i2$c;->c:Ljava/util/concurrent/Future;

    iput-object p5, p0, Lp3/a/n1/i2$c;->d:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/i2$c;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp3/a/n1/i2$x;

    .line 2
    iget-object v2, p0, Lp3/a/n1/i2$c;->b:Lp3/a/n1/i2$x;

    if-eq v1, v2, :cond_0

    .line 3
    iget-object v1, v1, Lp3/a/n1/i2$x;->a:Lp3/a/n1/s;

    .line 4
    sget-object v2, Lp3/a/n1/i2;->w:Lp3/a/g1;

    .line 5
    invoke-interface {v1, v2}, Lp3/a/n1/s;->h(Lp3/a/g1;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lp3/a/n1/i2$c;->c:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 8
    :cond_2
    iget-object v0, p0, Lp3/a/n1/i2$c;->d:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 10
    :cond_3
    iget-object v0, p0, Lp3/a/n1/i2$c;->e:Lp3/a/n1/i2;

    invoke-virtual {v0}, Lp3/a/n1/i2;->x()V

    return-void
.end method

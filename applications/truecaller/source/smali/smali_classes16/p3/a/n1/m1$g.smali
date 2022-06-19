.class public final Lp3/a/n1/m1$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/q$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/m1;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1;Lp3/a/n1/m1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$g;->a:Lp3/a/n1/m1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lp3/a/i0$f;)Lp3/a/n1/u;
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$g;->a:Lp3/a/n1/m1;

    .line 2
    iget-object v0, v0, Lp3/a/n1/m1;->B:Lp3/a/i0$i;

    .line 3
    iget-object v1, p0, Lp3/a/n1/m1$g;->a:Lp3/a/n1/m1;

    .line 4
    iget-object v1, v1, Lp3/a/n1/m1;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object p1, p0, Lp3/a/n1/m1$g;->a:Lp3/a/n1/m1;

    .line 7
    iget-object p1, p1, Lp3/a/n1/m1;->H:Lp3/a/n1/d0;

    return-object p1

    :cond_0
    if-nez v0, :cond_1

    .line 8
    iget-object p1, p0, Lp3/a/n1/m1$g;->a:Lp3/a/n1/m1;

    iget-object p1, p1, Lp3/a/n1/m1;->p:Lp3/a/k1;

    new-instance v0, Lp3/a/n1/m1$g$a;

    invoke-direct {v0, p0}, Lp3/a/n1/m1$g$a;-><init>(Lp3/a/n1/m1$g;)V

    .line 9
    iget-object v1, p1, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v2, "runnable is null"

    invoke-static {v0, v2}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p1}, Lp3/a/k1;->a()V

    .line 11
    iget-object p1, p0, Lp3/a/n1/m1$g;->a:Lp3/a/n1/m1;

    .line 12
    iget-object p1, p1, Lp3/a/n1/m1;->H:Lp3/a/n1/d0;

    return-object p1

    .line 13
    :cond_1
    invoke-virtual {v0, p1}, Lp3/a/i0$i;->a(Lp3/a/i0$f;)Lp3/a/i0$e;

    move-result-object v0

    .line 14
    check-cast p1, Lp3/a/n1/c2;

    .line 15
    iget-object p1, p1, Lp3/a/n1/c2;->a:Lp3/a/c;

    .line 16
    invoke-virtual {p1}, Lp3/a/c;->b()Z

    move-result p1

    .line 17
    invoke-static {v0, p1}, Lp3/a/n1/r0;->f(Lp3/a/i0$e;Z)Lp3/a/n1/u;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 18
    :cond_2
    iget-object p1, p0, Lp3/a/n1/m1$g;->a:Lp3/a/n1/m1;

    .line 19
    iget-object p1, p1, Lp3/a/n1/m1;->H:Lp3/a/n1/d0;

    return-object p1
.end method

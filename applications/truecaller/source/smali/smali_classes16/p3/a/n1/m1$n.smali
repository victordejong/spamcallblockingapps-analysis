.class public final Lp3/a/n1/m1$n;
.super Lp3/a/i0$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "n"
.end annotation


# instance fields
.field public a:Lp3/a/n1/k$b;

.field public final synthetic b:Lp3/a/n1/m1;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1;Lp3/a/n1/m1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$n;->b:Lp3/a/n1/m1;

    invoke-direct {p0}, Lp3/a/i0$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/i0$b;)Lp3/a/i0$h;
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$n;->b:Lp3/a/n1/m1;

    iget-object v0, v0, Lp3/a/n1/m1;->p:Lp3/a/k1;

    invoke-virtual {v0}, Lp3/a/k1;->d()V

    .line 2
    iget-object v0, p0, Lp3/a/n1/m1$n;->b:Lp3/a/n1/m1;

    .line 3
    iget-boolean v0, v0, Lp3/a/n1/m1;->K:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Channel is being terminated"

    .line 4
    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 5
    new-instance v0, Lp3/a/n1/m1$t;

    iget-object v1, p0, Lp3/a/n1/m1$n;->b:Lp3/a/n1/m1;

    invoke-direct {v0, v1, p1, p0}, Lp3/a/n1/m1$t;-><init>(Lp3/a/n1/m1;Lp3/a/i0$b;Lp3/a/n1/m1$n;)V

    return-object v0
.end method

.method public b()Lp3/a/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$n;->b:Lp3/a/n1/m1;

    .line 2
    iget-object v0, v0, Lp3/a/n1/m1;->Q:Lp3/a/e;

    return-object v0
.end method

.method public c()Lp3/a/k1;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$n;->b:Lp3/a/n1/m1;

    iget-object v0, v0, Lp3/a/n1/m1;->p:Lp3/a/k1;

    return-object v0
.end method

.method public d(Lp3/a/o;Lp3/a/i0$i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$n;->b:Lp3/a/n1/m1;

    iget-object v0, v0, Lp3/a/n1/m1;->p:Lp3/a/k1;

    invoke-virtual {v0}, Lp3/a/k1;->d()V

    const-string v0, "newState"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "newPicker"

    .line 3
    invoke-static {p2, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lp3/a/n1/m1$n;->b:Lp3/a/n1/m1;

    iget-object v0, v0, Lp3/a/n1/m1;->p:Lp3/a/k1;

    new-instance v1, Lp3/a/n1/m1$n$a;

    invoke-direct {v1, p0, p2, p1}, Lp3/a/n1/m1$n$a;-><init>(Lp3/a/n1/m1$n;Lp3/a/i0$i;Lp3/a/o;)V

    .line 5
    iget-object p1, v0, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string p2, "runnable is null"

    invoke-static {v1, p2}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0}, Lp3/a/k1;->a()V

    return-void
.end method

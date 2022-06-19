.class public final Lp3/a/n1/m1$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/t1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "j"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/m1;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1;Lp3/a/n1/m1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$j;->a:Lp3/a/n1/m1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/g1;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lp3/a/n1/m1$j;->a:Lp3/a/n1/m1;

    .line 2
    iget-object p1, p1, Lp3/a/n1/m1;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const-string v0, "Channel must have been shut down"

    invoke-static {p1, v0}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$j;->a:Lp3/a/n1/m1;

    .line 2
    iget-object v0, v0, Lp3/a/n1/m1;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "Channel must have been shut down"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lp3/a/n1/m1$j;->a:Lp3/a/n1/m1;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lp3/a/n1/m1;->K:Z

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lp3/a/n1/m1;->p(Z)V

    .line 7
    iget-object v0, p0, Lp3/a/n1/m1$j;->a:Lp3/a/n1/m1;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lp3/a/n1/m1$j;->a:Lp3/a/n1/m1;

    invoke-static {v0}, Lp3/a/n1/m1;->k(Lp3/a/n1/m1;)V

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$j;->a:Lp3/a/n1/m1;

    iget-object v1, v0, Lp3/a/n1/m1;->b0:Lp3/a/n1/y0;

    .line 2
    iget-object v0, v0, Lp3/a/n1/m1;->H:Lp3/a/n1/d0;

    .line 3
    invoke-virtual {v1, v0, p1}, Lp3/a/n1/y0;->c(Ljava/lang/Object;Z)V

    return-void
.end method

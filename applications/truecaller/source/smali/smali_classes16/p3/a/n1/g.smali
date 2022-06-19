.class public Lp3/a/n1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/a0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/g$f;,
        Lp3/a/n1/g$g;,
        Lp3/a/n1/g$h;
    }
.end annotation


# instance fields
.field public final a:Lp3/a/n1/u1$b;

.field public final b:Lp3/a/n1/h;

.field public final c:Lp3/a/n1/u1;


# direct methods
.method public constructor <init>(Lp3/a/n1/u1$b;Lp3/a/n1/g$h;Lp3/a/n1/u1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lp3/a/n1/q2;

    const-string v1, "listener"

    .line 3
    invoke-static {p1, v1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1}, Lp3/a/n1/q2;-><init>(Lp3/a/n1/u1$b;)V

    iput-object v0, p0, Lp3/a/n1/g;->a:Lp3/a/n1/u1$b;

    .line 4
    new-instance p1, Lp3/a/n1/h;

    invoke-direct {p1, v0, p2}, Lp3/a/n1/h;-><init>(Lp3/a/n1/u1$b;Lp3/a/n1/h$d;)V

    iput-object p1, p0, Lp3/a/n1/g;->b:Lp3/a/n1/h;

    .line 5
    iput-object p1, p3, Lp3/a/n1/u1;->a:Lp3/a/n1/u1$b;

    .line 6
    iput-object p3, p0, Lp3/a/n1/g;->c:Lp3/a/n1/u1;

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/g;->a:Lp3/a/n1/u1$b;

    new-instance v1, Lp3/a/n1/g$g;

    new-instance v2, Lp3/a/n1/g$a;

    invoke-direct {v2, p0, p1}, Lp3/a/n1/g$a;-><init>(Lp3/a/n1/g;I)V

    const/4 p1, 0x0

    invoke-direct {v1, p0, v2, p1}, Lp3/a/n1/g$g;-><init>(Lp3/a/n1/g;Ljava/lang/Runnable;Lp3/a/n1/g$a;)V

    invoke-interface {v0, v1}, Lp3/a/n1/u1$b;->a(Lp3/a/n1/t2$a;)V

    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/g;->c:Lp3/a/n1/u1;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lp3/a/n1/u1;->s:Z

    .line 3
    iget-object v0, p0, Lp3/a/n1/g;->a:Lp3/a/n1/u1$b;

    new-instance v1, Lp3/a/n1/g$g;

    new-instance v2, Lp3/a/n1/g$e;

    invoke-direct {v2, p0}, Lp3/a/n1/g$e;-><init>(Lp3/a/n1/g;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lp3/a/n1/g$g;-><init>(Lp3/a/n1/g;Ljava/lang/Runnable;Lp3/a/n1/g$a;)V

    invoke-interface {v0, v1}, Lp3/a/n1/u1$b;->a(Lp3/a/n1/t2$a;)V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/g;->c:Lp3/a/n1/u1;

    .line 2
    iput p1, v0, Lp3/a/n1/u1;->b:I

    return-void
.end method

.method public j(Lp3/a/s;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/g;->c:Lp3/a/n1/u1;

    invoke-virtual {v0, p1}, Lp3/a/n1/u1;->j(Lp3/a/s;)V

    return-void
.end method

.method public k(Lp3/a/n1/e2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/g;->a:Lp3/a/n1/u1$b;

    new-instance v1, Lp3/a/n1/g$f;

    new-instance v2, Lp3/a/n1/g$b;

    invoke-direct {v2, p0, p1}, Lp3/a/n1/g$b;-><init>(Lp3/a/n1/g;Lp3/a/n1/e2;)V

    new-instance v3, Lp3/a/n1/g$c;

    invoke-direct {v3, p0, p1}, Lp3/a/n1/g$c;-><init>(Lp3/a/n1/g;Lp3/a/n1/e2;)V

    invoke-direct {v1, p0, v2, v3}, Lp3/a/n1/g$f;-><init>(Lp3/a/n1/g;Ljava/lang/Runnable;Ljava/io/Closeable;)V

    invoke-interface {v0, v1}, Lp3/a/n1/u1$b;->a(Lp3/a/n1/t2$a;)V

    return-void
.end method

.method public l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/g;->a:Lp3/a/n1/u1$b;

    new-instance v1, Lp3/a/n1/g$g;

    new-instance v2, Lp3/a/n1/g$d;

    invoke-direct {v2, p0}, Lp3/a/n1/g$d;-><init>(Lp3/a/n1/g;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lp3/a/n1/g$g;-><init>(Lp3/a/n1/g;Ljava/lang/Runnable;Lp3/a/n1/g$a;)V

    invoke-interface {v0, v1}, Lp3/a/n1/u1$b;->a(Lp3/a/n1/t2$a;)V

    return-void
.end method

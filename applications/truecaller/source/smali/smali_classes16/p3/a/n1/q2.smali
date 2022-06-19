.class public final Lp3/a/n1/q2;
.super Lp3/a/n1/m0;
.source "SourceFile"


# instance fields
.field public final a:Lp3/a/n1/u1$b;

.field public b:Z


# direct methods
.method public constructor <init>(Lp3/a/n1/u1$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/a/n1/m0;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/n1/q2;->a:Lp3/a/n1/u1$b;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/n1/t2$a;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/q2;->b:Z

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p1, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/io/Closeable;

    invoke-static {p1}, Lp3/a/n1/r0;->c(Ljava/io/Closeable;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lp3/a/n1/q2;->a:Lp3/a/n1/u1$b;

    .line 5
    invoke-interface {v0, p1}, Lp3/a/n1/u1$b;->a(Lp3/a/n1/t2$a;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lp3/a/n1/q2;->b:Z

    .line 2
    iget-object v0, p0, Lp3/a/n1/q2;->a:Lp3/a/n1/u1$b;

    .line 3
    invoke-interface {v0, p1}, Lp3/a/n1/u1$b;->c(Z)V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lp3/a/n1/q2;->b:Z

    .line 2
    iget-object v0, p0, Lp3/a/n1/q2;->a:Lp3/a/n1/u1$b;

    .line 3
    invoke-interface {v0, p1}, Lp3/a/n1/u1$b;->e(Ljava/lang/Throwable;)V

    return-void
.end method

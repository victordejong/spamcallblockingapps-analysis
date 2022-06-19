.class public final Lp3/a/n1/a2;
.super Lp3/a/i0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/a2$c;,
        Lp3/a/n1/a2$b;
    }
.end annotation


# instance fields
.field public final b:Lp3/a/i0$d;

.field public c:Lp3/a/i0$h;


# direct methods
.method public constructor <init>(Lp3/a/i0$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp3/a/i0;-><init>()V

    const-string v0, "helper"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lp3/a/i0$d;

    iput-object p1, p0, Lp3/a/n1/a2;->b:Lp3/a/i0$d;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/g1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/a2;->c:Lp3/a/i0$h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lp3/a/i0$h;->e()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lp3/a/n1/a2;->c:Lp3/a/i0$h;

    .line 4
    :cond_0
    iget-object v0, p0, Lp3/a/n1/a2;->b:Lp3/a/i0$d;

    sget-object v1, Lp3/a/o;->c:Lp3/a/o;

    new-instance v2, Lp3/a/n1/a2$b;

    invoke-static {p1}, Lp3/a/i0$e;->a(Lp3/a/g1;)Lp3/a/i0$e;

    move-result-object p1

    invoke-direct {v2, p1}, Lp3/a/n1/a2$b;-><init>(Lp3/a/i0$e;)V

    invoke-virtual {v0, v1, v2}, Lp3/a/i0$d;->d(Lp3/a/o;Lp3/a/i0$i;)V

    return-void
.end method

.method public b(Lp3/a/i0$g;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lp3/a/i0$g;->a:Ljava/util/List;

    .line 2
    iget-object v0, p0, Lp3/a/n1/a2;->c:Lp3/a/i0$h;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lp3/a/n1/a2;->b:Lp3/a/i0$d;

    .line 4
    new-instance v1, Lp3/a/i0$b$a;

    invoke-direct {v1}, Lp3/a/i0$b$a;-><init>()V

    .line 5
    invoke-virtual {v1, p1}, Lp3/a/i0$b$a;->b(Ljava/util/List;)Lp3/a/i0$b$a;

    .line 6
    invoke-virtual {v1}, Lp3/a/i0$b$a;->a()Lp3/a/i0$b;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lp3/a/i0$d;->a(Lp3/a/i0$b;)Lp3/a/i0$h;

    move-result-object p1

    .line 8
    new-instance v0, Lp3/a/n1/a2$a;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/a2$a;-><init>(Lp3/a/n1/a2;Lp3/a/i0$h;)V

    invoke-virtual {p1, v0}, Lp3/a/i0$h;->f(Lp3/a/i0$j;)V

    .line 9
    iput-object p1, p0, Lp3/a/n1/a2;->c:Lp3/a/i0$h;

    .line 10
    iget-object v0, p0, Lp3/a/n1/a2;->b:Lp3/a/i0$d;

    sget-object v1, Lp3/a/o;->a:Lp3/a/o;

    new-instance v2, Lp3/a/n1/a2$b;

    invoke-static {p1}, Lp3/a/i0$e;->b(Lp3/a/i0$h;)Lp3/a/i0$e;

    move-result-object v3

    invoke-direct {v2, v3}, Lp3/a/n1/a2$b;-><init>(Lp3/a/i0$e;)V

    invoke-virtual {v0, v1, v2}, Lp3/a/i0$d;->d(Lp3/a/o;Lp3/a/i0$i;)V

    .line 11
    invoke-virtual {p1}, Lp3/a/i0$h;->d()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Lp3/a/i0$h;->g(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/a2;->c:Lp3/a/i0$h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lp3/a/i0$h;->e()V

    :cond_0
    return-void
.end method

.class public final Ls1/a/a/a/v0/j/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/l1/d$a;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ls1/a/a/a/v0/b/a;

.field public final synthetic c:Ls1/a/a/a/v0/b/a;


# direct methods
.method public constructor <init>(ZLs1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)V
    .locals 0

    iput-boolean p1, p0, Ls1/a/a/a/v0/j/c;->a:Z

    iput-object p2, p0, Ls1/a/a/a/v0/j/c;->b:Ls1/a/a/a/v0/b/a;

    iput-object p3, p0, Ls1/a/a/a/v0/j/c;->c:Ls1/a/a/a/v0/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/m/v0;Ls1/a/a/a/v0/m/v0;)Z
    .locals 3

    const-string v0, "c1"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c2"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object p1

    .line 4
    invoke-interface {p2}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object p2

    .line 5
    instance-of v0, p1, Ls1/a/a/a/v0/b/w0;

    if-eqz v0, :cond_2

    instance-of v0, p2, Ls1/a/a/a/v0/b/w0;

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Ls1/a/a/a/v0/j/e;->a:Ls1/a/a/a/v0/j/e;

    check-cast p1, Ls1/a/a/a/v0/b/w0;

    check-cast p2, Ls1/a/a/a/v0/b/w0;

    iget-boolean v1, p0, Ls1/a/a/a/v0/j/c;->a:Z

    new-instance v2, Ls1/a/a/a/v0/j/b;

    invoke-direct {v2, p0}, Ls1/a/a/a/v0/j/b;-><init>(Ls1/a/a/a/v0/j/c;)V

    .line 7
    invoke-virtual {v0, p1, p2, v1, v2}, Ls1/a/a/a/v0/j/e;->b(Ls1/a/a/a/v0/b/w0;Ls1/a/a/a/v0/b/w0;ZLs1/z/b/p;)Z

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

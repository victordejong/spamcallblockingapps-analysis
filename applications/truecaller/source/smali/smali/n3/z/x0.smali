.class public final Ln3/z/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ln3/z/r0;

.field public b:Ln3/z/r0;

.field public c:Ln3/z/r0;

.field public d:Ln3/z/s0;

.field public e:Ln3/z/s0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ln3/z/r0$c;->c:Ln3/z/r0$c;

    iput-object v0, p0, Ln3/z/x0;->a:Ln3/z/r0;

    .line 3
    iput-object v0, p0, Ln3/z/x0;->b:Ln3/z/r0;

    .line 4
    iput-object v0, p0, Ln3/z/x0;->c:Ln3/z/r0;

    .line 5
    sget-object v0, Ln3/z/s0;->e:Ln3/z/s0;

    .line 6
    sget-object v0, Ln3/z/s0;->d:Ln3/z/s0;

    .line 7
    iput-object v0, p0, Ln3/z/x0;->d:Ln3/z/s0;

    return-void
.end method


# virtual methods
.method public final a(Ln3/z/r0;Ln3/z/r0;Ln3/z/r0;Ln3/z/r0;)Ln3/z/r0;
    .locals 0

    if-nez p4, :cond_0

    return-object p3

    .line 1
    :cond_0
    instance-of p3, p1, Ln3/z/r0$b;

    if-eqz p3, :cond_2

    .line 2
    instance-of p2, p2, Ln3/z/r0$c;

    if-eqz p2, :cond_1

    instance-of p2, p4, Ln3/z/r0$c;

    if-eqz p2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    instance-of p2, p4, Ln3/z/r0$a;

    if-eqz p2, :cond_3

    :cond_2
    :goto_0
    move-object p1, p4

    :cond_3
    return-object p1
.end method

.method public final b(Ln3/z/t0;Z)Ln3/z/r0;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Ln3/z/x0;->e:Ln3/z/s0;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Ln3/z/x0;->d:Ln3/z/s0;

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Ln3/z/s0;->b(Ln3/z/t0;)Ln3/z/r0;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final c(Ln3/z/q;)V
    .locals 1

    const-string v0, "combinedLoadStates"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Ln3/z/q;->a:Ln3/z/r0;

    .line 2
    iput-object v0, p0, Ln3/z/x0;->a:Ln3/z/r0;

    .line 3
    iget-object v0, p1, Ln3/z/q;->b:Ln3/z/r0;

    .line 4
    iput-object v0, p0, Ln3/z/x0;->b:Ln3/z/r0;

    .line 5
    iget-object v0, p1, Ln3/z/q;->c:Ln3/z/r0;

    .line 6
    iput-object v0, p0, Ln3/z/x0;->c:Ln3/z/r0;

    .line 7
    iget-object v0, p1, Ln3/z/q;->d:Ln3/z/s0;

    .line 8
    iput-object v0, p0, Ln3/z/x0;->d:Ln3/z/s0;

    .line 9
    iget-object p1, p1, Ln3/z/q;->e:Ln3/z/s0;

    .line 10
    iput-object p1, p0, Ln3/z/x0;->e:Ln3/z/s0;

    return-void
.end method

.method public final d(Ln3/z/t0;ZLn3/z/r0;)Z
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 1
    iget-object p2, p0, Ln3/z/x0;->e:Ln3/z/s0;

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ln3/z/s0;->e:Ln3/z/s0;

    .line 3
    sget-object v0, Ln3/z/s0;->d:Ln3/z/s0;

    .line 4
    :goto_0
    invoke-virtual {v0, p1, p3}, Ln3/z/s0;->c(Ln3/z/t0;Ln3/z/r0;)Ln3/z/s0;

    move-result-object p1

    iput-object p1, p0, Ln3/z/x0;->e:Ln3/z/s0;

    .line 5
    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    .line 6
    :cond_1
    iget-object p2, p0, Ln3/z/x0;->d:Ln3/z/s0;

    .line 7
    invoke-virtual {p2, p1, p3}, Ln3/z/s0;->c(Ln3/z/t0;Ln3/z/r0;)Ln3/z/s0;

    move-result-object p1

    iput-object p1, p0, Ln3/z/x0;->d:Ln3/z/s0;

    .line 8
    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    xor-int/lit8 p1, p1, 0x1

    .line 9
    invoke-virtual {p0}, Ln3/z/x0;->f()V

    return p1
.end method

.method public final e()Ln3/z/q;
    .locals 7

    .line 1
    new-instance v6, Ln3/z/q;

    .line 2
    iget-object v1, p0, Ln3/z/x0;->a:Ln3/z/r0;

    .line 3
    iget-object v2, p0, Ln3/z/x0;->b:Ln3/z/r0;

    .line 4
    iget-object v3, p0, Ln3/z/x0;->c:Ln3/z/r0;

    .line 5
    iget-object v4, p0, Ln3/z/x0;->d:Ln3/z/s0;

    .line 6
    iget-object v5, p0, Ln3/z/x0;->e:Ln3/z/s0;

    move-object v0, v6

    .line 7
    invoke-direct/range {v0 .. v5}, Ln3/z/q;-><init>(Ln3/z/r0;Ln3/z/r0;Ln3/z/r0;Ln3/z/s0;Ln3/z/s0;)V

    return-object v6
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/z/x0;->a:Ln3/z/r0;

    .line 2
    iget-object v1, p0, Ln3/z/x0;->d:Ln3/z/s0;

    .line 3
    iget-object v1, v1, Ln3/z/s0;->a:Ln3/z/r0;

    .line 4
    iget-object v2, p0, Ln3/z/x0;->e:Ln3/z/s0;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, v2, Ln3/z/s0;->a:Ln3/z/r0;

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 6
    :goto_0
    invoke-virtual {p0, v0, v1, v1, v2}, Ln3/z/x0;->a(Ln3/z/r0;Ln3/z/r0;Ln3/z/r0;Ln3/z/r0;)Ln3/z/r0;

    move-result-object v0

    iput-object v0, p0, Ln3/z/x0;->a:Ln3/z/r0;

    .line 7
    iget-object v0, p0, Ln3/z/x0;->b:Ln3/z/r0;

    .line 8
    iget-object v1, p0, Ln3/z/x0;->d:Ln3/z/s0;

    .line 9
    iget-object v2, v1, Ln3/z/s0;->a:Ln3/z/r0;

    .line 10
    iget-object v1, v1, Ln3/z/s0;->b:Ln3/z/r0;

    .line 11
    iget-object v4, p0, Ln3/z/x0;->e:Ln3/z/s0;

    if-eqz v4, :cond_1

    .line 12
    iget-object v4, v4, Ln3/z/s0;->b:Ln3/z/r0;

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 13
    :goto_1
    invoke-virtual {p0, v0, v2, v1, v4}, Ln3/z/x0;->a(Ln3/z/r0;Ln3/z/r0;Ln3/z/r0;Ln3/z/r0;)Ln3/z/r0;

    move-result-object v0

    iput-object v0, p0, Ln3/z/x0;->b:Ln3/z/r0;

    .line 14
    iget-object v0, p0, Ln3/z/x0;->c:Ln3/z/r0;

    .line 15
    iget-object v1, p0, Ln3/z/x0;->d:Ln3/z/s0;

    .line 16
    iget-object v2, v1, Ln3/z/s0;->a:Ln3/z/r0;

    .line 17
    iget-object v1, v1, Ln3/z/s0;->c:Ln3/z/r0;

    .line 18
    iget-object v4, p0, Ln3/z/x0;->e:Ln3/z/s0;

    if-eqz v4, :cond_2

    .line 19
    iget-object v3, v4, Ln3/z/s0;->c:Ln3/z/r0;

    .line 20
    :cond_2
    invoke-virtual {p0, v0, v2, v1, v3}, Ln3/z/x0;->a(Ln3/z/r0;Ln3/z/r0;Ln3/z/r0;Ln3/z/r0;)Ln3/z/r0;

    move-result-object v0

    iput-object v0, p0, Ln3/z/x0;->c:Ln3/z/r0;

    return-void
.end method

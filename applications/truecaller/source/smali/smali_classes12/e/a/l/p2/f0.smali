.class public final Le/a/l/p2/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l/p2/v0;

.field public final b:Le/a/l/p2/a1;


# direct methods
.method public constructor <init>(Le/a/l/p2/v0;Le/a/l/p2/a1;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "state"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriptionProblemHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/f0;->a:Le/a/l/p2/v0;

    iput-object p2, p0, Le/a/l/p2/f0;->b:Le/a/l/p2/a1;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/l/p2/f0;->a:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->R1()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/f0;->a:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->G1()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Le/a/l/p2/f0;->e(J)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Le/a/l/p2/f0;->a:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->G1()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Le/a/l/p2/f0;->d(J)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/l/p2/f0;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Le/a/l/p2/f0;->a:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->w0()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Le/a/l/p2/f0;->e(J)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Le/a/l/p2/f0;->a:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->w0()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Le/a/l/p2/f0;->d(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    :goto_0
    return v1
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/p2/f0;->a:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->R1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/f0;->a:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->G1()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Le/a/l/p2/f0;->e(J)Z

    move-result v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/l/p2/f0;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/l/p2/f0;->a:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->w0()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Le/a/l/p2/f0;->e(J)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/p2/f0;->a:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->P()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/l/p2/f0;->b:Le/a/l/p2/a1;

    invoke-virtual {v0}, Le/a/l/p2/a1;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final d(J)Z
    .locals 2

    .line 1
    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object v0

    new-instance v1, Lw3/b/a/p;

    invoke-direct {v1, p1, p2}, Lw3/b/a/p;-><init>(J)V

    invoke-virtual {v0, v1}, Lw3/b/a/p;->a(Lw3/b/a/b0;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final e(J)Z
    .locals 3

    .line 1
    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lw3/b/a/p;->i(I)Lw3/b/a/p;

    move-result-object v0

    new-instance v2, Lw3/b/a/p;

    invoke-direct {v2, p1, p2}, Lw3/b/a/p;-><init>(J)V

    invoke-virtual {v0, v2}, Lw3/b/a/p;->a(Lw3/b/a/b0;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

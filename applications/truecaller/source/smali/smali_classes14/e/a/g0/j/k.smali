.class public final Le/a/g0/j/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g0/j/j;


# instance fields
.field public final a:Le/a/q2/a;

.field public final b:Le/a/g0/n/a;

.field public final c:Le/a/p5/c;

.field public final d:Le/a/p5/g;

.field public final e:Le/a/d4/c;


# direct methods
.method public constructor <init>(Le/a/q2/a;Le/a/g0/n/a;Le/a/p5/c;Le/a/p5/g;Le/a/d4/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileServicesAvailabilityProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g0/j/k;->a:Le/a/q2/a;

    iput-object p2, p0, Le/a/g0/j/k;->b:Le/a/g0/n/a;

    iput-object p3, p0, Le/a/g0/j/k;->c:Le/a/p5/c;

    iput-object p4, p0, Le/a/g0/j/k;->d:Le/a/p5/g;

    iput-object p5, p0, Le/a/g0/j/k;->e:Le/a/d4/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    new-instance v0, Le/a/g0/j/a;

    invoke-direct {v0}, Le/a/g0/j/a;-><init>()V

    iget-object v1, p0, Le/a/g0/j/k;->a:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public b()V
    .locals 6

    .line 1
    new-instance v0, Le/a/g0/j/d;

    .line 2
    iget-object v1, p0, Le/a/g0/j/k;->d:Le/a/p5/g;

    invoke-interface {v1}, Le/a/p5/g;->j()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Le/a/g0/j/k;->d:Le/a/p5/g;

    invoke-interface {v2}, Le/a/p5/g;->u()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Le/a/g0/j/k;->e:Le/a/d4/c;

    sget-object v4, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-interface {v3, v4}, Le/a/d4/c;->b(Le/a/d4/e;)I

    move-result v3

    .line 5
    iget-object v4, p0, Le/a/g0/j/k;->e:Le/a/d4/c;

    sget-object v5, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    invoke-interface {v4, v5}, Le/a/d4/c;->b(Le/a/d4/e;)I

    move-result v4

    .line 6
    invoke-direct {v0, v1, v2, v3, v4}, Le/a/g0/j/d;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 7
    iget-object v1, p0, Le/a/g0/j/k;->a:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    new-instance v0, Le/a/g0/j/h;

    invoke-direct {v0}, Le/a/g0/j/h;-><init>()V

    iget-object v1, p0, Le/a/g0/j/k;->a:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    new-instance v0, Le/a/g0/j/b;

    invoke-direct {v0}, Le/a/g0/j/b;-><init>()V

    iget-object v1, p0, Le/a/g0/j/k;->a:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public e(Le/a/d4/e;)V
    .locals 5

    const-string v0, "engine"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/g0/j/k;->b:Le/a/g0/n/a;

    const-string v1, "urtt-05"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Le/a/g0/n/a;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "settings.getLong(Suspens\u2026PTCHA_TRIGGERED_TIME, -1)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Le/a/g0/j/k;->c:Le/a/p5/c;

    invoke-interface {v2}, Le/a/p5/c;->c()J

    move-result-wide v2

    .line 3
    new-instance v4, Le/a/g0/j/e;

    sub-long/2addr v2, v0

    invoke-direct {v4, p1, v2, v3}, Le/a/g0/j/e;-><init>(Le/a/d4/e;J)V

    iget-object p1, p0, Le/a/g0/j/k;->a:Le/a/q2/a;

    invoke-static {v4, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    new-instance v0, Le/a/g0/j/l;

    invoke-direct {v0}, Le/a/g0/j/l;-><init>()V

    iget-object v1, p0, Le/a/g0/j/k;->a:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public g(Le/a/d4/e;Le/a/g0/j/j$a;)V
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/g0/j/c;

    invoke-virtual {p0, p2}, Le/a/g0/j/k;->k(Le/a/g0/j/j$a;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Le/a/g0/j/c;-><init>(Le/a/d4/e;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/g0/j/k;->a:Le/a/q2/a;

    invoke-static {v0, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public h(Le/a/g0/j/j$a;)V
    .locals 1

    .line 1
    new-instance v0, Le/a/g0/j/g;

    invoke-virtual {p0, p1}, Le/a/g0/j/k;->k(Le/a/g0/j/j$a;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Le/a/g0/j/g;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Le/a/g0/j/k;->a:Le/a/q2/a;

    invoke-static {v0, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    new-instance v0, Le/a/g0/j/i;

    invoke-direct {v0}, Le/a/g0/j/i;-><init>()V

    iget-object v1, p0, Le/a/g0/j/k;->a:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public j(Le/a/d4/e;)V
    .locals 6

    const-string v0, "engine"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/g0/j/k;->b:Le/a/g0/n/a;

    const-string v1, "urtt-05"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Le/a/g0/n/a;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/g0/j/k;->b:Le/a/g0/n/a;

    iget-object v2, p0, Le/a/g0/j/k;->c:Le/a/p5/c;

    invoke-interface {v2}, Le/a/p5/c;->c()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Le/a/g0/n/a;->putLong(Ljava/lang/String;J)V

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Le/a/g0/j/f;

    invoke-direct {v0, p1}, Le/a/g0/j/f;-><init>(Le/a/d4/e;)V

    iget-object p1, p0, Le/a/g0/j/k;->a:Le/a/q2/a;

    invoke-static {v0, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public final k(Le/a/g0/j/j$a;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Le/a/g0/j/j$a$a;->a:Le/a/g0/j/j$a$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Unknown"

    if-eqz v0, :cond_0

    const-string v1, "ConnectionError"

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Le/a/g0/j/j$a$b;->a:Le/a/g0/j/j$a$b;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "EmailError"

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Le/a/g0/j/j$a$c;

    if-eqz v0, :cond_2

    check-cast p1, Le/a/g0/j/j$a$c;

    .line 4
    iget-object p1, p1, Le/a/g0/j/j$a$c;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    move-object v1, p1

    :cond_2
    :goto_0
    return-object v1
.end method

.class public final Le/a/l/p2/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l/p2/v0;

.field public final b:Le/a/l/c2;

.field public final c:Le/a/u3/g;

.field public final d:Le/a/l/n0;


# direct methods
.method public constructor <init>(Le/a/l/p2/v0;Le/a/l/c2;Le/a/u3/g;Le/a/l/n0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumStateSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumEventsLogger"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/t1;->a:Le/a/l/p2/v0;

    iput-object p2, p0, Le/a/l/p2/t1;->b:Le/a/l/c2;

    iput-object p3, p0, Le/a/l/p2/t1;->c:Le/a/u3/g;

    iput-object p4, p0, Le/a/l/p2/t1;->d:Le/a/l/n0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/p2/t1;->a:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/t1;->a:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/a/l/p2/t1;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/l/p2/t1;->a:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->M2()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/l/p2/t1;->a:Le/a/l/p2/v0;

    invoke-interface {v1}, Le/a/l/p2/v0;->M2()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    iget-object v1, p0, Le/a/l/p2/t1;->c:Le/a/u3/g;

    .line 3
    iget-object v2, v1, Le/a/u3/g;->L:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x22

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    check-cast v1, Le/a/u3/i;

    const/16 v2, 0xa

    .line 4
    invoke-interface {v1, v2}, Le/a/u3/i;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lw3/b/a/b;->J(I)Lw3/b/a/b;

    move-result-object v0

    const-string v1, "DateTime(premiumStateSet\u2026ementWaitTime.getInt(10))"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lw3/b/a/e0/c;->j()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

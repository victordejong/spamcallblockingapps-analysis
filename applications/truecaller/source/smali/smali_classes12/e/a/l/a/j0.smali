.class public final Le/a/l/a/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/u3/g;

.field public final b:Le/a/l/p2/v0;

.field public final c:Le/a/l/c2;

.field public final d:Le/a/c0/h;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/l/p2/v0;Le/a/l/c2;Le/a/c0/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentRegistry"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/a/j0;->a:Le/a/u3/g;

    iput-object p2, p0, Le/a/l/a/j0;->b:Le/a/l/p2/v0;

    iput-object p3, p0, Le/a/l/a/j0;->c:Le/a/l/c2;

    iput-object p4, p0, Le/a/l/a/j0;->d:Le/a/c0/h;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/a/l/a/j0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/l/a/j0;->c:Le/a/l/c2;

    invoke-interface {v1}, Le/a/l/c2;->T0()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    .line 3
    iget-object v1, p0, Le/a/l/a/j0;->a:Le/a/u3/g;

    .line 4
    iget-object v2, v1, Le/a/u3/g;->s5:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x150

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    check-cast v1, Le/a/u3/i;

    const/4 v2, 0x5

    .line 5
    invoke-interface {v1, v2}, Le/a/u3/i;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lw3/b/a/b;->D(I)Lw3/b/a/b;

    move-result-object v0

    .line 6
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1}, Lw3/b/a/b;-><init>()V

    .line 7
    invoke-virtual {v0, v1}, Lw3/b/a/e0/c;->i(Lw3/b/a/z;)Z

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
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l/a/j0;->b:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/l/a/j0;->a:Le/a/u3/g;

    .line 3
    iget-object v1, v0, Le/a/u3/g;->r5:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x14f

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 4
    invoke-interface {v0}, Le/a/u3/i;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Le/a/l/a/j0;->d:Le/a/c0/h;

    .line 6
    iget-object v0, v0, Le/a/c0/h;->d:Le/a/c0/c;

    .line 7
    invoke-virtual {v0}, Le/a/c0/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

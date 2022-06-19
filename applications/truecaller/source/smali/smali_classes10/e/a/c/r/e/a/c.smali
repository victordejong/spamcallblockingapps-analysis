.class public final Le/a/c/r/e/a/c;
.super Le/q/a/d/c;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Ljava/util/Date;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:F

.field public g:Z

.field public h:J

.field public i:Ljava/util/Date;

.field public j:Z

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Le/q/a/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Le/a/c/r/e/a/c;->b:Ljava/util/Date;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Le/a/c/r/e/a/c;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v1, "address"

    const-string v3, "accountType"

    const-string v5, "accountNumber"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Le/q/a/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Le/a/c/r/e/a/c;->b:Ljava/util/Date;

    const-string p1, ""

    .line 6
    iput-object p1, p0, Le/a/c/r/e/a/c;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v1, "address"

    const-string v3, "accountType"

    const-string v5, "accountNumber"

    const-string v7, "normalizedName"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Le/d/c/a/a;->J0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Le/q/a/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Le/a/c/r/e/a/c;->b:Ljava/util/Date;

    const-string p1, ""

    .line 9
    iput-object p1, p0, Le/a/c/r/e/a/c;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/c/r/e/a/c;->a()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public b(Le/q/a/d/c;)V
    .locals 1

    const-string v0, "accountModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/e/a/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/e/a/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/e/a/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Le/a/c/r/e/a/c;->f:F

    return v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/a/c/r/e/a/c;->a:J

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/e/a/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/a/c/r/e/a/c;->h:J

    return-wide v0
.end method

.method public j()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/e/a/c;->i:Ljava/util/Date;

    return-object v0
.end method

.method public k()J
    .locals 4

    .line 1
    iget-wide v0, p0, Le/a/c/r/e/a/c;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Le/a/c/r/e/a/c;->h:J

    return-wide v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/c/r/e/a/c;->g:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/c/r/e/a/c;->j:Z

    return v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/r/e/a/c;->d:Ljava/lang/String;

    return-void
.end method

.method public o(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/c/r/e/a/c;->g:Z

    return-void
.end method

.method public p(Le/q/a/d/c;)V
    .locals 1

    const-string v0, "accountModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public q(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le/a/c/r/e/a/c;->a:J

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/c/r/e/a/c;->k:Ljava/lang/String;

    return-void
.end method

.method public s(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le/a/c/r/e/a/c;->h:J

    return-void
.end method

.method public final t(Ljava/util/Date;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/c/r/e/a/c;->b:Ljava/util/Date;

    return-void
.end method

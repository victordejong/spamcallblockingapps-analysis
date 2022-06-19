.class public abstract Le/q/a/d/c;
.super Le/q/a/d/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/q/a/d/a;-><init>()V

    .line 2
    move-object v0, p0

    check-cast v0, Le/a/c/r/e/a/c;

    .line 3
    iput-object p1, v0, Le/a/c/r/e/a/c;->c:Ljava/lang/String;

    .line 4
    iput-object p2, v0, Le/a/c/r/e/a/c;->d:Ljava/lang/String;

    .line 5
    iput-object p3, v0, Le/a/c/r/e/a/c;->e:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 6
    iput-wide p1, v0, Le/a/c/r/e/a/c;->h:J

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, v0, Le/a/c/r/e/a/c;->j:Z

    .line 8
    iput-boolean p1, v0, Le/a/c/r/e/a/c;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Le/q/a/d/a;-><init>()V

    .line 10
    move-object v0, p0

    check-cast v0, Le/a/c/r/e/a/c;

    .line 11
    iput-object p1, v0, Le/a/c/r/e/a/c;->c:Ljava/lang/String;

    .line 12
    iput-object p2, v0, Le/a/c/r/e/a/c;->d:Ljava/lang/String;

    .line 13
    iput-object p3, v0, Le/a/c/r/e/a/c;->e:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 14
    iput-wide p1, v0, Le/a/c/r/e/a/c;->h:J

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, v0, Le/a/c/r/e/a/c;->j:Z

    .line 16
    iput-boolean p1, v0, Le/a/c/r/e/a/c;->g:Z

    .line 17
    invoke-virtual {p0, p4}, Le/q/a/d/c;->r(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract b(Le/q/a/d/c;)V
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Le/q/a/d/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Le/q/a/d/c;

    .line 3
    invoke-virtual {p0}, Le/q/a/d/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Le/q/a/d/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Le/q/a/d/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Le/q/a/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/q/a/d/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Le/q/a/d/c;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public abstract f()F
.end method

.method public abstract g()J
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()J
.end method

.method public abstract j()Ljava/util/Date;
.end method

.method public abstract k()J
.end method

.method public abstract l()Z
.end method

.method public abstract m()Z
.end method

.method public abstract n(Ljava/lang/String;)V
.end method

.method public abstract o(Z)V
.end method

.method public abstract p(Le/q/a/d/c;)V
.end method

.method public abstract q(J)V
.end method

.method public abstract r(Ljava/lang/String;)V
.end method

.method public abstract s(J)V
.end method

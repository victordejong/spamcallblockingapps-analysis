.class public Le/k/a/c/k0/e;
.super Le/k/a/c/k0/v;
.source "SourceFile"


# static fields
.field public static final b:Le/k/a/c/k0/e;

.field public static final c:Le/k/a/c/k0/e;


# instance fields
.field public final a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/k0/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/k/a/c/k0/e;-><init>(Z)V

    sput-object v0, Le/k/a/c/k0/e;->b:Le/k/a/c/k0/e;

    .line 2
    new-instance v0, Le/k/a/c/k0/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/k/a/c/k0/e;-><init>(Z)V

    sput-object v0, Le/k/a/c/k0/e;->c:Le/k/a/c/k0/e;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/k0/v;-><init>()V

    iput-boolean p1, p0, Le/k/a/c/k0/e;->a:Z

    return-void
.end method


# virtual methods
.method public a()Le/k/a/b/m;
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/k/a/c/k0/e;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Le/k/a/b/m;->s:Le/k/a/b/m;

    goto :goto_0

    :cond_0
    sget-object v0, Le/k/a/b/m;->t:Le/k/a/b/m;

    :goto_0
    return-object v0
.end method

.method public final c(Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean p2, p0, Le/k/a/c/k0/e;->a:Z

    invoke-virtual {p1, p2}, Le/k/a/b/g;->k0(Z)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/k/a/c/k0/e;->a:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Le/k/a/c/k0/e;

    if-nez v2, :cond_2

    return v1

    .line 2
    :cond_2
    iget-boolean v2, p0, Le/k/a/c/k0/e;->a:Z

    check-cast p1, Le/k/a/c/k0/e;

    iget-boolean p1, p1, Le/k/a/c/k0/e;->a:Z

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public f(Z)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Le/k/a/c/k0/e;->a:Z

    return p1
.end method

.method public h(D)D
    .locals 0

    .line 1
    iget-boolean p1, p0, Le/k/a/c/k0/e;->a:Z

    if-eqz p1, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/k/a/c/k0/e;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public j(I)I
    .locals 0

    .line 1
    iget-boolean p1, p0, Le/k/a/c/k0/e;->a:Z

    return p1
.end method

.method public l(J)J
    .locals 0

    .line 1
    iget-boolean p1, p0, Le/k/a/c/k0/e;->a:Z

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/k/a/c/k0/e;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/k/a/c/k0/e;->a:Z

    return v0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/k/a/c/k0/e;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Le/k/a/c/k0/e;->b:Le/k/a/c/k0/e;

    goto :goto_0

    :cond_0
    sget-object v0, Le/k/a/c/k0/e;->c:Le/k/a/c/k0/e;

    :goto_0
    return-object v0
.end method

.method public v()Le/k/a/c/k0/m;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/k0/m;->c:Le/k/a/c/k0/m;

    return-object v0
.end method

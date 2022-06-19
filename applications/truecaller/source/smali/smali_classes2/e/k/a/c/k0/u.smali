.class public Le/k/a/c/k0/u;
.super Le/k/a/c/k0/v;
.source "SourceFile"


# static fields
.field public static final b:Le/k/a/c/k0/u;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/k0/u;

    const-string v1, ""

    invoke-direct {v0, v1}, Le/k/a/c/k0/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/k/a/c/k0/u;->b:Le/k/a/c/k0/u;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/k0/v;-><init>()V

    iput-object p1, p0, Le/k/a/c/k0/u;->a:Ljava/lang/String;

    return-void
.end method

.method public static M(Ljava/lang/String;)Le/k/a/c/k0/u;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object p0, Le/k/a/c/k0/u;->b:Le/k/a/c/k0/u;

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Le/k/a/c/k0/u;

    invoke-direct {v0, p0}, Le/k/a/c/k0/u;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public L()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/u;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Le/k/a/b/m;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/m;->p:Le/k/a/b/m;

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
    iget-object p2, p0, Le/k/a/c/k0/u;->a:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Le/k/a/b/g;->D0()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    instance-of v1, p1, Le/k/a/c/k0/u;

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Le/k/a/c/k0/u;

    iget-object p1, p1, Le/k/a/c/k0/u;->a:Ljava/lang/String;

    iget-object v0, p0, Le/k/a/c/k0/u;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public f(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/u;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v1, "false"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method public h(D)D
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/u;->a:Ljava/lang/String;

    .line 2
    sget-object v1, Le/k/a/b/w/f;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    :try_start_0
    invoke-static {v0}, Le/k/a/b/w/f;->e(Ljava/lang/String;)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-wide p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/u;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public j(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/u;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Le/k/a/b/w/f;->b(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public l(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/u;->a:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Le/k/a/b/w/f;->c(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/u;->a:Ljava/lang/String;

    return-object v0
.end method

.method public v()Le/k/a/c/k0/m;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/k0/m;->i:Le/k/a/c/k0/m;

    return-object v0
.end method

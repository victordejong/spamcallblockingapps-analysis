.class public Le/k/a/c/d0/z/v$f;
.super Le/k/a/c/d0/z/v$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/v$k<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final h:Le/k/a/c/d0/z/v$f;

.field public static final i:Le/k/a/c/d0/z/v$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Le/k/a/c/d0/z/v$f;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Le/k/a/c/d0/z/v$f;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    sput-object v0, Le/k/a/c/d0/z/v$f;->h:Le/k/a/c/d0/z/v$f;

    .line 2
    new-instance v0, Le/k/a/c/d0/z/v$f;

    const-class v1, Ljava/lang/Double;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/k/a/c/d0/z/v$f;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    sput-object v0, Le/k/a/c/d0/z/v$f;->i:Le/k/a/c/d0/z/v$f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Double;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->g:Le/k/a/c/m0/f;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Le/k/a/c/d0/z/v$k;-><init>(Ljava/lang/Class;Le/k/a/c/m0/f;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->r:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/k/a/b/j;->n0()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Le/k/a/c/d0/z/v$k;->g:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->R(Le/k/a/b/j;Le/k/a/c/g;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/v$f;->m0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Double;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object p3, Le/k/a/b/m;->r:Le/k/a/b/m;

    invoke-virtual {p1, p3}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p1}, Le/k/a/b/j;->n0()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean p3, p0, Le/k/a/c/d0/z/v$k;->g:Z

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->R(Le/k/a/b/j;Le/k/a/c/g;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/v$f;->m0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Double;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final m0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Double;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    const/16 v2, 0xb

    if-eq v0, v2, :cond_8

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    .line 2
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->b:Le/k/a/c/i;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v0

    .line 4
    :goto_0
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->H(Le/k/a/c/i;Le/k/a/b/j;)Ljava/lang/Object;

    throw v1

    .line 5
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->n0()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->s(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 8
    :cond_3
    iget-object v0, p0, Le/k/a/c/d0/z/v$k;->d:Le/k/a/c/m0/f;

    .line 9
    iget-object v2, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 10
    invoke-virtual {p0, p2, p1, v0, v2}, Le/k/a/c/d0/z/b0;->v(Le/k/a/c/g;Ljava/lang/String;Le/k/a/c/m0/f;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object v0

    .line 11
    sget-object v2, Le/k/a/c/c0/b;->c:Le/k/a/c/c0/b;

    if-ne v0, v2, :cond_4

    .line 12
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/v$k;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1

    .line 13
    :cond_4
    sget-object v2, Le/k/a/c/c0/b;->d:Le/k/a/c/c0/b;

    if-ne v0, v2, :cond_5

    .line 14
    iget-object p1, p0, Le/k/a/c/d0/z/v$k;->f:Ljava/lang/Object;

    .line 15
    check-cast p1, Ljava/lang/Double;

    return-object p1

    .line 16
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p2, p1}, Le/k/a/c/d0/z/b0;->w(Le/k/a/c/g;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/v$k;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1

    :cond_6
    :try_start_0
    const-string v0, "2.2250738585072012e-308"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide/high16 v2, 0x10000000000000L

    goto :goto_1

    .line 20
    :cond_7
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 21
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 22
    :catch_0
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "not a valid `Double` value"

    invoke-virtual {p2, v0, p1, v3, v2}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v1

    .line 23
    :cond_8
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/v$k;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1

    .line 24
    :cond_9
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->A(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1

    .line 25
    :cond_a
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 26
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v1
.end method

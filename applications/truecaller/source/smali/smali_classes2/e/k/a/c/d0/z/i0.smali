.class public Le/k/a/c/d0/z/i0;
.super Le/k/a/c/d0/z/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/e0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final d:Le/k/a/c/d0/z/i0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/d0/z/i0;

    invoke-direct {v0}, Le/k/a/c/d0/z/i0;-><init>()V

    sput-object v0, Le/k/a/c/d0/z/i0;->d:Le/k/a/c/d0/z/i0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Le/k/a/c/d0/z/e0;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/i0;->m0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/String;

    move-result-object p1

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
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/i0;->m0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    const-string p1, ""

    return-object p1
.end method

.method public m0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->p:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v0

    .line 4
    sget-object v1, Le/k/a/b/m;->l:Le/k/a/b/m;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->A(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 6
    :cond_1
    sget-object v1, Le/k/a/b/m;->o:Le/k/a/b/m;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 7
    invoke-virtual {p1}, Le/k/a/b/j;->p0()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v2

    .line 8
    :cond_2
    instance-of v0, p1, [B

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p2}, Le/k/a/c/g;->A()Le/k/a/b/a;

    move-result-object p2

    check-cast p1, [B

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Le/k/a/b/a;->g([BZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    sget-object v1, Le/k/a/b/m;->j:Le/k/a/b/m;

    if-eq v0, v1, :cond_6

    .line 12
    iget-boolean v0, v0, Le/k/a/b/m;->h:Z

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p1}, Le/k/a/b/j;->F1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    .line 14
    :cond_5
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v2

    .line 15
    :cond_6
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 16
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v2
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->j:Le/k/a/c/m0/f;

    return-object v0
.end method

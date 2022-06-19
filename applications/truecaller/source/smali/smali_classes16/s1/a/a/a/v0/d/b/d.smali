.class public final Ls1/a/a/a/v0/d/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/d/b/d$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/d/b/w/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/d/b/w/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ls1/a/a/a/v0/e/a0/b/f;

.field public static final e:Ls1/a/a/a/v0/e/a0/b/f;

.field public static final f:Ls1/a/a/a/v0/e/a0/b/f;

.field public static final g:Ls1/a/a/a/v0/d/b/d$a;


# instance fields
.field public a:Ls1/a/a/a/v0/k/b/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls1/a/a/a/v0/d/b/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/d/b/d$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Ls1/a/a/a/v0/d/b/d;->g:Ls1/a/a/a/v0/d/b/d$a;

    .line 1
    sget-object v0, Ls1/a/a/a/v0/d/b/w/a$a;->c:Ls1/a/a/a/v0/d/b/w/a$a;

    invoke-static {v0}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/d/b/d;->b:Ljava/util/Set;

    const/4 v0, 0x2

    new-array v0, v0, [Ls1/a/a/a/v0/d/b/w/a$a;

    .line 2
    sget-object v1, Ls1/a/a/a/v0/d/b/w/a$a;->d:Ls1/a/a/a/v0/d/b/w/a$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ls1/a/a/a/v0/d/b/w/a$a;->g:Ls1/a/a/a/v0/d/b/w/a$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/d/b/d;->c:Ljava/util/Set;

    .line 3
    new-instance v0, Ls1/a/a/a/v0/e/a0/b/f;

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Ls1/a/a/a/v0/e/a0/b/f;-><init>([I)V

    sput-object v0, Ls1/a/a/a/v0/d/b/d;->d:Ls1/a/a/a/v0/e/a0/b/f;

    .line 4
    new-instance v0, Ls1/a/a/a/v0/e/a0/b/f;

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Ls1/a/a/a/v0/e/a0/b/f;-><init>([I)V

    sput-object v0, Ls1/a/a/a/v0/d/b/d;->e:Ls1/a/a/a/v0/e/a0/b/f;

    .line 5
    new-instance v0, Ls1/a/a/a/v0/e/a0/b/f;

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/e/a0/b/f;-><init>([I)V

    sput-object v0, Ls1/a/a/a/v0/d/b/d;->f:Ls1/a/a/a/v0/e/a0/b/f;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0xb
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0xd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/b/c0;Ls1/a/a/a/v0/d/b/l;)Ls1/a/a/a/v0/j/y/i;
    .locals 13

    const-string v0, "components"

    const-string v1, "descriptor"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "kotlinClass"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Ls1/a/a/a/v0/d/b/d;->c:Ljava/util/Set;

    invoke-virtual {p0, p2, v1}, Ls1/a/a/a/v0/d/b/d;->g(Ls1/a/a/a/v0/d/b/l;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 2
    invoke-interface {p2}, Ls1/a/a/a/v0/d/b/l;->b()Ls1/a/a/a/v0/d/b/w/a;

    move-result-object v3

    .line 3
    iget-object v3, v3, Ls1/a/a/a/v0/d/b/w/a;->e:[Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 4
    :try_start_0
    invoke-static {v1, v3}, Ls1/a/a/a/v0/e/a0/b/h;->g([Ljava/lang/String;[Ljava/lang/String;)Ls1/k;

    move-result-object v1
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    :try_start_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read data from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ls1/a/a/a/v0/d/b/l;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_0
    iget-object v3, p0, Ls1/a/a/a/v0/d/b/d;->a:Ls1/a/a/a/v0/k/b/j;

    if-eqz v3, :cond_3

    .line 7
    iget-object v3, v3, Ls1/a/a/a/v0/k/b/j;->d:Ls1/a/a/a/v0/k/b/k;

    .line 8
    invoke-interface {v3}, Ls1/a/a/a/v0/k/b/k;->g()Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    invoke-interface {p2}, Ls1/a/a/a/v0/d/b/l;->b()Ls1/a/a/a/v0/d/b/w/a;

    move-result-object v3

    .line 10
    iget-object v3, v3, Ls1/a/a/a/v0/d/b/w/a;->b:Ls1/a/a/a/v0/e/a0/b/f;

    .line 11
    invoke-virtual {v3}, Ls1/a/a/a/v0/e/a0/b/f;->b()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    .line 12
    iget-object v3, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 13
    check-cast v3, Ls1/a/a/a/v0/e/a0/b/g;

    .line 14
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 15
    check-cast v1, Ls1/a/a/a/v0/e/l;

    .line 16
    new-instance v11, Ls1/a/a/a/v0/d/b/g;

    .line 17
    invoke-virtual {p0, p2}, Ls1/a/a/a/v0/d/b/d;->c(Ls1/a/a/a/v0/d/b/l;)Ls1/a/a/a/v0/k/b/r;

    move-result-object v8

    invoke-virtual {p0, p2}, Ls1/a/a/a/v0/d/b/d;->e(Ls1/a/a/a/v0/d/b/l;)Z

    move-result v9

    .line 18
    invoke-virtual {p0, p2}, Ls1/a/a/a/v0/d/b/d;->d(Ls1/a/a/a/v0/d/b/l;)Z

    move-result v10

    move-object v4, v11

    move-object v5, p2

    move-object v6, v1

    move-object v7, v3

    .line 19
    invoke-direct/range {v4 .. v10}, Ls1/a/a/a/v0/d/b/g;-><init>(Ls1/a/a/a/v0/d/b/l;Ls1/a/a/a/v0/e/l;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/k/b/r;ZZ)V

    .line 20
    new-instance v12, Ls1/a/a/a/v0/k/b/g0/i;

    .line 21
    invoke-interface {p2}, Ls1/a/a/a/v0/d/b/l;->b()Ls1/a/a/a/v0/d/b/w/a;

    move-result-object p2

    .line 22
    iget-object v8, p2, Ls1/a/a/a/v0/d/b/w/a;->b:Ls1/a/a/a/v0/e/a0/b/f;

    .line 23
    iget-object v10, p0, Ls1/a/a/a/v0/d/b/d;->a:Ls1/a/a/a/v0/k/b/j;

    if-eqz v10, :cond_0

    .line 24
    sget-object p2, Ls1/a/a/a/v0/d/b/d$b;->b:Ls1/a/a/a/v0/d/b/d$b;

    move-object v4, v12

    move-object v5, p1

    move-object v6, v1

    move-object v7, v3

    move-object v9, v11

    move-object v11, p2

    .line 25
    invoke-direct/range {v4 .. v11}, Ls1/a/a/a/v0/k/b/g0/i;-><init>(Ls1/a/a/a/v0/b/c0;Ls1/a/a/a/v0/e/l;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/k/b/g0/f;Ls1/a/a/a/v0/k/b/j;Ls1/z/b/a;)V

    return-object v12

    .line 26
    :cond_0
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-object v2

    .line 27
    :cond_2
    throw v1

    .line 28
    :cond_3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_4
    return-object v2
.end method

.method public final b()Ls1/a/a/a/v0/k/b/j;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/d;->a:Ls1/a/a/a/v0/k/b/j;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "components"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final c(Ls1/a/a/a/v0/d/b/l;)Ls1/a/a/a/v0/k/b/r;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/d/b/l;",
            ")",
            "Ls1/a/a/a/v0/k/b/r<",
            "Ls1/a/a/a/v0/e/a0/b/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/d;->a:Ls1/a/a/a/v0/k/b/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->d:Ls1/a/a/a/v0/k/b/k;

    .line 3
    invoke-interface {v0}, Ls1/a/a/a/v0/k/b/k;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-interface {p1}, Ls1/a/a/a/v0/d/b/l;->b()Ls1/a/a/a/v0/d/b/w/a;

    move-result-object v0

    .line 5
    iget-object v0, v0, Ls1/a/a/a/v0/d/b/w/a;->b:Ls1/a/a/a/v0/e/a0/b/f;

    .line 6
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/a0/b/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ls1/a/a/a/v0/k/b/r;

    invoke-interface {p1}, Ls1/a/a/a/v0/d/b/l;->b()Ls1/a/a/a/v0/d/b/w/a;

    move-result-object v1

    .line 8
    iget-object v1, v1, Ls1/a/a/a/v0/d/b/w/a;->b:Ls1/a/a/a/v0/e/a0/b/f;

    .line 9
    sget-object v2, Ls1/a/a/a/v0/e/a0/b/f;->g:Ls1/a/a/a/v0/e/a0/b/f;

    invoke-interface {p1}, Ls1/a/a/a/v0/d/b/l;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ls1/a/a/a/v0/d/b/l;->getClassId()Ls1/a/a/a/v0/f/a;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Ls1/a/a/a/v0/k/b/r;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ls1/a/a/a/v0/f/a;)V

    return-object v0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const-string p1, "components"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final d(Ls1/a/a/a/v0/d/b/l;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/d;->a:Ls1/a/a/a/v0/k/b/j;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->d:Ls1/a/a/a/v0/k/b/k;

    .line 3
    invoke-interface {v0}, Ls1/a/a/a/v0/k/b/k;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ls1/a/a/a/v0/d/b/l;->b()Ls1/a/a/a/v0/d/b/w/a;

    move-result-object p1

    .line 4
    iget p1, p1, Ls1/a/a/a/v0/d/b/w/a;->g:I

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    :cond_2
    const-string p1, "components"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final e(Ls1/a/a/a/v0/d/b/l;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/d;->a:Ls1/a/a/a/v0/k/b/j;

    const/4 v1, 0x0

    const-string v2, "components"

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->d:Ls1/a/a/a/v0/k/b/k;

    .line 3
    invoke-interface {v0}, Ls1/a/a/a/v0/k/b/k;->b()Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ls1/a/a/a/v0/d/b/l;->b()Ls1/a/a/a/v0/d/b/w/a;

    move-result-object v0

    .line 4
    iget v0, v0, Ls1/a/a/a/v0/d/b/w/a;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_4

    .line 5
    invoke-interface {p1}, Ls1/a/a/a/v0/d/b/l;->b()Ls1/a/a/a/v0/d/b/w/a;

    move-result-object v0

    .line 6
    iget-object v0, v0, Ls1/a/a/a/v0/d/b/w/a;->b:Ls1/a/a/a/v0/e/a0/b/f;

    .line 7
    sget-object v5, Ls1/a/a/a/v0/d/b/d;->d:Ls1/a/a/a/v0/e/a0/b/f;

    invoke-static {v0, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    :cond_1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/d;->a:Ls1/a/a/a/v0/k/b/j;

    if-eqz v0, :cond_6

    .line 9
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->d:Ls1/a/a/a/v0/k/b/k;

    .line 10
    invoke-interface {v0}, Ls1/a/a/a/v0/k/b/k;->e()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ls1/a/a/a/v0/d/b/l;->b()Ls1/a/a/a/v0/d/b/w/a;

    move-result-object v0

    .line 11
    iget v0, v0, Ls1/a/a/a/v0/d/b/w/a;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    .line 12
    invoke-interface {p1}, Ls1/a/a/a/v0/d/b/l;->b()Ls1/a/a/a/v0/d/b/w/a;

    move-result-object p1

    .line 13
    iget-object p1, p1, Ls1/a/a/a/v0/d/b/w/a;->b:Ls1/a/a/a/v0/e/a0/b/f;

    .line 14
    sget-object v0, Ls1/a/a/a/v0/d/b/d;->e:Ls1/a/a/a/v0/e/a0/b/f;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_2

    :cond_3
    move p1, v3

    :goto_2
    if-eqz p1, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    return v3

    :cond_6
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_7
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final f(Ls1/a/a/a/v0/d/b/l;)Ls1/a/a/a/v0/k/b/f;
    .locals 6

    const-string v0, "kotlinClass"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/d/b/d;->b:Ljava/util/Set;

    invoke-virtual {p0, p1, v0}, Ls1/a/a/a/v0/d/b/d;->g(Ls1/a/a/a/v0/d/b/l;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {p1}, Ls1/a/a/a/v0/d/b/l;->b()Ls1/a/a/a/v0/d/b/w/a;

    move-result-object v2

    .line 3
    iget-object v2, v2, Ls1/a/a/a/v0/d/b/w/a;->e:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 4
    :try_start_0
    invoke-static {v0, v2}, Ls1/a/a/a/v0/e/a0/b/h;->f([Ljava/lang/String;[Ljava/lang/String;)Ls1/k;

    move-result-object v0
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read data from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ls1/a/a/a/v0/d/b/l;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_0
    iget-object v2, p0, Ls1/a/a/a/v0/d/b/d;->a:Ls1/a/a/a/v0/k/b/j;

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/j;->d:Ls1/a/a/a/v0/k/b/k;

    .line 8
    invoke-interface {v2}, Ls1/a/a/a/v0/k/b/k;->g()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-interface {p1}, Ls1/a/a/a/v0/d/b/l;->b()Ls1/a/a/a/v0/d/b/w/a;

    move-result-object v2

    .line 10
    iget-object v2, v2, Ls1/a/a/a/v0/d/b/w/a;->b:Ls1/a/a/a/v0/e/a0/b/f;

    .line 11
    invoke-virtual {v2}, Ls1/a/a/a/v0/e/a0/b/f;->b()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 12
    iget-object v1, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 13
    check-cast v1, Ls1/a/a/a/v0/e/a0/b/g;

    .line 14
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 15
    check-cast v0, Ls1/a/a/a/v0/e/c;

    .line 16
    new-instance v2, Ls1/a/a/a/v0/d/b/n;

    .line 17
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/b/d;->c(Ls1/a/a/a/v0/d/b/l;)Ls1/a/a/a/v0/k/b/r;

    move-result-object v3

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/b/d;->e(Ls1/a/a/a/v0/d/b/l;)Z

    move-result v4

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/b/d;->d(Ls1/a/a/a/v0/d/b/l;)Z

    move-result v5

    .line 18
    invoke-direct {v2, p1, v3, v4, v5}, Ls1/a/a/a/v0/d/b/n;-><init>(Ls1/a/a/a/v0/d/b/l;Ls1/a/a/a/v0/k/b/r;ZZ)V

    .line 19
    new-instance v3, Ls1/a/a/a/v0/k/b/f;

    invoke-interface {p1}, Ls1/a/a/a/v0/d/b/l;->b()Ls1/a/a/a/v0/d/b/w/a;

    move-result-object p1

    .line 20
    iget-object p1, p1, Ls1/a/a/a/v0/d/b/w/a;->b:Ls1/a/a/a/v0/e/a0/b/f;

    .line 21
    invoke-direct {v3, v1, v0, p1, v2}, Ls1/a/a/a/v0/k/b/f;-><init>(Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/c;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/b/r0;)V

    return-object v3

    :cond_0
    return-object v1

    .line 22
    :cond_1
    throw v0

    :cond_2
    const-string p1, "components"

    .line 23
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-object v1
.end method

.method public final g(Ls1/a/a/a/v0/d/b/l;Ljava/util/Set;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/d/b/l;",
            "Ljava/util/Set<",
            "+",
            "Ls1/a/a/a/v0/d/b/w/a$a;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/d/b/l;->b()Ls1/a/a/a/v0/d/b/w/a;

    move-result-object p1

    .line 2
    iget-object v0, p1, Ls1/a/a/a/v0/d/b/w/a;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Ls1/a/a/a/v0/d/b/w/a;->d:[Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/d/b/w/a;->a:Ls1/a/a/a/v0/d/b/w/a$a;

    .line 5
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.class public Le/k/a/c/g0/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:[Le/k/a/c/g0/p;

.field public static final c:[Ljava/lang/annotation/Annotation;


# instance fields
.field public final a:Le/k/a/c/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Le/k/a/c/g0/p;

    .line 1
    sput-object v1, Le/k/a/c/g0/u;->b:[Le/k/a/c/g0/p;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    .line 2
    sput-object v0, Le/k/a/c/g0/u;->c:[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/g0/u;->a:Le/k/a/c/b;

    return-void
.end method

.method public static a(I)[Le/k/a/c/g0/p;
    .locals 3

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Le/k/a/c/g0/u;->b:[Le/k/a/c/g0/p;

    return-object p0

    .line 2
    :cond_0
    new-array v0, p0, [Le/k/a/c/g0/p;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 3
    new-instance v2, Le/k/a/c/g0/p;

    invoke-direct {v2}, Le/k/a/c/g0/p;-><init>()V

    .line 4
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final b(Le/k/a/c/g0/o;[Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;
    .locals 4

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    aget-object v2, p2, v1

    .line 3
    invoke-virtual {p1, v2}, Le/k/a/c/g0/o;->a(Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object p1

    .line 4
    iget-object v3, p0, Le/k/a/c/g0/u;->a:Le/k/a/c/b;

    invoke-virtual {v3, v2}, Le/k/a/c/b;->n0(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p0, p1, v2}, Le/k/a/c/g0/u;->e(Le/k/a/c/g0/o;Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final c([Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;
    .locals 5

    .line 1
    sget-object v0, Le/k/a/c/g0/o$a;->c:Le/k/a/c/g0/o$a;

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    aget-object v3, p1, v2

    .line 4
    invoke-virtual {v0, v3}, Le/k/a/c/g0/o;->a(Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object v0

    .line 5
    iget-object v4, p0, Le/k/a/c/g0/u;->a:Le/k/a/c/b;

    invoke-virtual {v4, v3}, Le/k/a/c/b;->n0(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {p0, v0, v3}, Le/k/a/c/g0/u;->e(Le/k/a/c/g0/o;Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final d(Le/k/a/c/g0/o;[Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;
    .locals 8

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 2
    aget-object v3, p2, v2

    .line 3
    invoke-virtual {p1, v3}, Le/k/a/c/g0/o;->d(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4
    invoke-virtual {p1, v3}, Le/k/a/c/g0/o;->a(Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object p1

    .line 5
    iget-object v4, p0, Le/k/a/c/g0/u;->a:Le/k/a/c/b;

    invoke-virtual {v4, v3}, Le/k/a/c/b;->n0(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Le/k/a/c/n0/g;->k(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 7
    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_4

    .line 8
    aget-object v6, v3, v5

    .line 9
    instance-of v7, v6, Ljava/lang/annotation/Target;

    if-nez v7, :cond_1

    instance-of v7, v6, Ljava/lang/annotation/Retention;

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    move v7, v1

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-eqz v7, :cond_2

    goto :goto_4

    .line 10
    :cond_2
    invoke-virtual {p1, v6}, Le/k/a/c/g0/o;->d(Ljava/lang/annotation/Annotation;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 11
    invoke-virtual {p1, v6}, Le/k/a/c/g0/o;->a(Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object p1

    .line 12
    iget-object v7, p0, Le/k/a/c/g0/u;->a:Le/k/a/c/b;

    invoke-virtual {v7, v6}, Le/k/a/c/b;->n0(Ljava/lang/annotation/Annotation;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 13
    invoke-virtual {p0, p1, v6}, Le/k/a/c/g0/u;->e(Le/k/a/c/g0/o;Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object p1

    :cond_3
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object p1
.end method

.method public final e(Le/k/a/c/g0/o;Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;
    .locals 5

    .line 1
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Le/k/a/c/n0/g;->k(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object p2

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 3
    aget-object v3, p2, v2

    .line 4
    instance-of v4, v3, Ljava/lang/annotation/Target;

    if-nez v4, :cond_1

    instance-of v4, v3, Ljava/lang/annotation/Retention;

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_2

    goto :goto_3

    .line 5
    :cond_2
    iget-object v4, p0, Le/k/a/c/g0/u;->a:Le/k/a/c/b;

    invoke-virtual {v4, v3}, Le/k/a/c/b;->n0(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6
    invoke-virtual {p1, v3}, Le/k/a/c/g0/o;->d(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 7
    invoke-virtual {p1, v3}, Le/k/a/c/g0/o;->a(Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1, v3}, Le/k/a/c/g0/u;->e(Le/k/a/c/g0/o;Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object p1

    goto :goto_3

    .line 9
    :cond_3
    invoke-virtual {p1, v3}, Le/k/a/c/g0/o;->a(Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object p1

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object p1
.end method

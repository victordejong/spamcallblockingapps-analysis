.class public final Le/k/a/c/n0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:[Le/k/a/b/p;


# direct methods
.method public constructor <init>(Ljava/lang/Class;[Le/k/a/b/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Enum<",
            "*>;>;[",
            "Le/k/a/b/p;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/n0/k;->a:Ljava/lang/Class;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    .line 4
    iput-object p2, p0, Le/k/a/c/n0/k;->b:[Le/k/a/b/p;

    return-void
.end method

.method public static a(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/c/n0/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Ljava/lang/Class<",
            "Ljava/lang/Enum<",
            "*>;>;)",
            "Le/k/a/c/n0/k;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/n0/g;->a:[Ljava/lang/annotation/Annotation;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Enum;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p0}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object p0

    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Le/k/a/c/b;->l(Ljava/lang/Class;[Ljava/lang/Enum;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 6
    array-length v0, v1

    new-array v0, v0, [Le/k/a/b/p;

    const/4 v2, 0x0

    .line 7
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_2

    .line 8
    aget-object v4, v1, v2

    .line 9
    aget-object v5, p0, v2

    if-nez v5, :cond_1

    .line 10
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 11
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    .line 12
    new-instance v6, Le/k/a/b/w/i;

    invoke-direct {v6, v5}, Le/k/a/b/w/i;-><init>(Ljava/lang/String;)V

    .line 13
    aput-object v6, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 14
    :cond_2
    new-instance p0, Le/k/a/c/n0/k;

    invoke-direct {p0, p1, v0}, Le/k/a/c/n0/k;-><init>(Ljava/lang/Class;[Le/k/a/b/p;)V

    return-object p0

    .line 15
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot determine enum constants for Class "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Le/d/c/a/a;->Z1(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class public Le/k/a/c/m0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/m0/n$a;,
        Le/k/a/c/m0/n$b;
    }
.end annotation


# static fields
.field public static final e:[Ljava/lang/String;

.field public static final f:[Le/k/a/c/i;

.field public static final g:Le/k/a/c/m0/n;


# instance fields
.field public final a:[Ljava/lang/String;

.field public final b:[Le/k/a/c/i;

.field public final c:[Ljava/lang/String;

.field public final d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 1
    sput-object v1, Le/k/a/c/m0/n;->e:[Ljava/lang/String;

    new-array v0, v0, [Le/k/a/c/i;

    .line 2
    sput-object v0, Le/k/a/c/m0/n;->f:[Le/k/a/c/i;

    .line 3
    new-instance v2, Le/k/a/c/m0/n;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Le/k/a/c/m0/n;-><init>([Ljava/lang/String;[Le/k/a/c/i;[Ljava/lang/String;)V

    sput-object v2, Le/k/a/c/m0/n;->g:Le/k/a/c/m0/n;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Le/k/a/c/i;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Le/k/a/c/m0/n;->e:[Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Le/k/a/c/m0/n;->a:[Ljava/lang/String;

    if-nez p2, :cond_1

    .line 3
    sget-object p2, Le/k/a/c/m0/n;->f:[Le/k/a/c/i;

    :cond_1
    iput-object p2, p0, Le/k/a/c/m0/n;->b:[Le/k/a/c/i;

    .line 4
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_3

    const/4 p1, 0x0

    .line 5
    array-length p2, p2

    const/4 v0, 0x1

    :goto_0
    if-ge p1, p2, :cond_2

    .line 6
    iget-object v1, p0, Le/k/a/c/m0/n;->b:[Le/k/a/c/i;

    aget-object v1, v1, p1

    .line 7
    iget v1, v1, Le/k/a/c/i;->b:I

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iput-object p3, p0, Le/k/a/c/m0/n;->c:[Ljava/lang/String;

    .line 9
    iput v0, p0, Le/k/a/c/m0/n;->d:I

    return-void

    .line 10
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string v0, "Mismatching names ("

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), types ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    const-string p2, ")"

    invoke-static {v0, p1, p2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static a(Ljava/lang/Class;Le/k/a/c/i;)Le/k/a/c/m0/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/m0/n;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/m0/n$b;->a:[Ljava/lang/reflect/TypeVariable;

    .line 2
    const-class v0, Ljava/util/Collection;

    if-ne p0, v0, :cond_0

    .line 3
    sget-object v0, Le/k/a/c/m0/n$b;->b:[Ljava/lang/reflect/TypeVariable;

    goto :goto_0

    .line 4
    :cond_0
    const-class v0, Ljava/util/List;

    if-ne p0, v0, :cond_1

    .line 5
    sget-object v0, Le/k/a/c/m0/n$b;->d:[Ljava/lang/reflect/TypeVariable;

    goto :goto_0

    .line 6
    :cond_1
    const-class v0, Ljava/util/ArrayList;

    if-ne p0, v0, :cond_2

    .line 7
    sget-object v0, Le/k/a/c/m0/n$b;->e:[Ljava/lang/reflect/TypeVariable;

    goto :goto_0

    .line 8
    :cond_2
    const-class v0, Ljava/util/AbstractList;

    if-ne p0, v0, :cond_3

    .line 9
    sget-object v0, Le/k/a/c/m0/n$b;->a:[Ljava/lang/reflect/TypeVariable;

    goto :goto_0

    .line 10
    :cond_3
    const-class v0, Ljava/lang/Iterable;

    if-ne p0, v0, :cond_4

    .line 11
    sget-object v0, Le/k/a/c/m0/n$b;->c:[Ljava/lang/reflect/TypeVariable;

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_5

    move v2, v1

    goto :goto_1

    .line 13
    :cond_5
    array-length v2, v0

    :goto_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 14
    new-instance p0, Le/k/a/c/m0/n;

    new-array v2, v3, [Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    new-array v0, v3, [Le/k/a/c/i;

    aput-object p1, v0, v1

    const/4 p1, 0x0

    invoke-direct {p0, v2, v0, p1}, Le/k/a/c/m0/n;-><init>([Ljava/lang/String;[Le/k/a/c/i;[Ljava/lang/String;)V

    return-object p0

    .line 15
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot create TypeBindings for class "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with 1 type parameter: class expects "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(Ljava/lang/Class;Le/k/a/c/i;Le/k/a/c/i;)Le/k/a/c/m0/n;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/i;",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/m0/n;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/m0/n$b;->a:[Ljava/lang/reflect/TypeVariable;

    .line 2
    const-class v0, Ljava/util/Map;

    if-ne p0, v0, :cond_0

    .line 3
    sget-object v0, Le/k/a/c/m0/n$b;->f:[Ljava/lang/reflect/TypeVariable;

    goto :goto_0

    .line 4
    :cond_0
    const-class v0, Ljava/util/HashMap;

    if-ne p0, v0, :cond_1

    .line 5
    sget-object v0, Le/k/a/c/m0/n$b;->g:[Ljava/lang/reflect/TypeVariable;

    goto :goto_0

    .line 6
    :cond_1
    const-class v0, Ljava/util/LinkedHashMap;

    if-ne p0, v0, :cond_2

    .line 7
    sget-object v0, Le/k/a/c/m0/n$b;->h:[Ljava/lang/reflect/TypeVariable;

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_3

    move v2, v1

    goto :goto_1

    .line 9
    :cond_3
    array-length v2, v0

    :goto_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 10
    new-instance p0, Le/k/a/c/m0/n;

    new-array v2, v3, [Ljava/lang/String;

    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    new-array v0, v3, [Le/k/a/c/i;

    aput-object p1, v0, v1

    aput-object p2, v0, v4

    const/4 p1, 0x0

    invoke-direct {p0, v2, v0, p1}, Le/k/a/c/m0/n;-><init>([Ljava/lang/String;[Le/k/a/c/i;[Ljava/lang/String;)V

    return-object p0

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot create TypeBindings for class "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with 2 type parameters: class expects "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c(Ljava/lang/Class;[Le/k/a/c/i;)Le/k/a/c/m0/n;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/m0/n;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Le/k/a/c/m0/n;->f:[Le/k/a/c/i;

    goto :goto_0

    .line 2
    :cond_0
    array-length v2, p1

    if-eq v2, v1, :cond_7

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    array-length v3, v2

    .line 6
    new-array v4, v3, [Ljava/lang/String;

    :goto_1
    if-ge v0, v3, :cond_3

    .line 7
    aget-object v5, v2, v0

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_2
    :goto_2
    sget-object v4, Le/k/a/c/m0/n;->e:[Ljava/lang/String;

    .line 9
    :cond_3
    array-length v0, v4

    array-length v2, p1

    if-eq v0, v2, :cond_5

    .line 10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create TypeBindings for class "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-static {p0, v2, v3}, Le/d/c/a/a;->z0(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    array-length p0, p1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " type parameter"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    if-ne p0, v1, :cond_4

    const-string p0, ""

    goto :goto_3

    :cond_4
    const-string p0, "s"

    :goto_3
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": class expects "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, v4

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_5
    new-instance p0, Le/k/a/c/m0/n;

    const/4 v0, 0x0

    invoke-direct {p0, v4, p1, v0}, Le/k/a/c/m0/n;-><init>([Ljava/lang/String;[Le/k/a/c/i;[Ljava/lang/String;)V

    return-object p0

    .line 12
    :cond_6
    aget-object v0, p1, v0

    aget-object p1, p1, v1

    invoke-static {p0, v0, p1}, Le/k/a/c/m0/n;->b(Ljava/lang/Class;Le/k/a/c/i;Le/k/a/c/i;)Le/k/a/c/m0/n;

    move-result-object p0

    return-object p0

    .line 13
    :cond_7
    aget-object p1, p1, v0

    invoke-static {p0, p1}, Le/k/a/c/m0/n;->a(Ljava/lang/Class;Le/k/a/c/i;)Le/k/a/c/m0/n;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d(I)Le/k/a/c/i;
    .locals 2

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/n;->b:[Le/k/a/c/i;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/k/a/c/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/n;->b:[Le/k/a/c/i;

    array-length v1, v0

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v1}, Le/k/a/c/n0/g;->u(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Le/k/a/c/m0/n;

    .line 3
    iget-object v1, p0, Le/k/a/c/m0/n;->b:[Le/k/a/c/i;

    array-length v1, v1

    .line 4
    iget-object p1, p1, Le/k/a/c/m0/n;->b:[Le/k/a/c/i;

    array-length v3, p1

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 5
    aget-object v4, p1, v3

    iget-object v5, p0, Le/k/a/c/m0/n;->b:[Le/k/a/c/i;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Le/k/a/c/i;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/n;->b:[Le/k/a/c/i;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/c/m0/n;->d:I

    return v0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/n;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 2
    :cond_1
    :goto_0
    sget-object v0, Le/k/a/c/m0/n;->g:Le/k/a/c/m0/n;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/n;->b:[Le/k/a/c/i;

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, "<>"

    return-object v0

    :cond_0
    const/16 v0, 0x3c

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Le/k/a/c/m0/n;->b:[Le/k/a/c/i;

    array-length v2, v2

    :goto_0
    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const/16 v3, 0x2c

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    iget-object v3, p0, Le/k/a/c/m0/n;->b:[Le/k/a/c/i;

    aget-object v3, v3, v1

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x28

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    invoke-virtual {v3, v4}, Le/k/a/c/i;->m(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x3e

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

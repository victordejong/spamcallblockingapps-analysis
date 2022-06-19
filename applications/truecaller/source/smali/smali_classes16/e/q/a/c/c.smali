.class public Le/q/a/c/c;
.super Le/q/a/c/a;
.source "SourceFile"


# static fields
.field public static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/q/a/c/c$a;

    invoke-direct {v0}, Le/q/a/c/c$a;-><init>()V

    sput-object v0, Le/q/a/c/c;->c:Ljava/util/Set;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, -0xff

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 4
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ltz v0, :cond_7

    .line 5
    aget-char v5, p0, v0

    .line 6
    aget-char v6, p1, v0

    if-eq v5, v6, :cond_5

    .line 7
    sget-object v7, Le/q/a/c/c;->c:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Le/q/a/c/c;->c:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 8
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 9
    invoke-static {v5}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v7

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0xa

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v5}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, -0xa

    goto :goto_1

    :cond_3
    sub-int v7, v5, v6

    :goto_1
    if-eqz p2, :cond_4

    if-gez v7, :cond_4

    mul-int/lit8 v7, v7, -0x1

    :cond_4
    add-int/2addr v4, v7

    :cond_5
    if-ne v5, v6, :cond_6

    move v3, v1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_8

    return v4

    :cond_8
    if-nez v4, :cond_9

    return v2

    :cond_9
    return v4
.end method

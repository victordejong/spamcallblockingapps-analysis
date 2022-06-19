.class public Le/k/a/c/g0/w$c;
.super Le/k/a/c/g0/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/g0/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/k/a/c/c0/k;Le/k/a/c/g0/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/c;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const-string v4, "get"

    const-string v5, "is"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Le/k/a/c/g0/w;-><init>(Le/k/a/c/c0/k;Le/k/a/c/g0/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/k/a/c/g0/w$a;)V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Le/k/a/c/g0/w$c;->f:Ljava/util/Set;

    .line 3
    iget-object p1, p2, Le/k/a/c/g0/c;->b:Ljava/lang/Class;

    .line 4
    sget-object p2, Le/k/a/c/h0/c;->e:Ljava/lang/RuntimeException;

    if-nez p2, :cond_2

    .line 5
    sget-object p2, Le/k/a/c/h0/c;->d:Le/k/a/c/h0/c;

    .line 6
    invoke-virtual {p2, p1}, Le/k/a/c/h0/c;->a(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 7
    array-length v1, v0

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    .line 8
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 9
    :try_start_0
    iget-object v5, p2, Le/k/a/c/h0/c;->b:Ljava/lang/reflect/Method;

    aget-object v6, v0, v4

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-static {p1}, Le/k/a/c/n0/g;->E(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "Failed to access name of field #%d (of %d) of Record type %s"

    .line 12
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_1
    if-ge v3, v1, :cond_1

    .line 13
    aget-object p1, v2, v3

    .line 14
    iget-object p2, p0, Le/k/a/c/g0/w$c;->f:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 15
    :cond_2
    throw p2
.end method


# virtual methods
.method public c(Le/k/a/c/g0/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/w$c;->f:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Le/k/a/c/g0/w;->c(Le/k/a/c/g0/j;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

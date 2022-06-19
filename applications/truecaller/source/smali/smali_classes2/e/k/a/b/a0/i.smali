.class public final Le/k/a/b/a0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Le/k/a/b/a0/h;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/k/a/b/a0/i;->a:I

    return-void
.end method

.method public static a([Le/k/a/b/a0/h;)Le/k/a/b/a0/i;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Le/k/a/b/a0/h;",
            ">([TF;)",
            "Le/k/a/b/a0/i<",
            "TF;>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_2

    .line 2
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    .line 3
    invoke-interface {v3}, Le/k/a/b/a0/h;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-interface {v3}, Le/k/a/b/a0/h;->a()I

    move-result v3

    or-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p0, Le/k/a/b/a0/i;

    invoke-direct {p0, v2}, Le/k/a/b/a0/i;-><init>(I)V

    return-object p0

    .line 6
    :cond_2
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    array-length p0, p0

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v3, v0

    const-string p0, "Can not use type `%s` with JacksonFeatureSet: too many entries (%d > 31)"

    .line 9
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public b(Le/k/a/b/a0/h;)Le/k/a/b/a0/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Le/k/a/b/a0/i<",
            "TF;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/a0/i;->a:I

    check-cast p1, Le/k/a/b/r;

    .line 2
    iget p1, p1, Le/k/a/b/r;->b:I

    or-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Le/k/a/b/a0/i;

    invoke-direct {v0, p1}, Le/k/a/b/a0/i;-><init>(I)V

    :goto_0
    return-object v0
.end method

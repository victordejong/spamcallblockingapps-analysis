.class public abstract Le/k/a/c/g0/n;
.super Le/k/a/c/g0/i;
.source "SourceFile"


# instance fields
.field public final c:[Le/k/a/c/g0/p;


# direct methods
.method public constructor <init>(Le/k/a/c/g0/e0;Le/k/a/c/g0/p;[Le/k/a/c/g0/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/k/a/c/g0/i;-><init>(Le/k/a/c/g0/e0;Le/k/a/c/g0/p;)V

    .line 2
    iput-object p3, p0, Le/k/a/c/g0/n;->c:[Le/k/a/c/g0/p;

    return-void
.end method


# virtual methods
.method public abstract m()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract n([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract o(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final p(I)Le/k/a/c/g0/m;
    .locals 7

    .line 1
    new-instance v6, Le/k/a/c/g0/m;

    invoke-virtual {p0, p1}, Le/k/a/c/g0/n;->r(I)Le/k/a/c/i;

    move-result-object v2

    iget-object v3, p0, Le/k/a/c/g0/i;->a:Le/k/a/c/g0/e0;

    .line 2
    iget-object v0, p0, Le/k/a/c/g0/n;->c:[Le/k/a/c/g0/p;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 3
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 4
    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    move-object v0, v6

    move-object v1, p0

    move v5, p1

    .line 5
    invoke-direct/range {v0 .. v5}, Le/k/a/c/g0/m;-><init>(Le/k/a/c/g0/n;Le/k/a/c/i;Le/k/a/c/g0/e0;Le/k/a/c/g0/p;I)V

    return-object v6
.end method

.method public abstract q()I
.end method

.method public abstract r(I)Le/k/a/c/i;
.end method

.method public abstract s(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

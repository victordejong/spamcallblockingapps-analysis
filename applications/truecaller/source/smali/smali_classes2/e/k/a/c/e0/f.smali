.class public Le/k/a/c/e0/f;
.super Le/k/a/c/k;
.source "SourceFile"


# direct methods
.method public constructor <init>(Le/k/a/b/j;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Le/k/a/c/n0/g;->G(Le/k/a/c/i;)Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Le/k/a/b/j;Ljava/lang/String;Le/k/a/b/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;Le/k/a/b/h;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/b/j;Ljava/lang/String;Le/k/a/c/i;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 6
    invoke-static {p3}, Le/k/a/c/n0/g;->G(Le/k/a/c/i;)Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Le/k/a/b/j;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void
.end method

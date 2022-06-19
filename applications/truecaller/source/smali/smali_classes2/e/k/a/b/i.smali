.class public Le/k/a/b/i;
.super Le/k/a/b/v/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Le/k/a/b/j;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/k/a/b/v/b;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/b/j;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Le/k/a/b/v/b;-><init>(Le/k/a/b/j;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/v/b;->b:Le/k/a/b/j;

    return-object v0
.end method

.method public d()Le/k/a/b/j;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/v/b;->b:Le/k/a/b/j;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Le/k/a/b/v/b;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public abstract Le/k/a/b/v/b;
.super Le/k/a/b/k;
.source "SourceFile"


# instance fields
.field public transient b:Le/k/a/b/j;


# direct methods
.method public constructor <init>(Le/k/a/b/j;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Le/k/a/b/j;->P()Le/k/a/b/h;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p2, v0}, Le/k/a/b/k;-><init>(Ljava/lang/String;Le/k/a/b/h;)V

    .line 2
    iput-object p1, p0, Le/k/a/b/v/b;->b:Le/k/a/b/j;

    return-void
.end method

.method public constructor <init>(Le/k/a/b/j;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/k/a/b/j;->P()Le/k/a/b/h;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p2, v0, p3}, Le/k/a/b/k;-><init>(Ljava/lang/String;Le/k/a/b/h;Ljava/lang/Throwable;)V

    .line 4
    iput-object p1, p0, Le/k/a/b/v/b;->b:Le/k/a/b/j;

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/b/v/b;->d()Le/k/a/b/j;

    move-result-object v0

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
    invoke-super {p0}, Le/k/a/b/k;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

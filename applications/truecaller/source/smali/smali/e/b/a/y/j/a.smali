.class public Le/b/a/y/j/a;
.super Le/b/a/y/j/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/b/a/y/j/n<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/b/a/c0/a<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/b/a/y/j/n;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public f()Le/b/a/w/c/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/b/a/w/c/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/b/a/w/c/b;

    iget-object v1, p0, Le/b/a/y/j/n;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Le/b/a/w/c/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

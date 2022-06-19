.class public Le/b/a/w/c/n;
.super Le/b/a/w/c/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/b/a/w/c/f<",
        "Le/b/a/y/b;",
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
            "Le/b/a/y/b;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/b/a/w/c/f;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public g(Le/b/a/c0/a;F)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p1, Le/b/a/c0/a;->b:Ljava/lang/Object;

    check-cast p1, Le/b/a/y/b;

    return-object p1
.end method

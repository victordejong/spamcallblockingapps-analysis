.class public Le/a/f4/b/d;
.super Le/a/f4/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/f4/b/d$a;

    invoke-direct {v0, p1}, Le/a/f4/b/d$a;-><init>(Lo3/a;)V

    invoke-direct {p0, v0}, Le/a/f4/b/a;-><init>(Ls1/z/b/a;)V

    return-void
.end method

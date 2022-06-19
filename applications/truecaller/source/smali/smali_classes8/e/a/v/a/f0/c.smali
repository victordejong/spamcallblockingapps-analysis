.class public final Le/a/v/a/f0/c;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/f0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/v/a/f0/b;",
        ">;",
        "Le/a/v/a/f0/a;"
    }
.end annotation


# instance fields
.field public final b:Ls1/g;

.field public final c:Le/a/v/a/z/a;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/v/a/z/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailsViewAnalytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p2, p0, Le/a/v/a/f0/c;->c:Le/a/v/a/z/a;

    .line 2
    sget-object p2, Ls1/h;->c:Ls1/h;

    new-instance v0, Le/a/v/a/f0/c$a;

    invoke-direct {v0, p1}, Le/a/v/a/f0/c$a;-><init>(Le/a/u3/g;)V

    invoke-static {p2, v0}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/v/a/f0/c;->b:Ls1/g;

    return-void
.end method

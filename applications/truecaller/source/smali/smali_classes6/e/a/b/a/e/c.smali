.class public final Le/a/b/a/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/e/b;


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Le/a/b/a/e/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/q2/a;Le/a/q2/d1/d;Le/a/r2/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q2/a;",
            "Le/a/q2/d1/d;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "fbAnalytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseAnalyticsWrapper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Le/a/b/a/e/b;

    .line 2
    new-instance v1, Le/a/b/a/e/e;

    invoke-direct {v1, p2}, Le/a/b/a/e/e;-><init>(Le/a/q2/d1/d;)V

    const/4 p2, 0x0

    aput-object v1, v0, p2

    .line 3
    new-instance p2, Le/a/b/a/e/f;

    invoke-direct {p2, p3}, Le/a/b/a/e/f;-><init>(Le/a/r2/f;)V

    const/4 p3, 0x1

    aput-object p2, v0, p3

    .line 4
    new-instance p2, Le/a/b/a/e/d;

    invoke-direct {p2, p1}, Le/a/b/a/e/d;-><init>(Le/a/q2/a;)V

    const/4 p1, 0x2

    aput-object p2, v0, p1

    .line 5
    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Le/a/b/a/e/c;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Le/a/b/a/e/a;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/a/e/c;->a:Ljava/util/Set;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b/a/e/b;

    .line 3
    invoke-interface {v1, p1}, Le/a/b/a/e/b;->a(Le/a/b/a/e/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.class public final Le/a/l/p2/e2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/z0;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Ljava/util/Set<",
            "Le/a/l/p2/z0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Ljava/util/Set<",
            "Le/a/l/p2/z0;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "observers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/e2/d;->a:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Le/a/l/p2/y0;)V
    .locals 2

    const-string v0, "update"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/p2/e2/d;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "observers.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l/p2/z0;

    .line 3
    invoke-interface {v1, p1}, Le/a/l/p2/z0;->a(Le/a/l/p2/y0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

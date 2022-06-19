.class public final Le/a/r/c/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/c/u;


# instance fields
.field public final a:Le/a/r/c/l;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/r/c/l;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r/c/l;",
            "Lo3/a<",
            "Le/a/r/h;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "permissionsHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/c/v;->a:Le/a/r/c/l;

    iput-object p2, p0, Le/a/r/c/v;->b:Lo3/a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/c/v;->a:Le/a/r/c/l;

    invoke-virtual {v0}, Le/a/r/c/l;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/r/c/v;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r/h;

    invoke-interface {v0}, Le/a/r/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

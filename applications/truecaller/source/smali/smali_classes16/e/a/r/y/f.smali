.class public final Le/a/r/y/f;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/r/y/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/r/y/k;",
        ">;",
        "Le/a/r/y/j;"
    }
.end annotation


# instance fields
.field public final b:Le/a/r/h;


# direct methods
.method public constructor <init>(Le/a/r/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/r/y/f;->b:Le/a/r/h;

    return-void
.end method


# virtual methods
.method public Cj()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/y/f;->b:Le/a/r/h;

    invoke-interface {v0}, Le/a/r/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/r/y/f;->b:Le/a/r/h;

    invoke-interface {v0}, Le/a/r/h;->c()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/y/k;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/r/y/k;->l4()V

    :cond_1
    :goto_0
    return-void
.end method

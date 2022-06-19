.class public final Le/a/b/b/b/g;
.super Le/a/u2/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/b/b/b/f;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final b:Le/a/b/l/o;


# direct methods
.method public constructor <init>(Le/a/b/l/o;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "openHoursRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/b/b/b/g;->b:Le/a/b/l/o;

    return-void
.end method


# virtual methods
.method public final Hj()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/b/b/g;->b:Le/a/b/l/o;

    invoke-interface {v0}, Le/a/b/l/o;->k3()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/b/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/b/b/b/f;->Yy()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/b/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/b/b/b/f;->Hw()V

    :cond_1
    :goto_0
    return-void
.end method

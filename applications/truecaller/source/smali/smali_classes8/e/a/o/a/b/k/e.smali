.class public final Le/a/o/a/b/k/e;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/o/a/b/k/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/o/a/b/k/d;",
        ">;",
        "Le/a/o/a/b/k/c;"
    }
.end annotation


# instance fields
.field public final b:Le/a/o/b/o;

.field public final c:Le/a/o/f;


# direct methods
.method public constructor <init>(Le/a/o/b/o;Le/a/o/f;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "settings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "support"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/o/a/b/k/e;->b:Le/a/o/b/o;

    iput-object p2, p0, Le/a/o/a/b/k/e;->c:Le/a/o/f;

    return-void
.end method


# virtual methods
.method public F()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/b/k/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/o/a/b/k/d;->t()V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/o/a/b/k/d;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/o/a/b/k/e;->b:Le/a/o/b/o;

    const-string v0, "HiddenContactInfoIsShown"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Le/a/o/b/o;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/b/k/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/o/a/b/k/d;->r()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/o/a/b/k/e;->c:Le/a/o/f;

    check-cast v1, Le/a/o/h;

    invoke-virtual {v1, v0}, Le/a/o/h;->a(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    :cond_0
    return-void
.end method

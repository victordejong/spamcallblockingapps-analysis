.class public final Le/a/f/a/b/b/e;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/f/a/b/b/d;",
        ">;",
        "Le/a/f/a/b/b/e;"
    }
.end annotation


# instance fields
.field public final b:Le/a/f/y/v;


# direct methods
.method public constructor <init>(Le/a/f/y/v;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ongoingCallHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/f/a/b/b/e;->b:Le/a/f/y/v;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/f/a/b/b/d;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/f/a/b/b/e;->b:Le/a/f/y/v;

    invoke-interface {v0}, Le/a/f/y/v;->J1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Le/a/f/a/b/b/d;->o9(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.class public final Le/a/d/y/b/h;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/d/y/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/d/y/b/c;",
        ">;",
        "Le/a/d/y/b/b;"
    }
.end annotation


# instance fields
.field public d:Lq3/a/p1;

.field public e:Lq3/a/p1;

.field public final f:Ls1/w/f;

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Lo3/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Lo3/a<",
            "Le/a/d/f;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voip"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/d/y/b/h;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/d/y/b/h;->g:Lo3/a;

    return-void
.end method

.method public static final Ij(Le/a/d/y/b/h;)V
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p0, Le/a/d/y/b/c;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Le/a/d/y/b/c;->G()V

    :cond_0
    return-void
.end method

.method public static final Jj(Le/a/d/y/b/h;)V
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p0, Le/a/d/y/b/c;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Le/a/d/y/b/c;->q0()V

    :cond_0
    return-void
.end method

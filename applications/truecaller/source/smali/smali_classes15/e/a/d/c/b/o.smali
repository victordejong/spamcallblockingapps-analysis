.class public final Le/a/d/c/b/o;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/d/c/b/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/d/c/b/h;",
        ">;",
        "Le/a/d/c/b/g;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Le/a/d/v/d;

.field public final f:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/d/v/d;Le/a/p5/c0;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupCallManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/d/c/b/o;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/d/c/b/o;->e:Le/a/d/v/d;

    iput-object p3, p0, Le/a/d/c/b/o;->f:Le/a/p5/c0;

    return-void
.end method


# virtual methods
.method public final Ij()Le/a/d/v/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c/b/o;->e:Le/a/d/v/d;

    invoke-interface {v0}, Le/a/d/v/d;->b()Le/a/d/v/b;

    move-result-object v0

    return-object v0
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Le/a/d/c/b/h;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Le/a/d/c/b/h;->Cq()V

    .line 5
    new-instance p1, Le/a/d/c/b/m;

    invoke-direct {p1, p0}, Le/a/d/c/b/m;-><init>(Le/a/d/c/b/o;)V

    .line 6
    new-instance v3, Le/a/d/c/b/n;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/d/c/b/n;-><init>(Le/a/d/c/b/o;Ls1/z/b/l;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

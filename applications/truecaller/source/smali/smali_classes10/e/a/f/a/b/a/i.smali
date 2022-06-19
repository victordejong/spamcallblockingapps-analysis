.class public final Le/a/f/a/b/a/i;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/f/a/b/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/f/a/b/a/g;",
        ">;",
        "Le/a/f/a/b/a/f;"
    }
.end annotation


# instance fields
.field public final d:Le/a/f/y/c;

.field public final e:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/f/y/c;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/f/a/b/a/i;->d:Le/a/f/y/c;

    iput-object p2, p0, Le/a/f/a/b/a/i;->e:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/f/a/b/a/g;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/f/a/b/a/i;->d:Le/a/f/y/c;

    invoke-interface {p1}, Le/a/f/y/c;->E()Lq3/a/w2/h;

    move-result-object p1

    .line 5
    new-instance v0, Le/a/f/a/b/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/f/a/b/a/h;-><init>(Le/a/f/a/b/a/i;Ls1/w/d;)V

    invoke-static {p0, p1, v0}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    return-void
.end method

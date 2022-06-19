.class public final Le/a/f3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f3/c;
.implements Lq3/a/i0;


# instance fields
.field public final a:Ls1/g;

.field public b:Z

.field public final c:Ls1/g;

.field public final d:Ls1/w/f;

.field public final e:Ls1/w/f;

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroid/content/Context;

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/p5/g;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/a/p5/a0;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Lo3/a;Landroid/content/Context;Lo3/a;Le/a/p5/a0;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ls1/w/f;",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;",
            "Landroid/content/Context;",
            "Lo3/a<",
            "Le/a/p5/g;",
            ">;",
            "Le/a/p5/a0;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f3/o;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/f3/o;->e:Ls1/w/f;

    iput-object p3, p0, Le/a/f3/o;->f:Lo3/a;

    iput-object p4, p0, Le/a/f3/o;->g:Landroid/content/Context;

    iput-object p5, p0, Le/a/f3/o;->h:Lo3/a;

    iput-object p6, p0, Le/a/f3/o;->i:Le/a/p5/a0;

    .line 2
    new-instance p1, Le/a/f3/o$a;

    invoke-direct {p1, p0}, Le/a/f3/o$a;-><init>(Le/a/f3/o;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/f3/o;->a:Ls1/g;

    .line 3
    sget-object p1, Le/a/f3/o$b;->b:Le/a/f3/o$b;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/f3/o;->c:Ls1/g;

    return-void
.end method


# virtual methods
.method public final a()Lq3/a/w2/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/w2/j<",
            "Ls1/z/b/l<",
            "Lcom/truecaller/callbubbles/CallBubblesContainerView;",
            "Ls1/s;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Le/a/f3/o;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/a/w2/j;

    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/f3/o;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/w/f;

    return-object v0
.end method

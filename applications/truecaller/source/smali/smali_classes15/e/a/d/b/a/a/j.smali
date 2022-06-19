.class public final Le/a/d/b/a/a/j;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/d/b/a/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/d/b/a/a/i;",
        ">;",
        "Le/a/d/b/a/a/h;"
    }
.end annotation


# instance fields
.field public d:Le/a/d/b/a/d;

.field public final e:Le/a/b0/q/v;

.field public final f:Le/a/d/b/a/a/j$a;

.field public final g:Ls1/w/f;

.field public final h:Le/a/b0/e/f;

.field public final i:Le/a/d/c0/f0;

.field public final j:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/b0/e/f;Le/a/d/c0/f0;Le/a/p5/c0;)V
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

    const-string v0, "regionUtils"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipAnalyticsUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/d/b/a/a/j;->g:Ls1/w/f;

    iput-object p2, p0, Le/a/d/b/a/a/j;->h:Le/a/b0/e/f;

    iput-object p3, p0, Le/a/d/b/a/a/j;->i:Le/a/d/c0/f0;

    iput-object p4, p0, Le/a/d/b/a/a/j;->j:Le/a/p5/c0;

    .line 2
    new-instance p1, Le/a/b0/q/v;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Le/a/b0/q/v;-><init>(Ls1/z/b/a;I)V

    iput-object p1, p0, Le/a/d/b/a/a/j;->e:Le/a/b0/q/v;

    .line 3
    new-instance p1, Le/a/d/b/a/a/j$a;

    invoke-direct {p1, p0}, Le/a/d/b/a/a/j$a;-><init>(Le/a/d/b/a/a/j;)V

    iput-object p1, p0, Le/a/d/b/a/a/j;->f:Le/a/d/b/a/a/j$a;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/d/b/a/a/i;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/d/b/a/a/j;->h:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Le/a/d/c/a/n$c;->a:Le/a/d/c/a/n$c;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Le/a/d/c/a/n$b;->a:Le/a/d/c/a/n$b;

    .line 7
    :goto_0
    invoke-interface {p1, v0}, Le/a/d/b/a/a/i;->f1(Le/a/d/c/a/n;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 8
    new-instance v4, Le/a/d/b/a/a/m;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Le/a/d/b/a/a/m;-><init>(Le/a/d/b/a/a/i;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

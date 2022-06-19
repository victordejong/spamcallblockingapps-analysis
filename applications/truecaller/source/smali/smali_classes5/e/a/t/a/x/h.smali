.class public final Le/a/t/a/x/h;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/t/a/x/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/t/a/x/g;",
        ">;",
        "Le/a/t/a/x/f;"
    }
.end annotation


# instance fields
.field public d:Lq3/a/p1;

.field public e:I

.field public final f:Ls1/w/f;

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/t/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/a/t/a/p;

.field public final i:Le/a/q2/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Lo3/a;Le/a/t/a/p;Le/a/q2/a;)V
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
            "Le/a/t/a/e;",
            ">;",
            "Le/a/t/a/p;",
            "Le/a/q2/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emojiDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recentEmoji"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/t/a/x/h;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/t/a/x/h;->g:Lo3/a;

    iput-object p3, p0, Le/a/t/a/x/h;->h:Le/a/t/a/p;

    iput-object p4, p0, Le/a/t/a/x/h;->i:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public Ij(Ljava/lang/CharSequence;)V
    .locals 10

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/t/a/x/h;->d:Lq3/a/p1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Le/a/t/a/x/h;->h:Le/a/t/a/p;

    invoke-interface {v0}, Le/a/t/a/p;->b()Ljava/util/Collection;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v1, v4

    if-eqz v1, :cond_4

    .line 5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/t/a/x/g;

    if-eqz p1, :cond_2

    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/t/a/x/g;->B1(Ljava/util/List;)V

    .line 6
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/t/a/x/g;

    if-eqz p1, :cond_3

    invoke-interface {p1, v3}, Le/a/t/a/x/g;->A1(Z)V

    :cond_3
    return-void

    :cond_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 7
    new-instance v7, Le/a/t/a/x/h$a;

    invoke-direct {v7, p0, p1, v2}, Le/a/t/a/x/h$a;-><init>(Le/a/t/a/x/h;Ljava/lang/CharSequence;Ls1/w/d;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p0, Le/a/t/a/x/h;->d:Lq3/a/p1;

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/t/a/x/g;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const-string p1, ""

    .line 4
    invoke-virtual {p0, p1}, Le/a/t/a/x/h;->Ij(Ljava/lang/CharSequence;)V

    return-void
.end method

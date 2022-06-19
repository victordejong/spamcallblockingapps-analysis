.class public final Le/a/a/l/c;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/l/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/l/d;",
        ">;",
        "Le/a/a/l/b;"
    }
.end annotation


# instance fields
.field public final d:[Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public final f:Ls1/w/f;

.field public final g:Le/a/a/l/e;

.field public final h:Le/a/a/i0;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/a/l/e;Le/a/a/i0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "phone"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "name"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "analytics_context"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replyManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/a/l/c;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/a/l/c;->g:Le/a/a/l/e;

    iput-object p3, p0, Le/a/a/l/c;->h:Le/a/a/i0;

    iput-object p4, p0, Le/a/a/l/c;->i:Ljava/lang/String;

    iput-object p5, p0, Le/a/a/l/c;->j:Ljava/lang/String;

    iput-object p6, p0, Le/a/a/l/c;->k:Ljava/lang/String;

    .line 2
    invoke-interface {p3}, Le/a/a/i0;->L0()[Ljava/lang/String;

    move-result-object p1

    const-string p2, "settings.replyOptions"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/a/l/c;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public N0()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a/l/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    new-instance v4, Le/a/a/l/c$a;

    const/4 v1, 0x0

    invoke-direct {v4, v0, v1, p0}, Le/a/a/l/c$a;-><init>(Ljava/lang/String;Ls1/w/d;Le/a/a/l/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void
.end method

.method public X1()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/l/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/a/l/c;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Le/a/a/l/d;->Jv(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/l/c;->d:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/l/d;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Le/a/a/l/d;->a9([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public ug(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/a/l/c;->e:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/l/d;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v1

    invoke-interface {v0, p1}, Le/a/a/l/d;->ye(Z)V

    :cond_1
    return-void
.end method

.method public y8(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/l/c;->d:[Ljava/lang/String;

    aget-object p1, v0, p1

    iput-object p1, p0, Le/a/a/l/c;->e:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/l/d;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Le/a/a/l/d;->ye(Z)V

    :cond_0
    return-void
.end method

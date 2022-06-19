.class public final Le/a/b/a/c/a/e0/d;
.super Le/a/b/a/c/a/e0/a;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/c/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/b/a/c/a/e0/a<",
        "Le/a/b/a/c/a/e;",
        ">;",
        "Le/a/b/a/c/a/d;"
    }
.end annotation


# instance fields
.field public h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

.field public final i:Ls1/w/f;

.field public final j:Ls1/w/f;

.field public final k:Le/a/b/a/f/b;

.field public final l:Le/a/p5/c0;

.field public final m:Le/a/b/a/e/b;

.field public final n:Le/a/b/a/c/a/d0/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/b/a/f/b;Le/a/p5/c0;Le/a/b/a/e/b;Le/a/b/a/c/a/d0/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessProfileV2Repository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessAnalyticsManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validateNameUseCase"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Le/a/b/a/c/a/e0/a;-><init>(Ls1/w/f;Ls1/w/f;Le/a/b/a/f/b;Le/a/p5/c0;)V

    iput-object p1, p0, Le/a/b/a/c/a/e0/d;->i:Ls1/w/f;

    iput-object p2, p0, Le/a/b/a/c/a/e0/d;->j:Ls1/w/f;

    iput-object p3, p0, Le/a/b/a/c/a/e0/d;->k:Le/a/b/a/f/b;

    iput-object p4, p0, Le/a/b/a/c/a/e0/d;->l:Le/a/p5/c0;

    iput-object p5, p0, Le/a/b/a/c/a/e0/d;->m:Le/a/b/a/e/b;

    iput-object p6, p0, Le/a/b/a/c/a/e0/d;->n:Le/a/b/a/c/a/d0/a;

    return-void
.end method


# virtual methods
.method public b4(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V
    .locals 1

    const-string v0, "businessProfile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/b/a/c/a/e0/d;->h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    return-void
.end method

.method public qc(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/a/c/a/e0/d;->n:Le/a/b/a/c/a/d0/a;

    invoke-interface {v0, p1}, Le/a/b/a/c/a/d0/a;->a(Ljava/lang/String;)Le/a/b/a/i/a;

    move-result-object v0

    .line 2
    instance-of v1, v0, Le/a/b/a/i/a$b;

    if-eqz v1, :cond_3

    .line 3
    iget-object v0, p0, Le/a/b/a/c/a/e0/d;->h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->setName(Ljava/lang/String;)V

    iput-object v0, p0, Le/a/b/a/c/a/e0/d;->h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/a/c/a/e;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Le/a/b/a/c/a/e;->fj(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/b/a/c/a/e0/d;->m:Le/a/b/a/e/b;

    sget-object v0, Le/a/b/a/e/a$a;->a:Le/a/b/a/e/a$a;

    invoke-interface {p1, v0}, Le/a/b/a/e/b;->a(Le/a/b/a/e/a;)V

    goto :goto_0

    :cond_2
    const-string p1, "businessProfile"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_3
    instance-of p1, v0, Le/a/b/a/i/a$a;

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/a/c/a/e;

    if-eqz p1, :cond_4

    iget-object v1, p0, Le/a/b/a/c/a/e0/d;->l:Le/a/p5/c0;

    .line 9
    iget v0, v0, Le/a/b/a/i/a;->a:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    invoke-interface {v1, v0, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026(result.errorStringResId)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/b/a/c/a/r;->M(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

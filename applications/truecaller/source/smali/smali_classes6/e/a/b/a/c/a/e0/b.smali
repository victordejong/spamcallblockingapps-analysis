.class public final Le/a/b/a/c/a/e0/b;
.super Le/a/b/a/c/a/e0/a;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/c/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/b/a/c/a/e0/a<",
        "Le/a/b/a/c/a/c;",
        ">;",
        "Le/a/b/a/c/a/b;"
    }
.end annotation


# instance fields
.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/b0/p/c;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

.field public final j:Ls1/w/f;

.field public final k:Ls1/w/f;

.field public final l:Le/a/b/a/f/b;

.field public final m:Le/a/p5/c0;

.field public final n:Le/a/b/a/e/b;

.field public final o:Le/a/b0/p/d;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/b/a/f/b;Le/a/p5/c0;Le/a/b/a/e/b;Le/a/b0/p/d;)V
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
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessProfileV2Repository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessAnalyticsManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2, p1, p3, p4}, Le/a/b/a/c/a/e0/a;-><init>(Ls1/w/f;Ls1/w/f;Le/a/b/a/f/b;Le/a/p5/c0;)V

    iput-object p1, p0, Le/a/b/a/c/a/e0/b;->j:Ls1/w/f;

    iput-object p2, p0, Le/a/b/a/c/a/e0/b;->k:Ls1/w/f;

    iput-object p3, p0, Le/a/b/a/c/a/e0/b;->l:Le/a/b/a/f/b;

    iput-object p4, p0, Le/a/b/a/c/a/e0/b;->m:Le/a/p5/c0;

    iput-object p5, p0, Le/a/b/a/c/a/e0/b;->n:Le/a/b/a/e/b;

    iput-object p6, p0, Le/a/b/a/c/a/e0/b;->o:Le/a/b0/p/d;

    return-void
.end method


# virtual methods
.method public Dj(Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2
    iget-object v3, p0, Le/a/b/a/c/a/e0/b;->j:Ls1/w/f;

    const/4 v4, 0x0

    new-instance v5, Le/a/b/a/c/a/e0/b$a;

    invoke-direct {v5, p0, p1, v1}, Le/a/b/a/c/a/e0/b$a;-><init>(Le/a/b/a/c/a/e0/b;Ljava/lang/String;Ls1/w/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_2

    .line 3
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/a/c/a/c;

    if-eqz p1, :cond_4

    iget-object v0, p0, Le/a/b/a/c/a/e0/b;->h:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Le/a/b/a/c/a/c;->u7(Ljava/util/List;)V

    goto :goto_2

    :cond_3
    const-string p1, "tags"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_2
    return-void
.end method

.method public Ub(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/a/c/a/e0/b;->n:Le/a/b/a/e/b;

    new-instance v1, Le/a/b/a/e/a$b;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Le/a/b/a/e/a$b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/b/a/e/b;->a(Le/a/b/a/e/a;)V

    .line 2
    iget-object v0, p0, Le/a/b/a/c/a/e0/b;->i:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    const/4 v1, 0x0

    const-string v2, "businessProfile"

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->setTags(Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/a/c/a/c;

    if-eqz p1, :cond_1

    iget-object p2, p0, Le/a/b/a/c/a/e0/b;->i:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Le/a/b/a/c/a/c;->nz(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    .line 4
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public b4(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V
    .locals 7

    const-string v0, "businessProfile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/b/a/c/a/e0/b;->i:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    .line 2
    iget-object v2, p0, Le/a/b/a/c/a/e0/b;->j:Ls1/w/f;

    new-instance v4, Le/a/b/a/c/a/e0/c;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Le/a/b/a/c/a/e0/c;-><init>(Le/a/b/a/c/a/e0/b;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public bb(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tags"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/a/c/a/e0/b;->i:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    const/4 v1, 0x0

    const-string v2, "businessProfile"

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->setTags(Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Le/a/b/a/c/a/e0/b;->i:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Le/a/b/a/c/a/e0/a;->A(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

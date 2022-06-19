.class public final Le/a/b/a/c/a/e0/l;
.super Le/a/b/a/c/a/e0/a;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/c/a/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/b/a/c/a/e0/a<",
        "Le/a/b/a/c/a/z;",
        ">;",
        "Le/a/b/a/c/a/y;"
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

.field public i:J

.field public j:Ljava/lang/Long;

.field public k:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

.field public final l:Ls1/w/f;

.field public final m:Ls1/w/f;

.field public final n:Le/a/b/a/f/b;

.field public final o:Le/a/p5/c0;

.field public final p:Le/a/b0/p/d;

.field public final q:Le/a/g5/p;

.field public final r:Le/a/b/a/e/b;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/b/a/f/b;Le/a/p5/c0;Le/a/b0/p/d;Le/a/g5/p;Le/a/b/a/e/b;)V
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

    const-string v0, "tagManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagDisplayUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessAnalyticsManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Le/a/b/a/c/a/e0/a;-><init>(Ls1/w/f;Ls1/w/f;Le/a/b/a/f/b;Le/a/p5/c0;)V

    iput-object p1, p0, Le/a/b/a/c/a/e0/l;->l:Ls1/w/f;

    iput-object p2, p0, Le/a/b/a/c/a/e0/l;->m:Ls1/w/f;

    iput-object p3, p0, Le/a/b/a/c/a/e0/l;->n:Le/a/b/a/f/b;

    iput-object p4, p0, Le/a/b/a/c/a/e0/l;->o:Le/a/p5/c0;

    iput-object p5, p0, Le/a/b/a/c/a/e0/l;->p:Le/a/b0/p/d;

    iput-object p6, p0, Le/a/b/a/c/a/e0/l;->q:Le/a/g5/p;

    iput-object p7, p0, Le/a/b/a/c/a/e0/l;->r:Le/a/b/a/e/b;

    return-void
.end method


# virtual methods
.method public H(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/a/c/a/e0/l;->o:Le/a/p5/c0;

    invoke-interface {v0, p1}, Le/a/p5/c0;->H(I)I

    move-result p1

    return p1
.end method

.method public b4(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V
    .locals 9

    const-string v0, "businessProfile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/b/a/c/a/e0/l;->k:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getTags()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Le/a/b/a/c/a/e0/l;->q:Le/a/g5/p;

    invoke-interface {p1, v0, v1}, Le/a/g5/p;->c(J)Le/a/b0/p/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/b/a/c/a/z;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Le/a/b/a/c/a/z;->t3(Le/a/b0/p/c;)V

    .line 5
    :cond_0
    iput-wide v0, p0, Le/a/b/a/c/a/e0/l;->i:J

    .line 6
    iget-object v4, p0, Le/a/b/a/c/a/e0/l;->m:Ls1/w/f;

    new-instance v6, Le/a/b/a/c/a/e0/k;

    const/4 p1, 0x0

    invoke-direct {v6, p0, v0, v1, p1}, Le/a/b/a/c/a/e0/k;-><init>(Le/a/b/a/c/a/e0/l;JLs1/w/d;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_1
    return-void
.end method

.method public bd()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Long;

    .line 1
    iget-wide v2, p0, Le/a/b/a/c/a/e0/l;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2
    iget-object v2, p0, Le/a/b/a/c/a/e0/l;->j:Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v2, p0, Le/a/b/a/c/a/e0/l;->j:Ljava/lang/Long;

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/b/a/c/a/e0/l;->k:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    const/4 v2, 0x0

    const-string v3, "businessProfile"

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->setTags(Ljava/util/List;)V

    .line 9
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/a/c/a/z;

    if-eqz v0, :cond_3

    iget-object v1, p0, Le/a/b/a/c/a/e0/l;->k:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Le/a/b/a/c/a/z;->cx(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_0
    return-void

    .line 10
    :cond_4
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public y1(J)Le/a/b0/p/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/a/c/a/e0/l;->q:Le/a/g5/p;

    invoke-interface {v0, p1, p2}, Le/a/g5/p;->c(J)Le/a/b0/p/c;

    move-result-object p1

    return-object p1
.end method

.method public yf(Ljava/lang/Long;)V
    .locals 2

    .line 1
    iput-object p1, p0, Le/a/b/a/c/a/e0/l;->j:Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    iget-object v0, p0, Le/a/b/a/c/a/e0/l;->r:Le/a/b/a/e/b;

    new-instance v1, Le/a/b/a/e/a$c;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Le/a/b/a/e/a$c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/b/a/e/b;->a(Le/a/b/a/e/a;)V

    :cond_0
    return-void
.end method

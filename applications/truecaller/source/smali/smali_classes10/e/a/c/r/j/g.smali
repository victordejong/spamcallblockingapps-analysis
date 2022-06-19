.class public final Le/a/c/r/j/g;
.super Le/a/c/r/j/c;
.source "SourceFile"


# instance fields
.field public final h:Ls1/w/f;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Z

.field public final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "origin"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domain"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderId"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le/a/c/r/j/c;-><init>(JLcom/truecaller/insights/models/DomainOrigin;)V

    iput-object p4, p0, Le/a/c/r/j/g;->i:Ljava/lang/String;

    iput-object p5, p0, Le/a/c/r/j/g;->j:Ljava/lang/String;

    iput-boolean p6, p0, Le/a/c/r/j/g;->k:Z

    iput-object p7, p0, Le/a/c/r/j/g;->l:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Le/a/c/r/j/c;->c:Ls1/w/f;

    .line 3
    iput-object p1, p0, Le/a/c/r/j/g;->h:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/r/j/c;->b:Le/a/c/a0/e;

    .line 2
    new-instance v13, Le/a/c/r/j/b;

    .line 3
    iget-wide v4, p0, Le/a/c/r/j/c;->f:J

    .line 4
    iget-object v6, p0, Le/a/c/r/j/g;->i:Ljava/lang/String;

    .line 5
    iget-object v10, p0, Le/a/c/r/j/c;->g:Lcom/truecaller/insights/models/DomainOrigin;

    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xb1

    move-object v1, v13

    .line 6
    invoke-direct/range {v1 .. v12}, Le/a/c/r/j/b;-><init>(JJLjava/lang/String;ILjava/util/Date;Ljava/util/Date;Lcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;I)V

    .line 7
    check-cast v0, Le/a/c/a0/f;

    .line 8
    iget-object v0, v0, Le/a/c/a0/f;->a:Le/a/c/c/d/g;

    invoke-static {v13}, Le/a/c/p/a;->N2(Le/a/c/r/j/b;)Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Le/a/c/c/d/g;->g(Lcom/truecaller/insights/models/smartcards/ActionStateEntity;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    .line 10
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public b()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/j/g;->h:Ls1/w/f;

    return-object v0
.end method

.method public e()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/c/r/j/c;->e:Le/a/c/e/c;

    const/16 v2, 0x7f

    const/16 v3, 0x7f

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const-string v5, ""

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    move-object v3, v5

    goto :goto_0

    :cond_0
    move-object v3, v6

    :goto_0
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_1

    move-object v7, v5

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_1
    and-int/lit8 v8, v2, 0x4

    if-eqz v8, :cond_2

    move-object v8, v5

    goto :goto_2

    :cond_2
    move-object v8, v6

    :goto_2
    and-int/lit8 v9, v2, 0x8

    if-eqz v9, :cond_3

    move-object v9, v5

    goto :goto_3

    :cond_3
    move-object v9, v6

    :goto_3
    and-int/lit8 v10, v2, 0x10

    if-eqz v10, :cond_4

    move-object v10, v5

    goto :goto_4

    :cond_4
    move-object v10, v6

    :goto_4
    and-int/lit8 v11, v2, 0x20

    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    move-object v5, v6

    :goto_5
    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    .line 2
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_6
    const-string v2, "feature"

    .line 3
    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "eventCategory"

    invoke-static {v7, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "eventInfo"

    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v9, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "actionType"

    invoke-static {v10, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "actionInfo"

    invoke-static {v5, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "propertyMap"

    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "upcoming_smart_card"

    const-string v2, "<set-?>"

    .line 4
    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v9, v0, Le/a/c/r/j/g;->i:Ljava/lang/String;

    .line 6
    invoke-static {v9, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v3, v0, Le/a/c/r/j/g;->j:Ljava/lang/String;

    iget-boolean v5, v0, Le/a/c/r/j/g;->k:Z

    invoke-static {v3, v5}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 8
    invoke-static {v10, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "click"

    .line 9
    invoke-static {v12, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "dismiss"

    .line 10
    invoke-static {v13, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v11, v0, Le/a/c/r/j/g;->l:Ljava/lang/String;

    .line 12
    invoke-static {v11, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_7

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_8

    .line 14
    new-instance v2, Le/a/c/r/d/b;

    .line 15
    new-instance v3, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1c0

    const/16 v19, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v19}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 16
    invoke-static {v6}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 17
    invoke-direct {v2, v3, v4}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 18
    invoke-interface {v1, v2}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    return-void

    .line 19
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

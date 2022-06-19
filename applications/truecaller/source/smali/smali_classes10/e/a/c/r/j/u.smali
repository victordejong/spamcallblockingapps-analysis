.class public final Le/a/c/r/j/u;
.super Le/a/c/r/j/c;
.source "SourceFile"


# instance fields
.field public final h:Ls1/w/f;

.field public final i:Ljava/lang/String;

.field public final j:Z

.field public final k:Le/a/c/j/f;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;ZLe/a/c/j/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "origin"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderId"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deepLink"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billType"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le/a/c/r/j/c;-><init>(JLcom/truecaller/insights/models/DomainOrigin;)V

    iput-object p4, p0, Le/a/c/r/j/u;->i:Ljava/lang/String;

    iput-boolean p5, p0, Le/a/c/r/j/u;->j:Z

    iput-object p6, p0, Le/a/c/r/j/u;->k:Le/a/c/j/f;

    iput-object p7, p0, Le/a/c/r/j/u;->l:Ljava/lang/String;

    iput-object p8, p0, Le/a/c/r/j/u;->m:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Le/a/c/r/j/c;->c:Ls1/w/f;

    .line 3
    iput-object p1, p0, Le/a/c/r/j/u;->h:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 0
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
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public b()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/j/u;->h:Ls1/w/f;

    return-object v0
.end method

.method public e()V
    .locals 22

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
    const/16 v7, 0x7f

    const/4 v8, 0x2

    and-int/2addr v7, v8

    if-eqz v7, :cond_1

    move-object v7, v5

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_1
    and-int/lit8 v9, v2, 0x4

    if-eqz v9, :cond_2

    move-object v9, v5

    goto :goto_2

    :cond_2
    move-object v9, v6

    :goto_2
    and-int/lit8 v10, v2, 0x8

    if-eqz v10, :cond_3

    move-object v10, v5

    goto :goto_3

    :cond_3
    move-object v10, v6

    :goto_3
    and-int/lit8 v11, v2, 0x10

    if-eqz v11, :cond_4

    move-object v11, v5

    goto :goto_4

    :cond_4
    move-object v11, v6

    :goto_4
    and-int/lit8 v12, v2, 0x20

    if-eqz v12, :cond_5

    goto :goto_5

    :cond_5
    move-object v5, v6

    :goto_5
    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    .line 2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_6

    :cond_6
    move-object v2, v6

    :goto_6
    const-string v12, "feature"

    .line 3
    invoke-static {v3, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventCategory"

    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventInfo"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v10, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionType"

    invoke-static {v11, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionInfo"

    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "propertyMap"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "upcoming_smart_card"

    const-string v3, "<set-?>"

    .line 4
    invoke-static {v10, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v5, v0, Le/a/c/r/j/u;->l:Ljava/lang/String;

    invoke-static {v5, v6, v8}, Le/a/m0/a1$k;->y(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 6
    invoke-static {v11, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v5, v0, Le/a/c/r/j/u;->i:Ljava/lang/String;

    iget-boolean v6, v0, Le/a/c/r/j/u;->j:Z

    invoke-static {v5, v6}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 8
    invoke-static {v12, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "click"

    .line 9
    invoke-static {v14, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v5, v0, Le/a/c/r/j/u;->l:Ljava/lang/String;

    const-string v6, "PrepaidExpiry"

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "recharge"

    goto :goto_7

    :cond_7
    const-string v5, "pay_bill"

    :goto_7
    move-object v15, v5

    .line 11
    invoke-static {v15, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v13, v0, Le/a/c/r/j/u;->m:Ljava/lang/String;

    .line 13
    invoke-static {v13, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_8

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_9

    .line 15
    new-instance v3, Le/a/c/r/d/b;

    .line 16
    new-instance v4, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1c0

    const/16 v21, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v21}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 17
    invoke-static {v2}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 18
    invoke-direct {v3, v4, v2}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 19
    invoke-interface {v1, v3}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    return-void

    .line 20
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

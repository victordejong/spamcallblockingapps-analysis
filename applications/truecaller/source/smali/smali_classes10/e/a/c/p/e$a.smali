.class public final Le/a/c/p/e$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/p/e;->a(Le/a/c/i/g/c;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/c/y/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/insights/models/InsightsDomain;

.field public final synthetic c:Le/a/c/p/e;

.field public final synthetic d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/models/InsightsDomain;Le/a/c/p/e;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Le/a/c/p/e$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    iput-object p2, p0, Le/a/c/p/e$a;->c:Le/a/c/p/e;

    iput-object p3, p0, Le/a/c/p/e$a;->d:Ljava/util/Map;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Le/a/c/p/e$a;->c:Le/a/c/p/e;

    .line 2
    iget-object v0, v0, Le/a/c/p/e;->b:Le/a/c/y/n/d;

    .line 3
    iget-object v1, p0, Le/a/c/p/e$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    invoke-virtual {v0, v1}, Le/a/c/y/n/d;->a(Lcom/truecaller/insights/models/InsightsDomain;)Le/a/c/y/l;

    move-result-object v7

    const/4 v0, 0x0

    if-eqz v7, :cond_9

    .line 4
    iget-object v1, p0, Le/a/c/p/e$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    const-string v2, "domain"

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    instance-of v2, v1, Lcom/truecaller/insights/models/InsightsDomain$a;

    if-eqz v2, :cond_0

    sget-object v1, Le/a/c/r/j/p$a;->b:Le/a/c/r/j/p$a;

    goto :goto_0

    .line 7
    :cond_0
    instance-of v2, v1, Lcom/truecaller/insights/models/InsightsDomain$f;

    if-eqz v2, :cond_1

    new-instance v1, Le/a/c/r/j/p$h;

    const-string v2, "Travel"

    .line 8
    invoke-direct {v1, v2}, Le/a/c/r/j/p$h;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    instance-of v2, v1, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    if-eqz v2, :cond_2

    sget-object v1, Le/a/c/r/j/p$b;->b:Le/a/c/r/j/p$b;

    goto :goto_0

    .line 10
    :cond_2
    instance-of v2, v1, Lcom/truecaller/insights/models/InsightsDomain$e;

    if-eqz v2, :cond_3

    sget-object v1, Le/a/c/r/j/p$g;->b:Le/a/c/r/j/p$g;

    goto :goto_0

    .line 11
    :cond_3
    instance-of v2, v1, Lcom/truecaller/insights/models/InsightsDomain$c;

    if-eqz v2, :cond_4

    sget-object v1, Le/a/c/r/j/p$e;->b:Le/a/c/r/j/p$e;

    goto :goto_0

    .line 12
    :cond_4
    instance-of v2, v1, Lcom/truecaller/insights/models/InsightsDomain$b;

    if-eqz v2, :cond_5

    sget-object v1, Le/a/c/r/j/p$d;->b:Le/a/c/r/j/p$d;

    :goto_0
    move-object v12, v1

    goto :goto_2

    .line 13
    :cond_5
    instance-of v2, v1, Lcom/truecaller/insights/models/InsightsDomain$g;

    if-eqz v2, :cond_7

    new-instance v2, Le/a/c/r/j/p$i;

    check-cast v1, Lcom/truecaller/insights/models/InsightsDomain$g;

    .line 14
    iget-object v3, v1, Lcom/truecaller/insights/models/InsightsDomain$g;->a:Lcom/truecaller/insights/models/updates/UpdateCategory;

    if-eqz v3, :cond_6

    .line 15
    invoke-virtual {v3}, Lcom/truecaller/insights/models/updates/UpdateCategory;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    const-string v3, ""

    .line 16
    :goto_1
    iget-object v1, v1, Lcom/truecaller/insights/models/InsightsDomain$g;->l:Lcom/truecaller/insights/models/pdo/ClassifierType;

    .line 17
    invoke-direct {v2, v3, v1}, Le/a/c/r/j/p$i;-><init>(Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;)V

    move-object v12, v2

    goto :goto_2

    :cond_7
    move-object v12, v0

    :goto_2
    if-eqz v12, :cond_9

    .line 18
    new-instance v0, Le/a/c/y/f;

    .line 19
    iget-object v1, p0, Le/a/c/p/e$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain;->getConversationId()J

    move-result-wide v5

    .line 20
    iget-object v1, p0, Le/a/c/p/e$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgId()J

    move-result-wide v3

    .line 21
    iget-object v1, p0, Le/a/c/p/e$a;->d:Ljava/util/Map;

    iget-object v2, p0, Le/a/c/p/e$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Le/a/c/i/e/b;

    .line 22
    iget-object v1, p0, Le/a/c/p/e$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgDateTime()Lw3/b/a/b;

    move-result-object v11

    .line 23
    iget-object v1, p0, Le/a/c/p/e$a;->c:Le/a/c/p/e;

    iget-object v2, p0, Le/a/c/p/e$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain;->isSenderVerifiedForSmartFeatures()Z

    move-result v2

    .line 24
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_8

    .line 25
    sget-object v1, Le/a/c/r/j/h$c;->d:Le/a/c/r/j/h$c;

    goto :goto_3

    .line 26
    :cond_8
    sget-object v1, Le/a/c/r/j/h$e;->d:Le/a/c/r/j/h$e;

    :goto_3
    move-object v9, v1

    .line 27
    instance-of v1, v12, Le/a/c/r/j/p$i;

    xor-int/lit8 v8, v1, 0x1

    .line 28
    sget-object v13, Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;->NOT_GIVEN:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Le/a/c/y/f;-><init>(JJLe/a/c/y/l;ZLe/a/c/r/j/h;Le/a/c/i/e/b;Lw3/b/a/b;Le/a/c/r/j/p;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;)V

    :cond_9
    return-object v0
.end method

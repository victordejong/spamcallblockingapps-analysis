.class public final Le/a/c/w/n$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/w/n$a;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Lcom/truecaller/insights/models/InsightsDomain$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/c/w/n;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/c/w/n;)V
    .locals 0

    iput-object p1, p0, Le/a/c/w/n$a$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/c/w/n$a$a;->b:Le/a/c/w/n;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Le/a/c/w/n$a$a$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/w/n$a$a$a;

    iget v3, v2, Le/a/c/w/n$a$a$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/w/n$a$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/w/n$a$a$a;

    invoke-direct {v2, v0, v1}, Le/a/c/w/n$a$a$a;-><init>(Le/a/c/w/n$a$a;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/c/w/n$a$a$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/c/w/n$a$a$a;->e:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/c/w/n$a$a;->a:Lq3/a/x2/g;

    .line 5
    move-object/from16 v4, p1

    check-cast v4, Lcom/truecaller/insights/models/InsightsDomain$e;

    if-eqz v4, :cond_4

    .line 6
    iget-object v6, v0, Le/a/c/w/n$a$a;->b:Le/a/c/w/n;

    .line 7
    iget-object v7, v4, Lcom/truecaller/insights/models/InsightsDomain$e;->h:Le/a/c/r/j/b;

    const/4 v8, 0x0

    .line 8
    invoke-virtual {v6, v4, v7, v8}, Le/a/c/w/n;->d(Lcom/truecaller/insights/models/InsightsDomain;Le/a/c/r/j/b;Z)Ljava/util/List;

    move-result-object v6

    const-string v7, "$this$toOtpData"

    .line 9
    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "actions"

    invoke-static {v6, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v7, Le/a/c/q/g;

    .line 11
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$e;->getMsgId()J

    move-result-wide v13

    .line 12
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$e;->getConversationId()J

    move-result-wide v10

    .line 13
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$e;->c()Ljava/lang/String;

    move-result-object v15

    .line 14
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$e;->getSender()Ljava/lang/String;

    move-result-object v12

    const-string v8, "$this$getExpiryTime"

    .line 15
    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {v4}, Le/a/m0/a1$k;->x0(Lcom/truecaller/insights/models/InsightsDomain$e;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$e;->getMsgDateTime()Lw3/b/a/b;

    move-result-object v4

    .line 17
    iget-wide v8, v4, Lw3/b/a/e0/e;->a:J

    .line 18
    sget-object v4, Le/a/c/f/k/d;->c:Le/a/c/f/k/d;

    .line 19
    sget-wide v16, Le/a/c/f/k/d;->a:J

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$e;->getMsgDateTime()Lw3/b/a/b;

    move-result-object v4

    .line 21
    iget-wide v8, v4, Lw3/b/a/e0/e;->a:J

    .line 22
    sget-object v4, Le/a/c/f/k/d;->c:Le/a/c/f/k/d;

    .line 23
    sget-wide v16, Le/a/c/f/k/d;->b:J

    :goto_1
    add-long v16, v8, v16

    move-object v9, v7

    move-object/from16 v18, v6

    .line 24
    invoke-direct/range {v9 .. v18}, Le/a/c/q/g;-><init>(JLjava/lang/String;JLjava/lang/String;JLjava/util/List;)V

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    .line 25
    :goto_2
    iput v5, v2, Le/a/c/w/n$a$a$a;->e:I

    invoke-interface {v1, v7, v2}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    :goto_3
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method

.class public final Le/a/c/b0/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/b0/e$a;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/util/Map<",
        "Ljava/lang/Long;",
        "+",
        "Le/a/c/i/e/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/c/b0/e;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/c/b0/e;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/c/b0/e$a$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/c/b0/e$a$a;->b:Le/a/c/b0/e;

    iput-object p3, p0, Le/a/c/b0/e$a$a;->c:Ljava/util/List;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Le/a/c/b0/e$a$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/b0/e$a$a$a;

    iget v1, v0, Le/a/c/b0/e$a$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/b0/e$a$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/b0/e$a$a$a;

    invoke-direct {v0, p0, p2}, Le/a/c/b0/e$a$a$a;-><init>(Le/a/c/b0/e$a$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/b0/e$a$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/b0/e$a$a$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/c/b0/e$a$a$a;->l:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/insights/models/pdo/SmsBackup;

    iget-object v2, v0, Le/a/c/b0/e$a$a$a;->k:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v6, v0, Le/a/c/b0/e$a$a$a;->j:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v0, Le/a/c/b0/e$a$a$a;->i:Ljava/lang/Object;

    check-cast v7, Ljava/util/Map;

    iget-object v8, v0, Le/a/c/b0/e$a$a$a;->h:Ljava/lang/Object;

    check-cast v8, Lq3/a/x2/g;

    iget-object v9, v0, Le/a/c/b0/e$a$a$a;->f:Ljava/lang/Object;

    check-cast v9, Le/a/c/b0/e$a$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/c/b0/e$a$a;->a:Lq3/a/x2/g;

    .line 5
    check-cast p1, Ljava/util/Map;

    .line 6
    iget-object v2, p0, Le/a/c/b0/e$a$a;->c:Ljava/util/List;

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v9, p0

    move-object v7, p1

    move-object v8, p2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Lcom/truecaller/insights/models/pdo/SmsBackup;

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getMessageID()J

    move-result-wide v10

    .line 11
    new-instance p2, Ljava/lang/Long;

    invoke-direct {p2, v10, v11}, Ljava/lang/Long;-><init>(J)V

    .line 12
    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/c/i/e/b;

    if-eqz p2, :cond_5

    .line 13
    iget-object p2, p2, Le/a/c/i/e/b;->f:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object p2, v5

    .line 14
    :goto_2
    sget-object v10, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->UPDATES_NEGATIVE_FEEDBACK:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    invoke-virtual {v10}, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {p2, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v4

    if-eqz p2, :cond_7

    iget-object p2, v9, Le/a/c/b0/e$a$a;->b:Le/a/c/b0/e;

    iget-object p2, p2, Le/a/c/b0/e;->f:Le/a/c/b0/f;

    iput-object v9, v0, Le/a/c/b0/e$a$a$a;->f:Ljava/lang/Object;

    iput-object v8, v0, Le/a/c/b0/e$a$a$a;->h:Ljava/lang/Object;

    iput-object v7, v0, Le/a/c/b0/e$a$a$a;->i:Ljava/lang/Object;

    iput-object v6, v0, Le/a/c/b0/e$a$a$a;->j:Ljava/lang/Object;

    iput-object v2, v0, Le/a/c/b0/e$a$a$a;->k:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/b0/e$a$a$a;->l:Ljava/lang/Object;

    iput v4, v0, Le/a/c/b0/e$a$a$a;->e:I

    invoke-virtual {p2, p1, v0}, Le/a/c/b0/f;->h(Lcom/truecaller/insights/models/pdo/SmsBackup;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 15
    iget-object p2, v9, Le/a/c/b0/e$a$a;->b:Le/a/c/b0/e;

    iget-object p2, p2, Le/a/c/b0/e;->f:Le/a/c/b0/f;

    .line 16
    invoke-virtual {p2, p1}, Le/a/c/b0/f;->l(Lcom/truecaller/insights/models/pdo/SmsBackup;)Le/a/c/q/k;

    move-result-object p1

    goto :goto_4

    :cond_7
    move-object p1, v5

    :goto_4
    if-eqz p1, :cond_4

    .line 17
    invoke-interface {v6, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_8
    check-cast v6, Ljava/util/List;

    .line 19
    iput-object v5, v0, Le/a/c/b0/e$a$a$a;->f:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/b0/e$a$a$a;->h:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/b0/e$a$a$a;->i:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/b0/e$a$a$a;->j:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/b0/e$a$a$a;->k:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/b0/e$a$a$a;->l:Ljava/lang/Object;

    iput v3, v0, Le/a/c/b0/e$a$a$a;->e:I

    invoke-interface {v8, v6, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    :goto_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

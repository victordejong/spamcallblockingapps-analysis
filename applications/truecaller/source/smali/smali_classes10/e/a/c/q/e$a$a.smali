.class public final Le/a/c/q/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/q/e$a;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/models/InsightsDomain$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/c/q/e;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/c/q/e;)V
    .locals 0

    iput-object p1, p0, Le/a/c/q/e$a$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/c/q/e$a$a;->b:Le/a/c/q/e;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Le/a/c/q/e$a$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/q/e$a$a$a;

    iget v1, v0, Le/a/c/q/e$a$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/q/e$a$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/q/e$a$a$a;

    invoke-direct {v0, p0, p2}, Le/a/c/q/e$a$a$a;-><init>(Le/a/c/q/e$a$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/q/e$a$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/q/e$a$a$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/c/q/e$a$a;->a:Lq3/a/x2/g;

    .line 5
    check-cast p1, Ljava/util/List;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 8
    check-cast v4, Lcom/truecaller/insights/models/InsightsDomain$a;

    .line 9
    iget-object v5, p0, Le/a/c/q/e$a$a;->b:Le/a/c/q/e;

    .line 10
    iget-object v5, v5, Le/a/c/q/e;->d:Le/a/c/f/h;

    const/16 v6, 0x8

    new-array v6, v6, [Lcom/truecaller/insights/binders/utils/BankUiProperties;

    .line 11
    sget-object v7, Lcom/truecaller/insights/binders/utils/BankUiProperties;->UI_TRX_DETAIL:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 12
    sget-object v7, Lcom/truecaller/insights/binders/utils/BankUiProperties;->ICON_TRX_TYPE:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    aput-object v7, v6, v3

    .line 13
    sget-object v7, Lcom/truecaller/insights/binders/utils/BankUiProperties;->ACC_NUM:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 14
    sget-object v7, Lcom/truecaller/insights/binders/utils/BankUiProperties;->UI_TIME:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    const/4 v8, 0x3

    aput-object v7, v6, v8

    .line 15
    sget-object v7, Lcom/truecaller/insights/binders/utils/BankUiProperties;->UI_DATE:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    const/4 v8, 0x4

    aput-object v7, v6, v8

    .line 16
    sget-object v7, Lcom/truecaller/insights/binders/utils/BankUiProperties;->TRX_AMT:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    const/4 v8, 0x5

    aput-object v7, v6, v8

    .line 17
    sget-object v7, Lcom/truecaller/insights/binders/utils/BankUiProperties;->UI_DAY:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    const/4 v8, 0x6

    aput-object v7, v6, v8

    .line 18
    sget-object v7, Lcom/truecaller/insights/binders/utils/BankUiProperties;->TRX_CURRENCY:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    const/4 v8, 0x7

    aput-object v7, v6, v8

    .line 19
    invoke-static {v4, v5, v6}, Le/a/c/p/a;->Y2(Lcom/truecaller/insights/models/InsightsDomain$a;Le/a/c/f/h;[Lcom/truecaller/insights/binders/utils/BankUiProperties;)Le/a/c/q/c;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 20
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_4
    iput v3, v0, Le/a/c/q/e$a$a$a;->e:I

    invoke-interface {p2, v2, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

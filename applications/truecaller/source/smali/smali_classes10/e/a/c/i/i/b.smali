.class public final Le/a/c/i/i/b;
.super Le/a/c/i/b/e;
.source "SourceFile"

# interfaces
.implements Le/a/c/i/i/a;


# instance fields
.field public final e:Le/a/c/b/j;

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/q/f/a/f/e;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/c/h/b;

.field public final h:Landroid/content/Context;

.field public final i:Ls1/w/f;

.field public final j:Le/a/c/r/h/b;

.field public final k:Le/a/c/w/o0/g;


# direct methods
.method public constructor <init>(Le/a/c/b/j;Lo3/a;Le/a/c/h/b;Landroid/content/Context;Ls1/w/f;Le/a/c/r/h/b;Le/a/c/w/o0/g;)V
    .locals 1
    .param p5    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "CPU"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/b/j;",
            "Lo3/a<",
            "Le/q/f/a/f/e;",
            ">;",
            "Le/a/c/h/b;",
            "Landroid/content/Context;",
            "Ls1/w/f;",
            "Le/a/c/r/h/b;",
            "Le/a/c/w/o0/g;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsStatusProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "malanaSeed"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactSearcher"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsBinder"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p5}, Le/a/c/i/b/e;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/c/i/i/b;->e:Le/a/c/b/j;

    iput-object p2, p0, Le/a/c/i/i/b;->f:Lo3/a;

    iput-object p3, p0, Le/a/c/i/i/b;->g:Le/a/c/h/b;

    iput-object p4, p0, Le/a/c/i/i/b;->h:Landroid/content/Context;

    iput-object p5, p0, Le/a/c/i/i/b;->i:Ls1/w/f;

    iput-object p6, p0, Le/a/c/i/i/b;->j:Le/a/c/r/h/b;

    iput-object p7, p0, Le/a/c/i/i/b;->k:Le/a/c/w/o0/g;

    return-void
.end method


# virtual methods
.method public B(Ls1/w/d;)Ljava/lang/Object;
    .locals 2
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
    iget-object p1, p0, Le/a/c/i/i/b;->f:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/q/f/a/f/e;

    new-instance v0, Le/a/c/i/i/b$a;

    invoke-direct {v0}, Le/a/c/i/i/b$a;-><init>()V

    .line 2
    sget-object v1, Le/q/f/a/g/e;->a:Le/q/f/a/g/f;

    if-eqz v1, :cond_0

    .line 3
    sput-object v0, Le/q/f/a/g/e;->a:Le/q/f/a/g/f;

    .line 4
    :cond_0
    sput-object p1, Le/q/f/b/a;->a:Le/q/f/a/f/e;

    .line 5
    sget-object v0, Le/q/b/d$b;->a:Le/q/b/d;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Le/q/b/d;

    invoke-direct {v0, p1}, Le/q/b/d;-><init>(Le/q/b/e/b;)V

    sput-object v0, Le/q/b/d$b;->a:Le/q/b/d;

    .line 7
    :cond_1
    new-instance p1, Le/q/f/a/a;

    sget-object v0, Le/q/f/b/a;->a:Le/q/f/a/f/e;

    invoke-direct {p1, v0}, Le/q/f/a/a;-><init>(Le/q/f/a/f/e;)V

    sput-object p1, Le/q/f/b/a;->b:Le/q/f/a/a;

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final C(Le/a/c/h/m/c;Ljava/lang/String;Ljava/lang/Throwable;)Le/a/c/r/h/f$b;
    .locals 10

    .line 1
    sget-object v0, Le/a/c/o/a;->a:Lkotlinx/coroutines/CoroutineExceptionHandler;

    const-string v0, "error"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/c/r/h/f$b;

    sget-object v4, Le/a/c/r/h/h$h;->a:Le/a/c/r/h/h$h;

    new-instance v6, Le/a/c/r/h/i$a;

    invoke-direct {v6, p3}, Le/a/c/r/h/i$a;-><init>(Ljava/lang/Throwable;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x30

    move-object v2, v0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v9}, Le/a/c/r/h/f$b;-><init>(Le/a/c/h/m/c;Le/a/c/r/h/h;Ljava/lang/String;Le/a/c/r/h/i;Le/a/c/g/a;Le/a/l5/a/b2$b;I)V

    return-object v0
.end method

.method public final D(Le/a/c/h/m/c;Ljava/lang/String;Le/q/f/a/f/j;)Le/a/c/r/h/f$b;
    .locals 9

    if-eqz p3, :cond_2

    .line 1
    iget-object v0, p3, Le/q/f/a/f/j;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "GRM_BILL"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Le/a/c/r/h/f$b;

    sget-object v3, Le/a/c/r/h/h$b;->a:Le/a/c/r/h/h$b;

    new-instance v5, Le/a/c/r/h/i$b;

    invoke-direct {v5, p3}, Le/a/c/r/h/i$b;-><init>(Le/q/f/a/f/j;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Le/a/c/r/h/f$b;-><init>(Le/a/c/h/m/c;Le/a/c/r/h/h;Ljava/lang/String;Le/a/c/r/h/i;Le/a/c/g/a;Le/a/l5/a/b2$b;I)V

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "GRM_BANK"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Le/a/c/r/h/f$b;

    sget-object v3, Le/a/c/r/h/h$a;->a:Le/a/c/r/h/h$a;

    new-instance v5, Le/a/c/r/h/i$b;

    invoke-direct {v5, p3}, Le/a/c/r/h/i$b;-><init>(Le/q/f/a/f/j;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Le/a/c/r/h/f$b;-><init>(Le/a/c/h/m/c;Le/a/c/r/h/h;Ljava/lang/String;Le/a/c/r/h/i;Le/a/c/g/a;Le/a/l5/a/b2$b;I)V

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "GRM_OTP"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Le/a/c/r/h/f$b;

    sget-object v3, Le/a/c/r/h/h$g;->a:Le/a/c/r/h/h$g;

    new-instance v5, Le/a/c/r/h/i$b;

    invoke-direct {v5, p3}, Le/a/c/r/h/i$b;-><init>(Le/q/f/a/f/j;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Le/a/c/r/h/f$b;-><init>(Le/a/c/h/m/c;Le/a/c/r/h/h;Ljava/lang/String;Le/a/c/r/h/i;Le/a/c/g/a;Le/a/l5/a/b2$b;I)V

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "GRM_NOTIF"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Le/a/c/r/h/f$b;

    sget-object v3, Le/a/c/r/h/h$e;->a:Le/a/c/r/h/h$e;

    new-instance v5, Le/a/c/r/h/i$b;

    invoke-direct {v5, p3}, Le/a/c/r/h/i$b;-><init>(Le/q/f/a/f/j;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Le/a/c/r/h/f$b;-><init>(Le/a/c/h/m/c;Le/a/c/r/h/h;Ljava/lang/String;Le/a/c/r/h/i;Le/a/c/g/a;Le/a/l5/a/b2$b;I)V

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "GRM_EVENT"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Le/a/c/r/h/f$b;

    sget-object v3, Le/a/c/r/h/h$d;->a:Le/a/c/r/h/h$d;

    new-instance v5, Le/a/c/r/h/i$b;

    invoke-direct {v5, p3}, Le/a/c/r/h/i$b;-><init>(Le/q/f/a/f/j;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Le/a/c/r/h/f$b;-><init>(Le/a/c/h/m/c;Le/a/c/r/h/h;Ljava/lang/String;Le/a/c/r/h/i;Le/a/c/g/a;Le/a/l5/a/b2$b;I)V

    goto :goto_1

    :sswitch_5
    const-string v1, "GRM_DELIVERY"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Le/a/c/r/h/f$b;

    sget-object v3, Le/a/c/r/h/h$c;->a:Le/a/c/r/h/h$c;

    new-instance v5, Le/a/c/r/h/i$b;

    invoke-direct {v5, p3}, Le/a/c/r/h/i$b;-><init>(Le/q/f/a/f/j;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Le/a/c/r/h/f$b;-><init>(Le/a/c/h/m/c;Le/a/c/r/h/h;Ljava/lang/String;Le/a/c/r/h/i;Le/a/c/g/a;Le/a/l5/a/b2$b;I)V

    goto :goto_1

    :sswitch_6
    const-string v1, "GRM_TRAVEL"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Le/a/c/r/h/f$b;

    sget-object v3, Le/a/c/r/h/h$i;->a:Le/a/c/r/h/h$i;

    new-instance v5, Le/a/c/r/h/i$b;

    invoke-direct {v5, p3}, Le/a/c/r/h/i$b;-><init>(Le/q/f/a/f/j;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Le/a/c/r/h/f$b;-><init>(Le/a/c/h/m/c;Le/a/c/r/h/h;Ljava/lang/String;Le/a/c/r/h/i;Le/a/c/g/a;Le/a/l5/a/b2$b;I)V

    goto :goto_1

    :sswitch_7
    const-string v1, "GRM_OFFERS"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Le/a/c/r/h/f$b;

    sget-object v3, Le/a/c/r/h/h$f;->a:Le/a/c/r/h/h$f;

    new-instance v5, Le/a/c/r/h/i$b;

    invoke-direct {v5, p3}, Le/a/c/r/h/i$b;-><init>(Le/q/f/a/f/j;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Le/a/c/r/h/f$b;-><init>(Le/a/c/h/m/c;Le/a/c/r/h/h;Ljava/lang/String;Le/a/c/r/h/i;Le/a/c/g/a;Le/a/l5/a/b2$b;I)V

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    new-instance p3, Lcom/truecaller/log/UnmutedException$InsightsExceptions;

    sget-object v0, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->PARSER_UNKNOWN_GRM_EXCEPTION:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    invoke-direct {p3, v0}, Lcom/truecaller/log/UnmutedException$InsightsExceptions;-><init>(Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;)V

    invoke-virtual {p0, p1, p2, p3}, Le/a/c/i/i/b;->C(Le/a/c/h/m/c;Ljava/lang/String;Ljava/lang/Throwable;)Le/a/c/r/h/f$b;

    move-result-object v0

    :goto_1
    return-object v0

    .line 12
    :cond_2
    new-instance p3, Le/a/c/r/h/f$b;

    sget-object v3, Le/a/c/r/h/h$h;->a:Le/a/c/r/h/h$h;

    new-instance v5, Le/a/c/r/h/i$a;

    new-instance v0, Lcom/truecaller/log/UnmutedException$InsightsExceptions;

    sget-object v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->PARSE_FAILURE:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    invoke-direct {v0, v1}, Lcom/truecaller/log/UnmutedException$InsightsExceptions;-><init>(Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;)V

    invoke-direct {v5, v0}, Le/a/c/r/h/i$a;-><init>(Ljava/lang/Throwable;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    move-object v1, p3

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Le/a/c/r/h/f$b;-><init>(Le/a/c/h/m/c;Le/a/c/r/h/h;Ljava/lang/String;Le/a/c/r/h/i;Le/a/c/g/a;Le/a/l5/a/b2$b;I)V

    return-object p3

    :sswitch_data_0
    .sparse-switch
        -0x56c1704c -> :sswitch_7
        -0x4d9222c9 -> :sswitch_6
        -0x4d429d2f -> :sswitch_5
        -0xb942743 -> :sswitch_4
        -0xb184aad -> :sswitch_3
        0x3c31460e -> :sswitch_2
        0x49f14b99 -> :sswitch_1
        0x49f16964 -> :sswitch_0
    .end sparse-switch
.end method

.method public e(Le/a/c/r/h/f;)Z
    .locals 2

    const-string v0, "parseResponse"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Le/a/c/r/h/f$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Le/a/c/r/h/f$b;

    .line 3
    iget-object p1, p1, Le/a/c/r/h/f$b;->b:Le/a/c/r/h/h;

    .line 4
    sget-object v0, Le/a/c/r/h/h$h;->a:Le/a/c/r/h/h$h;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Le/a/c/r/h/h$f;->a:Le/a/c/r/h/h$f;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public g(Le/a/c/h/m/c;)Le/a/c/r/k/d;
    .locals 3

    const-string v0, "smsMessage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/z/c/c0;

    invoke-direct {v0}, Ls1/z/c/c0;-><init>()V

    invoke-virtual {p0, p1}, Le/a/c/i/i/b;->o(Le/a/c/h/m/c;)Le/a/c/r/h/f$b;

    move-result-object p1

    iput-object p1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Le/a/c/r/h/f$b;->b:Le/a/c/r/h/h;

    .line 3
    sget-object v1, Le/a/c/r/h/h$g;->a:Le/a/c/r/h/h$g;

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Le/a/c/i/i/b$b;

    invoke-direct {p1, p0, v0, v1}, Le/a/c/i/i/b$b;-><init>(Le/a/c/i/i/b;Ls1/z/c/c0;Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, p1, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 5
    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Le/a/c/r/h/f$b;

    .line 6
    iget-object v0, v0, Le/a/c/r/h/f$b;->d:Le/a/c/r/h/i;

    const-string v2, "null cannot be cast to non-null type com.truecaller.insights.models.pdo.SmsDetailedResponseType.SmsDetailedResponse"

    .line 7
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/c/r/h/i$b;

    .line 8
    iget-object v0, v0, Le/a/c/r/h/i$b;->a:Le/q/f/a/f/j;

    .line 9
    iget-object v0, v0, Le/q/f/a/f/j;->c:Le/q/c/b/a;

    if-eqz p1, :cond_0

    .line 10
    new-instance v1, Le/a/c/r/k/d;

    check-cast v0, Le/q/f/a/f/n;

    .line 11
    iget-object p1, v0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    const-string v2, "otp_num"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, "valMap.get(OTP_KEY)"

    .line 12
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, v0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    const-string v2, "otp_type"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14
    invoke-direct {v1, p1, v0}, Le/a/c/r/k/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public o(Le/a/c/h/m/c;)Le/a/c/r/h/f$b;
    .locals 4

    const-string v0, "smsMessage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/c/i/b/e;->A()V

    .line 2
    sget-object v0, Le/a/c/c0/q;->b:Le/a/c/c0/q;

    .line 3
    iget-object v1, p1, Le/a/c/h/m/c;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Le/a/c/c0/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    :try_start_0
    iget-object v1, p1, Le/a/c/h/m/c;->c:Ljava/lang/String;

    .line 6
    iget-object v2, p1, Le/a/c/h/m/c;->d:Ljava/util/Date;

    .line 7
    invoke-static {}, Le/q/f/b/a;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 8
    invoke-static {v1, v0, v2, v3}, Le/q/f/b/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;)Le/q/f/a/f/j;

    move-result-object v1

    .line 9
    invoke-virtual {p0, p1, v0, v1}, Le/a/c/i/i/b;->D(Le/a/c/h/m/c;Ljava/lang/String;Le/q/f/a/f/j;)Le/a/c/r/h/f$b;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 10
    invoke-virtual {p0, p1, v0, v1}, Le/a/c/i/i/b;->C(Le/a/c/h/m/c;Ljava/lang/String;Ljava/lang/Throwable;)Le/a/c/r/h/f$b;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public p(Le/a/c/c/e/a;Le/a/c/h/m/c;)Le/a/c/r/h/f;
    .locals 2

    const-string v0, "$this$parseInTransaction"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smsMessage"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p2, Le/a/c/h/m/c;->f:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p2, Le/a/c/h/m/c;->b:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Le/a/c/c0/q;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p1, Le/a/c/r/h/f$a;->a:Le/a/c/r/h/f$a;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Le/a/c/i/i/b;->o(Le/a/c/h/m/c;)Le/a/c/r/h/f$b;

    move-result-object p2

    .line 6
    iget-object v0, p0, Le/a/c/i/i/b;->e:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object p1, p1, Le/a/c/c/e/a;->a:Ljava/util/List;

    .line 8
    new-instance v0, Le/a/c/c/c$a;

    invoke-direct {v0, p2}, Le/a/c/c/c$a;-><init>(Le/a/c/r/h/f$b;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public r(Le/a/c/r/h/f;)Z
    .locals 1

    const-string v0, "parseResponse"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Le/a/c/r/h/f$b;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/r/h/f$b;

    .line 2
    iget-object p1, p1, Le/a/c/r/h/f$b;->b:Le/a/c/r/h/h;

    .line 3
    sget-object v0, Le/a/c/r/h/h$f;->a:Le/a/c/r/h/h$f;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public y(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "smsMessage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Le/q/d/b;->a:Le/q/d/b;

    invoke-virtual {v0, p1}, Le/q/d/b;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public z(Le/a/c/h/m/c;)Le/a/c/r/h/f;
    .locals 4

    sget-object v0, Le/a/c/r/h/f$a;->a:Le/a/c/r/h/f$a;

    const-string v1, "smsMessage"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p1, Le/a/c/h/m/c;->b:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Le/a/c/c0/q;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/a/c/i/i/b;->g:Le/a/c/h/b;

    iget-object v2, p0, Le/a/c/i/i/b;->h:Landroid/content/Context;

    .line 4
    iget-object v3, p1, Le/a/c/h/m/c;->b:Ljava/lang/String;

    .line 5
    invoke-interface {v1, v2, v3}, Le/a/c/h/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Le/a/c/i/i/b;->o(Le/a/c/h/m/c;)Le/a/c/r/h/f$b;

    move-result-object p1

    .line 7
    iget-object v1, p1, Le/a/c/r/h/f$b;->b:Le/a/c/r/h/h;

    .line 8
    sget-object v2, Le/a/c/r/h/h$g;->a:Le/a/c/r/h/h$g;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Le/a/c/i/i/b;->o(Le/a/c/h/m/c;)Le/a/c/r/h/f$b;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.class public final Le/a/l0/w/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l0/w/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l0/w/b$a;
    }
.end annotation


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Lcom/truecaller/settings/CallingSettings;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/l0/g;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/q/l0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Lcom/truecaller/settings/CallingSettings;",
            ">;",
            "Lo3/a<",
            "Le/a/l0/g;",
            ">;",
            "Lo3/a<",
            "Le/a/b0/q/l0;",
            ">;",
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callingSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callLogManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l0/w/b;->a:Lo3/a;

    iput-object p2, p0, Le/a/l0/w/b;->b:Lo3/a;

    iput-object p3, p0, Le/a/l0/w/b;->c:Lo3/a;

    iput-object p4, p0, Le/a/l0/w/b;->d:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 10
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

    iget-object v0, p0, Le/a/l0/w/b;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/settings/CallingSettings;

    const-string v1, "lastInvalidCallsUpdate"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/truecaller/settings/CallingSettings;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v5, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Le/a/l0/w/b;->c:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le/a/b0/q/l0;

    const-wide/16 v7, 0x7

    sget-object v9, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v4 .. v9}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    xor-int/2addr v3, v2

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    return-object p1

    .line 3
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 4
    iget-object v0, p0, Le/a/l0/w/b;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l0/g;

    invoke-interface {v0}, Le/a/l0/g;->n()I

    move-result v0

    .line 5
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    .line 7
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 8
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    const/4 v0, -0x1

    if-ne v3, v0, :cond_2

    return-object p1

    :cond_2
    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    const/16 v0, 0xa

    if-le v2, v3, :cond_4

    goto :goto_1

    :cond_4
    if-lt v0, v3, :cond_5

    const/4 v2, 0x2

    goto :goto_3

    :cond_5
    :goto_1
    const/16 v0, 0x32

    const/16 v2, 0xb

    if-le v2, v3, :cond_6

    goto :goto_2

    :cond_6
    if-lt v0, v3, :cond_7

    const/4 v2, 0x3

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v2, 0x4

    .line 9
    :goto_3
    iget-object v0, p0, Le/a/l0/w/b;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a;

    new-instance v4, Le/a/l0/w/b$a;

    invoke-direct {v4, v2, v3, v6, v7}, Le/a/l0/w/b$a;-><init>(IIJ)V

    invoke-interface {v0, v4}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 10
    iget-object v0, p0, Le/a/l0/w/b;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/settings/CallingSettings;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/truecaller/settings/CallingSettings;->putLong(Ljava/lang/String;J)V

    .line 11
    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne v5, v0, :cond_8

    return-object v5

    :cond_8
    return-object p1
.end method

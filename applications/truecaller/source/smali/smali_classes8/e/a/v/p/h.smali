.class public final Le/a/v/p/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v/p/g;


# instance fields
.field public final a:Le/a/h/b0;

.field public final b:Le/a/h/d/d;

.field public final c:Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

.field public final d:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/r2/l;

.field public final f:Le/a/o/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/h/b0;Le/a/h/d/d;Lcom/truecaller/calling/initiate_call/InitiateCallHelper;Le/a/r2/f;Le/a/r2/l;Le/a/o/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/h/b0;",
            "Le/a/h/d/d;",
            "Lcom/truecaller/calling/initiate_call/InitiateCallHelper;",
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;",
            "Le/a/r2/l;",
            "Le/a/o/j;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "simSelectionHelper"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "numberForCallHelper"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "initiateCallHelper"

    invoke-static {p4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callHistoryManager"

    invoke-static {p5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "actorsThreads"

    invoke-static {p6, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "contextCallUtils"

    invoke-static {p7, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/v/p/h;->a:Le/a/h/b0;

    iput-object p3, p0, Le/a/v/p/h;->b:Le/a/h/d/d;

    iput-object p4, p0, Le/a/v/p/h;->c:Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    iput-object p5, p0, Le/a/v/p/h;->d:Le/a/r2/f;

    iput-object p6, p0, Le/a/v/p/h;->e:Le/a/r2/l;

    iput-object p7, p0, Le/a/v/p/h;->f:Le/a/o/j;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/p/h;->a:Le/a/h/b0;

    invoke-interface {v0}, Le/a/h/b0;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/truecaller/data/entity/Number;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Number;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/v/p/h;->f:Le/a/o/j;

    invoke-interface {v0, p1, p2}, Le/a/o/j;->f(Lcom/truecaller/data/entity/Number;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Lcom/truecaller/data/entity/Number;I)V
    .locals 13

    move-object v0, p0

    move-object v1, p2

    const-string v2, "contactDisplayName"

    move-object v6, p1

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "number"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Le/a/v/p/h;->b:Le/a/h/d/d;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, p2, v3, v4, v5}, Le/a/n/g0;->L(Le/a/h/d/d;Lcom/truecaller/data/entity/Number;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "detailView"

    const-string v1, "analyticsContext"

    .line 2
    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4
    sget-object v12, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnDemand;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnDemand;

    const-string v1, "callContextOption"

    .line 5
    invoke-static {v12, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLandroid/telecom/PhoneAccountHandle;ZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    .line 7
    iget-object v2, v0, Le/a/v/p/h;->c:Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    invoke-interface {v2, v1}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/truecaller/data/entity/Number;I)V
    .locals 13

    move-object v0, p0

    move-object v1, p2

    const-string v2, "contactDisplayName"

    move-object v6, p1

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "number"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Le/a/v/p/h;->b:Le/a/h/d/d;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, p2, v3, v4, v5}, Le/a/n/g0;->L(Le/a/h/d/d;Lcom/truecaller/data/entity/Number;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "detailView"

    const-string v1, "analyticsContext"

    .line 2
    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v12, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;

    .line 4
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 5
    new-instance v1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLandroid/telecom/PhoneAccountHandle;ZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    .line 6
    iget-object v2, v0, Le/a/v/p/h;->c:Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    invoke-interface {v2, v1}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    return-void
.end method

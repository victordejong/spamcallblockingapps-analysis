.class public final Le/a/g/j/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g/j/d;


# instance fields
.field public final a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper;


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/initiate_call/InitiateCallHelper;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "initiateCallHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/j/e;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/truecaller/acs/analytics/AnalyticsContext;Lcom/truecaller/data/entity/CallContextMessage;)V
    .locals 11

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/truecaller/acs/analytics/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p2, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;

    const/4 v9, 0x1

    if-eqz p3, :cond_0

    .line 4
    new-instance p2, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Set;

    invoke-direct {p2, p3}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Set;-><init>(Lcom/truecaller/data/entity/CallContextMessage;)V

    const-string p3, "callContextOption"

    .line 5
    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v10, p2

    .line 6
    new-instance p2, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLandroid/telecom/PhoneAccountHandle;ZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    .line 7
    iget-object p1, p0, Le/a/g/j/e;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    invoke-interface {p1, p2}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    return-void
.end method

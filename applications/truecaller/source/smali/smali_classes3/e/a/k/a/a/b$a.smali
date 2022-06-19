.class public final Le/a/k/a/a/b$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/a/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/k/a/a/b$a;->a:I

    iput-object p2, p0, Le/a/k/a/a/b$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    iget p1, p0, Le/a/k/a/a/b$a;->a:I

    const-string v0, "presenter"

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    .line 1
    iget-object p1, p0, Le/a/k/a/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/a/b;

    .line 2
    iget-object p1, p1, Le/a/k/a/a/b;->e:Le/a/k/a/a/n;

    if-eqz p1, :cond_3

    .line 3
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/a/m;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/k/a/a/m;->k0()Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->getAnalyticsContext()Ljava/lang/String;

    move-result-object v4

    const-string v0, "analyticsContext"

    .line 5
    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v11, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;

    const/4 v10, 0x1

    .line 7
    new-instance v0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLandroid/telecom/PhoneAccountHandle;ZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    .line 8
    iget-object v1, p1, Le/a/k/a/a/n;->c:Le/a/k/j;

    check-cast v1, Le/a/k/k;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "callOptions"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v1, v1, Le/a/k/k;->i:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    invoke-interface {v1, v0}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    .line 11
    :cond_1
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/a/m;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/k/a/a/m;->dismissAllowingStateLoss()V

    :cond_2
    return-void

    .line 12
    :cond_3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_4
    throw v1

    .line 14
    :cond_5
    iget-object p1, p0, Le/a/k/a/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/a/b;

    .line 15
    iget-object p1, p1, Le/a/k/a/a/b;->e:Le/a/k/a/a/n;

    if-eqz p1, :cond_8

    .line 16
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/a/m;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le/a/k/a/a/m;->u5()V

    .line 17
    :cond_6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/a/m;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Le/a/k/a/a/m;->dismissAllowingStateLoss()V

    :cond_7
    return-void

    .line 18
    :cond_8
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

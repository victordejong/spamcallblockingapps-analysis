.class public final Le/a/o/a/g/j/l;
.super Le/a/o/a/g/b;
.source "SourceFile"

# interfaces
.implements Le/a/o/a/g/j/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o/a/g/b<",
        "Le/a/o/a/g/j/h;",
        ">;",
        "Le/a/o/a/g/j/g;"
    }
.end annotation


# instance fields
.field public final e:Le/a/p5/c0;

.field public final f:Le/a/o/f;

.field public final g:Le/a/o/b/b;

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/a/o/p/e/g/c;

.field public final j:Le/a/o/b/t;

.field public final k:Le/a/b0/e/f;

.field public final l:Le/a/p5/w0/a;

.field public final m:Le/a/o/b/o;

.field public final n:Ls1/w/f;

.field public final o:Le/a/o/b/n0;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Le/a/o/f;Le/a/o/b/b;Lo3/a;Le/a/o/p/e/g/c;Le/a/o/b/t;Le/a/b0/e/f;Le/a/p5/w0/a;Le/a/o/b/o;Ls1/w/f;Le/a/o/b/n0;)V
    .locals 1
    .param p10    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/p5/c0;",
            "Le/a/o/f;",
            "Le/a/o/b/b;",
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;",
            "Le/a/o/p/e/g/c;",
            "Le/a/o/b/t;",
            "Le/a/b0/e/f;",
            "Le/a/p5/w0/a;",
            "Le/a/o/b/o;",
            "Ls1/w/f;",
            "Le/a/o/b/n0;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "support"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageFactory"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predefinedCallReasonRepository"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callStateHolder"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customTabsUtil"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendMidCallReasonManager"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p10}, Le/a/o/a/g/b;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/o/a/g/j/l;->e:Le/a/p5/c0;

    iput-object p2, p0, Le/a/o/a/g/j/l;->f:Le/a/o/f;

    iput-object p3, p0, Le/a/o/a/g/j/l;->g:Le/a/o/b/b;

    iput-object p4, p0, Le/a/o/a/g/j/l;->h:Lo3/a;

    iput-object p5, p0, Le/a/o/a/g/j/l;->i:Le/a/o/p/e/g/c;

    iput-object p6, p0, Le/a/o/a/g/j/l;->j:Le/a/o/b/t;

    iput-object p7, p0, Le/a/o/a/g/j/l;->k:Le/a/b0/e/f;

    iput-object p8, p0, Le/a/o/a/g/j/l;->l:Le/a/p5/w0/a;

    iput-object p9, p0, Le/a/o/a/g/j/l;->m:Le/a/o/b/o;

    iput-object p10, p0, Le/a/o/a/g/j/l;->n:Ls1/w/f;

    iput-object p11, p0, Le/a/o/a/g/j/l;->o:Le/a/o/b/n0;

    return-void
.end method


# virtual methods
.method public G0()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/g/j/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/o/a/g/f;->s()V

    :cond_0
    return-void
.end method

.method public final Ij(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/data/entity/FeatureType;Ljava/lang/String;)Lcom/truecaller/data/entity/CallContextMessage;
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/o/a/g/j/l;->g:Le/a/o/b/b;

    .line 2
    sget-object v5, Lcom/truecaller/data/entity/MessageType$Custom;->b:Lcom/truecaller/data/entity/MessageType$Custom;

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 3
    invoke-static/range {v0 .. v8}, Le/a/m0/a1$k;->r(Le/a/o/b/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/data/entity/FeatureType;Lcom/truecaller/data/entity/MessageType;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/data/entity/CallContextMessage;

    move-result-object p1

    return-object p1
.end method

.method public final Jj(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/o/a/g/j/l;->m:Le/a/o/b/o;

    const-string v1, "guidelineIsAgreed"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Le/a/m0/a1$k;->F(Le/a/o/b/o;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/o/a/g/j/l;->k:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->f()Lcom/truecaller/common/account/Region;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/o/a/g/j/l;->e:Le/a/p5/c0;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v1, p1, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resourceProvider.getString(buttonTextRes)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Le/a/o/a/g/j/l;->e:Le/a/p5/c0;

    .line 5
    sget v4, Lcom/truecaller/contextcall/R$string;->context_call_on_demand_community_guideline:I

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    const/4 p1, 0x1

    .line 6
    invoke-static {v0}, Le/a/n/g0;->U(Lcom/truecaller/common/account/Region;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, p1

    .line 7
    invoke-static {v0}, Le/a/n/g0;->N(Lcom/truecaller/common/account/Region;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    const/4 p1, 0x3

    const-string v0, "https://www.truecaller.com/community-guidelines/call-reason"

    aput-object v0, v5, p1

    .line 8
    invoke-interface {v1, v4, v5}, Le/a/p5/c0;->n(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "resourceProvider.getRich\u2026UNITY_GUIDELINE\n        )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/g/j/h;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Le/a/o/a/g/j/h;->ms(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public Vf(Ljava/lang/String;)V
    .locals 7

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/o/a/g/j/l;->l:Le/a/p5/w0/a;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/p5/w0/a;->a:Landroid/content/Context;

    .line 4
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v2, 0x106000b

    .line 5
    invoke-static {v0, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.support.customtabs.extra.TITLE_VISIBILITY"

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v5, "android.support.customtabs.extra.TOOLBAR_COLOR"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v0, "android.support.customtabs.extra.SESSION"

    .line 11
    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 12
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 13
    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 14
    invoke-virtual {v2, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    const-string v0, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    const/4 v5, 0x1

    .line 15
    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 18
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "androidx.browser.customtabs.extra.SHARE_STATE"

    .line 19
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Le/a/p5/w0/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "android.intent.extra.REFERRER"

    .line 21
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 22
    :try_start_0
    iget-object v0, v1, Le/a/p5/w0/a;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 23
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 24
    invoke-static {v0, v2, v6}, Ln3/k/b/a$a;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/o/a/g/j/h;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Le/a/o/a/g/j/h;->sf()Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;

    move-result-object p1

    .line 5
    instance-of v0, p1, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/g/j/h;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/o/a/g/j/h;->r()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 7
    iget-object v3, p0, Le/a/o/a/g/j/l;->e:Le/a/p5/c0;

    check-cast p1, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall;

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall;->getType()Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;

    move-result-object p1

    sget-object v4, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;->MissedCall:Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;

    if-ne p1, v4, :cond_0

    .line 9
    sget p1, Lcom/truecaller/contextcall/R$string;->context_call_call_with_custom_reason_title:I

    goto :goto_0

    .line 10
    :cond_0
    sget p1, Lcom/truecaller/contextcall/R$string;->context_call_again_custom_reason_title:I

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    iget-object v0, v0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->c:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 12
    invoke-interface {v3, p1, v2}, Le/a/p5/c0;->n(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 13
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/g/j/h;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 14
    invoke-interface {v0, p1}, Le/a/o/a/g/j/h;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-interface {v0}, Le/a/o/a/g/j/h;->Xy()V

    .line 16
    :cond_2
    :goto_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/j/h;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/o/a/g/j/h;->H6()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/g/j/h;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Le/a/o/a/g/f;->l(Ljava/lang/String;)V

    .line 17
    :cond_3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/j/h;

    if-eqz p1, :cond_4

    sget v0, Lcom/truecaller/contextcall/R$string;->context_call_call:I

    invoke-interface {p1, v0}, Le/a/o/a/g/j/h;->Un(I)V

    .line 18
    :cond_4
    sget p1, Lcom/truecaller/contextcall/R$string;->context_call_call:I

    invoke-virtual {p0, p1}, Le/a/o/a/g/j/l;->Jj(I)V

    goto :goto_3

    .line 19
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Call option should be provided"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_6
    instance-of v0, p1, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$DetailsScreen;

    if-eqz v0, :cond_8

    .line 21
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/j/h;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Le/a/o/a/g/j/h;->Xy()V

    .line 22
    :cond_7
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/j/h;

    if-eqz p1, :cond_d

    sget v0, Lcom/truecaller/contextcall/R$string;->StrDone:I

    invoke-interface {p1, v0}, Le/a/o/a/g/j/h;->Un(I)V

    goto :goto_3

    .line 23
    :cond_8
    instance-of v0, p1, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;

    if-eqz v0, :cond_d

    .line 24
    check-cast p1, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;

    invoke-virtual {p1}, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;->getNameOrNumberToDisplay()Ljava/lang/String;

    move-result-object p1

    .line 25
    iget-object v0, p0, Le/a/o/a/g/j/l;->e:Le/a/p5/c0;

    sget v3, Lcom/truecaller/contextcall/R$string;->context_call_add_custom_reason_title:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-interface {v0, v3, v2}, Le/a/p5/c0;->n(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 26
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/g/j/h;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_9

    .line 27
    invoke-interface {v0, p1}, Le/a/o/a/g/j/h;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 28
    :cond_9
    invoke-interface {v0}, Le/a/o/a/g/j/h;->Xy()V

    .line 29
    :cond_a
    :goto_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/j/h;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Le/a/o/a/g/j/h;->H6()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/g/j/h;

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Le/a/o/a/g/f;->l(Ljava/lang/String;)V

    .line 30
    :cond_b
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/j/h;

    if-eqz p1, :cond_c

    sget v0, Lcom/truecaller/contextcall/R$string;->context_call_add:I

    invoke-interface {p1, v0}, Le/a/o/a/g/j/h;->Un(I)V

    .line 31
    :cond_c
    sget p1, Lcom/truecaller/contextcall/R$string;->context_call_add:I

    invoke-virtual {p0, p1}, Le/a/o/a/g/j/l;->Jj(I)V

    .line 32
    :cond_d
    :goto_3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/j/h;

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    invoke-interface {p1}, Le/a/o/a/g/j/h;->sf()Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;

    move-result-object p1

    goto :goto_4

    :cond_e
    move-object p1, v0

    :goto_4
    instance-of p1, p1, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;

    if-nez p1, :cond_f

    goto :goto_5

    .line 33
    :cond_f
    iget-object p1, p0, Le/a/o/a/g/j/l;->j:Le/a/o/b/t;

    .line 34
    invoke-interface {p1}, Le/a/o/b/t;->c()Lq3/a/x2/i1;

    move-result-object p1

    .line 35
    new-instance v1, Le/a/o/a/g/j/i;

    invoke-direct {v1, p0, v0}, Le/a/o/a/g/j/i;-><init>(Le/a/o/a/g/j/l;Ls1/w/d;)V

    .line 36
    new-instance v2, Lq3/a/x2/u0;

    invoke-direct {v2, p1, v1}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 37
    invoke-static {v2, p0}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    .line 38
    :goto_5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/j/h;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Le/a/o/a/g/j/h;->sf()Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;

    move-result-object p1

    goto :goto_6

    :cond_10
    move-object p1, v0

    :goto_6
    instance-of p1, p1, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;

    if-nez p1, :cond_11

    goto :goto_7

    :cond_11
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 39
    new-instance v4, Le/a/o/a/g/j/j;

    invoke-direct {v4, p0, v0}, Le/a/o/a/g/j/j;-><init>(Le/a/o/a/g/j/l;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :goto_7
    return-void
.end method

.method public w1(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/o/a/g/j/l;->m:Le/a/o/b/o;

    const-string v1, "guidelineIsAgreed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/o/b/o;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :cond_1
    :goto_0
    if-nez v2, :cond_8

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/g/j/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/o/a/g/j/h;->sf()Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 5
    :goto_1
    instance-of v2, v0, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall;

    if-eqz v2, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    instance-of v0, v0, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;

    if-eqz v0, :cond_4

    :goto_2
    iget-object v0, p0, Le/a/o/a/g/j/l;->i:Le/a/o/p/e/g/c;

    invoke-interface {v0, p1}, Le/a/o/p/e/g/c;->d(Ljava/lang/String;)V

    .line 7
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/g/j/h;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Le/a/o/a/g/j/h;->sf()Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 8
    instance-of v2, v0, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;

    if-eqz v2, :cond_5

    .line 9
    move-object v2, v0

    check-cast v2, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;

    invoke-virtual {v2}, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/truecaller/data/entity/FeatureType;->MID_CALL:Lcom/truecaller/data/entity/FeatureType;

    invoke-virtual {v0}, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;->getAnalyticsContext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, p1, v3, v0}, Le/a/o/a/g/j/l;->Ij(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/data/entity/FeatureType;Ljava/lang/String;)Lcom/truecaller/data/entity/CallContextMessage;

    move-result-object p1

    .line 10
    new-instance v5, Le/a/o/a/g/j/k;

    invoke-direct {v5, p0, p1, v1}, Le/a/o/a/g/j/k;-><init>(Le/a/o/a/g/j/l;Lcom/truecaller/data/entity/CallContextMessage;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto/16 :goto_5

    .line 11
    :cond_5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/g/j/h;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Le/a/o/a/g/j/h;->r()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 12
    iget-object v1, v0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->a:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 13
    iget-object v2, v0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->b:Ljava/lang/String;

    .line 14
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/o/a/g/j/h;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Le/a/o/a/g/j/h;->sf()Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v3}, Le/a/m0/a1$k;->V(Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;)Lcom/truecaller/data/entity/FeatureType;

    move-result-object v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    sget-object v3, Lcom/truecaller/data/entity/FeatureType;->ON_DEMAND:Lcom/truecaller/data/entity/FeatureType;

    .line 15
    :goto_3
    invoke-virtual {p0, v1, p1, v3, v2}, Le/a/o/a/g/j/l;->Ij(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/data/entity/FeatureType;Ljava/lang/String;)Lcom/truecaller/data/entity/CallContextMessage;

    move-result-object p1

    if-nez p1, :cond_7

    .line 16
    sget-object p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Skip;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Skip;

    goto :goto_4

    .line 17
    :cond_7
    new-instance v1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Set;

    invoke-direct {v1, p1}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Set;-><init>(Lcom/truecaller/data/entity/CallContextMessage;)V

    move-object p1, v1

    .line 18
    :goto_4
    new-instance v1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;

    invoke-direct {v1, v0}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;-><init>(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    .line 19
    invoke-virtual {v1, p1}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;

    .line 20
    invoke-virtual {v1}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->a()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    move-result-object p1

    .line 21
    iget-object v0, p0, Le/a/o/a/g/j/l;->f:Le/a/o/f;

    check-cast v0, Le/a/o/h;

    invoke-virtual {v0, p1}, Le/a/o/h;->a(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    .line 22
    sget-object p1, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContextCallAction;->ON_DEMAND_CUSTOM_MESSAGE:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContextCallAction;

    const-string v1, "OnDemandReasonPicker"

    invoke-virtual {p1, v1, v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->f(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContextCallAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    .line 23
    iget-object v0, p0, Le/a/o/a/g/j/l;->h:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "analytics.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/q2/a;

    invoke-static {p1, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 24
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/j/h;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Le/a/o/a/g/f;->t7()V

    goto :goto_5

    .line 25
    :cond_8
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/j/h;

    if-eqz p1, :cond_9

    iget-object v1, p0, Le/a/o/a/g/j/l;->e:Le/a/p5/c0;

    sget v2, Lcom/truecaller/contextcall/R$string;->call_context_empty_message:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026ll_context_empty_message)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/o/a/g/f;->a5(Ljava/lang/String;)V

    :cond_9
    :goto_5
    return-void
.end method

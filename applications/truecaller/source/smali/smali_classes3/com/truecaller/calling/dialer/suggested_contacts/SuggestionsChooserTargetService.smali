.class public final Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;
.super Landroid/service/chooser/ChooserTargetService;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008+\u0010\u0005J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J%\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0005R(\u0010\u0017\u001a\u00020\u000f8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008\u0010\u0010\u0011\u0012\u0004\u0008\u0016\u0010\u0005\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R(\u0010\u001c\u001a\u00020\u000f8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008\u0018\u0010\u0011\u0012\u0004\u0008\u001b\u0010\u0005\u001a\u0004\u0008\u0019\u0010\u0013\"\u0004\u0008\u001a\u0010\u0015R\u0016\u0010\u001e\u001a\u00020\u000f8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0013R\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006,"
    }
    d2 = {
        "Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;",
        "Landroid/service/chooser/ChooserTargetService;",
        "Lq3/a/i0;",
        "Ls1/s;",
        "onCreate",
        "()V",
        "Landroid/content/ComponentName;",
        "targetActivityName",
        "Landroid/content/IntentFilter;",
        "matchedFilter",
        "",
        "Landroid/service/chooser/ChooserTarget;",
        "onGetChooserTargets",
        "(Landroid/content/ComponentName;Landroid/content/IntentFilter;)Ljava/util/List;",
        "onDestroy",
        "Ls1/w/f;",
        "c",
        "Ls1/w/f;",
        "getAsyncContext",
        "()Ls1/w/f;",
        "setAsyncContext",
        "(Ls1/w/f;)V",
        "getAsyncContext$annotations",
        "asyncContext",
        "b",
        "getUiContext",
        "setUiContext",
        "getUiContext$annotations",
        "uiContext",
        "getCoroutineContext",
        "coroutineContext",
        "Lq3/a/y;",
        "a",
        "Lq3/a/y;",
        "job",
        "Le/a/h/b/w0/d;",
        "d",
        "Le/a/h/b/w0/d;",
        "getSuggestedContactsManager",
        "()Le/a/h/b/w0/d;",
        "setSuggestedContactsManager",
        "(Le/a/h/b/w0/d;)V",
        "suggestedContactsManager",
        "<init>",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Lq3/a/y;

.field public b:Ls1/w/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Ls1/w/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Le/a/h/b/w0/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/service/chooser/ChooserTargetService;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1, v0}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;->a:Lq3/a/y;

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;->b:Ls1/w/f;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;->a:Lq3/a/y;

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "uiContext"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/service/chooser/ChooserTargetService;->onCreate()V

    .line 2
    sget-object v0, Le/a/k2;->a:Le/a/k2$a;

    invoke-virtual {v0}, Le/a/k2$a;->a()Le/a/k2;

    move-result-object v0

    invoke-interface {v0, p0}, Le/a/k2;->c(Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;->a:Lq3/a/y;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroid/service/chooser/ChooserTargetService;->onDestroy()V

    return-void
.end method

.method public onGetChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation

    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    const-string v1, "targetActivityName"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "matchedFilter"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance p1, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a;-><init>(Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;Ls1/w/d;)V

    const/4 v1, 0x1

    invoke-static {p2, p1, v1, p2}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    move-object v0, p1

    :catch_0
    :cond_0
    return-object v0
.end method

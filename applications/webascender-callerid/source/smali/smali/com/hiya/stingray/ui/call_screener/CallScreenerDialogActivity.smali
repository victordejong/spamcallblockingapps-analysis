.class public Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;
.super Lcom/hiya/stingray/ui/common/e;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/common/error/b$c;


# instance fields
.field callScreenerViewContainer:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090126
    .end annotation
.end field

.field r:Lcom/hiya/stingray/util/a0;

.field s:Lcom/hiya/stingray/ui/common/error/e;

.field private t:Lcom/hiya/stingray/ui/common/m;

.field private final u:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/e;-><init>()V

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity$a;-><init>(Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;->u:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static O(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 4
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "call_screener_phone"

    .line 5
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static P()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.hiya.stingray.DISMISS_CALL_SCREENER_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private R(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/hiya/stingray/ui/call_screener/c;->f1(Ljava/lang/String;)Lcom/hiya/stingray/ui/call_screener/c;

    move-result-object p1

    const v1, 0x7f090126

    .line 3
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/y;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/y;->i()I

    return-void
.end method


# virtual methods
.method public Q()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;->r:Lcom/hiya/stingray/util/a0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->u(Z)V

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;->s:Lcom/hiya/stingray/ui/common/error/e;

    iget-object v2, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;->r:Lcom/hiya/stingray/util/a0;

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->L()Li/c/b0/b/v;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/hiya/stingray/t/e1/c;

    .line 4
    invoke-virtual/range {v1 .. v6}, Lcom/hiya/stingray/ui/common/error/e;->h(Lcom/hiya/stingray/util/a0;Li/c/b0/b/v;Landroidx/fragment/app/n;Ljava/lang/String;Ljava/lang/Class;)Li/c/b0/c/c;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->A()Li/c/b0/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public S(Lcom/hiya/stingray/ui/common/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;->t:Lcom/hiya/stingray/ui/common/m;

    return-void
.end method

.method public a(Lcom/hiya/stingray/exception/a;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/hiya/stingray/exception/HiyaGenericException;

    sget-object v1, Lg/g/a/a/d;->UNDEFINED:Lg/g/a/a/d;

    const-string v2, "Something went wrong in CallScreenerDialogActivity"

    invoke-direct {v0, v1, v2, p1}, Lcom/hiya/stingray/exception/HiyaGenericException;-><init>(Lg/g/a/a/b;Ljava/lang/String;Lcom/hiya/stingray/exception/a;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/exception/a;->getErrorCodeCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Something went wrong in CallScreenerDialogActivity: %s"

    .line 3
    invoke-static {v0, p1, v1}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;->t:Lcom/hiya/stingray/ui/common/m;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/common/m;->u0()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->z()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->C(Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;)V

    const p1, 0x7f0c001e

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/c;->setContentView(I)V

    .line 4
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;->u:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.hiya.stingray.DISMISS_CALL_SCREENER_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "call_screener_phone"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;->R(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t create call screener dialog activity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Intent should have phone number"

    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/e;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/e;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;->Q()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;->callScreenerViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v0, v2, v3}, Lcom/hiya/stingray/util/e0;->j(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;->t:Lcom/hiya/stingray/ui/common/m;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/common/m;->b0()V

    return v1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

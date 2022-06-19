.class public final Lcom/hiya/client/callerid/ui/incallui/InCallActivity;
.super Landroidx/appcompat/app/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/client/callerid/ui/incallui/InCallActivity$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/hiya/client/callerid/ui/incallui/InCallActivity$a;


# instance fields
.field private f:Lcom/hiya/client/callerid/ui/incallui/l;

.field public g:Lcom/hiya/client/callerid/ui/a0/c;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->i:Lcom/hiya/client/callerid/ui/incallui/InCallActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/c;-><init>()V

    return-void
.end method

.method public static final synthetic A(Lcom/hiya/client/callerid/ui/incallui/InCallActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->h:I

    return-void
.end method

.method private final C(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object v0

    const-string v1, "supportFragmentManager.beginTransaction()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v1, Lcom/hiya/client/callerid/ui/p;->P:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/y;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/y;->i()I

    return-void
.end method

.method public static final synthetic y(Lcom/hiya/client/callerid/ui/incallui/InCallActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->h:I

    return p0
.end method

.method public static final synthetic z(Lcom/hiya/client/callerid/ui/incallui/InCallActivity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->C(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final B()Lcom/hiya/client/callerid/ui/a0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->g:Lcom/hiya/client/callerid/ui/a0/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "callManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onCreate"

    .line 2
    invoke-static {p0, v0, p1}, Lcom/hiya/client/support/logging/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-object p1, Lcom/hiya/client/callerid/ui/z/a;->a:Lcom/hiya/client/callerid/ui/z/a$a;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/hiya/client/callerid/ui/z/a$a;->a(Landroid/content/Context;)Lcom/hiya/client/callerid/ui/z/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/client/callerid/ui/z/a;->a(Lcom/hiya/client/callerid/ui/incallui/InCallActivity;)V

    .line 4
    sget p1, Lcom/hiya/client/callerid/ui/r;->a:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/c;->setContentView(I)V

    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v2, 0x1b

    if-lt p1, v2, :cond_1

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTurnScreenOn(Z)V

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    const-string p1, "keyguard"

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/app/KeyguardManager;

    .line 9
    invoke-virtual {p1, p0, v0}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v2, 0x200000

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v2, 0x80000

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 13
    :goto_0
    new-instance p1, Landroidx/lifecycle/d0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/d0;-><init>(Landroidx/lifecycle/g0;)V

    const-class v2, Lcom/hiya/client/callerid/ui/incallui/l;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/d0;->a(Ljava/lang/Class;)Landroidx/lifecycle/b0;

    move-result-object p1

    const-string v2, "ViewModelProvider(this).\u2026allViewModel::class.java)"

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/hiya/client/callerid/ui/incallui/l;

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->f:Lcom/hiya/client/callerid/ui/incallui/l;

    const-string v2, "model"

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/hiya/client/callerid/ui/incallui/l;->I(Landroid/content/Context;)V

    .line 15
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->f:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/incallui/l;->o()Landroidx/lifecycle/t;

    move-result-object p1

    new-instance v1, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$b;

    invoke-direct {v1, p0}, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$b;-><init>(Lcom/hiya/client/callerid/ui/incallui/InCallActivity;)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 16
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->f:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_CALL_IDENTIFIER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hiya/client/callerid/ui/incallui/l;->B(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_3
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_4
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/c;->onDestroy()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDestroy"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/hiya/client/support/logging/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->f:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/l;->J()V

    return-void

    :cond_0
    const-string v0, "model"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/e;->onPause()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onPause"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/hiya/client/support/logging/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->g:Lcom/hiya/client/callerid/ui/a0/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/c;->G()V

    return-void

    :cond_0
    const-string v0, "callManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/e;->onResume()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onResume"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/hiya/client/support/logging/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->g:Lcom/hiya/client/callerid/ui/a0/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/c;->H()V

    return-void

    :cond_0
    const-string v0, "callManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/c;->onStart()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onStart"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/hiya/client/support/logging/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->f:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_CALL_IDENTIFIER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/incallui/l;->K(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "model"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

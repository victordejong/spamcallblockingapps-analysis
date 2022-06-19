.class public Lcom/truecaller/messaging/smspermission/SmsPermissionActivity;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Le/a/a/e1/d;


# static fields
.field public static final synthetic c:I


# instance fields
.field public a:Le/a/a/e1/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/h5/w;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public A1()Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "success_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public R2(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "messages"

    .line 1
    invoke-static {p0, v1, v0, p1}, Lcom/truecaller/ui/TruecallerInit;->Va(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public j2(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/truecaller/messaging/defaultsms/DefaultSmsActivity;->pa(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-static {p0}, Le/a/l4/k;->l0(Landroid/app/Activity;)V

    .line 2
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0501

    .line 3
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "AppUserInteraction.Context"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Setting context should not be null. Use SmsPermissionActivity.createIntent()."

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-class v1, Le/a/j2;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 9
    invoke-interface {v0}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 10
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-interface {v0}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v3

    .line 12
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    new-instance v4, Le/a/a/e1/c;

    invoke-direct {v4, v1, v3, p1}, Le/a/a/e1/c;-><init>(Le/a/p5/a0;Le/a/p5/g;Ljava/lang/String;)V

    .line 14
    iput-object v4, p0, Lcom/truecaller/messaging/smspermission/SmsPermissionActivity;->a:Le/a/a/e1/b;

    .line 15
    invoke-interface {v0}, Le/a/j2;->u6()Le/a/h5/w;

    move-result-object p1

    .line 16
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/truecaller/messaging/smspermission/SmsPermissionActivity;->b:Le/a/h5/w;

    .line 18
    iget-object p1, p0, Lcom/truecaller/messaging/smspermission/SmsPermissionActivity;->a:Le/a/a/e1/b;

    .line 19
    iput-object p0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const p1, 0x7f0a1041

    .line 20
    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Le/a/a/e1/a;

    invoke-direct {v0, p0}, Le/a/a/e1/a;-><init>(Lcom/truecaller/messaging/smspermission/SmsPermissionActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/smspermission/SmsPermissionActivity;->a:Le/a/a/e1/b;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 3
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ln3/r/a/l;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    invoke-static {p2, p3}, Le/a/p5/s0/g;->M0([Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/smspermission/SmsPermissionActivity;->a:Le/a/a/e1/b;

    invoke-virtual {v0}, Le/a/a/e1/b;->onResume()V

    return-void
.end method

.method public t0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/smspermission/SmsPermissionActivity;->b:Le/a/h5/w;

    invoke-interface {v0}, Le/a/h5/w;->a()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 3
    invoke-static {p0, v4}, Le/a/p5/s0/g;->w1(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 5
    invoke-static {p0, v3}, Le/a/p5/s0/g;->w0(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-static {p0}, Le/a/p5/s0/g;->Z0(Landroid/content/Context;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    .line 7
    invoke-static {p0, v0, v1}, Ln3/k/a/b;->g(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_2
    return-void
.end method

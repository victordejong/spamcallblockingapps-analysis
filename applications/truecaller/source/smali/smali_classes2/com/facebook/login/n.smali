.class public Lcom/facebook/login/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/Date;

.field public final synthetic c:Ljava/util/Date;

.field public final synthetic d:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method public constructor <init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/login/n;->d:Lcom/facebook/login/DeviceAuthDialog;

    iput-object p2, p0, Lcom/facebook/login/n;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/login/n;->b:Ljava/util/Date;

    iput-object p4, p0, Lcom/facebook/login/n;->c:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/j/l0;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/facebook/login/n;->d:Lcom/facebook/login/DeviceAuthDialog;

    .line 2
    iget-object v0, v0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Le/j/l0;->e:Lcom/facebook/FacebookRequestError;

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/facebook/login/n;->d:Lcom/facebook/login/DeviceAuthDialog;

    .line 6
    iget-object v0, v0, Lcom/facebook/FacebookRequestError;->i:Le/j/c0;

    .line 7
    invoke-virtual {p1, v0}, Lcom/facebook/login/DeviceAuthDialog;->RA(Le/j/c0;)V

    return-void

    .line 8
    :cond_1
    :try_start_0
    iget-object p1, p1, Le/j/l0;->c:Lorg/json/JSONObject;

    const-string v0, "id"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {p1}, Lcom/facebook/internal/q0;->w(Lorg/json/JSONObject;)Lcom/facebook/internal/q0$b;

    move-result-object v4

    const-string v1, "name"

    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    iget-object v1, p0, Lcom/facebook/login/n;->d:Lcom/facebook/login/DeviceAuthDialog;

    .line 13
    iget-object v1, v1, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 14
    iget-object v1, v1, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b:Ljava/lang/String;

    .line 15
    invoke-static {v1}, Le/j/w0/a/a;->a(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/facebook/internal/d0;->b(Ljava/lang/String;)Lcom/facebook/internal/c0;

    move-result-object v1

    .line 18
    iget-object v1, v1, Lcom/facebook/internal/c0;->c:Ljava/util/EnumSet;

    .line 19
    sget-object v2, Lcom/facebook/internal/p0;->f:Lcom/facebook/internal/p0;

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    iget-object v8, p0, Lcom/facebook/login/n;->d:Lcom/facebook/login/DeviceAuthDialog;

    .line 22
    iget-boolean v1, v8, Lcom/facebook/login/DeviceAuthDialog;->j:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 23
    iput-boolean v1, v8, Lcom/facebook/login/DeviceAuthDialog;->j:Z

    .line 24
    iget-object v5, p0, Lcom/facebook/login/n;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/login/n;->b:Ljava/util/Date;

    iget-object v7, p0, Lcom/facebook/login/n;->c:Ljava/util/Date;

    .line 25
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/common/R$string;->com_facebook_smart_login_confirmation_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v9, Lcom/facebook/common/R$string;->com_facebook_smart_login_confirmation_continue_as:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/facebook/common/R$string;->com_facebook_smart_login_confirmation_cancel:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    .line 28
    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 29
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v10, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 31
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    new-instance v12, Lcom/facebook/login/m;

    move-object v1, v12

    move-object v2, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/login/m;-><init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/q0$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 32
    invoke-virtual {v11, p1, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/facebook/login/l;

    invoke-direct {v0, v8}, Lcom/facebook/login/l;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    .line 33
    invoke-virtual {p1, v9, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 34
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/facebook/login/n;->d:Lcom/facebook/login/DeviceAuthDialog;

    iget-object p1, p0, Lcom/facebook/login/n;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/login/n;->b:Ljava/util/Date;

    iget-object v6, p0, Lcom/facebook/login/n;->c:Ljava/util/Date;

    move-object v2, v0

    move-object v3, v4

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/facebook/login/DeviceAuthDialog;->PA(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/q0$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-void

    :catch_0
    move-exception p1

    .line 36
    iget-object v0, p0, Lcom/facebook/login/n;->d:Lcom/facebook/login/DeviceAuthDialog;

    new-instance v1, Le/j/c0;

    invoke-direct {v1, p1}, Le/j/c0;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/facebook/login/DeviceAuthDialog;->RA(Le/j/c0;)V

    return-void
.end method

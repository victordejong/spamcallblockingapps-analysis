.class public Lcom/facebook/login/DeviceAuthDialog;
.super Ln3/r/a/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/DeviceAuthDialog$RequestState;
    }
.end annotation


# static fields
.field public static final synthetic l:I


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Lcom/facebook/login/DeviceAuthMethodHandler;

.field public e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile f:Le/j/j0;

.field public volatile g:Ljava/util/concurrent/ScheduledFuture;

.field public volatile h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

.field public i:Z

.field public j:Z

.field public k:Lcom/facebook/login/LoginClient$Request;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/r/a/k;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Z

    .line 4
    iput-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Lcom/facebook/login/LoginClient$Request;

    return-void
.end method

.method public static OA(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 19

    move-object/from16 v13, p1

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v0, "fields"

    const-string v1, "id,permissions,name"

    .line 3
    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v4, 0x3e8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Le/d/c/a/a;->c()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    mul-long/2addr v8, v4

    add-long/2addr v8, v6

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object v15, v0

    goto :goto_0

    :cond_0
    move-object v15, v1

    .line 5
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/Date;

    .line 6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    :cond_1
    move-object v12, v1

    .line 7
    new-instance v16, Lcom/facebook/AccessToken;

    .line 8
    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v0, "accessToken"

    .line 9
    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationId"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/16 v17, 0x400

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object v8, v15

    move-object v10, v12

    move-object/from16 v18, v14

    move-object v14, v12

    move/from16 v12, v17

    invoke-direct/range {v0 .. v12}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Le/j/w;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;I)V

    .line 10
    new-instance v6, Lcom/facebook/GraphRequest;

    sget-object v4, Le/j/m0;->a:Le/j/m0;

    new-instance v5, Lcom/facebook/login/n;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v13, v15, v14}, Lcom/facebook/login/n;-><init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    const-string v2, "me"

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v3, v18

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Le/j/m0;Lcom/facebook/GraphRequest$b;)V

    .line 11
    invoke-virtual {v6}, Lcom/facebook/GraphRequest;->d()Le/j/j0;

    return-void
.end method

.method public static PA(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/q0$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 19

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lcom/facebook/login/DeviceAuthDialog;->d:Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 2
    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v5

    .line 3
    iget-object v7, v0, Lcom/facebook/internal/q0$b;->a:Ljava/util/List;

    .line 4
    iget-object v8, v0, Lcom/facebook/internal/q0$b;->b:Ljava/util/List;

    .line 5
    iget-object v9, v0, Lcom/facebook/internal/q0$b;->c:Ljava/util/List;

    .line 6
    sget-object v10, Le/j/w;->j:Le/j/w;

    const/4 v12, 0x0

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "accessToken"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationId"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    move-object/from16 v6, p1

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/facebook/AccessToken;

    const/4 v14, 0x0

    const/16 v15, 0x400

    move-object v3, v0

    move-object/from16 v11, p4

    move-object/from16 v13, p5

    invoke-direct/range {v3 .. v15}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Le/j/w;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;I)V

    .line 9
    invoke-virtual {v2}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object v3

    .line 10
    iget-object v14, v3, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    const-string v3, "token"

    .line 11
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v3, Lcom/facebook/login/LoginClient$Result;

    sget-object v15, Lcom/facebook/login/LoginClient$Result$a;->b:Lcom/facebook/login/LoginClient$Result$a;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v3

    move-object/from16 v16, v0

    invoke-direct/range {v13 .. v18}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/login/LoginClient;->d(Lcom/facebook/login/LoginClient$Result;)V

    .line 14
    invoke-virtual/range {p0 .. p0}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public QA(Z)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    sget p1, Lcom/facebook/common/R$layout;->com_facebook_smart_device_dialog_fragment:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/facebook/common/R$layout;->com_facebook_device_auth_dialog_fragment:I

    :goto_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 4
    sget v0, Lcom/facebook/common/R$id;->progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->a:Landroid/view/View;

    .line 5
    sget v0, Lcom/facebook/common/R$id;->confirmation_code:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->b:Landroid/widget/TextView;

    .line 6
    sget v0, Lcom/facebook/common/R$id;->cancel_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 7
    new-instance v1, Lcom/facebook/login/DeviceAuthDialog$c;

    invoke-direct {v1, p0}, Lcom/facebook/login/DeviceAuthDialog$c;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget v0, Lcom/facebook/common/R$id;->com_facebook_device_auth_instructions:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->c:Landroid/widget/TextView;

    .line 9
    sget v1, Lcom/facebook/common/R$string;->com_facebook_device_auth_instructions:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public RA(Le/j/c0;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 4
    iget-object v0, v0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Le/j/w0/a/a;->a(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->d:Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ex"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object v1

    .line 9
    iget-object v3, v1, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v7, 0x0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string p1, ": "

    .line 13
    invoke-static {p1, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 14
    new-instance p1, Lcom/facebook/login/LoginClient$Result;

    sget-object v4, Lcom/facebook/login/LoginClient$Result$a;->d:Lcom/facebook/login/LoginClient$Result$a;

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/login/LoginClient;->d(Lcom/facebook/login/LoginClient$Result;)V

    .line 16
    invoke-virtual {p0}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final SA()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-static {}, Le/d/c/a/a;->c()J

    move-result-wide v1

    .line 2
    iput-wide v1, v0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->e:J

    .line 3
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 5
    iget-object v0, v0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->c:Ljava/lang/String;

    const-string v1, "code"

    .line 6
    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v4, 0x0

    sget-object v7, Le/j/m0;->b:Le/j/m0;

    new-instance v8, Lcom/facebook/login/k;

    invoke-direct {v8, p0}, Lcom/facebook/login/k;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    const-string v5, "device/login_status"

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Le/j/m0;Lcom/facebook/GraphRequest$b;)V

    .line 8
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->d()Le/j/j0;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->f:Le/j/j0;

    return-void
.end method

.method public final TA()V
    .locals 5

    .line 1
    const-class v0, Lcom/facebook/login/DeviceAuthMethodHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/login/DeviceAuthMethodHandler;->d:Lcom/facebook/login/DeviceAuthMethodHandler$b;

    .line 2
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v2, Lcom/facebook/login/DeviceAuthMethodHandler;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 5
    sput-object v2, Lcom/facebook/login/DeviceAuthMethodHandler;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 6
    :cond_0
    sget-object v2, Lcom/facebook/login/DeviceAuthMethodHandler;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 7
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    monitor-exit v0

    .line 9
    new-instance v0, Lcom/facebook/login/DeviceAuthDialog$d;

    invoke-direct {v0, p0}, Lcom/facebook/login/DeviceAuthDialog$d;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 10
    iget-wide v3, v1, Lcom/facebook/login/DeviceAuthDialog$RequestState;->d:J

    .line 11
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    invoke-virtual {v2, v0, v3, v4, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->g:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_1
    :try_start_3
    const-string v2, "backgroundExecutor"

    .line 13
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    throw v0

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final UA(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    const-class v3, Le/j/w0/a/a;

    iput-object v2, v1, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 2
    iget-object v0, v1, Lcom/facebook/login/DeviceAuthDialog;->b:Landroid/widget/TextView;

    .line 3
    iget-object v4, v2, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v6, v2, Lcom/facebook/login/DeviceAuthDialog$RequestState;->a:Ljava/lang/String;

    .line 6
    sget-object v0, Le/j/w0/a/a;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 7
    :cond_0
    :try_start_0
    new-instance v10, Ljava/util/EnumMap;

    const-class v0, Le/m/i/c;

    invoke-direct {v10, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 8
    sget-object v0, Le/m/i/c;->f:Le/m/i/c;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v0, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    new-instance v5, Le/m/i/e;

    invoke-direct {v5}, Le/m/i/e;-><init>()V

    sget-object v7, Le/m/i/a;->l:Le/m/i/a;

    const/16 v8, 0xc8

    const/16 v9, 0xc8

    .line 10
    invoke-virtual/range {v5 .. v10}, Le/m/i/e;->a(Ljava/lang/String;Le/m/i/a;IILjava/util/Map;)Le/m/i/j/b;

    move-result-object v0

    .line 11
    iget v5, v0, Le/m/i/j/b;->b:I

    .line 12
    iget v6, v0, Le/m/i/j/b;->a:I

    mul-int v7, v5, v6

    .line 13
    new-array v13, v7, [I

    move v7, v4

    :goto_0
    if-ge v7, v5, :cond_3

    mul-int v8, v7, v6

    move v9, v4

    :goto_1
    if-ge v9, v6, :cond_2

    add-int v10, v8, v9

    .line 14
    invoke-virtual {v0, v9, v7}, Le/m/i/j/b;->a(II)Z

    move-result v12

    if-eqz v12, :cond_1

    const/high16 v12, -0x1000000

    goto :goto_2

    :cond_1
    const/4 v12, -0x1

    :goto_2
    aput v12, v13, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 15
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Le/m/i/h; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v0

    move v15, v6

    move/from16 v18, v6

    move/from16 v19, v5

    .line 16
    :try_start_2
    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_2
    .catch Le/m/i/h; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 17
    invoke-static {v0, v3}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_0
    :goto_3
    move-object v0, v11

    .line 18
    :catch_1
    :goto_4
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 19
    iget-object v0, v1, Lcom/facebook/login/DeviceAuthDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v11, v5, v11, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object v0, v1, Lcom/facebook/login/DeviceAuthDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object v0, v1, Lcom/facebook/login/DeviceAuthDialog;->a:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-boolean v0, v1, Lcom/facebook/login/DeviceAuthDialog;->j:Z

    if-nez v0, :cond_6

    .line 23
    iget-object v0, v2, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b:Ljava/lang/String;

    .line 24
    invoke-static {v3}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_5

    .line 25
    :cond_4
    :try_start_3
    invoke-static {}, Le/j/w0/a/a;->c()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 26
    invoke-static {v0}, Le/j/w0/a/a;->d(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    .line 27
    invoke-static {v0, v3}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_5
    :goto_5
    move v0, v4

    :goto_6
    if-eqz v0, :cond_6

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 29
    new-instance v3, Lcom/facebook/appevents/x;

    invoke-direct {v3, v0, v11, v11}, Lcom/facebook/appevents/x;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    const-string v0, "loggerImpl"

    .line 30
    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "fb_smart_login_service"

    .line 32
    invoke-virtual {v3, v0, v11, v11}, Lcom/facebook/appevents/x;->g(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 33
    :cond_6
    iget-wide v5, v2, Lcom/facebook/login/DeviceAuthDialog$RequestState;->e:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_7

    goto :goto_7

    .line 34
    :cond_7
    invoke-static {}, Le/d/c/a/a;->c()J

    move-result-wide v5

    iget-wide v9, v2, Lcom/facebook/login/DeviceAuthDialog$RequestState;->e:J

    sub-long/2addr v5, v9

    iget-wide v2, v2, Lcom/facebook/login/DeviceAuthDialog$RequestState;->d:J

    const-wide/16 v9, 0x3e8

    mul-long/2addr v2, v9

    sub-long/2addr v5, v2

    cmp-long v0, v5, v7

    if-gez v0, :cond_8

    const/4 v4, 0x1

    :cond_8
    :goto_7
    if-eqz v4, :cond_9

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/login/DeviceAuthDialog;->TA()V

    goto :goto_8

    .line 36
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/login/DeviceAuthDialog;->SA()V

    :goto_8
    return-void
.end method

.method public VA(Lcom/facebook/login/LoginClient$Request;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Lcom/facebook/login/LoginClient$Request;

    .line 2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Request;->b:Ljava/util/Set;

    const-string v1, ","

    .line 4
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "scope"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Request;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "redirect_uri"

    .line 6
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object p1, p1, Lcom/facebook/login/LoginClient$Request;->i:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "target_user_id"

    .line 8
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    sget-object v0, Lcom/facebook/internal/r0;->a:Lcom/facebook/internal/r0;

    sget-object v0, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {}, Le/j/f0;->d()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "access_token"

    .line 14
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object p1, Le/j/w0/a/a;->a:Ljava/lang/String;

    const-class p1, Le/j/w0/a/a;

    invoke-static {p1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "device"

    .line 17
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "model"

    .line 18
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0, p1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_0
    const-string p1, "device_info"

    .line 20
    invoke-virtual {v3, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance p1, Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    sget-object v4, Le/j/m0;->b:Le/j/m0;

    new-instance v5, Lcom/facebook/login/DeviceAuthDialog$b;

    invoke-direct {v5, p0}, Lcom/facebook/login/DeviceAuthDialog$b;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    const-string v2, "device/login"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Le/j/m0;Lcom/facebook/GraphRequest$b;)V

    .line 22
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->d()Le/j/j0;

    return-void
.end method

.method public f0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 4
    iget-object v0, v0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Le/j/w0/a/a;->a(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->d:Lcom/facebook/login/DeviceAuthMethodHandler;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object v1

    .line 8
    iget-object v3, v1, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 9
    new-instance v1, Lcom/facebook/login/LoginClient$Result;

    sget-object v4, Lcom/facebook/login/LoginClient$Result$a;->c:Lcom/facebook/login/LoginClient$Result$a;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v6, "User canceled log in."

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginClient;->d(Lcom/facebook/login/LoginClient$Result;)V

    .line 11
    :cond_2
    invoke-virtual {p0}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    new-instance p1, Lcom/facebook/login/DeviceAuthDialog$a;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$style;->com_facebook_auth_dialog:I

    invoke-direct {p1, p0, v0, v1}, Lcom/facebook/login/DeviceAuthDialog$a;-><init>(Lcom/facebook/login/DeviceAuthDialog;Landroid/content/Context;I)V

    .line 3
    invoke-static {}, Le/j/w0/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/login/DeviceAuthDialog;->QA(Z)Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p2

    check-cast p2, Lcom/facebook/FacebookActivity;

    .line 3
    iget-object p2, p2, Lcom/facebook/FacebookActivity;->a:Landroidx/fragment/app/Fragment;

    .line 4
    check-cast p2, Lcom/facebook/login/t;

    .line 5
    invoke-virtual {p2}, Lcom/facebook/login/t;->OA()Lcom/facebook/login/LoginClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/login/LoginClient;->f()Lcom/facebook/login/LoginMethodHandler;

    move-result-object p2

    check-cast p2, Lcom/facebook/login/DeviceAuthMethodHandler;

    iput-object p2, p0, Lcom/facebook/login/DeviceAuthDialog;->d:Lcom/facebook/login/DeviceAuthMethodHandler;

    if-eqz p3, :cond_0

    const-string p2, "request_state"

    .line 6
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p0, p2}, Lcom/facebook/login/DeviceAuthDialog;->UA(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    :cond_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Z

    .line 2
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    invoke-super {p0}, Ln3/r/a/k;->onDestroyView()V

    .line 4
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->f:Le/j/j0;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->f:Le/j/j0;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->g:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->a:Landroid/view/View;

    .line 9
    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->b:Landroid/widget/TextView;

    .line 10
    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->c:Landroid/widget/TextView;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-boolean p1, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->f0()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    const-string v1, "request_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

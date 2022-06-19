.class public Lcom/truecaller/notifications/internal/InternalTruecallerNotificationsService;
.super Ln3/k/a/a0;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/k/a/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleWork(Landroid/content/Intent;)V
    .locals 7

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Le/a/b0/g/a;

    .line 3
    invoke-virtual {v0}, Le/a/b0/g/a;->W()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "EXTRA_TYPE"

    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v0, "EXTRA_TITLE"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "EXTRA_TEXT"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "EXTRA_INTENT"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    const-string v0, "EXTRA_ANALYTICS_SUBTYPE"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Le/a/o5/g1;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZLjava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "EXTRA_NOTIFICATION"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 12
    :try_start_1
    new-instance p1, Le/m/e/g0/a;

    invoke-direct {p1, v0}, Le/m/e/g0/a;-><init>(Ljava/io/Reader;)V

    .line 13
    invoke-static {p1}, Le/m/e/v;->a(Le/m/e/g0/a;)Le/m/e/q;

    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    instance-of v1, v0, Le/m/e/s;

    if-nez v1, :cond_4

    .line 16
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object p1

    sget-object v1, Le/m/e/g0/b;->j:Le/m/e/g0/b;

    if-ne p1, v1, :cond_3

    goto :goto_0

    .line 17
    :cond_3
    new-instance p1, Le/m/e/z;

    const-string v0, "Did not consume the entire document."

    invoke-direct {p1, v0}, Le/m/e/z;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Le/m/e/g0/d; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 18
    :cond_4
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Le/m/e/q;->d()Le/m/e/t;

    move-result-object p1

    .line 19
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    invoke-direct {v1, p1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;-><init>(Le/m/e/t;)V

    invoke-static {v0, v1}, Le/a/o5/g1;->c(Landroid/content/Context;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    new-instance v0, Le/m/e/z;

    invoke-direct {v0, p1}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 21
    new-instance v0, Le/m/e/r;

    invoke-direct {v0, p1}, Le/m/e/r;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 22
    new-instance v0, Le/m/e/z;

    invoke-direct {v0, p1}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    move-exception p1

    const-string v0, "BGServ - Exception"

    .line 23
    invoke-static {p1, v0}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

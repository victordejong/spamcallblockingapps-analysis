.class public Lcom/clevertap/android/hms/CTHmsMessageService;
.super Lcom/huawei/hms/push/HmsMessageService;
.source "SourceFile"


# instance fields
.field public b:Le/h/a/a/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/push/HmsMessageService;-><init>()V

    .line 2
    new-instance v0, Le/h/a/a/a;

    new-instance v1, Le/h/a/a/c;

    invoke-direct {v1}, Le/h/a/a/c;-><init>()V

    invoke-direct {v0, v1}, Le/h/a/a/a;-><init>(Le/h/a/c/s0/b;)V

    iput-object v0, p0, Lcom/clevertap/android/hms/CTHmsMessageService;->b:Le/h/a/a/e;

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/huawei/hms/push/RemoteMessage;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/huawei/hms/push/HmsMessageService;->onMessageReceived(Lcom/huawei/hms/push/RemoteMessage;)V

    .line 2
    sget-object v0, Le/h/a/a/b;->a:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/clevertap/android/hms/CTHmsMessageService;->b:Le/h/a/a/e;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v0, Le/h/a/a/a;

    invoke-virtual {v0, v1, p1}, Le/h/a/a/a;->a(Landroid/content/Context;Lcom/huawei/hms/push/RemoteMessage;)Z

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/huawei/hms/push/HmsMessageService;->onNewToken(Ljava/lang/String;)V

    .line 2
    sget-object v0, Le/h/a/a/b;->a:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/clevertap/android/hms/CTHmsMessageService;->b:Le/h/a/a/e;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v0, Le/h/a/a/a;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    sget-object v0, Le/h/a/c/w0/g$a;->g:Le/h/a/c/w0/g$a;

    .line 6
    invoke-static {v1, p1, v0}, Le/h/a/c/p;->s(Landroid/content/Context;Ljava/lang/String;Le/h/a/c/w0/g$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :catchall_0
    sget-object p1, Le/h/a/a/b;->a:Ljava/lang/String;

    :goto_0
    return-void
.end method

.class public final Lcom/tenor/android/core/service/AaidServiceCompat;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static sListener:Lcom/tenor/android/core/service/IAaidListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Lcom/tenor/android/core/service/AaidServiceCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static requestAaid(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/tenor/android/core/service/AaidServiceCompat;->requestAaid(Landroid/content/Context;Lcom/tenor/android/core/service/IAaidListener;)V

    return-void
.end method

.method public static requestAaid(Landroid/content/Context;Lcom/tenor/android/core/service/IAaidListener;)V
    .locals 2

    .line 2
    sput-object p1, Lcom/tenor/android/core/service/AaidServiceCompat;->sListener:Lcom/tenor/android/core/service/IAaidListener;

    .line 3
    instance-of p1, p0, Landroid/app/Application;

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    .line 5
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tenor/android/core/service/AaidServiceCompat;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "ACTION_GET_AAID"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tenor/android/core/constant/StringConstant;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "ACTION_GET_AAID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/tenor/android/core/service/AaidServiceCompat;->sListener:Lcom/tenor/android/core/service/IAaidListener;

    invoke-static {p1, v0}, Lcom/tenor/android/core/service/AaidClient;->init(Landroid/content/Context;Lcom/tenor/android/core/service/IAaidListener;)V

    :goto_0
    return-void

    .line 5
    :cond_2
    :goto_1
    sget-object p1, Lcom/tenor/android/core/service/AaidServiceCompat;->sListener:Lcom/tenor/android/core/service/IAaidListener;

    if-eqz p1, :cond_3

    const/4 v0, -0x4

    .line 6
    invoke-interface {p1, v0}, Lcom/tenor/android/core/service/IAaidListener;->failure(I)V

    :cond_3
    return-void
.end method

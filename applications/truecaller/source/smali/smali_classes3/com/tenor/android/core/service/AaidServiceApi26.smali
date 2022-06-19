.class public final Lcom/tenor/android/core/service/AaidServiceApi26;
.super Ln3/k/a/i;
.source "SourceFile"


# static fields
.field private static sListener:Lcom/tenor/android/core/service/IAaidListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/k/a/i;-><init>()V

    return-void
.end method

.method public static requestAaid(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/tenor/android/core/service/AaidServiceApi26;->requestAaid(Landroid/content/Context;Lcom/tenor/android/core/service/IAaidListener;)V

    return-void
.end method

.method public static requestAaid(Landroid/content/Context;Lcom/tenor/android/core/service/IAaidListener;)V
    .locals 2

    .line 2
    sput-object p1, Lcom/tenor/android/core/service/AaidServiceApi26;->sListener:Lcom/tenor/android/core/service/IAaidListener;

    .line 3
    const-class p1, Lcom/tenor/android/core/service/AaidServiceApi26;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_GET_AAID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Ln3/k/a/i;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onHandleWork(Landroid/content/Intent;)V
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
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/tenor/android/core/service/AaidServiceApi26;->sListener:Lcom/tenor/android/core/service/IAaidListener;

    invoke-static {p1, v0}, Lcom/tenor/android/core/service/AaidClient;->init(Landroid/content/Context;Lcom/tenor/android/core/service/IAaidListener;)V

    :goto_0
    return-void

    .line 5
    :cond_2
    :goto_1
    sget-object p1, Lcom/tenor/android/core/service/AaidServiceApi26;->sListener:Lcom/tenor/android/core/service/IAaidListener;

    if-eqz p1, :cond_3

    const/4 v0, -0x4

    .line 6
    invoke-interface {p1, v0}, Lcom/tenor/android/core/service/IAaidListener;->failure(I)V

    :cond_3
    return-void
.end method

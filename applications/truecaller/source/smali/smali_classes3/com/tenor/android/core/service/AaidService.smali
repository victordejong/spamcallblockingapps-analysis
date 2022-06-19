.class public Lcom/tenor/android/core/service/AaidService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_GET_AAID:Ljava/lang/String; = "ACTION_GET_AAID"

.field public static final JOB_ID_GET_AAID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestAaid(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/tenor/android/core/service/AaidService;->requestAaid(Landroid/content/Context;Lcom/tenor/android/core/service/IAaidListener;)V

    return-void
.end method

.method public static requestAaid(Landroid/content/Context;Lcom/tenor/android/core/service/IAaidListener;)V
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lcom/tenor/android/core/service/AaidServiceApi26;->requestAaid(Landroid/content/Context;Lcom/tenor/android/core/service/IAaidListener;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    invoke-static {p0, p1}, Lcom/tenor/android/core/service/AaidServiceCompat;->requestAaid(Landroid/content/Context;Lcom/tenor/android/core/service/IAaidListener;)V

    :goto_0
    return-void
.end method

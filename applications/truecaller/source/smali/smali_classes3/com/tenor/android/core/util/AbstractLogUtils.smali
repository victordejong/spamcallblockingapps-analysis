.class public abstract Lcom/tenor/android/core/util/AbstractLogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sDebuggable:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/tenor/android/core/util/AbstractLogUtils;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 3
    invoke-static {}, Lcom/tenor/android/core/util/AbstractLogUtils;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/tenor/android/core/util/AbstractLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 2
    invoke-static {}, Lcom/tenor/android/core/util/AbstractLogUtils;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 4
    invoke-static {}, Lcom/tenor/android/core/util/AbstractLogUtils;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDebuggable()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tenor/android/core/util/AbstractLogUtils;->sDebuggable:Z

    return v0
.end method

.method public static setDebuggable(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/tenor/android/core/util/AbstractLogUtils;->sDebuggable:Z

    return-void
.end method

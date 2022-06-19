.class public Lcom/tenor/android/core/constant/ItemVisualPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tenor/android/core/constant/ItemVisualPosition$Value;
    }
.end annotation


# static fields
.field public static final LEFT:Ljava/lang/String; = "LEFT"

.field public static final RIGHT:Ljava/lang/String; = "RIGHT"

.field public static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(IZ)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/tenor/android/core/constant/ItemVisualPosition$Value;
    .end annotation

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    const-string v0, "LEFT"

    const-string v1, "RIGHT"

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_3
    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method public static parse(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/tenor/android/core/constant/ItemVisualPosition$Value;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractUIUtils;->isRightToLeft(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/tenor/android/core/constant/ItemVisualPosition;->parse(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

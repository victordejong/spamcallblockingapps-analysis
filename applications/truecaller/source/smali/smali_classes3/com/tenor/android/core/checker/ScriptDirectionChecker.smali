.class public Lcom/tenor/android/core/checker/ScriptDirectionChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tenor/android/core/checker/ScriptDirectionChecker$Value;
    }
.end annotation


# static fields
.field public static final LEFT_TO_RIGHT:I = 0x0

.field public static final RIGHT_TO_LEFT:I = 0x1

.field public static final UNSPECIFIED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSelfScriptDirection(Landroid/content/Context;)I
    .locals 1
    .annotation build Lcom/tenor/android/core/checker/ScriptDirectionChecker$Value;
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tenor/android/core/R$bool;->right_to_left:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

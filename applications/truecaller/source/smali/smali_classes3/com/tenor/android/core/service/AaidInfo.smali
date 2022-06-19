.class public final Lcom/tenor/android/core/service/AaidInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tenor/android/core/service/AaidInfo$State;
    }
.end annotation


# static fields
.field public static final AAID_DENIED:I = -0x1

.field public static final AAID_FAILURE:I = -0x4

.field public static final AAID_FAILURE_NO_AAID_LIBRARY:I = -0x3

.field public static final AAID_FAILURE_NO_GOOGLE_PLAY:I = -0x2

.field public static final AAID_GRANTED:I


# instance fields
.field private final mAdvertisingId:Ljava/lang/String;

.field private final mLimitAdTrackingEnabled:Z

.field private final mState:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/tenor/android/core/service/AaidInfo$State;
        .end annotation
    .end param

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lcom/tenor/android/core/service/AaidInfo;-><init>(Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 3
    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/tenor/android/core/service/AaidInfo;-><init>(Ljava/lang/String;ZI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/tenor/android/core/constant/StringConstant;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tenor/android/core/service/AaidInfo;->mAdvertisingId:Ljava/lang/String;

    .line 6
    iput-boolean p2, p0, Lcom/tenor/android/core/service/AaidInfo;->mLimitAdTrackingEnabled:Z

    .line 7
    iput p3, p0, Lcom/tenor/android/core/service/AaidInfo;->mState:I

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/service/AaidInfo;->mAdvertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1
    .annotation build Lcom/tenor/android/core/service/AaidInfo$State;
    .end annotation

    .line 1
    iget v0, p0, Lcom/tenor/android/core/service/AaidInfo;->mState:I

    return v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tenor/android/core/service/AaidInfo;->mLimitAdTrackingEnabled:Z

    return v0
.end method

.class public abstract Lcom/google/android/libraries/places/api/model/PlusCode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/api/model/PlusCode$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/android/libraries/places/api/model/PlusCode$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/api/model/zzt;

    invoke-direct {v0}, Lcom/google/android/libraries/places/api/model/zzt;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getCompoundCode()Ljava/lang/String;
.end method

.method public abstract getGlobalCode()Ljava/lang/String;
.end method

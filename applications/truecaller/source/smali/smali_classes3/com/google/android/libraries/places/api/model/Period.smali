.class public abstract Lcom/google/android/libraries/places/api/model/Period;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/api/model/Period$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/android/libraries/places/api/model/Period$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/api/model/zzo;

    invoke-direct {v0}, Lcom/google/android/libraries/places/api/model/zzo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;
.end method

.method public abstract getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;
.end method

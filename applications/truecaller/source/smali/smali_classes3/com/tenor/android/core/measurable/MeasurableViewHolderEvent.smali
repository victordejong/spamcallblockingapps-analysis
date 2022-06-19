.class public Lcom/tenor/android/core/measurable/MeasurableViewHolderEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1fc2a8c07d5ee8b2L


# instance fields
.field private final mAction:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "action"
    .end annotation
.end field

.field private mDuration:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "elapsed_ms"
    .end annotation
.end field

.field private final mSourceId:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "source_id"
    .end annotation
.end field

.field private final mTimestamp:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "timestamp"
    .end annotation
.end field

.field private final mUtcOffset:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "timezone"
    .end annotation
.end field

.field private mVisibleFraction:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "visible_fraction"
    .end annotation
.end field

.field private final mVisualPosition:Ljava/lang/String;
    .annotation build Lcom/tenor/android/core/constant/ItemVisualPosition$Value;
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "visual_pos"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tenor/android/core/measurable/MeasurableViewHolderData;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->getVisualPosition()Ljava/lang/String;

    move-result-object v1

    const-string v2, "view"

    invoke-direct {p0, v0, v2, p2, v1}, Lcom/tenor/android/core/measurable/MeasurableViewHolderEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->getAccumulatedVisibleDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%d"

    invoke-static {p2, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderEvent;->mDuration:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->getVisibleFraction()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "%f"

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderEvent;->mVisibleFraction:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/tenor/android/core/constant/ViewAction$Value;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lcom/tenor/android/core/constant/ItemVisualPosition$Value;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderEvent;->mSourceId:Ljava/lang/String;

    .line 6
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%d"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderEvent;->mTimestamp:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderEvent;->mAction:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderEvent;->mUtcOffset:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderEvent;->mVisualPosition:Ljava/lang/String;

    return-void
.end method

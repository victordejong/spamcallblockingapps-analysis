.class public Lcom/google/android/gms/vision/Frame$Metadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metadata"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:J

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->f:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/vision/Frame$Metadata;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->f:I

    .line 5
    iget v0, p1, Lcom/google/android/gms/vision/Frame$Metadata;->a:I

    .line 6
    iput v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->a:I

    .line 7
    iget v0, p1, Lcom/google/android/gms/vision/Frame$Metadata;->b:I

    .line 8
    iput v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->b:I

    .line 9
    iget v0, p1, Lcom/google/android/gms/vision/Frame$Metadata;->c:I

    .line 10
    iput v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->c:I

    .line 11
    iget-wide v0, p1, Lcom/google/android/gms/vision/Frame$Metadata;->d:J

    .line 12
    iput-wide v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->d:J

    .line 13
    iget p1, p1, Lcom/google/android/gms/vision/Frame$Metadata;->e:I

    .line 14
    iput p1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->e:I

    return-void
.end method

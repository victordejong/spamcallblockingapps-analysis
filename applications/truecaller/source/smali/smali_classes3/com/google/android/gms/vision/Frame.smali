.class public Lcom/google/android/gms/vision/Frame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/Frame$Metadata;,
        Lcom/google/android/gms/vision/Frame$Builder;
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/vision/Frame$Metadata;

.field public b:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/vision/Frame$Metadata;

    invoke-direct {v0}, Lcom/google/android/gms/vision/Frame$Metadata;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/Frame;->a:Lcom/google/android/gms/vision/Frame$Metadata;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/vision/Frame;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public synthetic constructor <init>(Le/m/a/f/r/e;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/vision/Frame;-><init>()V

    return-void
.end method

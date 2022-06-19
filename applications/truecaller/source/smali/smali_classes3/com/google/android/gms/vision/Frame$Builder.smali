.class public Lcom/google/android/gms/vision/Frame$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/vision/Frame;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/vision/Frame;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/Frame;-><init>(Le/m/a/f/r/e;)V

    iput-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->a:Lcom/google/android/gms/vision/Frame;

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;III)Lcom/google/android/gms/vision/Frame$Builder;
    .locals 2

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int v1, p2, p3

    if-lt v0, v1, :cond_2

    const/16 v0, 0x10

    if-eq p4, v0, :cond_1

    const/16 v0, 0x11

    if-eq p4, v0, :cond_1

    const v0, 0x32315659

    if-ne p4, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x25

    const-string p3, "Unsupported image format: "

    invoke-static {p2, p3, p4}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->a:Lcom/google/android/gms/vision/Frame;

    .line 4
    iput-object p1, v0, Lcom/google/android/gms/vision/Frame;->b:Ljava/nio/ByteBuffer;

    .line 5
    iget-object p1, v0, Lcom/google/android/gms/vision/Frame;->a:Lcom/google/android/gms/vision/Frame$Metadata;

    .line 6
    iput p2, p1, Lcom/google/android/gms/vision/Frame$Metadata;->a:I

    .line 7
    iput p3, p1, Lcom/google/android/gms/vision/Frame$Metadata;->b:I

    .line 8
    iput p4, p1, Lcom/google/android/gms/vision/Frame$Metadata;->f:I

    return-object p0

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid image data size."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null image data supplied."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

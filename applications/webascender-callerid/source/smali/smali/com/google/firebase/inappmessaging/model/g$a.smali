.class public Lcom/google/firebase/inappmessaging/model/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/model/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/inappmessaging/model/g;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/g$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/firebase/inappmessaging/model/g;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/g$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/model/g$a;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/inappmessaging/model/g;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageData model must have an imageUrl"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/g$a;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/g$a;->a:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

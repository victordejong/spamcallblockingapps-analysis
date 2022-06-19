.class public Lcom/google/firebase/inappmessaging/model/n$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/model/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/inappmessaging/model/n;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/n$b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/firebase/inappmessaging/model/n;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/n$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/model/n$b;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/inappmessaging/model/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/inappmessaging/model/n$a;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text model must have a color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/n$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/n$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/n$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/n$b;->a:Ljava/lang/String;

    return-object p0
.end method

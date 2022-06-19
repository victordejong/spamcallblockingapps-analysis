.class public Lcom/google/firebase/inappmessaging/model/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/model/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/google/firebase/inappmessaging/model/n;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/inappmessaging/model/d;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/d$b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/d$b;->a:Lcom/google/firebase/inappmessaging/model/n;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/google/firebase/inappmessaging/model/d;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/model/d$b;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/firebase/inappmessaging/model/d;-><init>(Lcom/google/firebase/inappmessaging/model/n;Ljava/lang/String;Lcom/google/firebase/inappmessaging/model/d$a;)V

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button model must have text"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button model must have a color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/d$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/d$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lcom/google/firebase/inappmessaging/model/n;)Lcom/google/firebase/inappmessaging/model/d$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/d$b;->a:Lcom/google/firebase/inappmessaging/model/n;

    return-object p0
.end method

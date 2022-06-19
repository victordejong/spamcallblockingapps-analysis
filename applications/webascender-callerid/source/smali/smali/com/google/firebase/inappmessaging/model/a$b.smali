.class public Lcom/google/firebase/inappmessaging/model/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/firebase/inappmessaging/model/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/inappmessaging/model/a;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/model/a;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/a$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/model/a$b;->b:Lcom/google/firebase/inappmessaging/model/d;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/inappmessaging/model/a;-><init>(Ljava/lang/String;Lcom/google/firebase/inappmessaging/model/d;Lcom/google/firebase/inappmessaging/model/a$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/a$b;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/a$b;->a:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public c(Lcom/google/firebase/inappmessaging/model/d;)Lcom/google/firebase/inappmessaging/model/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/a$b;->b:Lcom/google/firebase/inappmessaging/model/d;

    return-object p0
.end method

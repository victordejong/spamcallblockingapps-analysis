.class public abstract Lcom/google/firebase/inappmessaging/model/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/firebase/inappmessaging/model/g;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field b:Lcom/google/firebase/inappmessaging/model/MessageType;

.field c:Lcom/google/firebase/inappmessaging/model/e;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/model/e;Lcom/google/firebase/inappmessaging/model/MessageType;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/model/e;",
            "Lcom/google/firebase/inappmessaging/model/MessageType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/i;->c:Lcom/google/firebase/inappmessaging/model/e;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/model/i;->b:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/model/i;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/inappmessaging/model/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/i;->c:Lcom/google/firebase/inappmessaging/model/e;

    return-object v0
.end method

.method public b()Lcom/google/firebase/inappmessaging/model/g;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/i;->a:Lcom/google/firebase/inappmessaging/model/g;

    return-object v0
.end method

.method public c()Lcom/google/firebase/inappmessaging/model/MessageType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/i;->b:Lcom/google/firebase/inappmessaging/model/MessageType;

    return-object v0
.end method

.class public Lcom/google/firebase/inappmessaging/model/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/firebase/inappmessaging/model/i;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/model/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/o;->a:Lcom/google/firebase/inappmessaging/model/i;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/model/o;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/inappmessaging/model/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/o;->a:Lcom/google/firebase/inappmessaging/model/i;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/o;->b:Ljava/lang/String;

    return-object v0
.end method

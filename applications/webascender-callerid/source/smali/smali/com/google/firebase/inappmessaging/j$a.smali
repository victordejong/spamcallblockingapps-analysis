.class Lcom/google/firebase/inappmessaging/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/a0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/a0$d<",
        "Lcom/google/firebase/inappmessaging/j;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Lcom/google/protobuf/a0$c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/j$a;->b(I)Lcom/google/firebase/inappmessaging/j;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lcom/google/firebase/inappmessaging/j;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/j;->forNumber(I)Lcom/google/firebase/inappmessaging/j;

    move-result-object p1

    return-object p1
.end method

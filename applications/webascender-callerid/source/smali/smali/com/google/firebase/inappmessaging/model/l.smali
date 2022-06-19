.class public final Lcom/google/firebase/inappmessaging/model/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/i0/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/model/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/i0/b/b<",
        "Lcom/google/firebase/inappmessaging/model/k;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/firebase/inappmessaging/model/l;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/l$a;->a()Lcom/google/firebase/inappmessaging/model/l;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/google/firebase/inappmessaging/model/k;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/model/k;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/model/k;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/firebase/inappmessaging/model/k;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/l;->c()Lcom/google/firebase/inappmessaging/model/k;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/l;->b()Lcom/google/firebase/inappmessaging/model/k;

    move-result-object v0

    return-object v0
.end method

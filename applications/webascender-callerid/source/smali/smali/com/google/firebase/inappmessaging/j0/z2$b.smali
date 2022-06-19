.class final Lcom/google/firebase/inappmessaging/j0/z2$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/j0/z2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field static final a:Lcom/google/protobuf/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/k0<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/inappmessaging/j0/y2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/protobuf/s1$b;->STRING:Lcom/google/protobuf/s1$b;

    sget-object v1, Lcom/google/protobuf/s1$b;->MESSAGE:Lcom/google/protobuf/s1$b;

    .line 2
    invoke-static {}, Lcom/google/firebase/inappmessaging/j0/y2;->b0()Lcom/google/firebase/inappmessaging/j0/y2;

    move-result-object v2

    const-string v3, ""

    .line 3
    invoke-static {v0, v3, v1, v2}, Lcom/google/protobuf/k0;->d(Lcom/google/protobuf/s1$b;Ljava/lang/Object;Lcom/google/protobuf/s1$b;Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/inappmessaging/j0/z2$b;->a:Lcom/google/protobuf/k0;

    return-void
.end method

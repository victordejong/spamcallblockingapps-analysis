.class public abstract Lcom/google/firebase/inappmessaging/j0/k2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/google/firebase/installations/k;)Lcom/google/firebase/inappmessaging/j0/k2;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/e;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/j0/e;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/k;)V

    return-object v0
.end method


# virtual methods
.method abstract b()Ljava/lang/String;
.end method

.method abstract c()Lcom/google/firebase/installations/k;
.end method

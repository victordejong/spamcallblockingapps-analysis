.class final synthetic Lcom/google/firebase/inappmessaging/j0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final f:Lcom/google/firebase/inappmessaging/j0/k;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/j0/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/g;->f:Lcom/google/firebase/inappmessaging/j0/k;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/k;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/g;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/g;-><init>(Lcom/google/firebase/inappmessaging/j0/k;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/g;->f:Lcom/google/firebase/inappmessaging/j0/k;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/k;->d(Lcom/google/firebase/inappmessaging/j0/k;)Lg/f/e/a/a/a/e/e;

    move-result-object v0

    return-object v0
.end method

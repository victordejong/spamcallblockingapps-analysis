.class final synthetic Lcom/google/firebase/inappmessaging/j0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/c;


# instance fields
.field private final f:Lcom/google/firebase/inappmessaging/j0/k;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/j0/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/h;->f:Lcom/google/firebase/inappmessaging/j0/k;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/k;)Li/c/y/c;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/h;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/h;-><init>(Lcom/google/firebase/inappmessaging/j0/k;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/h;->f:Lcom/google/firebase/inappmessaging/j0/k;

    check-cast p1, Lg/f/e/a/a/a/e/e;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/j0/k;->e(Lcom/google/firebase/inappmessaging/j0/k;Lg/f/e/a/a/a/e/e;)V

    return-void
.end method

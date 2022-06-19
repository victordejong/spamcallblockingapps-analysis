.class final synthetic Lcom/google/firebase/inappmessaging/j0/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/e;


# instance fields
.field private final f:Lcom/google/firebase/inappmessaging/j0/i2;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/j0/i2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/e2;->f:Lcom/google/firebase/inappmessaging/j0/i2;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/i2;)Li/c/y/e;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/e2;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/e2;-><init>(Lcom/google/firebase/inappmessaging/j0/i2;)V

    return-object v0
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/e2;->f:Lcom/google/firebase/inappmessaging/j0/i2;

    check-cast p1, Lg/f/e/a/a/a/c;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/j0/i2;->L(Lcom/google/firebase/inappmessaging/j0/i2;Lg/f/e/a/a/a/c;)Z

    move-result p1

    return p1
.end method

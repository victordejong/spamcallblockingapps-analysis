.class final synthetic Lcom/google/firebase/inappmessaging/j0/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/d;


# instance fields
.field private final f:Lcom/google/firebase/inappmessaging/j0/i2;

.field private final g:Lg/f/e/a/a/a/e/b;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/j0/i2;Lg/f/e/a/a/a/e/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/n1;->f:Lcom/google/firebase/inappmessaging/j0/i2;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/n1;->g:Lg/f/e/a/a/a/e/b;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/i2;Lg/f/e/a/a/a/e/b;)Li/c/y/d;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/n1;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/j0/n1;-><init>(Lcom/google/firebase/inappmessaging/j0/i2;Lg/f/e/a/a/a/e/b;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/n1;->f:Lcom/google/firebase/inappmessaging/j0/i2;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/n1;->g:Lg/f/e/a/a/a/e/b;

    check-cast p1, Lcom/google/firebase/inappmessaging/j0/k2;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/inappmessaging/j0/i2;->u(Lcom/google/firebase/inappmessaging/j0/i2;Lg/f/e/a/a/a/e/b;Lcom/google/firebase/inappmessaging/j0/k2;)Lg/f/e/a/a/a/e/e;

    move-result-object p1

    return-object p1
.end method

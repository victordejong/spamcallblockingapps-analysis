.class final synthetic Lcom/google/firebase/inappmessaging/j0/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/c;


# instance fields
.field private final f:Lcom/google/firebase/inappmessaging/j0/w0;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/j0/w0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/o0;->f:Lcom/google/firebase/inappmessaging/j0/w0;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/w0;)Li/c/y/c;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/o0;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/o0;-><init>(Lcom/google/firebase/inappmessaging/j0/w0;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/o0;->f:Lcom/google/firebase/inappmessaging/j0/w0;

    check-cast p1, Lg/f/e/a/a/a/e/b;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/j0/w0;->a(Lcom/google/firebase/inappmessaging/j0/w0;Lg/f/e/a/a/a/e/b;)V

    return-void
.end method

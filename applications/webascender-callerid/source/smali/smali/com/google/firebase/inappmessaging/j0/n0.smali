.class final synthetic Lcom/google/firebase/inappmessaging/j0/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/d;


# instance fields
.field private final f:Lcom/google/firebase/inappmessaging/j0/w0;

.field private final g:Lg/f/e/a/a/a/e/a;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/j0/w0;Lg/f/e/a/a/a/e/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/n0;->f:Lcom/google/firebase/inappmessaging/j0/w0;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/n0;->g:Lg/f/e/a/a/a/e/a;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/w0;Lg/f/e/a/a/a/e/a;)Li/c/y/d;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/n0;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/j0/n0;-><init>(Lcom/google/firebase/inappmessaging/j0/w0;Lg/f/e/a/a/a/e/a;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/n0;->f:Lcom/google/firebase/inappmessaging/j0/w0;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/n0;->g:Lg/f/e/a/a/a/e/a;

    check-cast p1, Lg/f/e/a/a/a/e/b;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/inappmessaging/j0/w0;->l(Lcom/google/firebase/inappmessaging/j0/w0;Lg/f/e/a/a/a/e/a;Lg/f/e/a/a/a/e/b;)Li/c/d;

    move-result-object p1

    return-object p1
.end method

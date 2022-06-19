.class final synthetic Lcom/google/firebase/inappmessaging/j0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/a;


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/j0/k;

.field private final b:Lg/f/e/a/a/a/e/e;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/j0/k;Lg/f/e/a/a/a/e/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/f;->a:Lcom/google/firebase/inappmessaging/j0/k;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/f;->b:Lg/f/e/a/a/a/e/e;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/k;Lg/f/e/a/a/a/e/e;)Li/c/y/a;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/f;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/j0/f;-><init>(Lcom/google/firebase/inappmessaging/j0/k;Lg/f/e/a/a/a/e/e;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/f;->a:Lcom/google/firebase/inappmessaging/j0/k;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/f;->b:Lg/f/e/a/a/a/e/e;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/j0/k;->g(Lcom/google/firebase/inappmessaging/j0/k;Lg/f/e/a/a/a/e/e;)V

    return-void
.end method

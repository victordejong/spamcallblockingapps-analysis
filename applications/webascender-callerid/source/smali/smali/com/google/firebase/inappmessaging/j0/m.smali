.class final synthetic Lcom/google/firebase/inappmessaging/j0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/k/b;


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/j0/n;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/j0/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/m;->a:Lcom/google/firebase/inappmessaging/j0/n;

    return-void
.end method

.method public static b(Lcom/google/firebase/inappmessaging/j0/n;)Lcom/google/firebase/k/b;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/m;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/m;-><init>(Lcom/google/firebase/inappmessaging/j0/n;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/firebase/k/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/m;->a:Lcom/google/firebase/inappmessaging/j0/n;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/j0/n;->d(Lcom/google/firebase/inappmessaging/j0/n;Lcom/google/firebase/k/a;)V

    return-void
.end method

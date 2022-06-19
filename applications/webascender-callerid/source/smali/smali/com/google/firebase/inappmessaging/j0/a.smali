.class final synthetic Lcom/google/firebase/inappmessaging/j0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final f:Lcom/google/firebase/inappmessaging/j0/b;

.field private final g:Lcom/google/firebase/inappmessaging/m;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/j0/b;Lcom/google/firebase/inappmessaging/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/a;->f:Lcom/google/firebase/inappmessaging/j0/b;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/a;->g:Lcom/google/firebase/inappmessaging/m;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/b;Lcom/google/firebase/inappmessaging/m;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/a;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/j0/a;-><init>(Lcom/google/firebase/inappmessaging/j0/b;Lcom/google/firebase/inappmessaging/m;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/a;->f:Lcom/google/firebase/inappmessaging/j0/b;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/a;->g:Lcom/google/firebase/inappmessaging/m;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/j0/b;->a(Lcom/google/firebase/inappmessaging/j0/b;Lcom/google/firebase/inappmessaging/m;)V

    return-void
.end method

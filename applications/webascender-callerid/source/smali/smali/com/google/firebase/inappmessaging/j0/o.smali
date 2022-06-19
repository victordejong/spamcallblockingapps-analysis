.class final synthetic Lcom/google/firebase/inappmessaging/j0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final f:Lcom/google/firebase/inappmessaging/j0/s$f;

.field private final g:Lcom/google/firebase/inappmessaging/model/i;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/j0/s$f;Lcom/google/firebase/inappmessaging/model/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/o;->f:Lcom/google/firebase/inappmessaging/j0/s$f;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/o;->g:Lcom/google/firebase/inappmessaging/model/i;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/s$f;Lcom/google/firebase/inappmessaging/model/i;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/o;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/j0/o;-><init>(Lcom/google/firebase/inappmessaging/j0/s$f;Lcom/google/firebase/inappmessaging/model/i;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/o;->f:Lcom/google/firebase/inappmessaging/j0/s$f;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/o;->g:Lcom/google/firebase/inappmessaging/model/i;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/j0/s;->d(Lcom/google/firebase/inappmessaging/j0/s$f;Lcom/google/firebase/inappmessaging/model/i;)V

    return-void
.end method

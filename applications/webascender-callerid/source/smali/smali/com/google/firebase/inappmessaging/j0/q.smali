.class final synthetic Lcom/google/firebase/inappmessaging/j0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final f:Lcom/google/firebase/inappmessaging/j0/s$a;

.field private final g:Lcom/google/firebase/inappmessaging/model/i;

.field private final h:Lcom/google/firebase/inappmessaging/model/a;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/j0/s$a;Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/model/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q;->f:Lcom/google/firebase/inappmessaging/j0/s$a;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/q;->g:Lcom/google/firebase/inappmessaging/model/i;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/j0/q;->h:Lcom/google/firebase/inappmessaging/model/a;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/s$a;Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/model/a;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/inappmessaging/j0/q;-><init>(Lcom/google/firebase/inappmessaging/j0/s$a;Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/model/a;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q;->f:Lcom/google/firebase/inappmessaging/j0/s$a;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/q;->g:Lcom/google/firebase/inappmessaging/model/i;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/j0/q;->h:Lcom/google/firebase/inappmessaging/model/a;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/inappmessaging/j0/s;->e(Lcom/google/firebase/inappmessaging/j0/s$a;Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/model/a;)V

    return-void
.end method

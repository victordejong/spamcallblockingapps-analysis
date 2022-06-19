.class public Lcom/google/firebase/inappmessaging/j0/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/firebase/inappmessaging/j0/n3;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/firebase/c;Lcom/google/firebase/inappmessaging/j0/n3;Lcom/google/firebase/k/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/n;->a:Lcom/google/firebase/inappmessaging/j0/n3;

    .line 3
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/c;->r()Z

    move-result p1

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/n;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    const-class p1, Lcom/google/firebase/a;

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/j0/m;->b(Lcom/google/firebase/inappmessaging/j0/n;)Lcom/google/firebase/k/b;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lcom/google/firebase/k/d;->a(Ljava/lang/Class;Lcom/google/firebase/k/b;)V

    return-void
.end method

.method private b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/n;->a:Lcom/google/firebase/inappmessaging/j0/n3;

    const-string v1, "firebase_inapp_messaging_auto_data_collection_enabled"

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/j0/n3;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/n;->a:Lcom/google/firebase/inappmessaging/j0/n3;

    const-string v1, "auto_init"

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/j0/n3;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/google/firebase/inappmessaging/j0/n;Lcom/google/firebase/k/a;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/k/a;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/a;

    .line 2
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/j0/n;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean p1, p1, Lcom/google/firebase/a;->a:Z

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/n;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/n;->a:Lcom/google/firebase/inappmessaging/j0/n3;

    const-string v2, "auto_init"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/j0/n3;->c(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/n;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/n;->a:Lcom/google/firebase/inappmessaging/j0/n3;

    const-string v2, "firebase_inapp_messaging_auto_data_collection_enabled"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/j0/n3;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/n;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public e(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/n;->a:Lcom/google/firebase/inappmessaging/j0/n3;

    const-string v1, "auto_init"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/inappmessaging/j0/n3;->f(Ljava/lang/String;Z)V

    return-void
.end method

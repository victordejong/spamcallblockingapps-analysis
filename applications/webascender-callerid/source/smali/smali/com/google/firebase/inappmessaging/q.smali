.class public Lcom/google/firebase/inappmessaging/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/j0/n;

.field private final b:Lcom/google/firebase/inappmessaging/j0/t;

.field private final c:Lcom/google/firebase/inappmessaging/j0/s;

.field private final d:Lcom/google/firebase/installations/g;

.field private e:Z

.field private f:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/j0/i2;Lcom/google/firebase/inappmessaging/j0/r2;Lcom/google/firebase/inappmessaging/j0/n;Lcom/google/firebase/installations/g;Lcom/google/firebase/inappmessaging/j0/t;Lcom/google/firebase/inappmessaging/j0/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/q;->a:Lcom/google/firebase/inappmessaging/j0/n;

    .line 3
    iput-object p4, p0, Lcom/google/firebase/inappmessaging/q;->d:Lcom/google/firebase/installations/g;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/google/firebase/inappmessaging/q;->e:Z

    .line 5
    iput-object p5, p0, Lcom/google/firebase/inappmessaging/q;->b:Lcom/google/firebase/inappmessaging/j0/t;

    .line 6
    iput-object p6, p0, Lcom/google/firebase/inappmessaging/q;->c:Lcom/google/firebase/inappmessaging/j0/s;

    .line 7
    invoke-interface {p4}, Lcom/google/firebase/installations/g;->getId()Lcom/google/android/gms/tasks/g;

    move-result-object p2

    invoke-static {}, Lcom/google/firebase/inappmessaging/o;->a()Lcom/google/android/gms/tasks/e;

    move-result-object p3

    .line 8
    invoke-virtual {p2, p3}, Lcom/google/android/gms/tasks/g;->h(Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/g;

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/j0/i2;->f()Li/c/f;

    move-result-object p1

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/p;->a(Lcom/google/firebase/inappmessaging/q;)Li/c/y/c;

    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Li/c/f;->F(Li/c/y/c;)Li/c/w/b;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/inappmessaging/q;Lcom/google/firebase/inappmessaging/model/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/q;->i(Lcom/google/firebase/inappmessaging/model/o;)V

    return-void
.end method

.method public static d()Lcom/google/firebase/inappmessaging/q;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/c;->i()Lcom/google/firebase/c;

    move-result-object v0

    const-class v1, Lcom/google/firebase/inappmessaging/q;

    invoke-virtual {v0, v1}, Lcom/google/firebase/c;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/q;

    return-object v0
.end method

.method static synthetic e(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting InAppMessaging runtime with Installation ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/j0/l2;->c(Ljava/lang/String;)V

    return-void
.end method

.method private i(Lcom/google/firebase/inappmessaging/model/o;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/q;->f:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/o;->a()Lcom/google/firebase/inappmessaging/model/i;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/q;->b:Lcom/google/firebase/inappmessaging/j0/t;

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/o;->a()Lcom/google/firebase/inappmessaging/model/i;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/o;->b()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v2, v3, p1}, Lcom/google/firebase/inappmessaging/j0/t;->a(Lcom/google/firebase/inappmessaging/model/i;Ljava/lang/String;)Lcom/google/firebase/inappmessaging/t;

    move-result-object p1

    .line 5
    invoke-interface {v0, v1, p1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;->displayMessage(Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/t;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/q;->e:Z

    return v0
.end method

.method public c()V
    .locals 1

    const-string v0, "Removing display event component"

    .line 1
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/l2;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/q;->f:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/q;->c:Lcom/google/firebase/inappmessaging/j0/s;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/j0/s;->i()V

    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/q;->a:Lcom/google/firebase/inappmessaging/j0/n;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/j0/n;->e(Z)V

    return-void
.end method

.method public h(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;)V
    .locals 1

    const-string v0, "Setting display event component"

    .line 1
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/l2;->c(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/q;->f:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;

    return-void
.end method

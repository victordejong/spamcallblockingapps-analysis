.class public Lcom/google/firebase/inappmessaging/j0/p3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/j0/n3;

.field private b:Z

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/j0/n3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/firebase/inappmessaging/j0/p3;->d:I

    .line 3
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/p3;->a:Lcom/google/firebase/inappmessaging/j0/n3;

    .line 4
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/p3;->d()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/inappmessaging/j0/p3;->c:Z

    .line 5
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/p3;->e()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/inappmessaging/j0/p3;->b:Z

    return-void
.end method

.method private d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/p3;->a:Lcom/google/firebase/inappmessaging/j0/n3;

    const-string v1, "fresh_install"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/j0/n3;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/p3;->a:Lcom/google/firebase/inappmessaging/j0/n3;

    const-string v1, "test_device"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/j0/n3;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private f(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/google/firebase/inappmessaging/j0/p3;->c:Z

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/p3;->a:Lcom/google/firebase/inappmessaging/j0/n3;

    const-string v1, "fresh_install"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/inappmessaging/j0/n3;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method private g(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/google/firebase/inappmessaging/j0/p3;->b:Z

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/p3;->a:Lcom/google/firebase/inappmessaging/j0/n3;

    const-string v1, "test_device"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/inappmessaging/j0/n3;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/j0/p3;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/firebase/inappmessaging/j0/p3;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/inappmessaging/j0/p3;->d:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/firebase/inappmessaging/j0/p3;->f(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/j0/p3;->c:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/j0/p3;->b:Z

    return v0
.end method

.method public c(Lg/f/e/a/a/a/e/e;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/j0/p3;->b:Z

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/p3;->h()V

    .line 3
    invoke-virtual {p1}, Lg/f/e/a/a/a/e/e;->a0()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/f/e/a/a/a/c;

    .line 5
    invoke-virtual {v0}, Lg/f/e/a/a/a/c;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/j0/p3;->g(Z)V

    const-string p1, "Setting this device as a test device"

    .line 7
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/j0/l2;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

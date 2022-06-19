.class public final Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/j0/q3/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/google/firebase/inappmessaging/j0/q3/b/s;

.field private b:Lcom/google/firebase/inappmessaging/j0/q3/b/j0;

.field private c:Lcom/google/firebase/inappmessaging/j0/q3/b/n;

.field private d:Lcom/google/firebase/inappmessaging/j0/q3/b/q;

.field private e:Lcom/google/firebase/inappmessaging/j0/q3/b/a0;

.field private f:Lcom/google/firebase/inappmessaging/j0/q3/b/a;

.field private g:Lcom/google/firebase/inappmessaging/j0/q3/b/d0;

.field private h:Lcom/google/firebase/inappmessaging/j0/q3/b/n0;

.field private i:Lcom/google/firebase/inappmessaging/j0/q3/b/h0;

.field private j:Lcom/google/firebase/inappmessaging/j0/q3/b/k;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/j0/q3/a/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/inappmessaging/j0/q3/b/a;)Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/i0/b/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/inappmessaging/j0/q3/b/a;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->f:Lcom/google/firebase/inappmessaging/j0/q3/b/a;

    return-object p0
.end method

.method public b(Lcom/google/firebase/inappmessaging/j0/q3/b/k;)Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/i0/b/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/inappmessaging/j0/q3/b/k;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->j:Lcom/google/firebase/inappmessaging/j0/q3/b/k;

    return-object p0
.end method

.method public c(Lcom/google/firebase/inappmessaging/j0/q3/b/n;)Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/i0/b/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/inappmessaging/j0/q3/b/n;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->c:Lcom/google/firebase/inappmessaging/j0/q3/b/n;

    return-object p0
.end method

.method public d()Lcom/google/firebase/inappmessaging/j0/q3/a/d;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->a:Lcom/google/firebase/inappmessaging/j0/q3/b/s;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/q3/b/s;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/j0/q3/b/s;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->a:Lcom/google/firebase/inappmessaging/j0/q3/b/s;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->b:Lcom/google/firebase/inappmessaging/j0/q3/b/j0;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/q3/b/j0;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/j0/q3/b/j0;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->b:Lcom/google/firebase/inappmessaging/j0/q3/b/j0;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->c:Lcom/google/firebase/inappmessaging/j0/q3/b/n;

    const-class v1, Lcom/google/firebase/inappmessaging/j0/q3/b/n;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/i0/b/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->d:Lcom/google/firebase/inappmessaging/j0/q3/b/q;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/q3/b/q;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/j0/q3/b/q;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->d:Lcom/google/firebase/inappmessaging/j0/q3/b/q;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->e:Lcom/google/firebase/inappmessaging/j0/q3/b/a0;

    const-class v1, Lcom/google/firebase/inappmessaging/j0/q3/b/a0;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/i0/b/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 9
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->f:Lcom/google/firebase/inappmessaging/j0/q3/b/a;

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/q3/b/a;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/j0/q3/b/a;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->f:Lcom/google/firebase/inappmessaging/j0/q3/b/a;

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->g:Lcom/google/firebase/inappmessaging/j0/q3/b/d0;

    if-nez v0, :cond_4

    .line 12
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/q3/b/d0;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/j0/q3/b/d0;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->g:Lcom/google/firebase/inappmessaging/j0/q3/b/d0;

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->h:Lcom/google/firebase/inappmessaging/j0/q3/b/n0;

    if-nez v0, :cond_5

    .line 14
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/q3/b/n0;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/j0/q3/b/n0;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->h:Lcom/google/firebase/inappmessaging/j0/q3/b/n0;

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->i:Lcom/google/firebase/inappmessaging/j0/q3/b/h0;

    if-nez v0, :cond_6

    .line 16
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/q3/b/h0;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/j0/q3/b/h0;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->i:Lcom/google/firebase/inappmessaging/j0/q3/b/h0;

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->j:Lcom/google/firebase/inappmessaging/j0/q3/b/k;

    const-class v1, Lcom/google/firebase/inappmessaging/j0/q3/b/k;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/i0/b/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 18
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/q3/a/c;

    iget-object v3, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->a:Lcom/google/firebase/inappmessaging/j0/q3/b/s;

    iget-object v4, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->b:Lcom/google/firebase/inappmessaging/j0/q3/b/j0;

    iget-object v5, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->c:Lcom/google/firebase/inappmessaging/j0/q3/b/n;

    iget-object v6, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->d:Lcom/google/firebase/inappmessaging/j0/q3/b/q;

    iget-object v7, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->e:Lcom/google/firebase/inappmessaging/j0/q3/b/a0;

    iget-object v8, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->f:Lcom/google/firebase/inappmessaging/j0/q3/b/a;

    iget-object v9, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->g:Lcom/google/firebase/inappmessaging/j0/q3/b/d0;

    iget-object v10, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->h:Lcom/google/firebase/inappmessaging/j0/q3/b/n0;

    iget-object v11, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->i:Lcom/google/firebase/inappmessaging/j0/q3/b/h0;

    iget-object v12, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->j:Lcom/google/firebase/inappmessaging/j0/q3/b/k;

    const/4 v13, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/google/firebase/inappmessaging/j0/q3/a/c;-><init>(Lcom/google/firebase/inappmessaging/j0/q3/b/s;Lcom/google/firebase/inappmessaging/j0/q3/b/j0;Lcom/google/firebase/inappmessaging/j0/q3/b/n;Lcom/google/firebase/inappmessaging/j0/q3/b/q;Lcom/google/firebase/inappmessaging/j0/q3/b/a0;Lcom/google/firebase/inappmessaging/j0/q3/b/a;Lcom/google/firebase/inappmessaging/j0/q3/b/d0;Lcom/google/firebase/inappmessaging/j0/q3/b/n0;Lcom/google/firebase/inappmessaging/j0/q3/b/h0;Lcom/google/firebase/inappmessaging/j0/q3/b/k;Lcom/google/firebase/inappmessaging/j0/q3/a/c$a;)V

    return-object v0
.end method

.method public e(Lcom/google/firebase/inappmessaging/j0/q3/b/a0;)Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/i0/b/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/inappmessaging/j0/q3/b/a0;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->e:Lcom/google/firebase/inappmessaging/j0/q3/b/a0;

    return-object p0
.end method

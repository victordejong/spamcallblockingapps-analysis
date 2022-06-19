.class final Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/j0/q3/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/j0/q3/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/google/firebase/inappmessaging/j0/b;

.field private b:Lcom/google/firebase/inappmessaging/j0/q3/b/d;

.field private c:Lcom/google/firebase/inappmessaging/j0/q3/b/v;

.field private d:Lcom/google/firebase/inappmessaging/j0/q3/a/d;

.field private e:Lg/f/a/b/g;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/j0/q3/a/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/firebase/inappmessaging/j0/b;)Lcom/google/firebase/inappmessaging/j0/q3/a/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;->g(Lcom/google/firebase/inappmessaging/j0/b;)Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;

    return-object p0
.end method

.method public bridge synthetic b(Lcom/google/firebase/inappmessaging/j0/q3/a/d;)Lcom/google/firebase/inappmessaging/j0/q3/a/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;->k(Lcom/google/firebase/inappmessaging/j0/q3/a/d;)Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;

    return-object p0
.end method

.method public c()Lcom/google/firebase/inappmessaging/j0/q3/a/a;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;->a:Lcom/google/firebase/inappmessaging/j0/b;

    const-class v1, Lcom/google/firebase/inappmessaging/j0/b;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/i0/b/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;->b:Lcom/google/firebase/inappmessaging/j0/q3/b/d;

    const-class v1, Lcom/google/firebase/inappmessaging/j0/q3/b/d;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/i0/b/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;->c:Lcom/google/firebase/inappmessaging/j0/q3/b/v;

    const-class v1, Lcom/google/firebase/inappmessaging/j0/q3/b/v;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/i0/b/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;->d:Lcom/google/firebase/inappmessaging/j0/q3/a/d;

    const-class v1, Lcom/google/firebase/inappmessaging/j0/q3/a/d;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/i0/b/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;->e:Lg/f/a/b/g;

    const-class v1, Lg/f/a/b/g;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/i0/b/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/q3/a/b;

    iget-object v3, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;->b:Lcom/google/firebase/inappmessaging/j0/q3/b/d;

    iget-object v4, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;->c:Lcom/google/firebase/inappmessaging/j0/q3/b/v;

    iget-object v5, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;->d:Lcom/google/firebase/inappmessaging/j0/q3/a/d;

    iget-object v6, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;->a:Lcom/google/firebase/inappmessaging/j0/b;

    iget-object v7, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;->e:Lg/f/a/b/g;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/firebase/inappmessaging/j0/q3/a/b;-><init>(Lcom/google/firebase/inappmessaging/j0/q3/b/d;Lcom/google/firebase/inappmessaging/j0/q3/b/v;Lcom/google/firebase/inappmessaging/j0/q3/a/d;Lcom/google/firebase/inappmessaging/j0/b;Lg/f/a/b/g;Lcom/google/firebase/inappmessaging/j0/q3/a/b$a;)V

    return-object v0
.end method

.method public bridge synthetic d(Lg/f/a/b/g;)Lcom/google/firebase/inappmessaging/j0/q3/a/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;->j(Lg/f/a/b/g;)Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;

    return-object p0
.end method

.method public bridge synthetic e(Lcom/google/firebase/inappmessaging/j0/q3/b/v;)Lcom/google/firebase/inappmessaging/j0/q3/a/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;->i(Lcom/google/firebase/inappmessaging/j0/q3/b/v;)Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;

    return-object p0
.end method

.method public bridge synthetic f(Lcom/google/firebase/inappmessaging/j0/q3/b/d;)Lcom/google/firebase/inappmessaging/j0/q3/a/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;->h(Lcom/google/firebase/inappmessaging/j0/q3/b/d;)Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;

    return-object p0
.end method

.method public g(Lcom/google/firebase/inappmessaging/j0/b;)Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/i0/b/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/inappmessaging/j0/b;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;->a:Lcom/google/firebase/inappmessaging/j0/b;

    return-object p0
.end method

.method public h(Lcom/google/firebase/inappmessaging/j0/q3/b/d;)Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/i0/b/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/inappmessaging/j0/q3/b/d;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;->b:Lcom/google/firebase/inappmessaging/j0/q3/b/d;

    return-object p0
.end method

.method public i(Lcom/google/firebase/inappmessaging/j0/q3/b/v;)Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/i0/b/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/inappmessaging/j0/q3/b/v;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;->c:Lcom/google/firebase/inappmessaging/j0/q3/b/v;

    return-object p0
.end method

.method public j(Lg/f/a/b/g;)Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/i0/b/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lg/f/a/b/g;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;->e:Lg/f/a/b/g;

    return-object p0
.end method

.method public k(Lcom/google/firebase/inappmessaging/j0/q3/a/d;)Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/i0/b/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/inappmessaging/j0/q3/a/d;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q3/a/b$b;->d:Lcom/google/firebase/inappmessaging/j0/q3/a/d;

    return-object p0
.end method

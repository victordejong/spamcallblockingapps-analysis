.class public Lcom/google/firebase/inappmessaging/j0/q3/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/firebase/c;

.field private final b:Lcom/google/firebase/installations/g;

.field private final c:Lcom/google/firebase/inappmessaging/j0/r3/a;


# direct methods
.method public constructor <init>(Lcom/google/firebase/c;Lcom/google/firebase/installations/g;Lcom/google/firebase/inappmessaging/j0/r3/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/d;->a:Lcom/google/firebase/c;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/d;->b:Lcom/google/firebase/installations/g;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/d;->c:Lcom/google/firebase/inappmessaging/j0/r3/a;

    return-void
.end method


# virtual methods
.method a(Lcom/google/firebase/inappmessaging/i0/a;Landroid/app/Application;Lcom/google/firebase/inappmessaging/j0/v2;)Lcom/google/firebase/inappmessaging/j0/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/i0/a<",
            "Lcom/google/firebase/inappmessaging/j0/l0;",
            ">;",
            "Landroid/app/Application;",
            "Lcom/google/firebase/inappmessaging/j0/v2;",
            ")",
            "Lcom/google/firebase/inappmessaging/j0/d;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/firebase/inappmessaging/j0/d;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/d;->a:Lcom/google/firebase/c;

    iget-object v4, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/d;->c:Lcom/google/firebase/inappmessaging/j0/r3/a;

    move-object v0, v6

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/inappmessaging/j0/d;-><init>(Lcom/google/firebase/inappmessaging/i0/a;Lcom/google/firebase/c;Landroid/app/Application;Lcom/google/firebase/inappmessaging/j0/r3/a;Lcom/google/firebase/inappmessaging/j0/v2;)V

    return-object v6
.end method

.method b(Lcom/google/firebase/inappmessaging/j0/n3;Lcom/google/firebase/k/d;)Lcom/google/firebase/inappmessaging/j0/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/n;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/d;->a:Lcom/google/firebase/c;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/firebase/inappmessaging/j0/n;-><init>(Lcom/google/firebase/c;Lcom/google/firebase/inappmessaging/j0/n3;Lcom/google/firebase/k/d;)V

    return-object v0
.end method

.method c()Lcom/google/firebase/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/d;->a:Lcom/google/firebase/c;

    return-object v0
.end method

.method d()Lcom/google/firebase/installations/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/d;->b:Lcom/google/firebase/installations/g;

    return-object v0
.end method

.method e()Lcom/google/firebase/inappmessaging/j0/n3;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/n3;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/d;->a:Lcom/google/firebase/c;

    invoke-direct {v0, v1}, Lcom/google/firebase/inappmessaging/j0/n3;-><init>(Lcom/google/firebase/c;)V

    return-object v0
.end method

.method f(Lcom/google/firebase/inappmessaging/j0/n3;)Lcom/google/firebase/inappmessaging/j0/p3;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/p3;

    invoke-direct {v0, p1}, Lcom/google/firebase/inappmessaging/j0/p3;-><init>(Lcom/google/firebase/inappmessaging/j0/n3;)V

    return-object v0
.end method

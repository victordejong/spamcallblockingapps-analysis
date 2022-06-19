.class public Lcom/google/firebase/inappmessaging/j0/q3/b/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a([B)[B
    .locals 0

    return-object p0
.end method

.method static synthetic b(Lg/f/a/b/f;[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lg/f/a/b/c;->d(Ljava/lang/Object;)Lg/f/a/b/c;

    move-result-object p1

    invoke-interface {p0, p1}, Lg/f/a/b/f;->a(Lg/f/a/b/c;)V

    return-void
.end method

.method static c(Lcom/google/firebase/c;Lg/f/a/b/g;Lcom/google/firebase/analytics/a/a;Lcom/google/firebase/installations/g;Lcom/google/firebase/inappmessaging/j0/r3/a;Lcom/google/firebase/inappmessaging/j0/s;)Lcom/google/firebase/inappmessaging/j0/q2;
    .locals 8

    .line 1
    const-class v0, [B

    invoke-static {}, Lcom/google/firebase/inappmessaging/j0/q3/b/p0;->a()Lg/f/a/b/e;

    move-result-object v1

    const-string v2, "FIREBASE_INAPPMESSAGING"

    .line 2
    invoke-interface {p1, v2, v0, v1}, Lg/f/a/b/g;->a(Ljava/lang/String;Ljava/lang/Class;Lg/f/a/b/e;)Lg/f/a/b/f;

    move-result-object p1

    .line 3
    new-instance v7, Lcom/google/firebase/inappmessaging/j0/q2;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/j0/q3/b/q0;->b(Lg/f/a/b/f;)Lcom/google/firebase/inappmessaging/j0/q2$b;

    move-result-object v1

    move-object v0, v7

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/inappmessaging/j0/q2;-><init>(Lcom/google/firebase/inappmessaging/j0/q2$b;Lcom/google/firebase/analytics/a/a;Lcom/google/firebase/c;Lcom/google/firebase/installations/g;Lcom/google/firebase/inappmessaging/j0/r3/a;Lcom/google/firebase/inappmessaging/j0/s;)V

    return-object v7
.end method

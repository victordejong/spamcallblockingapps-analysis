.class public Le/a/a/k/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/a/k/q<",
        "Le/a/a/k/w;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/k/l;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public B(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;)Le/a/a/k/q$a;
    .locals 0

    .line 1
    new-instance p1, Le/a/a/k/q$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Le/a/a/k/q$a;-><init>(I)V

    return-object p1
.end method

.method public C(Landroid/content/Intent;I)Landroid/os/Bundle;
    .locals 0

    .line 1
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p1
.end method

.method public a(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/k/p;
    .locals 0

    .line 1
    invoke-static {}, Le/a/a/k/p;->a()Le/a/a/k/p;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/k/o;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lcom/truecaller/messaging/data/types/Message;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "unspecified"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public h(Lw3/b/a/b;)V
    .locals 0

    return-void
.end method

.method public i(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public j()Lw3/b/a/b;
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    return-object v0
.end method

.method public k(J)J
    .locals 0

    return-wide p1
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public m(Le/a/a/k/j;Le/a/a/k/m;Le/a/a/g/j0/g0;Lw3/b/a/b;Lw3/b/a/b;ILjava/util/List;Le/a/p5/l0;ZLe/a/c/r/h/d;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/j;",
            "Le/a/a/k/m;",
            "Le/a/a/g/j0/g0;",
            "Lw3/b/a/b;",
            "Lw3/b/a/b;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Le/a/p5/l0;",
            "Z",
            "Le/a/c/r/h/d;",
            ")J"
        }
    .end annotation

    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1
.end method

.method public n(Le/a/a/k/w;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Le/a/a/k/w;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Le/a/a/k/w;->a:Ljava/lang/String;

    .line 3
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v0, "com.truecaller"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o(Lcom/truecaller/messaging/data/types/TransportInfo;Le/a/a/k/w;ZLjava/util/Set;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/TransportInfo;",
            "Le/a/a/k/w;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/truecaller/messaging/data/types/TransportInfo;->u()J

    move-result-wide p3

    invoke-static {p3, p4}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/a/a/k/w;->d(Landroid/net/Uri;)Le/a/a/k/w$b$a;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Le/a/a/k/w$b$a;->a()Le/a/a/k/w$b;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/a/a/k/w;->a(Le/a/a/k/w$b;)V

    const/4 p1, 0x1

    return p1
.end method

.method public p(Le/a/a/k/w;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/a/k/l;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/a/a/k/w;->b(Landroid/content/ContentResolver;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    array-length p1, p1
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    return v0
.end method

.method public q(Lcom/truecaller/messaging/data/types/BinaryEntity;)V
    .locals 0

    return-void
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s(Lcom/truecaller/messaging/data/types/Message;ILe/a/a/k/w;)Z
    .locals 3

    .line 1
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 2
    invoke-static {v0, v1}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3, v0}, Le/a/a/k/w;->e(Landroid/net/Uri;)Le/a/a/k/w$b$a;

    move-result-object v0

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 4
    iget-object v1, v0, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    const-string v2, "status"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x1

    new-array v1, p2, [Ljava/lang/String;

    .line 5
    iget p1, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "status = ?"

    .line 7
    iput-object p1, v0, Le/a/a/k/w$b$a;->d:Ljava/lang/String;

    .line 8
    iput-object v1, v0, Le/a/a/k/w$b$a;->e:[Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Le/a/a/k/w$b$a;->a()Le/a/a/k/w$b;

    move-result-object p1

    invoke-virtual {p3, p1}, Le/a/a/k/w;->a(Le/a/a/k/w$b;)V

    return p2
.end method

.method public t(J)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Null transport does not support retry"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(Lcom/truecaller/messaging/data/types/TransportInfo;JJLe/a/a/k/w;Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public v(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public w()Le/a/a/k/w;
    .locals 2

    .line 1
    new-instance v0, Le/a/a/k/w;

    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "com.truecaller"

    invoke-direct {v0, v1}, Le/a/a/k/w;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public x(Lcom/truecaller/data/entity/messaging/Participant;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public y(Lcom/truecaller/messaging/data/types/TransportInfo;Le/a/a/k/w;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/truecaller/messaging/data/types/TransportInfo;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/a/a/k/w;->e(Landroid/net/Uri;)Le/a/a/k/w$b$a;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    iget-object v2, p1, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    const-string v3, "seen"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    invoke-virtual {p1}, Le/a/a/k/w$b$a;->a()Le/a/a/k/w$b;

    move-result-object p1

    .line 5
    invoke-virtual {p2, p1}, Le/a/a/k/w;->a(Le/a/a/k/w$b;)V

    return v0
.end method

.method public z(Ljava/lang/String;Le/a/a/k/e;)Z
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p2, p1, p1, p1, v0}, Le/a/a/k/e;->a(IIII)V

    return p1
.end method

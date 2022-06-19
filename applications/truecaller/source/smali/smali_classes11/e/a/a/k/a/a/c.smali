.class public final Le/a/a/k/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/a/b;


# instance fields
.field public final a:Ln3/m0/y;


# direct methods
.method public constructor <init>(Ln3/m0/y;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "workManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/a/c;->a:Ln3/m0/y;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    const-string v0, "groupId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ln3/m0/r$a;

    const-class v1, Lcom/truecaller/messaging/transport/im/groups/AcceptGroupInviteWorker;

    invoke-direct {v0, v1}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 3
    sget-object v1, Ln3/m0/a;->a:Ln3/m0/a;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v0, v1, v3, v4, v2}, Ln3/m0/z$a;->e(Ln3/m0/a;JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    move-result-object v0

    check-cast v0, Ln3/m0/r$a;

    const-string v1, "group_id"

    .line 4
    invoke-static {v1, p1}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 5
    new-instance v1, Ln3/m0/f;

    invoke-direct {v1, p1}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 6
    invoke-static {v1}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    .line 7
    iget-object p1, v0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v1, p1, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 8
    iget-object p1, v0, Ln3/m0/z$a;->d:Ljava/util/Set;

    const-string v1, "accept_group_invite"

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance p1, Ln3/m0/d$a;

    invoke-direct {p1}, Ln3/m0/d$a;-><init>()V

    .line 10
    sget-object v1, Ln3/m0/q;->b:Ln3/m0/q;

    .line 11
    iput-object v1, p1, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 12
    new-instance v1, Ln3/m0/d;

    invoke-direct {v1, p1}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 13
    iget-object p1, v0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v1, p1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 14
    invoke-virtual {v0}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p1

    const-string v0, "OneTimeWorkRequest.Build\u2026\n                .build()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ln3/m0/r;

    .line 15
    iget-object v0, p0, Le/a/a/k/a/a/c;->a:Ln3/m0/y;

    sget-object v1, Ln3/m0/h;->c:Ln3/m0/h;

    const-string v2, "AcceptGroupInvite"

    invoke-virtual {v0, v2, v1, p1}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void
.end method

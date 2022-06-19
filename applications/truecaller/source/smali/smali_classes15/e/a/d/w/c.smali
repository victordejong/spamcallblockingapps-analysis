.class public final Le/a/d/w/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/w/j/g;
.implements Le/a/d/w/j/a;
.implements Le/a/d/w/j/m;
.implements Le/a/d/w/j/w;
.implements Le/a/d/w/j/a0;
.implements Le/a/d/w/j/s;
.implements Le/a/d/w/j/c;
.implements Le/a/d/w/j/o;
.implements Le/a/d/w/b;


# instance fields
.field public final a:Le/a/d/w/i;

.field public final b:Le/a/d/c0/z1/i;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Le/a/d/b0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Le/a/d/w/j/g;

.field public final synthetic g:Le/a/d/w/j/a;

.field public final synthetic h:Le/a/d/w/j/m;

.field public final synthetic i:Le/a/d/w/j/w;

.field public final synthetic j:Le/a/d/w/j/a0;

.field public final synthetic k:Le/a/d/w/j/s;

.field public final synthetic l:Le/a/d/w/j/c;

.field public final synthetic m:Le/a/d/w/j/o;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lq3/a/x2/a1;Le/a/d/w/i;Le/a/d/w/j/g;Le/a/d/w/j/a;Le/a/d/w/j/w;Le/a/d/w/j/m;Le/a/d/c0/z1/i;Le/a/d/w/j/a0;Le/a/d/w/j/c;Le/a/d/w/j/s;Le/a/d/w/j/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lq3/a/x2/a1<",
            "Le/a/d/b0/a;",
            ">;",
            "Le/a/d/w/i;",
            "Le/a/d/w/j/g;",
            "Le/a/d/w/j/a;",
            "Le/a/d/w/j/w;",
            "Le/a/d/w/j/m;",
            "Le/a/d/c0/z1/i;",
            "Le/a/d/w/j/a0;",
            "Le/a/d/w/j/c;",
            "Le/a/d/w/j/s;",
            "Le/a/d/w/j/o;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "channelId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderVoipId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderCallUser"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateMachine"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectInvitation"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "answerInvitation"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playRingtoneAndVibrate"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endInvitation"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfoRepository"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatePeers"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectPeerHistory"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logStateChangedEvent"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endWhenDeletedOnRemote"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p5, p0, Le/a/d/w/c;->f:Le/a/d/w/j/g;

    .line 3
    iput-object p6, p0, Le/a/d/w/c;->g:Le/a/d/w/j/a;

    .line 4
    iput-object p8, p0, Le/a/d/w/c;->h:Le/a/d/w/j/m;

    .line 5
    iput-object p7, p0, Le/a/d/w/c;->i:Le/a/d/w/j/w;

    .line 6
    iput-object p10, p0, Le/a/d/w/c;->j:Le/a/d/w/j/a0;

    .line 7
    iput-object p12, p0, Le/a/d/w/c;->k:Le/a/d/w/j/s;

    .line 8
    iput-object p11, p0, Le/a/d/w/c;->l:Le/a/d/w/j/c;

    .line 9
    iput-object p13, p0, Le/a/d/w/c;->m:Le/a/d/w/j/o;

    iput-object p1, p0, Le/a/d/w/c;->c:Ljava/lang/String;

    iput-object p2, p0, Le/a/d/w/c;->d:Ljava/lang/String;

    iput-object p3, p0, Le/a/d/w/c;->e:Lq3/a/x2/a1;

    .line 10
    iput-object p4, p0, Le/a/d/w/c;->a:Le/a/d/w/i;

    .line 11
    iput-object p9, p0, Le/a/d/w/c;->b:Le/a/d/c0/z1/i;

    return-void
.end method


# virtual methods
.method public a()Lq3/a/p1;
    .locals 1

    iget-object v0, p0, Le/a/d/w/c;->g:Le/a/d/w/j/a;

    invoke-interface {v0}, Le/a/d/w/j/a;->a()Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public b()Lq3/a/p1;
    .locals 1

    iget-object v0, p0, Le/a/d/w/c;->g:Le/a/d/w/j/a;

    invoke-interface {v0}, Le/a/d/w/j/a;->b()Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public c()Lq3/a/p1;
    .locals 1

    iget-object v0, p0, Le/a/d/w/c;->f:Le/a/d/w/j/g;

    invoke-interface {v0}, Le/a/d/w/j/g;->c()Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public d()Le/a/d/c0/z1/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/w/c;->b:Le/a/d/c0/z1/i;

    return-object v0
.end method

.method public e(Le/a/d/w/h$b;)Lq3/a/p1;
    .locals 1

    const-string v0, "endState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/d/w/c;->h:Le/a/d/w/j/m;

    invoke-interface {v0, p1}, Le/a/d/w/j/m;->e(Le/a/d/w/h$b;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Le/a/d/w/c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/d/w/c;->c:Ljava/lang/String;

    .line 3
    check-cast p1, Le/a/d/w/c;

    .line 4
    iget-object p1, p1, Le/a/d/w/c;->c:Ljava/lang/String;

    .line 5
    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(Le/a/d/b0/a;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/b0/a;",
            ")",
            "Ljava/util/List<",
            "Le/a/d/c0/x0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/d/w/c;->l:Le/a/d/w/j/c;

    invoke-interface {v0, p1}, Le/a/d/w/j/c;->f(Le/a/d/b0/a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public g()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/w/c;->e:Lq3/a/x2/a1;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/w/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/w/c;->a:Le/a/d/w/i;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/w/c;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public j(Le/a/d/w/h$b;)V
    .locals 1

    const-string v0, "endState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/d/w/c;->k:Le/a/d/w/j/s;

    invoke-interface {v0, p1}, Le/a/d/w/j/s;->j(Le/a/d/w/h$b;)V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Le/a/d/w/c;->i:Le/a/d/w/j/w;

    invoke-interface {v0}, Le/a/d/w/j/w;->k()V

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/w/c;->d:Ljava/lang/String;

    return-object v0
.end method

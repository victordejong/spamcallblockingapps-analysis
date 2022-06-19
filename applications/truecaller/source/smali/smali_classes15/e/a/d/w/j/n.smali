.class public final Le/a/d/w/j/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/w/j/m;


# instance fields
.field public final a:Lq3/a/i0;

.field public final b:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Le/a/d/b0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/d/c0/z1/i;

.field public final d:Le/a/d/w/i;

.field public final e:Le/a/d/c0/x1/e;

.field public final f:Le/a/d/c0/o;

.field public final g:Le/a/d/w/j/c;

.field public final h:Le/a/d/c0/j1;

.field public final i:Le/a/d/w/j/s;


# direct methods
.method public constructor <init>(Lq3/a/i0;Lq3/a/x2/a1;Le/a/d/c0/z1/i;Le/a/d/w/i;Le/a/d/c0/x1/e;Le/a/d/c0/o;Le/a/d/w/j/c;Le/a/d/c0/j1;Le/a/d/w/j/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "Lq3/a/x2/a1<",
            "Le/a/d/b0/a;",
            ">;",
            "Le/a/d/c0/z1/i;",
            "Le/a/d/w/i;",
            "Le/a/d/c0/x1/e;",
            "Le/a/d/c0/o;",
            "Le/a/d/w/j/c;",
            "Le/a/d/c0/j1;",
            "Le/a/d/w/j/s;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderCallUser"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfoRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateMachine"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hapticFeedbackUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectPeerHistory"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipSupport"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logStateChangedEvent"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/w/j/n;->a:Lq3/a/i0;

    iput-object p2, p0, Le/a/d/w/j/n;->b:Lq3/a/x2/a1;

    iput-object p3, p0, Le/a/d/w/j/n;->c:Le/a/d/c0/z1/i;

    iput-object p4, p0, Le/a/d/w/j/n;->d:Le/a/d/w/i;

    iput-object p5, p0, Le/a/d/w/j/n;->e:Le/a/d/c0/x1/e;

    iput-object p6, p0, Le/a/d/w/j/n;->f:Le/a/d/c0/o;

    iput-object p7, p0, Le/a/d/w/j/n;->g:Le/a/d/w/j/c;

    iput-object p8, p0, Le/a/d/w/j/n;->h:Le/a/d/c0/j1;

    iput-object p9, p0, Le/a/d/w/j/n;->i:Le/a/d/w/j/s;

    return-void
.end method


# virtual methods
.method public e(Le/a/d/w/h$b;)Lq3/a/p1;
    .locals 8

    const-string v0, "endState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object v3

    new-instance v5, Le/a/d/w/j/n$a;

    invoke-direct {v5, p0, p1, v0}, Le/a/d/w/j/n$a;-><init>(Le/a/d/w/j/n;Le/a/d/w/h$b;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/w/j/n;->a:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

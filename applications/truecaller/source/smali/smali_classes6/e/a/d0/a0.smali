.class public final Le/a/d0/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/d0/a0$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Z

.field public c:Le/a/d0/a0$a;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/Boolean;

.field public final h:Le/a/p5/c;

.field public final i:Le/a/p5/u;

.field public final j:Le/a/q2/a;

.field public final k:Le/a/p5/g;


# direct methods
.method public constructor <init>(Le/a/p5/c;Le/a/p5/u;Le/a/q2/a;Le/a/p5/g;)V
    .locals 1

    const-string v0, "clock"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d0/a0;->h:Le/a/p5/c;

    iput-object p2, p0, Le/a/d0/a0;->i:Le/a/p5/u;

    iput-object p3, p0, Le/a/d0/a0;->j:Le/a/q2/a;

    iput-object p4, p0, Le/a/d0/a0;->k:Le/a/p5/g;

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Le/a/d0/a0;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    sget-object p1, Le/a/d0/a0$a;->c:Le/a/d0/a0$a;

    iput-object p1, p0, Le/a/d0/a0;->c:Le/a/d0/a0$a;

    return-void
.end method


# virtual methods
.method public final a(Le/a/d0/v;)V
    .locals 2

    const-string v0, "callState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d0/a0;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-wide v0, p1, Le/a/d0/v;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Le/a/d0/a0;->f:Ljava/lang/Long;

    .line 3
    iget-boolean p1, p1, Le/a/d0/v;->e:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Le/a/d0/a0;->g:Ljava/lang/Boolean;

    .line 4
    sget-object p1, Le/a/d0/a0$a;->c:Le/a/d0/a0$a;

    iput-object p1, p0, Le/a/d0/a0;->c:Le/a/d0/a0$a;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Le/a/d0/a0;->d:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Le/a/d0/a0;->e:Ljava/lang/Long;

    return-void
.end method

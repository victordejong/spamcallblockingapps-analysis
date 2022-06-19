.class public final Lp3/a/o1/d;
.super Lp3/a/n1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/o1/d$e;,
        Lp3/a/o1/d$c;,
        Lp3/a/o1/d$d;,
        Lp3/a/o1/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp3/a/n1/b<",
        "Lp3/a/o1/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Lp3/a/o1/o/b;

.field public static final l:J

.field public static final m:Lp3/a/n1/n2$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/n1/n2$c<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lp3/a/n1/q1;

.field public b:Lp3/a/n1/x2$b;

.field public c:Ljavax/net/ssl/SSLSocketFactory;

.field public d:Lp3/a/o1/o/b;

.field public e:Lp3/a/o1/d$b;

.field public f:J

.field public g:J

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lp3/a/o1/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lp3/a/o1/o/b$b;

    sget-object v1, Lp3/a/o1/o/b;->f:Lp3/a/o1/o/b;

    invoke-direct {v0, v1}, Lp3/a/o1/o/b$b;-><init>(Lp3/a/o1/o/b;)V

    const/16 v1, 0x8

    new-array v1, v1, [Lp3/a/o1/o/a;

    sget-object v2, Lp3/a/o1/o/a;->W0:Lp3/a/o1/o/a;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lp3/a/o1/o/a;->V0:Lp3/a/o1/o/a;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lp3/a/o1/o/a;->a1:Lp3/a/o1/o/a;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lp3/a/o1/o/a;->Z0:Lp3/a/o1/o/a;

    const/4 v5, 0x3

    aput-object v2, v1, v5

    sget-object v2, Lp3/a/o1/o/a;->h0:Lp3/a/o1/o/a;

    const/4 v5, 0x4

    aput-object v2, v1, v5

    sget-object v2, Lp3/a/o1/o/a;->j0:Lp3/a/o1/o/a;

    const/4 v5, 0x5

    aput-object v2, v1, v5

    sget-object v2, Lp3/a/o1/o/a;->i0:Lp3/a/o1/o/a;

    const/4 v5, 0x6

    aput-object v2, v1, v5

    sget-object v2, Lp3/a/o1/o/a;->k0:Lp3/a/o1/o/a;

    const/4 v5, 0x7

    aput-object v2, v1, v5

    .line 3
    invoke-virtual {v0, v1}, Lp3/a/o1/o/b$b;->b([Lp3/a/o1/o/a;)Lp3/a/o1/o/b$b;

    new-array v1, v4, [Lp3/a/o1/o/k;

    sget-object v2, Lp3/a/o1/o/k;->b:Lp3/a/o1/o/k;

    aput-object v2, v1, v3

    .line 4
    invoke-virtual {v0, v1}, Lp3/a/o1/o/b$b;->d([Lp3/a/o1/o/k;)Lp3/a/o1/o/b$b;

    .line 5
    invoke-virtual {v0, v4}, Lp3/a/o1/o/b$b;->c(Z)Lp3/a/o1/o/b$b;

    .line 6
    invoke-virtual {v0}, Lp3/a/o1/o/b$b;->a()Lp3/a/o1/o/b;

    move-result-object v0

    sput-object v0, Lp3/a/o1/d;->k:Lp3/a/o1/o/b;

    .line 7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lp3/a/o1/d;->l:J

    .line 8
    new-instance v0, Lp3/a/o1/d$a;

    invoke-direct {v0}, Lp3/a/o1/d$a;-><init>()V

    sput-object v0, Lp3/a/o1/d;->m:Lp3/a/n1/n2$c;

    .line 9
    sget-object v0, Lp3/a/m1;->b:Lp3/a/m1;

    sget-object v1, Lp3/a/m1;->c:Lp3/a/m1;

    .line 10
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lp3/a/n1/b;-><init>()V

    .line 2
    sget-object v0, Lp3/a/n1/x2;->h:Lp3/a/n1/x2$b;

    sget-object v0, Lp3/a/n1/x2;->h:Lp3/a/n1/x2$b;

    iput-object v0, p0, Lp3/a/o1/d;->b:Lp3/a/n1/x2$b;

    .line 3
    sget-object v0, Lp3/a/o1/d;->k:Lp3/a/o1/o/b;

    iput-object v0, p0, Lp3/a/o1/d;->d:Lp3/a/o1/o/b;

    .line 4
    sget-object v0, Lp3/a/o1/d$b;->a:Lp3/a/o1/d$b;

    iput-object v0, p0, Lp3/a/o1/d;->e:Lp3/a/o1/d$b;

    const-wide v0, 0x7fffffffffffffffL

    .line 5
    iput-wide v0, p0, Lp3/a/o1/d;->f:J

    .line 6
    sget-wide v0, Lp3/a/n1/r0;->j:J

    iput-wide v0, p0, Lp3/a/o1/d;->g:J

    const v0, 0xffff

    .line 7
    iput v0, p0, Lp3/a/o1/d;->h:I

    const/high16 v0, 0x400000

    .line 8
    iput v0, p0, Lp3/a/o1/d;->i:I

    const v0, 0x7fffffff

    .line 9
    iput v0, p0, Lp3/a/o1/d;->j:I

    .line 10
    new-instance v0, Lp3/a/n1/q1;

    new-instance v1, Lp3/a/o1/d$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lp3/a/o1/d$d;-><init>(Lp3/a/o1/d;Lp3/a/o1/d$a;)V

    new-instance v3, Lp3/a/o1/d$c;

    invoke-direct {v3, p0, v2}, Lp3/a/o1/d$c;-><init>(Lp3/a/o1/d;Lp3/a/o1/d$a;)V

    invoke-direct {v0, p1, v1, v3}, Lp3/a/n1/q1;-><init>(Ljava/lang/String;Lp3/a/n1/q1$b;Lp3/a/n1/q1$a;)V

    iput-object v0, p0, Lp3/a/o1/d;->a:Lp3/a/n1/q1;

    return-void
.end method

.class public final Le/a/d/v/l/e/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/v/l/e/i;


# instance fields
.field public final a:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Le/a/d/v/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "Lcom/truecaller/voip/manager/VoipMsg;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "Le/a/d/x/r/i;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lq3/a/i0;


# direct methods
.method public constructor <init>(Lq3/a/i0;Lq3/a/x2/f;Lq3/a/x2/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "Lq3/a/x2/f<",
            "Lcom/truecaller/voip/manager/VoipMsg;",
            ">;",
            "Lq3/a/x2/f<",
            "Le/a/d/x/r/i;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtcMessages"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmChannelAttributes"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/d/v/l/e/j;->d:Lq3/a/i0;

    iput-object p2, p0, Le/a/d/v/l/e/j;->b:Lq3/a/x2/f;

    iput-object p3, p0, Le/a/d/v/l/e/j;->c:Lq3/a/x2/f;

    .line 3
    new-instance p1, Le/a/d/v/a;

    const/4 p2, 0x0

    const/4 p3, 0x7

    invoke-direct {p1, p2, p2, p2, p3}, Le/a/d/v/a;-><init>(ZZZI)V

    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Le/a/d/v/l/e/j;->a:Lq3/a/x2/a1;

    return-void
.end method


# virtual methods
.method public a()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/v/l/e/j$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/v/l/e/j$a;-><init>(Le/a/d/v/l/e/j;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public b()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/v/l/e/j;->a:Lq3/a/x2/a1;

    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/v/l/e/j;->d:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.class public final Le/a/a/p0/m/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq3/a/i0;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Le/a/c/g/y/k;

.field public final d:Le/a/c/c0/o;

.field public final e:Ls1/w/f;


# direct methods
.method public constructor <init>(Lo3/a;Le/a/c/g/y/k;Le/a/c/c0/o;Ls1/w/f;)V
    .locals 1
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;",
            "Le/a/c/g/y/k;",
            "Le/a/c/c0/o;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "messagesStorage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsCategorizerSeedManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightConfig"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/p0/m/a;->b:Lo3/a;

    iput-object p2, p0, Le/a/a/p0/m/a;->c:Le/a/c/g/y/k;

    iput-object p3, p0, Le/a/a/p0/m/a;->d:Le/a/c/c0/o;

    iput-object p4, p0, Le/a/a/p0/m/a;->e:Ls1/w/f;

    .line 2
    invoke-static {p4}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object p1

    iput-object p1, p0, Le/a/a/p0/m/a;->a:Lq3/a/i0;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/a/p0/m/a;->a:Lq3/a/i0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Le/a/a/p0/m/a$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Le/a/a/p0/m/a$a;-><init>(Le/a/a/p0/m/a;Ls1/w/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 2
    iget-object p1, p0, Le/a/a/p0/m/a;->d:Le/a/c/c0/o;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le/a/c/c0/o;->u0(Z)V

    :cond_0
    return-void
.end method

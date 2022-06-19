.class public final Le/a/c/x/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/x/a;


# instance fields
.field public final a:Lq3/a/y;

.field public final b:Lq3/a/i0;

.field public final c:Ls1/w/f;

.field public final d:Ls1/w/f;

.field public final e:Le/a/c/c/f/j;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/c/c/f/j;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioCoroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiCoroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadInfoUsecase"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/x/b;->c:Ls1/w/f;

    iput-object p2, p0, Le/a/c/x/b;->d:Ls1/w/f;

    iput-object p3, p0, Le/a/c/x/b;->e:Le/a/c/c/f/j;

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 2
    invoke-static {p2, p3}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object p2

    iput-object p2, p0, Le/a/c/x/b;->a:Lq3/a/y;

    .line 3
    invoke-interface {p1, p2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object p1

    iput-object p1, p0, Le/a/c/x/b;->b:Lq3/a/i0;

    return-void
.end method


# virtual methods
.method public a(JLs1/z/b/l;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/insights/models/pdo/SmsBackupMessage;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/c/x/b;->b:Lq3/a/i0;

    new-instance v0, Le/a/c/x/b$a;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Le/a/c/x/b$a;-><init>(Le/a/c/x/b;JLs1/z/b/l;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

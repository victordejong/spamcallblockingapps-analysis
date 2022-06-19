.class public final Le/a/f5/i/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f5/i/c;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/u3/g;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/q/z;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/e4/p;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/k/t;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/p5/c0;

.field public final h:Le/a/a/i0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/u3/g;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/p5/c0;Le/a/a/i0;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/u3/g;",
            "Lo3/a<",
            "Le/a/b0/q/z;",
            ">;",
            "Lo3/a<",
            "Le/a/e4/p;",
            ">;",
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;",
            "Lo3/a<",
            "Le/a/a/k/t;",
            ">;",
            "Le/a/p5/c0;",
            "Le/a/a/i0;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMessageStorage"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transportManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f5/i/d;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/f5/i/d;->b:Le/a/u3/g;

    iput-object p3, p0, Le/a/f5/i/d;->c:Lo3/a;

    iput-object p4, p0, Le/a/f5/i/d;->d:Lo3/a;

    iput-object p5, p0, Le/a/f5/i/d;->e:Lo3/a;

    iput-object p6, p0, Le/a/f5/i/d;->f:Lo3/a;

    iput-object p7, p0, Le/a/f5/i/d;->g:Le/a/p5/c0;

    iput-object p8, p0, Le/a/f5/i/d;->h:Le/a/a/i0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "address"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/f5/i/d;->b:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->W()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/f5/i/d;->h:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->P3()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/f5/i/d;->h:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->u1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/f5/i/d;->a:Ls1/w/f;

    const/4 v3, 0x0

    new-instance v4, Le/a/f5/i/d$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Le/a/f5/i/d$a;-><init>(Le/a/f5/i/d;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_1
    :goto_0
    return-void
.end method

.class public final Le/a/a/h1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/h1/i;


# instance fields
.field public a:Lq3/a/p1;

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
            "Le/a/a/c1/d;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/e4/p;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/k/t;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/a/p5/c0;

.field public final i:Ls1/w/f;

.field public final j:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/u3/g;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/p5/c0;Ls1/w/f;Ls1/w/f;)V
    .locals 1
    .param p8    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p9    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/u3/g;",
            "Lo3/a<",
            "Le/a/b0/q/z;",
            ">;",
            "Lo3/a<",
            "Le/a/a/c1/d;",
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
            "Ls1/w/f;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draftSender"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMessageStorage"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transportManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/h1/k;->b:Le/a/u3/g;

    iput-object p2, p0, Le/a/a/h1/k;->c:Lo3/a;

    iput-object p3, p0, Le/a/a/h1/k;->d:Lo3/a;

    iput-object p4, p0, Le/a/a/h1/k;->e:Lo3/a;

    iput-object p5, p0, Le/a/a/h1/k;->f:Lo3/a;

    iput-object p6, p0, Le/a/a/h1/k;->g:Lo3/a;

    iput-object p7, p0, Le/a/a/h1/k;->h:Le/a/p5/c0;

    iput-object p8, p0, Le/a/a/h1/k;->i:Ls1/w/f;

    iput-object p9, p0, Le/a/a/h1/k;->j:Ls1/w/f;

    return-void
.end method

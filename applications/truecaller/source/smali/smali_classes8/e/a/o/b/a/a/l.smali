.class public final Le/a/o/b/a/a/l;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/o/b/a/a/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/o/b/a/a/h;",
        ">;",
        "Le/a/o/b/a/a/g;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Le/a/o/p/e/g/c;

.field public final f:Le/a/o/b/n0;

.field public final g:Le/a/o/b/b;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/o/p/e/g/c;Le/a/o/b/n0;Le/a/o/b/b;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PredefinedCallReasonRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendMidCallReasonManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callContextMessageFactory"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/o/b/a/a/l;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/o/b/a/a/l;->e:Le/a/o/p/e/g/c;

    iput-object p3, p0, Le/a/o/b/a/a/l;->f:Le/a/o/b/n0;

    iput-object p4, p0, Le/a/o/b/a/a/l;->g:Le/a/o/b/b;

    return-void
.end method


# virtual methods
.method public final Ij()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/o/b/a/a/l$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/o/b/a/a/l$a;-><init>(Le/a/o/b/a/a/l;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

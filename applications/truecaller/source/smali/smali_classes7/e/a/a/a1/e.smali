.class public final Le/a/a/a1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:[J

.field public c:I

.field public final d:Ls1/w/f;

.field public final e:J

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/r2/j;

.field public final h:Le/a/a/k/t;

.field public final i:Le/a/a/x0/a;

.field public final j:Le/a/q2/i0;

.field public final k:Le/a/a/c1/d;

.field public final l:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;JLo3/a;Le/a/r2/j;Le/a/a/k/t;Le/a/a/x0/a;Le/a/q2/i0;Le/a/a/c1/d;Le/a/r2/f;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "J",
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;",
            "Le/a/r2/j;",
            "Le/a/a/k/t;",
            "Le/a/a/x0/a;",
            "Le/a/q2/i0;",
            "Le/a/a/c1/d;",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMessageStorage"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiThread"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transportManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageAnalytics"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draftSender"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesStorage"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/a1/e;->d:Ls1/w/f;

    iput-wide p2, p0, Le/a/a/a1/e;->e:J

    iput-object p4, p0, Le/a/a/a1/e;->f:Lo3/a;

    iput-object p5, p0, Le/a/a/a1/e;->g:Le/a/r2/j;

    iput-object p6, p0, Le/a/a/a1/e;->h:Le/a/a/k/t;

    iput-object p7, p0, Le/a/a/a1/e;->i:Le/a/a/x0/a;

    iput-object p8, p0, Le/a/a/a1/e;->j:Le/a/q2/i0;

    iput-object p9, p0, Le/a/a/a1/e;->k:Le/a/a/c1/d;

    iput-object p10, p0, Le/a/a/a1/e;->l:Le/a/r2/f;

    const-string p1, ""

    .line 2
    iput-object p1, p0, Le/a/a/a1/e;->a:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [J

    .line 3
    iput-object p1, p0, Le/a/a/a1/e;->b:[J

    const/4 p1, 0x3

    .line 4
    iput p1, p0, Le/a/a/a1/e;->c:I

    return-void
.end method

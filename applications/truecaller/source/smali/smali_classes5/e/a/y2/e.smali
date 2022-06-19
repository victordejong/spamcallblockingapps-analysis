.class public final Le/a/y2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln3/m0/f;

.field public final b:I

.field public final c:Le/a/q2/a;

.field public final d:Le/a/y2/l;

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Lcom/truecaller/background_work/persistence/WorkActionDatabase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/m0/f;ILe/a/q2/a;Le/a/y2/l;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/m0/f;",
            "I",
            "Le/a/q2/a;",
            "Le/a/y2/l;",
            "Lo3/a<",
            "Lcom/truecaller/background_work/persistence/WorkActionDatabase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "inputData"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultsDatabase"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y2/e;->a:Ln3/m0/f;

    iput p2, p0, Le/a/y2/e;->b:I

    iput-object p3, p0, Le/a/y2/e;->c:Le/a/q2/a;

    iput-object p4, p0, Le/a/y2/e;->d:Le/a/y2/l;

    iput-object p5, p0, Le/a/y2/e;->e:Lo3/a;

    return-void
.end method


# virtual methods
.method public final a()Le/a/y2/p/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y2/e;->e:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/background_work/persistence/WorkActionDatabase;

    invoke-virtual {v0}, Lcom/truecaller/background_work/persistence/WorkActionDatabase;->a()Le/a/y2/p/c;

    move-result-object v0

    return-object v0
.end method

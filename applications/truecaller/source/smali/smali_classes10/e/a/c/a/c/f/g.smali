.class public final Le/a/c/a/c/f/g;
.super Le/a/c/a/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/i/c<",
        "Le/a/c/a/c/f/f;",
        "Le/a/c/a/c/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/c/q/d;

.field public final c:Ls1/w/f;

.field public final d:Le/a/c/b/j;

.field public final e:Le/a/c/h/e;


# direct methods
.method public constructor <init>(Le/a/c/q/d;Ls1/w/f;Le/a/c/b/j;Le/a/c/h/e;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "businessInsightsManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsFilterFetcher"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/c/a/i/c;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/c/a/c/f/g;->b:Le/a/c/q/d;

    iput-object p2, p0, Le/a/c/a/c/f/g;->c:Ls1/w/f;

    iput-object p3, p0, Le/a/c/a/c/f/g;->d:Le/a/c/b/j;

    iput-object p4, p0, Le/a/c/a/c/f/g;->e:Le/a/c/h/e;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 12

    const-string v0, "Upcoming usecase failed"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    .line 2
    new-instance v0, Le/a/c/a/c/g/e;

    .line 3
    new-instance v11, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    .line 4
    sget v2, Lcom/truecaller/insights/ui/R$string;->reminders:I

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7e

    move-object v1, v11

    .line 5
    invoke-direct/range {v1 .. v10}, Lcom/truecaller/insights/ui/models/AdapterItem$i;-><init>(ILjava/lang/Integer;JLe/a/c/a/c/g/c;Le/a/c/a/c/g/b;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 6
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    .line 7
    invoke-direct {v0, v11, v1}, Le/a/c/a/c/g/e;-><init>(Lcom/truecaller/insights/ui/models/AdapterItem$i;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lq3/a/x2/f;
    .locals 0

    .line 1
    check-cast p1, Le/a/c/a/c/f/f;

    invoke-virtual {p0, p1}, Le/a/c/a/c/f/g;->d(Le/a/c/a/c/f/f;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public d(Le/a/c/a/c/f/f;)Lq3/a/x2/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/a/c/f/f;",
            ")",
            "Lq3/a/x2/f<",
            "Le/a/c/a/c/g/e;",
            ">;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/a/c/f/g;->b:Le/a/c/q/d;

    .line 2
    iget-boolean v1, p1, Le/a/c/a/c/f/f;->a:Z

    .line 3
    invoke-interface {v0, v1}, Le/a/c/q/d;->u(Z)Lq3/a/x2/f;

    move-result-object v0

    .line 4
    new-instance v1, Le/a/c/a/c/f/g$a;

    invoke-direct {v1, v0, p0, p1}, Le/a/c/a/c/f/g$a;-><init>(Lq3/a/x2/f;Le/a/c/a/c/f/g;Le/a/c/a/c/f/f;)V

    .line 5
    new-instance p1, Le/a/c/a/c/f/g$b;

    invoke-direct {p1, v1, p0}, Le/a/c/a/c/f/g$b;-><init>(Lq3/a/x2/f;Le/a/c/a/c/f/g;)V

    return-object p1
.end method

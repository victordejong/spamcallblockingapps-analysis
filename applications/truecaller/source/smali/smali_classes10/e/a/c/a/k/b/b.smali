.class public final Le/a/c/a/k/b/b;
.super Le/a/c/a/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/i/c<",
        "Le/a/c/a/k/d/a;",
        "Le/a/c/a/k/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lq3/a/i0;

.field public final c:Le/a/c/h/g;

.field public final d:Ls1/w/f;

.field public final e:Le/a/c/b/j;

.field public final f:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Le/a/c/h/g;Ls1/w/f;Le/a/c/b/j;Ljava/lang/Long;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "messageFetcher"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/c/a/i/c;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/c/a/k/b/b;->c:Le/a/c/h/g;

    iput-object p2, p0, Le/a/c/a/k/b/b;->d:Ls1/w/f;

    iput-object p3, p0, Le/a/c/a/k/b/b;->e:Le/a/c/b/j;

    iput-object p4, p0, Le/a/c/a/k/b/b;->f:Ljava/lang/Long;

    .line 2
    invoke-static {p2}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object p1

    iput-object p1, p0, Le/a/c/a/k/b/b;->b:Lq3/a/i0;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/a/c/a/k/c/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v1, v2}, Le/a/c/a/k/b/b;->d(ZLe/a/c/a/k/d/a;)Lcom/truecaller/insights/ui/models/AdapterItem$i;

    move-result-object v1

    .line 3
    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    .line 4
    invoke-direct {v0, v1, v2}, Le/a/c/a/k/c/d;-><init>(Lcom/truecaller/insights/ui/models/AdapterItem$i;Ljava/util/List;)V

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lq3/a/x2/f;
    .locals 2

    .line 1
    check-cast p1, Le/a/c/a/k/d/a;

    const-string v0, "input"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/c/a/k/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/a/c/a/k/b/a;-><init>(Le/a/c/a/k/b/b;Le/a/c/a/k/d/a;Ls1/w/d;)V

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->P(Ls1/z/b/p;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public final d(ZLe/a/c/a/k/d/a;)Lcom/truecaller/insights/ui/models/AdapterItem$i;
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/c/a/k/b/b;->e:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->I()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/c/a/k/b/b;->e:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    .line 3
    sget v3, Lcom/truecaller/insights/ui/R$string;->starred_messages:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Le/a/c/a/k/b/b;->e:Le/a/c/b/j;

    invoke-interface {p1}, Le/a/c/b/j;->F()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance v1, Le/a/c/a/c/g/c;

    sget p1, Lcom/truecaller/insights/ui/R$string;->remove_all:I

    new-instance v2, Le/a/c/a/k/b/b$a;

    invoke-direct {v2, p2}, Le/a/c/a/k/b/b$a;-><init>(Le/a/c/a/k/d/a;)V

    invoke-direct {v1, p1, v2}, Le/a/c/a/c/g/c;-><init>(ILs1/z/b/l;)V

    :cond_0
    move-object v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x76

    move-object v2, v0

    .line 5
    invoke-direct/range {v2 .. v11}, Lcom/truecaller/insights/ui/models/AdapterItem$i;-><init>(ILjava/lang/Integer;JLe/a/c/a/c/g/c;Le/a/c/a/c/g/b;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    move-object v1, v0

    :cond_1
    return-object v1
.end method

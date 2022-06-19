.class public final Le/a/c/a/c/f/j;
.super Le/a/c/a/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/i/c<",
        "Ls1/s;",
        "Le/a/c/a/c/g/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/c/q/d;

.field public final c:Ls1/w/f;

.field public final d:Le/a/c/b/j;

.field public final e:Le/a/c/c0/o;


# direct methods
.method public constructor <init>(Le/a/c/q/d;Ls1/w/f;Le/a/c/b/j;Le/a/c/c0/o;)V
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

    const-string v0, "insightsConfig"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/c/a/i/c;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/c/a/c/f/j;->b:Le/a/c/q/d;

    iput-object p2, p0, Le/a/c/a/c/f/j;->c:Ls1/w/f;

    iput-object p3, p0, Le/a/c/a/c/f/j;->d:Le/a/c/b/j;

    iput-object p4, p0, Le/a/c/a/c/f/j;->e:Le/a/c/c0/o;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 13

    .line 1
    new-instance v0, Le/a/c/a/c/g/f;

    .line 2
    new-instance v11, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    .line 3
    sget v2, Lcom/truecaller/insights/ui/R$string;->updates:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Le/a/c/a/c/f/j;->d(I)Le/a/c/a/c/g/c;

    move-result-object v6

    const/4 v7, 0x0

    .line 5
    iget-object v1, p0, Le/a/c/a/c/f/j;->e:Le/a/c/c0/o;

    invoke-interface {v1}, Le/a/c/c0/o;->p0()Z

    move-result v1

    const/4 v12, 0x0

    if-nez v1, :cond_0

    sget v1, Lcom/truecaller/insights/ui/R$string;->updates_page_view_all_tooltip:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object v8, v12

    :goto_0
    const/4 v9, 0x0

    const/16 v10, 0x56

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, v11

    .line 6
    invoke-direct/range {v1 .. v10}, Lcom/truecaller/insights/ui/models/AdapterItem$i;-><init>(ILjava/lang/Integer;JLe/a/c/a/c/g/c;Le/a/c/a/c/g/b;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 7
    invoke-direct {v0, v11, v12}, Le/a/c/a/c/g/f;-><init>(Lcom/truecaller/insights/ui/models/AdapterItem$i;Le/a/c/a/l/b$i;)V

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lq3/a/x2/f;
    .locals 1

    .line 1
    check-cast p1, Ls1/s;

    const-string v0, "input"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Le/a/c/a/c/f/i;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Le/a/c/a/c/f/i;-><init>(Le/a/c/a/c/f/j;Ls1/w/d;)V

    .line 4
    new-instance v0, Lq3/a/x2/d1;

    invoke-direct {v0, p1}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    return-object v0
.end method

.method public final d(I)Le/a/c/a/c/g/c;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/a/c/f/j;->d:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 2
    new-instance p1, Le/a/c/a/c/g/c;

    sget v0, Lcom/truecaller/insights/ui/R$string;->view_all:I

    sget-object v1, Le/a/c/a/c/f/j$a;->b:Le/a/c/a/c/f/j$a;

    invoke-direct {p1, v0, v1}, Le/a/c/a/c/g/c;-><init>(ILs1/z/b/l;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

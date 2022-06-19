.class public final Le/a/h0/a/q;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/h0/a/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/h0/a/o;",
        ">;",
        "Le/a/h0/a/p;"
    }
.end annotation


# instance fields
.field public final b:Le/a/h0/m;

.field public final c:Le/a/h0/p;

.field public final d:Le/a/q2/a;

.field public final e:Ln3/m0/y;


# direct methods
.method public constructor <init>(Le/a/h0/m;Le/a/h0/p;Le/a/q2/a;Ln3/m0/y;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "filterSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adjuster"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/h0/a/q;->b:Le/a/h0/m;

    iput-object p2, p0, Le/a/h0/a/q;->c:Le/a/h0/p;

    iput-object p3, p0, Le/a/h0/a/q;->d:Le/a/q2/a;

    iput-object p4, p0, Le/a/h0/a/q;->e:Ln3/m0/y;

    return-void
.end method


# virtual methods
.method public Bc(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/h0/a/q;->c:Le/a/h0/p;

    invoke-virtual {v0, p1}, Le/a/h0/p;->b(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/h0/a/q;->b:Le/a/h0/m;

    invoke-interface {v1, v0}, Le/a/h0/m;->z(I)V

    .line 3
    iget-object v0, p0, Le/a/h0/a/q;->b:Le/a/h0/m;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/h0/m;->c(Z)V

    .line 4
    iget-object v0, p0, Le/a/h0/a/q;->e:Ln3/m0/y;

    const-string v1, "workManager"

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v1, Ln3/m0/h;->a:Ln3/m0/h;

    .line 7
    new-instance v2, Ln3/m0/r$a;

    const-class v3, Lcom/truecaller/filters/sync/FilterSettingsUploadWorker;

    invoke-direct {v2, v3}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 8
    new-instance v3, Ln3/m0/d$a;

    invoke-direct {v3}, Ln3/m0/d$a;-><init>()V

    sget-object v4, Ln3/m0/q;->b:Ln3/m0/q;

    .line 9
    iput-object v4, v3, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 10
    new-instance v4, Ln3/m0/d;

    invoke-direct {v4, v3}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 11
    iget-object v3, v2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v4, v3, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 12
    invoke-virtual {v2}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v2

    check-cast v2, Ln3/m0/r;

    const-string v3, "FilterSettingsUploadWorker"

    .line 13
    invoke-virtual {v0, v3, v1, v2}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 14
    new-instance v0, Le/a/q2/g$b;

    const-string v1, "BLOCKSETTINGS_BlockNeighbourSpoofing"

    invoke-direct {v0, v1}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    const-string v1, "NbMatchingDigits"

    .line 15
    invoke-virtual {v0, v1, p1}, Le/a/q2/g$b;->b(Ljava/lang/String;I)Le/a/q2/g$b;

    .line 16
    iget-object p1, p0, Le/a/h0/a/q;->d:Le/a/q2/a;

    invoke-virtual {v0}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object v0

    const-string v1, "event.build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

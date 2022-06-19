.class public Le/a/h0/a/c0/f;
.super Le/a/h0/a/c0/e;
.source "SourceFile"


# instance fields
.field public final b:Le/a/r2/j;

.field public final c:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/h0/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/r2/j;Le/a/r2/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/j;",
            "Le/a/r2/f<",
            "Le/a/h0/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/h0/a/c0/e;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/h0/a/c0/f;->b:Le/a/r2/j;

    .line 3
    iput-object p2, p0, Le/a/h0/a/c0/f;->c:Le/a/r2/f;

    return-void
.end method


# virtual methods
.method public Hj()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast v0, Le/a/h0/a/c0/g;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/h0/a/c0/g;->mv(Z)V

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/c0/g;

    invoke-interface {v0, v1}, Le/a/h0/a/c0/g;->N(Z)V

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/c0/g;

    invoke-interface {v0}, Le/a/h0/a/c0/g;->E5()Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-object v0, p0, Le/a/h0/a/c0/f;->c:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/h0/r;

    const/4 v6, 0x0

    sget-object v7, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->UNKNOWN:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "OTHER"

    const-string v5, "blockView"

    move-object v2, v4

    .line 6
    invoke-interface/range {v1 .. v9}, Le/a/h0/r;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ljava/lang/Integer;)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/h0/a/c0/f;->b:Le/a/r2/j;

    new-instance v2, Le/a/h0/a/c0/b;

    invoke-direct {v2, p0}, Le/a/h0/a/c0/b;-><init>(Le/a/h0/a/c0/f;)V

    .line 7
    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    return-void
.end method

.method public Ij(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Le/a/h0/a/c0/g;

    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Le/a/h0/a/c0/g;->N(Z)V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/h0/a/c0/g;

    .line 2
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Le/a/h0/a/c0/g;->N(Z)V

    return-void
.end method

.class public Le/a/h0/a/a0/f;
.super Le/a/h0/a/a0/e;
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
    invoke-direct {p0}, Le/a/h0/a/a0/e;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/h0/a/a0/f;->b:Le/a/r2/j;

    .line 3
    iput-object p2, p0, Le/a/h0/a/a0/f;->c:Le/a/r2/f;

    return-void
.end method


# virtual methods
.method public Hj()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast v0, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView;->R1(Z)V

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView;

    invoke-interface {v0, v1}, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView;->N(Z)V

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView;

    invoke-interface {v0}, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView;->t2()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView;

    invoke-interface {v1}, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView;->O7()Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const-string v0, "Unknown wildcard type"

    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->fail([Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    sget-object v1, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->END:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->CONTAIN:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    goto :goto_0

    .line 9
    :cond_3
    sget-object v1, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->START:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    .line 10
    :goto_0
    iget-object v2, p0, Le/a/h0/a/a0/f;->c:Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/h0/r;

    const/4 v3, 0x0

    const-string v4, "blockView"

    .line 11
    invoke-interface {v2, v0, v3, v1, v4}, Le/a/h0/r;->d(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/lang/String;)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/h0/a/a0/f;->b:Le/a/r2/j;

    new-instance v2, Le/a/h0/a/a0/b;

    invoke-direct {v2, p0}, Le/a/h0/a/a0/b;-><init>(Le/a/h0/a/a0/f;)V

    .line 12
    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    return-void
.end method

.method public Ij(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView;

    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView;->N(Z)V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView;

    .line 2
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView;->N(Z)V

    return-void
.end method

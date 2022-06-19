.class public final Le/a/l/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/l1;


# instance fields
.field public final a:Le/a/q2/a;

.field public final b:Le/a/h0/m;

.field public final c:Ln3/m0/y;


# direct methods
.method public constructor <init>(Le/a/q2/a;Le/a/h0/m;Ln3/m0/y;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/m1;->a:Le/a/q2/a;

    iput-object p2, p0, Le/a/l/m1;->b:Le/a/h0/m;

    iput-object p3, p0, Le/a/l/m1;->c:Ln3/m0/y;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/premium/PremiumLaunchContext;)V
    .locals 1

    const-string v0, "launchContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Le/a/l/m1;->b:Le/a/h0/m;

    invoke-interface {p1, v0}, Le/a/h0/m;->a(Z)V

    .line 3
    invoke-virtual {p0}, Le/a/l/m1;->c()V

    const-string p1, "BLOCKSETTINGS_BlockIndianTelemarketers"

    .line 4
    invoke-virtual {p0, p1}, Le/a/l/m1;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object p1, p0, Le/a/l/m1;->b:Le/a/h0/m;

    invoke-interface {p1, v0}, Le/a/h0/m;->g(Z)V

    .line 6
    invoke-virtual {p0}, Le/a/l/m1;->c()V

    const-string p1, "BLOCKSETTINGS_BlockNeighbourSpoofing"

    .line 7
    invoke-virtual {p0, p1}, Le/a/l/m1;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :pswitch_2
    iget-object p1, p0, Le/a/l/m1;->b:Le/a/h0/m;

    invoke-interface {p1, v0}, Le/a/h0/m;->g(Z)V

    .line 9
    invoke-virtual {p0}, Le/a/l/m1;->c()V

    const-string p1, "BLOCKSETTINGS_BlockForeignNumbers"

    .line 10
    invoke-virtual {p0, p1}, Le/a/l/m1;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :pswitch_3
    iget-object p1, p0, Le/a/l/m1;->b:Le/a/h0/m;

    invoke-interface {p1, v0}, Le/a/h0/m;->m(Z)V

    .line 12
    invoke-virtual {p0}, Le/a/l/m1;->c()V

    const-string p1, "BLOCKSETTINGS_BlockNonPhonebook"

    .line 13
    invoke-virtual {p0, p1}, Le/a/l/m1;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :pswitch_4
    iget-object p1, p0, Le/a/l/m1;->b:Le/a/h0/m;

    invoke-interface {p1, v0}, Le/a/h0/m;->j(Z)V

    .line 15
    invoke-virtual {p0}, Le/a/l/m1;->c()V

    const-string p1, "BLOCKSETTINGS_BlockHiddenNumbers"

    .line 16
    invoke-virtual {p0, p1}, Le/a/l/m1;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :pswitch_5
    iget-object p1, p0, Le/a/l/m1;->b:Le/a/h0/m;

    invoke-interface {p1, v0}, Le/a/h0/m;->k(Z)V

    .line 18
    invoke-virtual {p0}, Le/a/l/m1;->c()V

    const-string p1, "BLOCKSETTINGS_BlockSpammers"

    .line 19
    invoke-virtual {p0, p1}, Le/a/l/m1;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "BlocktabSettings_Action"

    const-string v2, "Enabled"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Le/a/l/m1;->a:Le/a/q2/a;

    .line 4
    new-instance v2, Le/a/q2/g$b$a;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v0, v3}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string p1, "event.build()"

    .line 5
    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/l/m1;->b:Le/a/h0/m;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/h0/m;->c(Z)V

    .line 2
    iget-object v0, p0, Le/a/l/m1;->c:Ln3/m0/y;

    const-string v1, "workManager"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Ln3/m0/h;->a:Ln3/m0/h;

    .line 5
    new-instance v2, Ln3/m0/r$a;

    const-class v3, Lcom/truecaller/filters/sync/FilterSettingsUploadWorker;

    invoke-direct {v2, v3}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 6
    new-instance v3, Ln3/m0/d$a;

    invoke-direct {v3}, Ln3/m0/d$a;-><init>()V

    sget-object v4, Ln3/m0/q;->b:Ln3/m0/q;

    .line 7
    iput-object v4, v3, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 8
    new-instance v4, Ln3/m0/d;

    invoke-direct {v4, v3}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 9
    iget-object v3, v2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v4, v3, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 10
    invoke-virtual {v2}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v2

    check-cast v2, Ln3/m0/r;

    const-string v3, "FilterSettingsUploadWorker"

    .line 11
    invoke-virtual {v0, v3, v1, v2}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void
.end method

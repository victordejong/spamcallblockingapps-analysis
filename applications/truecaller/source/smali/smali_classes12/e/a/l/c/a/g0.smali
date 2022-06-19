.class public final Le/a/l/c/a/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/x/l;

.field public final b:Le/a/x/w;


# direct methods
.method public constructor <init>(Le/a/x/l;Le/a/x/w;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ghostCallManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ghostCallSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/c/a/g0;->a:Le/a/x/l;

    iput-object p2, p0, Le/a/l/c/a/g0;->b:Le/a/x/w;

    return-void
.end method


# virtual methods
.method public final a()Le/a/l/c/a/t$d;
    .locals 11

    .line 1
    iget-object v0, p0, Le/a/l/c/a/g0;->b:Le/a/x/w;

    .line 2
    new-instance v1, Le/a/l/c/a/t$d;

    .line 3
    new-instance v10, Le/a/x/i;

    .line 4
    invoke-interface {v0}, Le/a/x/w;->w()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-interface {v0}, Le/a/x/w;->V0()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-interface {v0}, Le/a/x/w;->S0()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-static {}, Lcom/truecaller/ghost_call/ScheduleDuration;->values()[Lcom/truecaller/ghost_call/ScheduleDuration;

    move-result-object v2

    invoke-interface {v0}, Le/a/x/w;->Z1()I

    move-result v6

    aget-object v6, v2, v6

    .line 8
    invoke-interface {v0}, Le/a/x/w;->k1()J

    move-result-wide v7

    const/4 v9, 0x0

    move-object v2, v10

    .line 9
    invoke-direct/range {v2 .. v9}, Le/a/x/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/ghost_call/ScheduleDuration;JLjava/lang/Integer;)V

    .line 10
    invoke-direct {v1, v10}, Le/a/l/c/a/t$d;-><init>(Le/a/x/i;)V

    return-object v1
.end method

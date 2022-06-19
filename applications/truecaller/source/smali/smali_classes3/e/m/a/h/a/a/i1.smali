.class public final synthetic Le/m/a/h/a/a/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/a/o1;


# instance fields
.field public final synthetic a:Le/m/a/h/a/a/p1;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/a/p1;Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/i1;->a:Le/m/a/h/a/a/p1;

    iput-object p2, p0, Le/m/a/h/a/a/i1;->b:Ljava/lang/String;

    iput p3, p0, Le/m/a/h/a/a/i1;->c:I

    iput-wide p4, p0, Le/m/a/h/a/a/i1;->d:J

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Le/m/a/h/a/a/i1;->a:Le/m/a/h/a/a/p1;

    iget-object v1, p0, Le/m/a/h/a/a/i1;->b:Ljava/lang/String;

    iget v2, p0, Le/m/a/h/a/a/i1;->c:I

    iget-wide v3, p0, Le/m/a/h/a/a/i1;->d:J

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    .line 2
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 3
    new-instance v8, Le/m/a/h/a/a/j1;

    .line 4
    invoke-direct {v8, v0, v6}, Le/m/a/h/a/a/j1;-><init>(Le/m/a/h/a/a/p1;Ljava/util/List;)V

    invoke-virtual {v0, v8}, Le/m/a/h/a/a/p1;->b(Le/m/a/h/a/a/o1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 5
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/a/h/a/a/m1;

    if-eqz v6, :cond_0

    iget-object v8, v6, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget v8, v8, Le/m/a/h/a/a/l1;->d:I

    invoke-static {v8}, Ln3/g0/y;->S2(I)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    sget-object v8, Le/m/a/h/a/a/p1;->g:Le/m/a/h/a/d/g;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    const-string v9, "Could not find pack %s while trying to complete it"

    .line 6
    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v7}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    iget-object v0, v0, Le/m/a/h/a/a/p1;->a:Le/m/a/h/a/a/e0;

    .line 7
    invoke-virtual {v0, v1, v2, v3, v4}, Le/m/a/h/a/a/e0;->c(Ljava/lang/String;IJ)Z

    .line 8
    iget-object v0, v6, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    const/4 v1, 0x4

    iput v1, v0, Le/m/a/h/a/a/l1;->d:I

    const/4 v0, 0x0

    return-object v0
.end method

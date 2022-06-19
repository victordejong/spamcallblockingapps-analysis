.class public final Ln2;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ln2;->b:I

    iput-object p2, p0, Ln2;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ln2;->b:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1
    iget-object v0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a4/i0;

    .line 2
    iget-object v0, v0, Le/a/a4/i0;->L:Lo3/a;

    .line 3
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d4/c;

    invoke-interface {v0}, Le/a/d4/c;->c()Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->C(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d4/e;

    sget-object v1, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0

    .line 6
    :cond_1
    iget-object v0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a4/i0;

    .line 7
    iget-object v0, v0, Le/a/a4/i0;->H:Lo3/a;

    .line 8
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/o/a;

    const-string v1, "getProfileRequestDone"

    .line 9
    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 11
    :cond_2
    iget-object v0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a4/i0;

    .line 12
    iget-object v0, v0, Le/a/a4/i0;->H:Lo3/a;

    .line 13
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/o/a;

    const-string v1, "region_c_reported"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 15
    :cond_3
    iget-object v0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a4/i0;

    .line 16
    iget-object v0, v0, Le/a/a4/i0;->H:Lo3/a;

    .line 17
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/o/a;

    const-string v1, "ppolicy_accepted"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 19
    :cond_4
    iget-object v0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a4/i0;

    .line 20
    iget-object v0, v0, Le/a/a4/i0;->F:Lo3/a;

    .line 21
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->a()Z

    move-result v0

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 23
    :cond_5
    iget-object v0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a4/i0;

    .line 24
    iget-object v0, v0, Le/a/a4/i0;->H:Lo3/a;

    .line 25
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/o/a;

    const/4 v1, 0x0

    const-string v2, "shouldInitClevertapSDK"

    invoke-interface {v0, v2, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

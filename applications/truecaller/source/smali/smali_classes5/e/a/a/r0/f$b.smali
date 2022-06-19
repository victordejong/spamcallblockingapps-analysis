.class public final Le/a/a/r0/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/r0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/a/a/r0/f;


# direct methods
.method public constructor <init>(Le/a/a/r0/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/r0/f$b;->a:Le/a/a/r0/f;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/r0/f$b;->a:Le/a/a/r0/f;

    .line 2
    iget-object v2, v1, Le/a/a/r0/f;->a:Le/a/a/r0/l;

    iget-object v3, v1, Le/a/a/r0/f;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->u6()Le/a/h5/w;

    move-result-object v5

    const-string v3, "Cannot return null from a non-@Nullable component method"

    .line 3
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v4, v1, Le/a/a/r0/f;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v6

    .line 5
    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v4, v1, Le/a/a/r0/f;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v7

    .line 7
    invoke-static {v7, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v4, v1, Le/a/a/r0/f;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->s2()Le/a/a/g/g0;

    move-result-object v8

    .line 9
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v4, v1, Le/a/a/r0/f;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->n()Le/a/c/e/c;

    move-result-object v10

    .line 11
    invoke-static {v10, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v4, v1, Le/a/a/r0/f;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->m6()Le/a/l4/c;

    move-result-object v9

    .line 13
    invoke-static {v9, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v4, v1, Le/a/a/r0/f;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->R0()Le/a/c/b/j;

    move-result-object v11

    .line 15
    invoke-static {v11, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v4, v1, Le/a/a/r0/f;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v12

    .line 17
    invoke-static {v12, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iget-object v4, v1, Le/a/a/r0/f;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v13

    .line 19
    invoke-static {v13, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object v4, v1, Le/a/a/r0/f;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->h5()Le/a/a/k/a/a/u;

    move-result-object v14

    .line 21
    invoke-static {v14, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iget-object v4, v1, Le/a/a/r0/f;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->W4()Le/a/a/e/m;

    move-result-object v15

    .line 23
    invoke-static {v15, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iget-object v4, v1, Le/a/a/r0/f;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->k5()Le/a/a/w;

    move-result-object v4

    .line 25
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iget-object v0, v1, Le/a/a/r0/f;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->O4()Le/a/c/c0/o;

    move-result-object v0

    .line 27
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 28
    iget-object v0, v1, Le/a/a/r0/f;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->o5()Z

    move-result v18

    iget-object v0, v1, Le/a/a/r0/f;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->L6()Le/a/a/d0;

    move-result-object v0

    .line 29
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "permissionUtil"

    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deviceInfoUtil"

    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "analytics"

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unreadThreadsCounter"

    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "insightsAnalyticsManager"

    invoke-static {v10, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "availabilityManager"

    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "insightsStatusProvider"

    invoke-static {v11, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "uiContext"

    invoke-static {v12, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "messageSettings"

    invoke-static {v13, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "reportHelper"

    invoke-static {v14, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "inboxCleaner"

    invoke-static {v15, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "inboxTabsProvider"

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "insightConfig"

    move-object/from16 v2, v17

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "helper"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v1, Le/a/a/r0/o;

    move-object v3, v4

    move-object v4, v1

    move-object/from16 v16, v3

    move-object/from16 v19, v0

    invoke-direct/range {v4 .. v19}, Le/a/a/r0/o;-><init>(Le/a/h5/w;Le/a/p5/g;Le/a/q2/a;Le/a/a/g/g0;Le/a/l4/c;Le/a/c/e/c;Le/a/c/b/j;Ls1/w/f;Le/a/a/i0;Le/a/a/k/a/a/u;Le/a/a/e/m;Le/a/a/w;Le/a/c/c0/o;ZLe/a/a/d0;)V

    return-object v1
.end method

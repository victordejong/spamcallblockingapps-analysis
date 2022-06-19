.class public final Le/a/c/a/n/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/a/n/a/a;
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
.field public final a:Le/a/c/a/n/a/a;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/c/a/n/a/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/c/a/n/a/a$b;->a:Le/a/c/a/n/a/a;

    .line 3
    iput p2, p0, Le/a/c/a/n/a/a$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/c/a/n/a/a$b;->b:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    const-string v3, "insightsFilterFetcher"

    const-string v4, "ioContext"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/c/a/n/a/a$b;->a:Le/a/c/a/n/a/a;

    .line 3
    new-instance v1, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;

    iget-object v0, v0, Le/a/c/a/n/a/a;->b:Le/a/c/l/a/a;

    invoke-interface {v0}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v0

    .line 4
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-direct {v1, v0}, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;-><init>(Le/a/c/e/c;)V

    return-object v1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/c/a/n/a/a$b;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 7
    :cond_1
    iget-object v0, p0, Le/a/c/a/n/a/a$b;->a:Le/a/c/a/n/a/a;

    .line 8
    iget-object v1, v0, Le/a/c/a/n/a/a;->a:Le/a/c/a/n/a/c;

    iget-object v5, v0, Le/a/c/a/n/a/a;->b:Le/a/c/l/a/a;

    invoke-interface {v5}, Le/a/c/l/a/a;->c2()Le/a/c/q/d;

    move-result-object v5

    .line 9
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v6, v0, Le/a/c/a/n/a/a;->c:Le/a/b0/c;

    invoke-interface {v6}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v6

    .line 11
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v7, v0, Le/a/c/a/n/a/a;->b:Le/a/c/l/a/a;

    invoke-interface {v7}, Le/a/c/l/a/a;->w0()Le/a/c/b/j;

    move-result-object v7

    .line 13
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v0, v0, Le/a/c/a/n/a/a;->d:Le/a/c/h/k/a;

    invoke-interface {v0}, Le/a/c/h/k/a;->A1()Le/a/c/h/e;

    move-result-object v0

    .line 15
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "businessInsightsManager"

    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "insightsStatusProvider"

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v1, Le/a/c/a/c/f/g;

    invoke-direct {v1, v5, v6, v7, v0}, Le/a/c/a/c/f/g;-><init>(Le/a/c/q/d;Ls1/w/f;Le/a/c/b/j;Le/a/c/h/e;)V

    return-object v1

    .line 18
    :cond_2
    iget-object v0, p0, Le/a/c/a/n/a/a$b;->a:Le/a/c/a/n/a/a;

    .line 19
    iget-object v1, v0, Le/a/c/a/n/a/a;->a:Le/a/c/a/n/a/c;

    iget-object v5, v0, Le/a/c/a/n/a/a;->b:Le/a/c/l/a/a;

    invoke-interface {v5}, Le/a/c/l/a/a;->c2()Le/a/c/q/d;

    move-result-object v5

    .line 20
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    iget-object v6, v0, Le/a/c/a/n/a/a;->g:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/c/a/c/f/g;

    iget-object v7, v0, Le/a/c/a/n/a/a;->c:Le/a/b0/c;

    invoke-interface {v7}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v7

    .line 22
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    iget-object v0, v0, Le/a/c/a/n/a/a;->d:Le/a/c/h/k/a;

    invoke-interface {v0}, Le/a/c/h/k/a;->A1()Le/a/c/h/e;

    move-result-object v0

    .line 24
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "insightsUiManager"

    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "upcomingUseCase"

    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v1, Le/a/c/a/n/b/e;

    invoke-direct {v1, v5, v6, v7, v0}, Le/a/c/a/n/b/e;-><init>(Le/a/c/q/d;Le/a/c/a/c/f/g;Ls1/w/f;Le/a/c/h/e;)V

    return-object v1

    .line 27
    :cond_3
    iget-object v0, p0, Le/a/c/a/n/a/a$b;->a:Le/a/c/a/n/a/a;

    .line 28
    new-instance v1, Le/a/c/a/n/b/b;

    iget-object v3, v0, Le/a/c/a/n/a/a;->h:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/a/n/b/e;

    iget-object v0, v0, Le/a/c/a/n/a/a;->c:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v0

    .line 29
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    invoke-direct {v1, v3, v0}, Le/a/c/a/n/b/b;-><init>(Le/a/c/a/n/b/e;Ls1/w/f;)V

    return-object v1

    .line 31
    :cond_4
    iget-object v0, p0, Le/a/c/a/n/a/a$b;->a:Le/a/c/a/n/a/a;

    .line 32
    new-instance v1, Le/a/c/a/n/c/c;

    iget-object v3, v0, Le/a/c/a/n/a/a;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/a/n/b/a;

    iget-object v4, v0, Le/a/c/a/n/a/a;->l:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/a/i/h;

    .line 33
    new-instance v5, Le/a/c/a/i/j;

    iget-object v6, v0, Le/a/c/a/n/a/a;->b:Le/a/c/l/a/a;

    invoke-interface {v6}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v6

    .line 34
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    invoke-direct {v5, v6}, Le/a/c/a/i/j;-><init>(Le/a/c/e/c;)V

    .line 36
    iget-object v0, v0, Le/a/c/a/n/a/a;->b:Le/a/c/l/a/a;

    invoke-interface {v0}, Le/a/c/l/a/a;->E2()Le/a/c/c0/o;

    move-result-object v0

    .line 37
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    invoke-direct {v1, v3, v4, v5, v0}, Le/a/c/a/n/c/c;-><init>(Le/a/c/a/n/b/a;Le/a/c/a/i/h;Le/a/c/a/i/j;Le/a/c/c0/o;)V

    return-object v1

    .line 39
    :cond_5
    iget-object v0, p0, Le/a/c/a/n/a/a$b;->a:Le/a/c/a/n/a/a;

    .line 40
    new-instance v1, Le/a/c/a/a/g;

    .line 41
    const-class v2, Le/a/c/a/n/c/c;

    iget-object v0, v0, Le/a/c/a/n/a/a;->n:Ljavax/inject/Provider;

    invoke-static {v2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 42
    invoke-direct {v1, v0}, Le/a/c/a/a/g;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

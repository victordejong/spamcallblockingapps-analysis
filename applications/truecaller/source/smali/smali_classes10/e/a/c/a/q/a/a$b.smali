.class public final Le/a/c/a/q/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/a/q/a/a;
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
.field public final a:Le/a/c/a/q/a/a;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/c/a/q/a/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/c/a/q/a/a$b;->a:Le/a/c/a/q/a/a;

    .line 3
    iput p2, p0, Le/a/c/a/q/a/a$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/c/a/q/a/a$b;->b:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/c/a/q/a/a$b;->a:Le/a/c/a/q/a/a;

    .line 3
    new-instance v1, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;

    iget-object v0, v0, Le/a/c/a/q/a/a;->b:Le/a/c/l/a/a;

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

    iget v1, p0, Le/a/c/a/q/a/a$b;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 7
    :cond_1
    iget-object v0, p0, Le/a/c/a/q/a/a$b;->a:Le/a/c/a/q/a/a;

    .line 8
    iget-object v1, v0, Le/a/c/a/q/a/a;->a:Le/a/c/a/q/a/c;

    iget-object v3, v0, Le/a/c/a/q/a/a;->b:Le/a/c/l/a/a;

    invoke-interface {v3}, Le/a/c/l/a/a;->c2()Le/a/c/q/d;

    move-result-object v3

    .line 9
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v0, v0, Le/a/c/a/q/a/a;->c:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v0

    .line 11
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "insightsUiManager"

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ioContext"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v1, Le/a/c/a/q/b/f;

    invoke-direct {v1, v3, v0}, Le/a/c/a/q/b/f;-><init>(Le/a/c/q/d;Ls1/w/f;)V

    return-object v1

    .line 14
    :cond_2
    iget-object v0, p0, Le/a/c/a/q/a/a$b;->a:Le/a/c/a/q/a/a;

    .line 15
    new-instance v1, Le/a/c/a/q/b/d;

    iget-object v3, v0, Le/a/c/a/q/a/a;->g:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/a/q/b/f;

    iget-object v4, v0, Le/a/c/a/q/a/a;->c:Le/a/b0/c;

    invoke-interface {v4}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v4

    .line 16
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    new-instance v5, Le/a/c/a/q/b/a;

    iget-object v6, v0, Le/a/c/a/q/a/a;->b:Le/a/c/l/a/a;

    invoke-interface {v6}, Le/a/c/l/a/a;->c2()Le/a/c/q/d;

    move-result-object v6

    .line 18
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    iget-object v0, v0, Le/a/c/a/q/a/a;->c:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v0

    .line 20
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    invoke-direct {v5, v6, v0}, Le/a/c/a/q/b/a;-><init>(Le/a/c/q/d;Ls1/w/f;)V

    .line 22
    invoke-direct {v1, v3, v4, v5}, Le/a/c/a/q/b/d;-><init>(Le/a/c/a/q/b/f;Ls1/w/f;Le/a/c/a/q/b/a;)V

    return-object v1

    .line 23
    :cond_3
    iget-object v0, p0, Le/a/c/a/q/a/a$b;->a:Le/a/c/a/q/a/a;

    .line 24
    new-instance v1, Le/a/c/a/q/c/b;

    iget-object v3, v0, Le/a/c/a/q/a/a;->i:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/a/q/b/c;

    iget-object v4, v0, Le/a/c/a/q/a/a;->k:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/a/i/h;

    .line 25
    new-instance v5, Le/a/c/a/i/j;

    iget-object v6, v0, Le/a/c/a/q/a/a;->b:Le/a/c/l/a/a;

    invoke-interface {v6}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v6

    .line 26
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    invoke-direct {v5, v6}, Le/a/c/a/i/j;-><init>(Le/a/c/e/c;)V

    .line 28
    iget-object v0, v0, Le/a/c/a/q/a/a;->b:Le/a/c/l/a/a;

    invoke-interface {v0}, Le/a/c/l/a/a;->E2()Le/a/c/c0/o;

    move-result-object v0

    .line 29
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    invoke-direct {v1, v3, v4, v5, v0}, Le/a/c/a/q/c/b;-><init>(Le/a/c/a/q/b/c;Le/a/c/a/i/h;Le/a/c/a/i/j;Le/a/c/c0/o;)V

    return-object v1

    .line 31
    :cond_4
    iget-object v0, p0, Le/a/c/a/q/a/a$b;->a:Le/a/c/a/q/a/a;

    .line 32
    new-instance v1, Le/a/c/a/a/g;

    .line 33
    const-class v2, Le/a/c/a/q/c/b;

    iget-object v0, v0, Le/a/c/a/q/a/a;->m:Ljavax/inject/Provider;

    invoke-static {v2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 34
    invoke-direct {v1, v0}, Le/a/c/a/a/g;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

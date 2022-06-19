.class public final Le/a/c/a/d/c/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/a/d/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
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
.field public final a:Le/a/c/a/d/c/a;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/c/a/d/c/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/c/a/d/c/a$c;->a:Le/a/c/a/d/c/a;

    .line 3
    iput p2, p0, Le/a/c/a/d/c/a$c;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/c/a/d/c/a$c;->b:I

    const-string v1, "insightsFilterFetcher"

    const-string v2, "insightsUiManager"

    const-string v3, "ioContext"

    const-string v4, "Cannot return null from a non-@Nullable component method"

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/c/a/d/c/a$c;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v0, p0, Le/a/c/a/d/c/a$c;->a:Le/a/c/a/d/c/a;

    .line 4
    iget-object v2, v0, Le/a/c/a/d/c/a;->a:Le/a/c/a/d/c/c;

    iget-object v5, v0, Le/a/c/a/d/c/a;->c:Le/a/b0/c;

    invoke-interface {v5}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v7

    .line 5
    invoke-static {v7, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v5, v0, Le/a/c/a/d/c/a;->e:Le/a/b0/m/b/a;

    invoke-interface {v5}, Le/a/b0/m/b/a;->u()Le/a/b0/m/c/a;

    move-result-object v8

    .line 7
    invoke-static {v8, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v5, v0, Le/a/c/a/d/c/a;->e:Le/a/b0/m/b/a;

    invoke-interface {v5}, Le/a/b0/m/b/a;->S7()Le/a/b0/m/d/a;

    move-result-object v9

    .line 9
    invoke-static {v9, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v5, v0, Le/a/c/a/d/c/a;->b:Le/a/c/l/a/a;

    invoke-interface {v5}, Le/a/c/l/a/a;->e5()Le/a/c/w/v;

    move-result-object v10

    .line 11
    invoke-static {v10, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v5, v0, Le/a/c/a/d/c/a;->b:Le/a/c/l/a/a;

    invoke-interface {v5}, Le/a/c/l/a/a;->j5()Le/a/c/w/o0/g;

    move-result-object v11

    .line 13
    invoke-static {v11, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v0, v0, Le/a/c/a/d/c/a;->d:Le/a/c/h/k/a;

    invoke-interface {v0}, Le/a/c/h/k/a;->A1()Le/a/c/h/e;

    move-result-object v12

    .line 15
    invoke-static {v12, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressProfileLoader"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderInfoManager"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRepository"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Le/a/c/a/d/d/j;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Le/a/c/a/d/d/j;-><init>(Ls1/w/f;Le/a/b0/m/c/a;Le/a/b0/m/d/a;Le/a/c/w/v;Le/a/c/w/o0/g;Le/a/c/h/e;)V

    return-object v0

    .line 18
    :pswitch_1
    iget-object v0, p0, Le/a/c/a/d/c/a$c;->a:Le/a/c/a/d/c/a;

    .line 19
    new-instance v1, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;

    iget-object v0, v0, Le/a/c/a/d/c/a;->b:Le/a/c/l/a/a;

    invoke-interface {v0}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v0

    .line 20
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    invoke-direct {v1, v0}, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;-><init>(Le/a/c/e/c;)V

    return-object v1

    .line 22
    :pswitch_2
    iget-object v0, p0, Le/a/c/a/d/c/a$c;->a:Le/a/c/a/d/c/a;

    .line 23
    iget-object v1, v0, Le/a/c/a/d/c/a;->a:Le/a/c/a/d/c/c;

    iget-object v5, v0, Le/a/c/a/d/c/a;->b:Le/a/c/l/a/a;

    invoke-interface {v5}, Le/a/c/l/a/a;->c2()Le/a/c/q/d;

    move-result-object v5

    .line 24
    invoke-static {v5, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    iget-object v0, v0, Le/a/c/a/d/c/a;->c:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v0

    .line 26
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v1, Le/a/c/a/d/d/a;

    invoke-direct {v1, v5, v0}, Le/a/c/a/d/d/a;-><init>(Le/a/c/q/d;Ls1/w/f;)V

    return-object v1

    .line 29
    :pswitch_3
    iget-object v0, p0, Le/a/c/a/d/c/a$c;->a:Le/a/c/a/d/c/a;

    .line 30
    iget-object v5, v0, Le/a/c/a/d/c/a;->a:Le/a/c/a/d/c/c;

    iget-object v6, v0, Le/a/c/a/d/c/a;->b:Le/a/c/l/a/a;

    invoke-interface {v6}, Le/a/c/l/a/a;->c2()Le/a/c/q/d;

    move-result-object v6

    .line 31
    invoke-static {v6, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iget-object v7, v0, Le/a/c/a/d/c/a;->c:Le/a/b0/c;

    invoke-interface {v7}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v7

    .line 33
    invoke-static {v7, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iget-object v0, v0, Le/a/c/a/d/c/a;->d:Le/a/c/h/k/a;

    invoke-interface {v0}, Le/a/c/h/k/a;->A1()Le/a/c/h/e;

    move-result-object v0

    .line 35
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v1, Le/a/c/a/d/d/f;

    invoke-direct {v1, v6, v7, v0}, Le/a/c/a/d/d/f;-><init>(Le/a/c/q/d;Ls1/w/f;Le/a/c/h/e;)V

    return-object v1

    .line 38
    :pswitch_4
    iget-object v0, p0, Le/a/c/a/d/c/a$c;->a:Le/a/c/a/d/c/a;

    .line 39
    new-instance v1, Le/a/c/a/d/d/d;

    iget-object v2, v0, Le/a/c/a/d/c/a;->g:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/a/d/d/f;

    iget-object v3, v0, Le/a/c/a/d/c/a;->c:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v3

    .line 40
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    iget-object v0, v0, Le/a/c/a/d/c/a;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/a/d/d/a;

    invoke-direct {v1, v2, v3, v0}, Le/a/c/a/d/d/d;-><init>(Le/a/c/a/d/d/f;Ls1/w/f;Le/a/c/a/d/d/a;)V

    return-object v1

    .line 42
    :pswitch_5
    iget-object v0, p0, Le/a/c/a/d/c/a$c;->a:Le/a/c/a/d/c/a;

    .line 43
    new-instance v1, Le/a/c/a/d/a/a;

    iget-object v2, v0, Le/a/c/a/d/c/a;->j:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/c/a/d/d/c;

    iget-object v2, v0, Le/a/c/a/d/c/a;->l:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/c/a/i/h;

    .line 44
    new-instance v8, Le/a/c/a/i/j;

    iget-object v2, v0, Le/a/c/a/d/c/a;->b:Le/a/c/l/a/a;

    invoke-interface {v2}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v2

    .line 45
    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    invoke-direct {v8, v2}, Le/a/c/a/i/j;-><init>(Le/a/c/e/c;)V

    .line 47
    iget-object v2, v0, Le/a/c/a/d/c/a;->b:Le/a/c/l/a/a;

    invoke-interface {v2}, Le/a/c/l/a/a;->E2()Le/a/c/c0/o;

    move-result-object v9

    .line 48
    invoke-static {v9, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iget-object v0, v0, Le/a/c/a/d/c/a;->m:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Le/a/c/a/d/d/j;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Le/a/c/a/d/a/a;-><init>(Le/a/c/a/d/d/c;Le/a/c/a/i/h;Le/a/c/a/i/j;Le/a/c/c0/o;Le/a/c/a/d/d/j;)V

    return-object v1

    .line 50
    :pswitch_6
    iget-object v0, p0, Le/a/c/a/d/c/a$c;->a:Le/a/c/a/d/c/a;

    .line 51
    new-instance v1, Le/a/c/a/a/g;

    .line 52
    const-class v2, Le/a/c/a/d/a/a;

    iget-object v0, v0, Le/a/c/a/d/c/a;->o:Ljavax/inject/Provider;

    invoke-static {v2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 53
    invoke-direct {v1, v0}, Le/a/c/a/a/g;-><init>(Ljava/util/Map;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Le/a/t3/c/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t3/c/d;
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
.field public final a:Le/a/t3/c/d;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/t3/c/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/t3/c/d$b;->a:Le/a/t3/c/d;

    .line 3
    iput p2, p0, Le/a/t3/c/d$b;->b:I

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
    iget v0, p0, Le/a/t3/c/d$b;->b:I

    const-string v1, "Cannot return null from a non-@Nullable component method"

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/t3/c/d$b;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v0, p0, Le/a/t3/c/d$b;->a:Le/a/t3/c/d;

    .line 4
    iget-object v1, v0, Le/a/t3/c/d;->a:Le/a/t3/c/l;

    iget-object v0, v0, Le/a/t3/c/d;->g:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Le/a/t3/c/x/b;

    invoke-direct {v1, v0}, Le/a/t3/c/x/b;-><init>(Lo3/a;)V

    return-object v1

    .line 7
    :pswitch_1
    iget-object v0, p0, Le/a/t3/c/d$b;->a:Le/a/t3/c/d;

    .line 8
    iget-object v2, v0, Le/a/t3/c/d;->a:Le/a/t3/c/l;

    .line 9
    new-instance v3, Le/a/a/p0/m/a;

    iget-object v4, v0, Le/a/t3/c/d;->g:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v5, v0, Le/a/t3/c/d;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->P4()Le/a/c/g/y/k;

    move-result-object v5

    .line 10
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iget-object v6, v0, Le/a/t3/c/d;->b:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->O4()Le/a/c/c0/o;

    move-result-object v6

    .line 12
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    iget-object v0, v0, Le/a/t3/c/d;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v0

    .line 14
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    invoke-direct {v3, v4, v5, v6, v0}, Le/a/a/p0/m/a;-><init>(Lo3/a;Le/a/c/g/y/k;Le/a/c/c0/o;Ls1/w/f;)V

    .line 16
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v0, Le/a/a/p0/m/b;

    invoke-direct {v0, v3}, Le/a/a/p0/m/b;-><init>(Le/a/a/p0/m/a;)V

    return-object v0

    .line 18
    :pswitch_2
    iget-object v0, p0, Le/a/t3/c/d$b;->a:Le/a/t3/c/d;

    .line 19
    iget-object v0, v0, Le/a/t3/c/d;->b:Le/a/j2;

    .line 20
    invoke-interface {v0}, Le/a/j2;->a7()Le/a/r2/f;

    move-result-object v0

    .line 21
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 22
    :pswitch_3
    iget-object v0, p0, Le/a/t3/c/d$b;->a:Le/a/t3/c/d;

    .line 23
    iget-object v2, v0, Le/a/t3/c/d;->a:Le/a/t3/c/l;

    iget-object v3, v0, Le/a/t3/c/d;->g:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v0, v0, Le/a/t3/c/d;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v0

    .line 24
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v1, Le/a/t3/c/x/a;

    invoke-direct {v1, v3, v0}, Le/a/t3/c/x/a;-><init>(Lo3/a;Le/a/b0/o/a;)V

    return-object v1

    .line 27
    :pswitch_4
    iget-object v0, p0, Le/a/t3/c/d$b;->a:Le/a/t3/c/d;

    .line 28
    iget-object v1, v0, Le/a/t3/c/d;->a:Le/a/t3/c/l;

    iget-object v2, v0, Le/a/t3/c/d;->h:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/t3/c/x/a;

    iget-object v3, v0, Le/a/t3/c/d;->i:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/p0/m/b;

    iget-object v0, v0, Le/a/t3/c/d;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/t3/c/x/b;

    .line 29
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "hook"

    .line 31
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2}, Le/a/t3/c/x/a;->b()Lcom/truecaller/featuretoggles/FeatureKey;

    move-result-object v5

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v3}, Le/a/a/p0/m/b;->b()Lcom/truecaller/featuretoggles/FeatureKey;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Le/a/t3/c/x/b;->b()Lcom/truecaller/featuretoggles/FeatureKey;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v0, Le/a/t3/c/x/d;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/a/t3/c/x/d;-><init>(Ljava/util/Map;Ls1/z/c/f;)V

    return-object v0

    .line 38
    :pswitch_5
    iget-object v0, p0, Le/a/t3/c/d$b;->a:Le/a/t3/c/d;

    .line 39
    iget-object v2, v0, Le/a/t3/c/d;->a:Le/a/t3/c/l;

    iget-object v0, v0, Le/a/t3/c/d;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v0

    .line 40
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    check-cast v0, Le/a/u3/n;

    return-object v0

    .line 43
    :pswitch_6
    iget-object v0, p0, Le/a/t3/c/d$b;->a:Le/a/t3/c/d;

    .line 44
    iget-object v2, v0, Le/a/t3/c/d;->a:Le/a/t3/c/l;

    iget-object v3, v0, Le/a/t3/c/d;->d:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v0, v0, Le/a/t3/c/d;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->p2()Le/a/c/b/f;

    move-result-object v0

    .line 45
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v1, Le/a/t3/c/k;

    invoke-direct {v1, v3, v0}, Le/a/t3/c/k;-><init>(Lo3/a;Le/a/c/b/f;)V

    return-object v1

    .line 48
    :pswitch_7
    iget-object v0, p0, Le/a/t3/c/d$b;->a:Le/a/t3/c/d;

    .line 49
    iget-object v1, v0, Le/a/t3/c/d;->a:Le/a/t3/c/l;

    iget-object v2, v0, Le/a/t3/c/d;->e:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/t3/c/g;

    iget-object v3, v0, Le/a/t3/c/d;->f:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/u3/n;

    iget-object v0, v0, Le/a/t3/c/d;->k:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/t3/c/x/e;

    .line 50
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v1, Le/a/t3/c/n;

    invoke-direct {v1, v2, v3, v0}, Le/a/t3/c/n;-><init>(Le/a/t3/c/g;Le/a/u3/n;Le/a/t3/c/x/e;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

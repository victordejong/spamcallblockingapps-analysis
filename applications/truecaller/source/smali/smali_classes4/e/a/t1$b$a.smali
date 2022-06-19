.class public final Le/a/t1$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
.field public final a:Le/a/t1$b;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$k;Le/a/t1$b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Le/a/t1$b$a;->a:Le/a/t1$b;

    .line 3
    iput p4, p0, Le/a/t1$b$a;->b:I

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
    iget v0, p0, Le/a/t1$b$a;->b:I

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/t1$b$a;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v0, p0, Le/a/t1$b$a;->a:Le/a/t1$b;

    .line 4
    new-instance v1, Le/a/i/d/z;

    iget-object v0, v0, Le/a/t1$b;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/f0/c;

    invoke-direct {v1, v0}, Le/a/i/d/z;-><init>(Le/a/i/f0/c;)V

    return-object v1

    .line 5
    :pswitch_1
    iget-object v0, p0, Le/a/t1$b$a;->a:Le/a/t1$b;

    .line 6
    new-instance v1, Le/a/i/d/a0;

    iget-object v0, v0, Le/a/t1$b;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/f0/c;

    invoke-direct {v1, v0}, Le/a/i/d/a0;-><init>(Le/a/i/f0/c;)V

    return-object v1

    .line 7
    :pswitch_2
    iget-object v0, p0, Le/a/t1$b$a;->a:Le/a/t1$b;

    .line 8
    new-instance v1, Le/a/i/d/w;

    iget-object v0, v0, Le/a/t1$b;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/f0/c;

    invoke-direct {v1, v0}, Le/a/i/d/w;-><init>(Le/a/i/f0/c;)V

    return-object v1

    .line 9
    :pswitch_3
    iget-object v0, p0, Le/a/t1$b$a;->a:Le/a/t1$b;

    .line 10
    new-instance v1, Le/a/i/d/t;

    iget-object v0, v0, Le/a/t1$b;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/f0/c;

    invoke-direct {v1, v0}, Le/a/i/d/t;-><init>(Le/a/i/f0/c;)V

    return-object v1

    .line 11
    :pswitch_4
    iget-object v0, p0, Le/a/t1$b$a;->a:Le/a/t1$b;

    .line 12
    iget-object v1, v0, Le/a/t1$b;->a:Le/a/h/f/p;

    iget-object v2, v0, Le/a/t1$b;->b:Le/a/t1;

    .line 13
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 14
    invoke-interface {v2}, Le/a/j2;->h7()Le/a/i/f0/d;

    move-result-object v2

    const-string v3, "Cannot return null from a non-@Nullable component method"

    .line 15
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v4, v0, Le/a/t1$b;->b:Le/a/t1;

    .line 17
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 18
    invoke-interface {v4}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v4

    .line 19
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object v5, v0, Le/a/t1$b;->b:Le/a/t1;

    .line 21
    iget-object v5, v5, Le/a/t1;->b:Le/a/j2;

    .line 22
    invoke-interface {v5}, Le/a/j2;->c4()Le/a/i/f0/j/c;

    move-result-object v6

    .line 23
    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iget-object v5, v0, Le/a/t1$b;->b:Le/a/t1;

    .line 25
    iget-object v5, v5, Le/a/t1;->y:Ljavax/inject/Provider;

    .line 26
    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v0, v0, Le/a/t1$b;->b:Le/a/t1;

    .line 27
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 28
    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v0

    .line 29
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "provider"

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "coroutineContext"

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adUnitIdManager"

    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adaptiveBannerSize"

    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "featuresRegistry"

    invoke-static {v0, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "contactsAdUnitId"

    const-string v8, "adUnitId"

    const-string v1, "placement"

    const-string v3, "CONTACTS"

    move-object v9, v3

    move-object v10, v1

    move-object v11, v0

    .line 31
    invoke-static/range {v6 .. v12}, Le/d/c/a/a;->Y1(Le/a/i/f0/j/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/u3/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 32
    invoke-static {v7, v8, v6, v7}, Le/d/c/a/a;->l1(Le/a/i/s;ILjava/lang/String;Ljava/lang/String;)Le/a/i/s$a;

    move-result-object v6

    .line 33
    invoke-virtual {v0}, Le/a/u3/g;->O()Le/a/u3/b;

    move-result-object v7

    invoke-interface {v7}, Le/a/u3/b;->isEnabled()Z

    move-result v7

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    .line 34
    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v1, Le/a/i/b0/d/a;->h:Le/a/i/b0/d/a$b;

    .line 36
    new-instance v1, Le/a/i/b0/d/a$a;

    invoke-direct {v1}, Le/a/i/b0/d/a$a;-><init>()V

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-virtual {v1, v3}, Le/a/i/b0/d/a$a;->c([Ljava/lang/String;)Le/a/i/b0/d/a$a;

    invoke-virtual {v1}, Le/a/i/b0/d/a$a;->a()Le/a/i/b0/d/a;

    move-result-object v1

    iput-object v1, v6, Le/a/i/s$a;->c:Le/a/i/b0/d/a;

    goto :goto_0

    :cond_0
    const-string v1, "campaign"

    const-string v7, "CampaignConfig.Builder(campaign).build()"

    .line 38
    invoke-static {v3, v1, v3, v7}, Le/d/c/a/a;->k1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/i/o;

    move-result-object v1

    .line 39
    iput-object v1, v6, Le/a/i/s$a;->b:Le/a/i/o;

    :goto_0
    const-string v1, "contacts"

    .line 40
    iput-object v1, v6, Le/a/i/s$a;->i:Ljava/lang/String;

    new-array v1, v8, [Lcom/truecaller/ads/CustomTemplate;

    .line 41
    sget-object v3, Lcom/truecaller/ads/CustomTemplate;->NATIVE_CONTENT_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    aput-object v3, v1, v9

    invoke-virtual {v6, v1}, Le/a/i/s$a;->f([Lcom/truecaller/ads/CustomTemplate;)Le/a/i/s$a;

    .line 42
    iput-boolean v8, v6, Le/a/i/s$a;->k:Z

    .line 43
    iput-boolean v8, v6, Le/a/i/s$a;->l:Z

    .line 44
    invoke-virtual {v0}, Le/a/u3/g;->A()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v8, [Lcom/google/android/gms/ads/AdSize;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "adaptiveBannerSize.get()"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/android/gms/ads/AdSize;

    aput-object v1, v0, v9

    invoke-virtual {v6, v0}, Le/a/i/s$a;->e([Lcom/google/android/gms/ads/AdSize;)Le/a/i/s$a;

    .line 45
    :cond_1
    new-instance v0, Le/a/i/f0/g;

    .line 46
    new-instance v1, Le/a/i/s;

    invoke-direct {v1, v6}, Le/a/i/s;-><init>(Le/a/i/s$a;)V

    .line 47
    invoke-direct {v0, v2, v1, v4}, Le/a/i/f0/g;-><init>(Le/a/i/f0/d;Le/a/i/s;Ls1/w/f;)V

    return-object v0

    .line 48
    :pswitch_5
    iget-object v0, p0, Le/a/t1$b$a;->a:Le/a/t1$b;

    .line 49
    new-instance v1, Le/a/i/d/y;

    iget-object v0, v0, Le/a/t1$b;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/f0/c;

    invoke-direct {v1, v0}, Le/a/i/d/y;-><init>(Le/a/i/f0/c;)V

    return-object v1

    .line 50
    :pswitch_6
    iget-object v0, p0, Le/a/t1$b$a;->a:Le/a/t1$b;

    .line 51
    new-instance v8, Le/a/i/d/v;

    iget-object v1, v0, Le/a/t1$b;->g:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/a/i/d/k;

    .line 52
    new-instance v3, Le/a/i/d/u;

    iget-object v1, v0, Le/a/t1$b;->e:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/f0/c;

    invoke-direct {v3, v1}, Le/a/i/d/u;-><init>(Le/a/i/f0/c;)V

    .line 53
    iget-object v1, v0, Le/a/t1$b;->i:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Le/a/i/d/h;

    iget-object v1, v0, Le/a/t1$b;->k:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Le/a/i/d/j;

    iget-object v1, v0, Le/a/t1$b;->m:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Le/a/i/d/m;

    iget-object v0, v0, Le/a/t1$b;->o:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le/a/i/d/l;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Le/a/i/d/v;-><init>(Le/a/i/d/k;Le/a/i/d/u;Le/a/i/d/h;Le/a/i/d/j;Le/a/i/d/m;Le/a/i/d/l;)V

    return-object v8

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

.class public final Le/a/a/l/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/l/g;
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
.field public final a:Le/a/a/l/g;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/a/l/g;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/l/g$b;->a:Le/a/a/l/g;

    .line 3
    iput p2, p0, Le/a/a/l/g$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/a/l/g$b;->b:I

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    const-string v2, "Cannot return null from a non-@Nullable component method"

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/a/l/g$b;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v0, p0, Le/a/a/l/g$b;->a:Le/a/a/l/g;

    .line 4
    iget-object v0, v0, Le/a/a/l/g;->b:Le/a/a/l/f;

    .line 5
    iget-object v0, v0, Le/a/a/l/f;->c:Ljava/lang/String;

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 7
    :pswitch_1
    iget-object v0, p0, Le/a/a/l/g$b;->a:Le/a/a/l/g;

    .line 8
    iget-object v0, v0, Le/a/a/l/g;->b:Le/a/a/l/f;

    .line 9
    iget-object v0, v0, Le/a/a/l/f;->b:Ljava/lang/String;

    .line 10
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 11
    :pswitch_2
    iget-object v0, p0, Le/a/a/l/g$b;->a:Le/a/a/l/g;

    .line 12
    iget-object v0, v0, Le/a/a/l/g;->b:Le/a/a/l/f;

    .line 13
    iget-object v0, v0, Le/a/a/l/f;->a:Ljava/lang/String;

    .line 14
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 15
    :pswitch_3
    iget-object v0, p0, Le/a/a/l/g$b;->a:Le/a/a/l/g;

    .line 16
    iget-object v0, v0, Le/a/a/l/g;->a:Le/a/j2;

    .line 17
    invoke-interface {v0}, Le/a/j2;->B6()Le/a/a/g1/b;

    move-result-object v0

    .line 18
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 19
    :pswitch_4
    iget-object v0, p0, Le/a/a/l/g$b;->a:Le/a/a/l/g;

    .line 20
    iget-object v0, v0, Le/a/a/l/g;->a:Le/a/j2;

    .line 21
    invoke-interface {v0}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v0

    .line 22
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 23
    :pswitch_5
    iget-object v0, p0, Le/a/a/l/g$b;->a:Le/a/a/l/g;

    .line 24
    iget-object v0, v0, Le/a/a/l/g;->a:Le/a/j2;

    .line 25
    invoke-interface {v0}, Le/a/j2;->x3()Le/a/a/g/w;

    move-result-object v0

    .line 26
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 27
    :pswitch_6
    iget-object v0, p0, Le/a/a/l/g$b;->a:Le/a/a/l/g;

    .line 28
    iget-object v0, v0, Le/a/a/l/g;->a:Le/a/j2;

    .line 29
    invoke-interface {v0}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v0

    .line 30
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 31
    :pswitch_7
    iget-object v0, p0, Le/a/a/l/g$b;->a:Le/a/a/l/g;

    .line 32
    iget-object v0, v0, Le/a/a/l/g;->a:Le/a/j2;

    .line 33
    invoke-interface {v0}, Le/a/j2;->z5()Le/a/a/c1/d;

    move-result-object v0

    .line 34
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 35
    :pswitch_8
    iget-object v0, p0, Le/a/a/l/g$b;->a:Le/a/a/l/g;

    .line 36
    iget-object v0, v0, Le/a/a/l/g;->a:Le/a/j2;

    .line 37
    invoke-interface {v0}, Le/a/j2;->m()Le/a/b0/q/z;

    move-result-object v0

    .line 38
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 39
    :pswitch_9
    iget-object v0, p0, Le/a/a/l/g$b;->a:Le/a/a/l/g;

    .line 40
    new-instance v1, Le/a/a/l/c;

    iget-object v3, v0, Le/a/a/l/g;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v4

    .line 41
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    new-instance v14, Le/a/a/l/e;

    iget-object v6, v0, Le/a/a/l/g;->d:Ljavax/inject/Provider;

    iget-object v7, v0, Le/a/a/l/g;->e:Ljavax/inject/Provider;

    iget-object v8, v0, Le/a/a/l/g;->f:Ljavax/inject/Provider;

    iget-object v9, v0, Le/a/a/l/g;->g:Ljavax/inject/Provider;

    iget-object v3, v0, Le/a/a/l/g;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v10

    .line 43
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    iget-object v11, v0, Le/a/a/l/g;->h:Ljavax/inject/Provider;

    iget-object v3, v0, Le/a/a/l/g;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v12

    .line 45
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iget-object v13, v0, Le/a/a/l/g;->i:Ljavax/inject/Provider;

    move-object v5, v14

    invoke-direct/range {v5 .. v13}, Le/a/a/l/e;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ls1/w/f;Ljavax/inject/Provider;Le/a/q2/a;Ljavax/inject/Provider;)V

    .line 47
    iget-object v3, v0, Le/a/a/l/g;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v6

    .line 48
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iget-object v2, v0, Le/a/a/l/g;->j:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    iget-object v2, v0, Le/a/a/l/g;->k:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    iget-object v0, v0, Le/a/a/l/g;->l:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Le/a/a/l/c;-><init>(Ls1/w/f;Le/a/a/l/e;Le/a/a/i0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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

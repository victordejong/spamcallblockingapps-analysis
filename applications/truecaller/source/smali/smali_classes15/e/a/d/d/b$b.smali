.class public final Le/a/d/d/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d/d/b;
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
.field public final a:Le/a/d/d/b;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/d/d/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/d/d/b$b;->a:Le/a/d/d/b;

    .line 3
    iput p2, p0, Le/a/d/d/b$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/d/d/b$b;->b:I

    const-string v2, "Cannot return null from a non-@Nullable component method"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/d/d/b$b;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/d/d/b$b;->a:Le/a/d/d/b;

    .line 4
    iget-object v1, v1, Le/a/d/d/b;->a:Le/a/j2;

    .line 5
    invoke-interface {v1}, Le/a/j2;->P3()Le/a/l4/c;

    move-result-object v1

    .line 6
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 7
    :pswitch_1
    new-instance v1, Le/a/d/d/a/a/b/c;

    invoke-direct {v1}, Le/a/d/d/a/a/b/c;-><init>()V

    return-object v1

    .line 8
    :pswitch_2
    iget-object v1, v0, Le/a/d/d/b$b;->a:Le/a/d/d/b;

    .line 9
    new-instance v3, Le/a/d/d/a/a/d/b;

    iget-object v1, v1, Le/a/d/d/b;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v1

    .line 10
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-direct {v3, v1}, Le/a/d/d/a/a/d/b;-><init>(Le/a/p5/c0;)V

    return-object v3

    .line 12
    :pswitch_3
    new-instance v1, Le/a/d/d/a/a/c/b;

    invoke-direct {v1}, Le/a/d/d/a/a/c/b;-><init>()V

    return-object v1

    .line 13
    :pswitch_4
    new-instance v1, Le/a/d/d/a/a/d/f;

    invoke-direct {v1}, Le/a/d/d/a/a/d/f;-><init>()V

    return-object v1

    .line 14
    :pswitch_5
    iget-object v1, v0, Le/a/d/d/b$b;->a:Le/a/d/d/b;

    .line 15
    new-instance v3, Le/a/d/d/a/a/a/c;

    iget-object v1, v1, Le/a/d/d/b;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v1

    .line 16
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    invoke-direct {v3, v1}, Le/a/d/d/a/a/a/c;-><init>(Le/a/p5/c0;)V

    return-object v3

    .line 18
    :pswitch_6
    iget-object v1, v0, Le/a/d/d/b$b;->a:Le/a/d/d/b;

    .line 19
    new-instance v18, Le/a/d/d/a/w;

    iget-object v3, v1, Le/a/d/d/b;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v4

    .line 20
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    iget-object v3, v1, Le/a/d/d/b;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v5

    .line 22
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    new-instance v12, Le/a/d/d/c/c;

    iget-object v3, v1, Le/a/d/d/b;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v7

    .line 24
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    iget-object v3, v1, Le/a/d/d/b;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->D2()Ls1/w/f;

    move-result-object v8

    .line 26
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    iget-object v3, v1, Le/a/d/d/b;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->z()Le/a/d/f;

    move-result-object v9

    .line 28
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    new-instance v10, Le/a/h/f/n0/b;

    .line 30
    new-instance v3, Le/a/h/f/n0/a;

    iget-object v6, v1, Le/a/d/d/b;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v6

    .line 31
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    invoke-direct {v3, v6}, Le/a/h/f/n0/a;-><init>(Landroid/content/ContentResolver;)V

    .line 33
    iget-object v6, v1, Le/a/d/d/b;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->P()Ls1/w/f;

    move-result-object v6

    .line 34
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    invoke-direct {v10, v3, v6}, Le/a/h/f/n0/b;-><init>(Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;Ls1/w/f;)V

    .line 36
    iget-object v3, v1, Le/a/d/d/b;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->n5()Le/a/h/b/w0/d;

    move-result-object v11

    .line 37
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v6, v12

    .line 38
    invoke-direct/range {v6 .. v11}, Le/a/d/d/c/c;-><init>(Ls1/w/f;Ls1/w/f;Le/a/d/f;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository;Le/a/h/b/w0/d;)V

    .line 39
    iget-object v3, v1, Le/a/d/d/b;->d:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/d/d/a/a/a/b;

    iget-object v3, v1, Le/a/d/d/b;->f:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/d/d/a/a/d/d;

    iget-object v3, v1, Le/a/d/d/b;->h:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/d/d/a/a/c/a;

    iget-object v3, v1, Le/a/d/d/b;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/d/d/a/a/d/a;

    iget-object v3, v1, Le/a/d/d/b;->l:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/d/d/a/a/b/a;

    iget-object v3, v1, Le/a/d/d/b;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v13

    .line 40
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    iget-object v3, v1, Le/a/d/d/b;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v14

    .line 42
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    iget-object v3, v1, Le/a/d/d/b;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v15

    .line 44
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    iget-object v3, v1, Le/a/d/d/b;->n:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Le/a/l4/c;

    iget-object v3, v1, Le/a/d/d/b;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->z()Le/a/d/f;

    move-result-object v6

    .line 46
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    iget-object v1, v1, Le/a/d/d/b;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v1

    .line 48
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v3, v18

    move-object v2, v6

    move-object v6, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    .line 49
    invoke-direct/range {v3 .. v17}, Le/a/d/d/a/w;-><init>(Ls1/w/f;Ls1/w/f;Le/a/d/d/c/b;Le/a/d/d/a/a/a/b;Le/a/d/d/a/a/d/d;Le/a/d/d/a/a/c/a;Le/a/d/d/a/a/d/a;Le/a/d/d/a/a/b/a;Le/a/q2/a;Le/a/r2/f;Le/a/p5/c0;Le/a/l4/c;Le/a/d/f;Le/a/u3/g;)V

    return-object v18

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

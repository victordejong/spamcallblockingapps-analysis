.class public final Le/a/t1$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1$k;
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
.field public final a:Le/a/t1$k;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$k;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/t1$k$a;->a:Le/a/t1$k;

    .line 3
    iput p3, p0, Le/a/t1$k$a;->b:I

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
    iget v0, p0, Le/a/t1$k$a;->b:I

    const-wide/16 v1, -0x1

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "contentResolver"

    const-string v3, "Cannot return null from a non-@Nullable component method"

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/t1$k$a;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 4
    :pswitch_0
    iget-object v0, p0, Le/a/t1$k$a;->a:Le/a/t1$k;

    .line 5
    new-instance v1, Le/a/h/p0/b;

    iget-object v0, v0, Le/a/t1$k;->a:Le/a/t1;

    .line 6
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 7
    invoke-interface {v0}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-direct {v1, v0}, Le/a/h/p0/b;-><init>(Landroid/content/ContentResolver;)V

    return-object v1

    .line 10
    :pswitch_1
    iget-object v0, p0, Le/a/t1$k$a;->a:Le/a/t1$k;

    .line 11
    new-instance v1, Le/a/h/p0/d;

    iget-object v2, v0, Le/a/t1$k;->t:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/h/p0/a;

    iget-object v0, v0, Le/a/t1$k;->a:Le/a/t1;

    .line 12
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 13
    invoke-interface {v0}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v0

    .line 14
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    invoke-direct {v1, v2, v0}, Le/a/h/p0/d;-><init>(Le/a/h/p0/a;Ls1/w/f;)V

    return-object v1

    .line 16
    :pswitch_2
    iget-object v0, p0, Le/a/t1$k$a;->a:Le/a/t1$k;

    .line 17
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v1, Le/a/h/f/j0;

    invoke-direct {v1, v0}, Le/a/h/f/j0;-><init>(Le/a/h/f/o;)V

    return-object v1

    .line 19
    :pswitch_3
    iget-object v0, p0, Le/a/t1$k$a;->a:Le/a/t1$k;

    .line 20
    new-instance v1, Le/a/h/f/h0;

    iget-object v2, v0, Le/a/t1$k;->m:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/truecaller/calling/contacts_list/ContactsHolder;

    iget-object v2, v0, Le/a/t1$k;->m:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/h/f/k0;

    iget-object v2, v0, Le/a/t1$k;->a:Le/a/t1;

    .line 21
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 22
    invoke-interface {v2}, Le/a/j2;->J6()Le/a/d/c0/s1;

    move-result-object v7

    .line 23
    invoke-static {v7, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iget-object v2, v0, Le/a/t1$k;->a:Le/a/t1;

    .line 25
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 26
    invoke-interface {v2}, Le/a/j2;->o5()Z

    move-result v8

    iget-object v0, v0, Le/a/t1$k;->a:Le/a/t1;

    .line 27
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 28
    invoke-interface {v0}, Le/a/j2;->N1()Le/a/b0/a/b/b;

    move-result-object v9

    .line 29
    invoke-static {v9, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, v1

    .line 30
    invoke-direct/range {v4 .. v9}, Le/a/h/f/h0;-><init>(Lcom/truecaller/calling/contacts_list/ContactsHolder;Le/a/h/f/k0;Le/a/d/c0/s1;ZLe/a/b0/a/b/b;)V

    return-object v1

    .line 31
    :pswitch_4
    iget-object v0, p0, Le/a/t1$k$a;->a:Le/a/t1$k;

    .line 32
    iget-object v0, v0, Le/a/t1$k;->a:Le/a/t1;

    .line 33
    iget-object v0, v0, Le/a/t1;->x:Ljavax/inject/Provider;

    .line 34
    sget v1, Le/a/n/q;->a:I

    const-string v1, "backupManagerV2Provider"

    .line 35
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "backupManagerV2Provider.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/n/m;

    return-object v0

    .line 37
    :pswitch_5
    iget-object v0, p0, Le/a/t1$k$a;->a:Le/a/t1$k;

    .line 38
    new-instance v1, Le/a/h/f/n0/a;

    iget-object v0, v0, Le/a/t1$k;->a:Le/a/t1;

    .line 39
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 40
    invoke-interface {v0}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v0

    .line 41
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    invoke-direct {v1, v0}, Le/a/h/f/n0/a;-><init>(Landroid/content/ContentResolver;)V

    return-object v1

    .line 43
    :pswitch_6
    iget-object v0, p0, Le/a/t1$k$a;->a:Le/a/t1$k;

    .line 44
    new-instance v1, Le/a/h/f/n0/b;

    iget-object v2, v0, Le/a/t1$k;->h:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;

    iget-object v0, v0, Le/a/t1$k;->a:Le/a/t1;

    .line 45
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 46
    invoke-interface {v0}, Le/a/j2;->P()Ls1/w/f;

    move-result-object v0

    .line 47
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    invoke-direct {v1, v2, v0}, Le/a/h/f/n0/b;-><init>(Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;Ls1/w/f;)V

    return-object v1

    .line 49
    :pswitch_7
    iget-object v0, p0, Le/a/t1$k$a;->a:Le/a/t1$k;

    .line 50
    new-instance v1, Le/a/h/f/a0;

    iget-object v2, v0, Le/a/t1$k;->j:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository;

    iget-object v2, v0, Le/a/t1$k;->a:Le/a/t1;

    .line 51
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 52
    invoke-interface {v2}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v6

    .line 53
    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iget-object v2, v0, Le/a/t1$k;->a:Le/a/t1;

    .line 55
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 56
    invoke-interface {v2}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v7

    .line 57
    invoke-static {v7, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    iget-object v2, v0, Le/a/t1$k;->a:Le/a/t1;

    .line 59
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 60
    invoke-interface {v2}, Le/a/j2;->D2()Ls1/w/f;

    move-result-object v8

    .line 61
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iget-object v2, v0, Le/a/t1$k;->k:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/l4/c;

    iget-object v2, v0, Le/a/t1$k;->a:Le/a/t1;

    .line 63
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 64
    invoke-interface {v2}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v10

    .line 65
    invoke-static {v10, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iget-object v2, v0, Le/a/t1$k;->a:Le/a/t1;

    .line 67
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 68
    invoke-interface {v2}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v11

    .line 69
    invoke-static {v11, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iget-object v0, v0, Le/a/t1$k;->a:Le/a/t1;

    .line 71
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 72
    invoke-interface {v0}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v12

    .line 73
    invoke-static {v12, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, v1

    .line 74
    invoke-direct/range {v4 .. v12}, Le/a/h/f/a0;-><init>(Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository;Lcom/truecaller/settings/CallingSettings;Ls1/w/f;Ls1/w/f;Le/a/l4/c;Le/a/q2/a;Le/a/p5/c;Le/a/b0/e/l;)V

    return-object v1

    .line 75
    :pswitch_8
    iget-object v0, p0, Le/a/t1$k$a;->a:Le/a/t1$k;

    .line 76
    iget-object v0, v0, Le/a/t1$k;->a:Le/a/t1;

    .line 77
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 78
    invoke-interface {v0}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v0

    .line 79
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v2, Le/a/h/b/m;

    .line 82
    invoke-static {}, Le/a/b0/q/g0;->e()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "TruecallerContract.Conta\u2026ingsTable.getContentUri()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {v2, v0, v3, v1}, Le/a/h/b/m;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Long;)V

    return-object v2

    .line 84
    :pswitch_9
    iget-object v0, p0, Le/a/t1$k$a;->a:Le/a/t1$k;

    .line 85
    iget-object v0, v0, Le/a/t1$k;->a:Le/a/t1;

    .line 86
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 87
    invoke-interface {v0}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v2, Le/a/h/b/m;

    .line 91
    invoke-static {}, Le/a/m0/a1$e;->b()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "TruecallerContract.Conta\u2026rtedContactsWithDataUri()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {v2, v0, v3, v1}, Le/a/h/b/m;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Long;)V

    return-object v2

    .line 93
    :pswitch_a
    iget-object v0, p0, Le/a/t1$k$a;->a:Le/a/t1$k;

    .line 94
    new-instance v1, Le/a/h/f/n;

    iget-object v2, v0, Le/a/t1$k;->a:Le/a/t1;

    .line 95
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 96
    invoke-interface {v2}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v2

    .line 97
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    iget-object v4, v0, Le/a/t1$k;->a:Le/a/t1;

    .line 99
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 100
    invoke-interface {v4}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v4

    .line 101
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    iget-object v0, v0, Le/a/t1$k;->a:Le/a/t1;

    .line 103
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 104
    invoke-interface {v0}, Le/a/j2;->o5()Z

    move-result v0

    invoke-direct {v1, v2, v4, v0}, Le/a/h/f/n;-><init>(Lcom/truecaller/settings/CallingSettings;Le/a/b0/e/l;Z)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
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

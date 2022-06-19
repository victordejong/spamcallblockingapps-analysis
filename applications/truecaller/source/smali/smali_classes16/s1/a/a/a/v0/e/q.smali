.class public final Ls1/a/a/a/v0/e/q;
.super Ls1/a/a/a/v0/h/h$d;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/e/q$c;,
        Ls1/a/a/a/v0/e/q$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$d<",
        "Ls1/a/a/a/v0/e/q;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final t:Ls1/a/a/a/v0/e/q;

.field public static u:Ls1/a/a/a/v0/h/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/h/r<",
            "Ls1/a/a/a/v0/e/q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ls1/a/a/a/v0/h/c;

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/q$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:I

.field public g:Ls1/a/a/a/v0/e/q;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Ls1/a/a/a/v0/e/q;

.field public n:I

.field public o:Ls1/a/a/a/v0/e/q;

.field public p:I

.field public q:I

.field public r:B

.field public s:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/q$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/q$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/q;->u:Ls1/a/a/a/v0/h/r;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/e/q;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/q;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/q;->q()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$d;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Ls1/a/a/a/v0/e/q;->r:B

    .line 8
    iput v0, p0, Ls1/a/a/a/v0/e/q;->s:I

    .line 9
    sget-object v0, Ls1/a/a/a/v0/h/c;->a:Ls1/a/a/a/v0/h/c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/q;->b:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;Ls1/a/a/a/v0/e/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls1/a/a/a/v0/h/j;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$d;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Ls1/a/a/a/v0/e/q;->r:B

    .line 12
    iput p3, p0, Ls1/a/a/a/v0/e/q;->s:I

    .line 13
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/q;->q()V

    .line 14
    invoke-static {}, Ls1/a/a/a/v0/h/c;->j()Ls1/a/a/a/v0/h/c$b;

    move-result-object p3

    const/4 v0, 0x1

    .line 15
    invoke-static {p3, v0}, Ls1/a/a/a/v0/h/e;->k(Ljava/io/OutputStream;I)Ls1/a/a/a/v0/h/e;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-nez v2, :cond_9

    .line 16
    :try_start_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->o()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 17
    invoke-virtual {p0, p1, v1, p2, v4}, Ls1/a/a/a/v0/h/h$d;->j(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/e;Ls1/a/a/a/v0/h/f;I)Z

    move-result v4

    goto/16 :goto_1

    .line 18
    :sswitch_0
    iget v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    .line 19
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v4

    .line 20
    iput v4, p0, Ls1/a/a/a/v0/e/q;->p:I

    goto :goto_0

    .line 21
    :sswitch_1
    iget v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v6, 0x400

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_1

    .line 22
    iget-object v4, p0, Ls1/a/a/a/v0/e/q;->o:Ls1/a/a/a/v0/e/q;

    invoke-virtual {v4}, Ls1/a/a/a/v0/e/q;->s()Ls1/a/a/a/v0/e/q$c;

    move-result-object v5

    .line 23
    :cond_1
    sget-object v4, Ls1/a/a/a/v0/e/q;->u:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v4, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/e/q;

    iput-object v4, p0, Ls1/a/a/a/v0/e/q;->o:Ls1/a/a/a/v0/e/q;

    if-eqz v5, :cond_2

    .line 24
    invoke-virtual {v5, v4}, Ls1/a/a/a/v0/e/q$c;->h(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q$c;

    .line 25
    invoke-virtual {v5}, Ls1/a/a/a/v0/e/q$c;->g()Ls1/a/a/a/v0/e/q;

    move-result-object v4

    iput-object v4, p0, Ls1/a/a/a/v0/e/q;->o:Ls1/a/a/a/v0/e/q;

    .line 26
    :cond_2
    iget v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    or-int/2addr v4, v6

    iput v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    goto :goto_0

    .line 27
    :sswitch_2
    iget v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    .line 28
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v4

    .line 29
    iput v4, p0, Ls1/a/a/a/v0/e/q;->l:I

    goto :goto_0

    .line 30
    :sswitch_3
    iget v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    .line 31
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v4

    .line 32
    iput v4, p0, Ls1/a/a/a/v0/e/q;->n:I

    goto :goto_0

    .line 33
    :sswitch_4
    iget v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v6, 0x100

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_3

    .line 34
    iget-object v4, p0, Ls1/a/a/a/v0/e/q;->m:Ls1/a/a/a/v0/e/q;

    invoke-virtual {v4}, Ls1/a/a/a/v0/e/q;->s()Ls1/a/a/a/v0/e/q$c;

    move-result-object v5

    .line 35
    :cond_3
    sget-object v4, Ls1/a/a/a/v0/e/q;->u:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v4, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/e/q;

    iput-object v4, p0, Ls1/a/a/a/v0/e/q;->m:Ls1/a/a/a/v0/e/q;

    if-eqz v5, :cond_4

    .line 36
    invoke-virtual {v5, v4}, Ls1/a/a/a/v0/e/q$c;->h(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q$c;

    .line 37
    invoke-virtual {v5}, Ls1/a/a/a/v0/e/q$c;->g()Ls1/a/a/a/v0/e/q;

    move-result-object v4

    iput-object v4, p0, Ls1/a/a/a/v0/e/q;->m:Ls1/a/a/a/v0/e/q;

    .line 38
    :cond_4
    iget v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    or-int/2addr v4, v6

    iput v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    goto/16 :goto_0

    .line 39
    :sswitch_5
    iget v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    .line 40
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v4

    .line 41
    iput v4, p0, Ls1/a/a/a/v0/e/q;->k:I

    goto/16 :goto_0

    .line 42
    :sswitch_6
    iget v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    .line 43
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v4

    .line 44
    iput v4, p0, Ls1/a/a/a/v0/e/q;->h:I

    goto/16 :goto_0

    .line 45
    :sswitch_7
    iget v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    .line 46
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v4

    .line 47
    iput v4, p0, Ls1/a/a/a/v0/e/q;->j:I

    goto/16 :goto_0

    .line 48
    :sswitch_8
    iget v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    .line 49
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v4

    .line 50
    iput v4, p0, Ls1/a/a/a/v0/e/q;->i:I

    goto/16 :goto_0

    .line 51
    :sswitch_9
    iget v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/4 v6, 0x4

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_5

    .line 52
    iget-object v4, p0, Ls1/a/a/a/v0/e/q;->g:Ls1/a/a/a/v0/e/q;

    invoke-virtual {v4}, Ls1/a/a/a/v0/e/q;->s()Ls1/a/a/a/v0/e/q$c;

    move-result-object v5

    .line 53
    :cond_5
    sget-object v4, Ls1/a/a/a/v0/e/q;->u:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v4, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/e/q;

    iput-object v4, p0, Ls1/a/a/a/v0/e/q;->g:Ls1/a/a/a/v0/e/q;

    if-eqz v5, :cond_6

    .line 54
    invoke-virtual {v5, v4}, Ls1/a/a/a/v0/e/q$c;->h(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q$c;

    .line 55
    invoke-virtual {v5}, Ls1/a/a/a/v0/e/q$c;->g()Ls1/a/a/a/v0/e/q;

    move-result-object v4

    iput-object v4, p0, Ls1/a/a/a/v0/e/q;->g:Ls1/a/a/a/v0/e/q;

    .line 56
    :cond_6
    iget v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    or-int/2addr v4, v6

    iput v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    goto/16 :goto_0

    .line 57
    :sswitch_a
    iget v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    .line 58
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v4

    .line 59
    iput v4, p0, Ls1/a/a/a/v0/e/q;->f:I

    goto/16 :goto_0

    .line 60
    :sswitch_b
    iget v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    or-int/2addr v4, v0

    iput v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    .line 61
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->e()Z

    move-result v4

    iput-boolean v4, p0, Ls1/a/a/a/v0/e/q;->e:Z

    goto/16 :goto_0

    :sswitch_c
    and-int/lit8 v4, v3, 0x1

    if-eq v4, v0, :cond_7

    .line 62
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ls1/a/a/a/v0/e/q;->d:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 63
    :cond_7
    iget-object v4, p0, Ls1/a/a/a/v0/e/q;->d:Ljava/util/List;

    sget-object v5, Ls1/a/a/a/v0/e/q$b;->i:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v5, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 64
    :sswitch_d
    iget v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, p0, Ls1/a/a/a/v0/e/q;->c:I

    .line 65
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v4

    .line 66
    iput v4, p0, Ls1/a/a/a/v0/e/q;->q:I
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    if-nez v4, :cond_0

    :sswitch_e
    move v2, v0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 67
    :try_start_1
    new-instance p2, Ls1/a/a/a/v0/h/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 68
    iput-object p0, p2, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 69
    throw p2

    :catch_1
    move-exception p1

    .line 70
    iput-object p0, p1, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 71
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-ne p2, v0, :cond_8

    .line 72
    iget-object p2, p0, Ls1/a/a/a/v0/e/q;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/q;->d:Ljava/util/List;

    .line 73
    :cond_8
    :try_start_2
    invoke-virtual {v1}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 74
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/q;->b:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/q;->b:Ls1/a/a/a/v0/h/c;

    .line 75
    iget-object p2, p0, Ls1/a/a/a/v0/h/h$d;->a:Ls1/a/a/a/v0/h/g;

    invoke-virtual {p2}, Ls1/a/a/a/v0/h/g;->i()V

    .line 76
    throw p1

    :cond_9
    and-int/lit8 p1, v3, 0x1

    if-ne p1, v0, :cond_a

    .line 77
    iget-object p1, p0, Ls1/a/a/a/v0/e/q;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/q;->d:Ljava/util/List;

    .line 78
    :cond_a
    :try_start_3
    invoke-virtual {v1}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 79
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/q;->b:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/q;->b:Ls1/a/a/a/v0/h/c;

    .line 80
    iget-object p1, p0, Ls1/a/a/a/v0/h/h$d;->a:Ls1/a/a/a/v0/h/g;

    invoke-virtual {p1}, Ls1/a/a/a/v0/h/g;->i()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_d
        0x12 -> :sswitch_c
        0x18 -> :sswitch_b
        0x20 -> :sswitch_a
        0x2a -> :sswitch_9
        0x30 -> :sswitch_8
        0x38 -> :sswitch_7
        0x40 -> :sswitch_6
        0x48 -> :sswitch_5
        0x52 -> :sswitch_4
        0x58 -> :sswitch_3
        0x60 -> :sswitch_2
        0x6a -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/h$c;Ls1/a/a/a/v0/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/h/h$d;-><init>(Ls1/a/a/a/v0/h/h$c;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Ls1/a/a/a/v0/e/q;->r:B

    .line 3
    iput p2, p0, Ls1/a/a/a/v0/e/q;->s:I

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 5
    iput-object p1, p0, Ls1/a/a/a/v0/e/q;->b:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public static r(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q$c;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/q$c;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/q$c;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ls1/a/a/a/v0/e/q$c;->h(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q$c;

    return-object v0
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/h/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/q;->getSerializedSize()I

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->i()Ls1/a/a/a/v0/h/h$d$a;

    move-result-object v0

    .line 3
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, p0, Ls1/a/a/a/v0/e/q;->q:I

    invoke-virtual {p1, v3, v1}, Ls1/a/a/a/v0/h/e;->p(II)V

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Ls1/a/a/a/v0/e/q;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v1, v2, :cond_1

    .line 6
    iget-object v2, p0, Ls1/a/a/a/v0/e/q;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/h/p;

    invoke-virtual {p1, v4, v2}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 8
    iget-boolean v1, p0, Ls1/a/a/a/v0/e/q;->e:Z

    const/16 v2, 0x18

    .line 9
    invoke-virtual {p1, v2}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 10
    invoke-virtual {p1, v1}, Ls1/a/a/a/v0/h/e;->t(I)V

    .line 11
    :cond_2
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    and-int/2addr v1, v4

    const/4 v2, 0x4

    if-ne v1, v4, :cond_3

    .line 12
    iget v1, p0, Ls1/a/a/a/v0/e/q;->f:I

    invoke-virtual {p1, v2, v1}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 13
    :cond_3
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    .line 14
    iget-object v2, p0, Ls1/a/a/a/v0/e/q;->g:Ls1/a/a/a/v0/e/q;

    invoke-virtual {p1, v1, v2}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    .line 15
    :cond_4
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x6

    .line 16
    iget v2, p0, Ls1/a/a/a/v0/e/q;->i:I

    invoke-virtual {p1, v1, v2}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 17
    :cond_5
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x7

    .line 18
    iget v2, p0, Ls1/a/a/a/v0/e/q;->j:I

    invoke-virtual {p1, v1, v2}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 19
    :cond_6
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    .line 20
    iget v1, p0, Ls1/a/a/a/v0/e/q;->h:I

    invoke-virtual {p1, v2, v1}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 21
    :cond_7
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    const/16 v1, 0x9

    .line 22
    iget v2, p0, Ls1/a/a/a/v0/e/q;->k:I

    invoke-virtual {p1, v1, v2}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 23
    :cond_8
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0xa

    .line 24
    iget-object v2, p0, Ls1/a/a/a/v0/e/q;->m:Ls1/a/a/a/v0/e/q;

    invoke-virtual {p1, v1, v2}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    .line 25
    :cond_9
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xb

    .line 26
    iget v2, p0, Ls1/a/a/a/v0/e/q;->n:I

    invoke-virtual {p1, v1, v2}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 27
    :cond_a
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xc

    .line 28
    iget v2, p0, Ls1/a/a/a/v0/e/q;->l:I

    invoke-virtual {p1, v1, v2}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 29
    :cond_b
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/16 v1, 0xd

    .line 30
    iget-object v2, p0, Ls1/a/a/a/v0/e/q;->o:Ls1/a/a/a/v0/e/q;

    invoke-virtual {p1, v1, v2}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    .line 31
    :cond_c
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    const/16 v1, 0xe

    .line 32
    iget v2, p0, Ls1/a/a/a/v0/e/q;->p:I

    invoke-virtual {p1, v1, v2}, Ls1/a/a/a/v0/h/e;->p(II)V

    :cond_d
    const/16 v1, 0xc8

    .line 33
    invoke-virtual {v0, v1, p1}, Ls1/a/a/a/v0/h/h$d$a;->a(ILs1/a/a/a/v0/h/e;)V

    .line 34
    iget-object v0, p0, Ls1/a/a/a/v0/e/q;->b:Ls1/a/a/a/v0/h/c;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/e;->u(Ls1/a/a/a/v0/h/c;)V

    return-void
.end method

.method public getDefaultInstanceForType()Ls1/a/a/a/v0/h/p;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/q;->s:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Ls1/a/a/a/v0/e/q;->q:I

    invoke-static {v3, v0}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4
    :goto_0
    iget-object v1, p0, Ls1/a/a/a/v0/e/q;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ge v2, v1, :cond_2

    .line 5
    iget-object v1, p0, Ls1/a/a/a/v0/e/q;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/h/p;

    invoke-static {v4, v1}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 7
    invoke-static {v1}, Ls1/a/a/a/v0/h/e;->i(I)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    and-int/2addr v1, v4

    const/4 v2, 0x4

    if-ne v1, v4, :cond_4

    .line 9
    iget v1, p0, Ls1/a/a/a/v0/e/q;->f:I

    invoke-static {v2, v1}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 11
    iget-object v2, p0, Ls1/a/a/a/v0/e/q;->g:Ls1/a/a/a/v0/e/q;

    invoke-static {v1, v2}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 13
    iget v2, p0, Ls1/a/a/a/v0/e/q;->i:I

    invoke-static {v1, v2}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 15
    iget v2, p0, Ls1/a/a/a/v0/e/q;->j:I

    invoke-static {v1, v2}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 17
    iget v1, p0, Ls1/a/a/a/v0/e/q;->h:I

    invoke-static {v2, v1}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_8
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    .line 19
    iget v2, p0, Ls1/a/a/a/v0/e/q;->k:I

    invoke-static {v1, v2}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_9
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    .line 21
    iget-object v2, p0, Ls1/a/a/a/v0/e/q;->m:Ls1/a/a/a/v0/e/q;

    invoke-static {v1, v2}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_a
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    .line 23
    iget v2, p0, Ls1/a/a/a/v0/e/q;->n:I

    invoke-static {v1, v2}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_b
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/16 v1, 0xc

    .line 25
    iget v2, p0, Ls1/a/a/a/v0/e/q;->l:I

    invoke-static {v1, v2}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_c
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    const/16 v1, 0xd

    .line 27
    iget-object v2, p0, Ls1/a/a/a/v0/e/q;->o:Ls1/a/a/a/v0/e/q;

    invoke-static {v1, v2}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_d
    iget v1, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    const/16 v1, 0xe

    .line 29
    iget v2, p0, Ls1/a/a/a/v0/e/q;->p:I

    invoke-static {v1, v2}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_e
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->e()I

    move-result v1

    add-int/2addr v1, v0

    .line 31
    iget-object v0, p0, Ls1/a/a/a/v0/e/q;->b:Ls1/a/a/a/v0/h/c;

    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 32
    iput v0, p0, Ls1/a/a/a/v0/e/q;->s:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Ls1/a/a/a/v0/e/q;->r:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    .line 2
    :goto_0
    iget-object v3, p0, Ls1/a/a/a/v0/e/q;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3
    iget-object v3, p0, Ls1/a/a/a/v0/e/q;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/q$b;

    .line 4
    invoke-virtual {v3}, Ls1/a/a/a/v0/e/q$b;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5
    iput-byte v2, p0, Ls1/a/a/a/v0/e/q;->r:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/q;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Ls1/a/a/a/v0/e/q;->g:Ls1/a/a/a/v0/e/q;

    .line 8
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    iput-byte v2, p0, Ls1/a/a/a/v0/e/q;->r:B

    return v2

    .line 10
    :cond_4
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/q;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Ls1/a/a/a/v0/e/q;->m:Ls1/a/a/a/v0/e/q;

    .line 12
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    iput-byte v2, p0, Ls1/a/a/a/v0/e/q;->r:B

    return v2

    .line 14
    :cond_5
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/q;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    iget-object v0, p0, Ls1/a/a/a/v0/e/q;->o:Ls1/a/a/a/v0/e/q;

    .line 16
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_6

    .line 17
    iput-byte v2, p0, Ls1/a/a/a/v0/e/q;->r:B

    return v2

    .line 18
    :cond_6
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->d()Z

    move-result v0

    if-nez v0, :cond_7

    .line 19
    iput-byte v2, p0, Ls1/a/a/a/v0/e/q;->r:B

    return v2

    .line 20
    :cond_7
    iput-byte v1, p0, Ls1/a/a/a/v0/e/q;->r:B

    return v1
.end method

.method public l()Z
    .locals 2

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 2

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 2

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newBuilderForType()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/q$c;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/q$c;-><init>()V

    return-object v0
.end method

.method public o()Z
    .locals 2

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Z
    .locals 2

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final q()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/q;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ls1/a/a/a/v0/e/q;->e:Z

    .line 3
    iput v0, p0, Ls1/a/a/a/v0/e/q;->f:I

    .line 4
    sget-object v1, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    .line 5
    iput-object v1, p0, Ls1/a/a/a/v0/e/q;->g:Ls1/a/a/a/v0/e/q;

    .line 6
    iput v0, p0, Ls1/a/a/a/v0/e/q;->h:I

    .line 7
    iput v0, p0, Ls1/a/a/a/v0/e/q;->i:I

    .line 8
    iput v0, p0, Ls1/a/a/a/v0/e/q;->j:I

    .line 9
    iput v0, p0, Ls1/a/a/a/v0/e/q;->k:I

    .line 10
    iput v0, p0, Ls1/a/a/a/v0/e/q;->l:I

    .line 11
    iput-object v1, p0, Ls1/a/a/a/v0/e/q;->m:Ls1/a/a/a/v0/e/q;

    .line 12
    iput v0, p0, Ls1/a/a/a/v0/e/q;->n:I

    .line 13
    iput-object v1, p0, Ls1/a/a/a/v0/e/q;->o:Ls1/a/a/a/v0/e/q;

    .line 14
    iput v0, p0, Ls1/a/a/a/v0/e/q;->p:I

    .line 15
    iput v0, p0, Ls1/a/a/a/v0/e/q;->q:I

    return-void
.end method

.method public s()Ls1/a/a/a/v0/e/q$c;
    .locals 1

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/e/q;->r(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/q;->s()Ls1/a/a/a/v0/e/q$c;

    move-result-object v0

    return-object v0
.end method

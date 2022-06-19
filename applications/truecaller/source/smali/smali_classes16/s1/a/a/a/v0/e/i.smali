.class public final Ls1/a/a/a/v0/e/i;
.super Ls1/a/a/a/v0/h/h$d;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/e/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$d<",
        "Ls1/a/a/a/v0/e/i;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final r:Ls1/a/a/a/v0/e/i;

.field public static s:Ls1/a/a/a/v0/h/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/h/r<",
            "Ls1/a/a/a/v0/e/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ls1/a/a/a/v0/h/c;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ls1/a/a/a/v0/e/q;

.field public h:I

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/s;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ls1/a/a/a/v0/e/q;

.field public k:I

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/u;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ls1/a/a/a/v0/e/t;

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ls1/a/a/a/v0/e/e;

.field public p:B

.field public q:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/i$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/i$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/i;->s:Ls1/a/a/a/v0/h/r;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/e/i;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/i;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/i;->r:Ls1/a/a/a/v0/e/i;

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/i;->o()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$d;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Ls1/a/a/a/v0/e/i;->p:B

    .line 8
    iput v0, p0, Ls1/a/a/a/v0/e/i;->q:I

    .line 9
    sget-object v0, Ls1/a/a/a/v0/h/c;->a:Ls1/a/a/a/v0/h/c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/i;->b:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;Ls1/a/a/a/v0/e/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls1/a/a/a/v0/h/j;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$d;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Ls1/a/a/a/v0/e/i;->p:B

    .line 12
    iput p3, p0, Ls1/a/a/a/v0/e/i;->q:I

    .line 13
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/i;->o()V

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
    const/16 v4, 0x20

    const/16 v5, 0x100

    const/16 v6, 0x400

    if-nez v2, :cond_11

    .line 16
    :try_start_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->o()I

    move-result v7

    const/4 v8, 0x0

    sparse-switch v7, :sswitch_data_0

    .line 17
    invoke-virtual {p0, p1, v1, p2, v7}, Ls1/a/a/a/v0/h/h$d;->j(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/e;Ls1/a/a/a/v0/h/f;I)Z

    move-result v4

    goto/16 :goto_2

    .line 18
    :sswitch_0
    iget v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    and-int/2addr v7, v5

    if-ne v7, v5, :cond_1

    .line 19
    iget-object v7, p0, Ls1/a/a/a/v0/e/i;->o:Ls1/a/a/a/v0/e/e;

    .line 20
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v8, Ls1/a/a/a/v0/e/e$b;

    invoke-direct {v8}, Ls1/a/a/a/v0/e/e$b;-><init>()V

    .line 22
    invoke-virtual {v8, v7}, Ls1/a/a/a/v0/e/e$b;->g(Ls1/a/a/a/v0/e/e;)Ls1/a/a/a/v0/e/e$b;

    .line 23
    :cond_1
    sget-object v7, Ls1/a/a/a/v0/e/e;->f:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v7, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v7

    check-cast v7, Ls1/a/a/a/v0/e/e;

    iput-object v7, p0, Ls1/a/a/a/v0/e/i;->o:Ls1/a/a/a/v0/e/e;

    if-eqz v8, :cond_2

    .line 24
    invoke-virtual {v8, v7}, Ls1/a/a/a/v0/e/e$b;->g(Ls1/a/a/a/v0/e/e;)Ls1/a/a/a/v0/e/e$b;

    .line 25
    invoke-virtual {v8}, Ls1/a/a/a/v0/e/e$b;->f()Ls1/a/a/a/v0/e/e;

    move-result-object v7

    iput-object v7, p0, Ls1/a/a/a/v0/e/i;->o:Ls1/a/a/a/v0/e/e;

    .line 26
    :cond_2
    iget v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    or-int/2addr v7, v5

    iput v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    goto :goto_0

    .line 27
    :sswitch_1
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v7

    .line 28
    invoke-virtual {p1, v7}, Ls1/a/a/a/v0/h/d;->d(I)I

    move-result v7

    and-int/lit16 v8, v3, 0x400

    if-eq v8, v6, :cond_3

    .line 29
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->b()I

    move-result v8

    if-lez v8, :cond_3

    .line 30
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Ls1/a/a/a/v0/e/i;->n:Ljava/util/List;

    or-int/lit16 v3, v3, 0x400

    .line 31
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->b()I

    move-result v8

    if-lez v8, :cond_4

    .line 32
    iget-object v8, p0, Ls1/a/a/a/v0/e/i;->n:Ljava/util/List;

    .line 33
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v9

    .line 34
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 35
    :cond_4
    iput v7, p1, Ls1/a/a/a/v0/h/d;->i:I

    .line 36
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->p()V

    goto :goto_0

    :sswitch_2
    and-int/lit16 v7, v3, 0x400

    if-eq v7, v6, :cond_5

    .line 37
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Ls1/a/a/a/v0/e/i;->n:Ljava/util/List;

    or-int/lit16 v3, v3, 0x400

    .line 38
    :cond_5
    iget-object v7, p0, Ls1/a/a/a/v0/e/i;->n:Ljava/util/List;

    .line 39
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v8

    .line 40
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 41
    :sswitch_3
    iget v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/16 v9, 0x80

    and-int/2addr v7, v9

    if-ne v7, v9, :cond_6

    .line 42
    iget-object v7, p0, Ls1/a/a/a/v0/e/i;->m:Ls1/a/a/a/v0/e/t;

    .line 43
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {v7}, Ls1/a/a/a/v0/e/t;->d(Ls1/a/a/a/v0/e/t;)Ls1/a/a/a/v0/e/t$b;

    move-result-object v8

    .line 45
    :cond_6
    sget-object v7, Ls1/a/a/a/v0/e/t;->h:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v7, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v7

    check-cast v7, Ls1/a/a/a/v0/e/t;

    iput-object v7, p0, Ls1/a/a/a/v0/e/i;->m:Ls1/a/a/a/v0/e/t;

    if-eqz v8, :cond_7

    .line 46
    invoke-virtual {v8, v7}, Ls1/a/a/a/v0/e/t$b;->g(Ls1/a/a/a/v0/e/t;)Ls1/a/a/a/v0/e/t$b;

    .line 47
    invoke-virtual {v8}, Ls1/a/a/a/v0/e/t$b;->f()Ls1/a/a/a/v0/e/t;

    move-result-object v7

    iput-object v7, p0, Ls1/a/a/a/v0/e/i;->m:Ls1/a/a/a/v0/e/t;

    .line 48
    :cond_7
    iget v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    or-int/2addr v7, v9

    iput v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    goto/16 :goto_0

    .line 49
    :sswitch_4
    iget v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    or-int/2addr v7, v0

    iput v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    .line 50
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v7

    .line 51
    iput v7, p0, Ls1/a/a/a/v0/e/i;->d:I

    goto/16 :goto_0

    .line 52
    :sswitch_5
    iget v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    .line 53
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v7

    .line 54
    iput v7, p0, Ls1/a/a/a/v0/e/i;->k:I

    goto/16 :goto_0

    .line 55
    :sswitch_6
    iget v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    .line 56
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v7

    .line 57
    iput v7, p0, Ls1/a/a/a/v0/e/i;->h:I

    goto/16 :goto_0

    :sswitch_7
    and-int/lit16 v7, v3, 0x100

    if-eq v7, v5, :cond_8

    .line 58
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Ls1/a/a/a/v0/e/i;->l:Ljava/util/List;

    or-int/lit16 v3, v3, 0x100

    .line 59
    :cond_8
    iget-object v7, p0, Ls1/a/a/a/v0/e/i;->l:Ljava/util/List;

    sget-object v8, Ls1/a/a/a/v0/e/u;->m:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v8, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 60
    :sswitch_8
    iget v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    and-int/2addr v7, v4

    if-ne v7, v4, :cond_9

    .line 61
    iget-object v7, p0, Ls1/a/a/a/v0/e/i;->j:Ls1/a/a/a/v0/e/q;

    invoke-virtual {v7}, Ls1/a/a/a/v0/e/q;->s()Ls1/a/a/a/v0/e/q$c;

    move-result-object v8

    .line 62
    :cond_9
    sget-object v7, Ls1/a/a/a/v0/e/q;->u:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v7, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v7

    check-cast v7, Ls1/a/a/a/v0/e/q;

    iput-object v7, p0, Ls1/a/a/a/v0/e/i;->j:Ls1/a/a/a/v0/e/q;

    if-eqz v8, :cond_a

    .line 63
    invoke-virtual {v8, v7}, Ls1/a/a/a/v0/e/q$c;->h(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q$c;

    .line 64
    invoke-virtual {v8}, Ls1/a/a/a/v0/e/q$c;->g()Ls1/a/a/a/v0/e/q;

    move-result-object v7

    iput-object v7, p0, Ls1/a/a/a/v0/e/i;->j:Ls1/a/a/a/v0/e/q;

    .line 65
    :cond_a
    iget v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    or-int/2addr v7, v4

    iput v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    goto/16 :goto_0

    :sswitch_9
    and-int/lit8 v7, v3, 0x20

    if-eq v7, v4, :cond_b

    .line 66
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Ls1/a/a/a/v0/e/i;->i:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    .line 67
    :cond_b
    iget-object v7, p0, Ls1/a/a/a/v0/e/i;->i:Ljava/util/List;

    sget-object v8, Ls1/a/a/a/v0/e/s;->n:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v8, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 68
    :sswitch_a
    iget v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/16 v9, 0x8

    and-int/2addr v7, v9

    if-ne v7, v9, :cond_c

    .line 69
    iget-object v7, p0, Ls1/a/a/a/v0/e/i;->g:Ls1/a/a/a/v0/e/q;

    invoke-virtual {v7}, Ls1/a/a/a/v0/e/q;->s()Ls1/a/a/a/v0/e/q$c;

    move-result-object v8

    .line 70
    :cond_c
    sget-object v7, Ls1/a/a/a/v0/e/q;->u:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v7, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v7

    check-cast v7, Ls1/a/a/a/v0/e/q;

    iput-object v7, p0, Ls1/a/a/a/v0/e/i;->g:Ls1/a/a/a/v0/e/q;

    if-eqz v8, :cond_d

    .line 71
    invoke-virtual {v8, v7}, Ls1/a/a/a/v0/e/q$c;->h(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q$c;

    .line 72
    invoke-virtual {v8}, Ls1/a/a/a/v0/e/q$c;->g()Ls1/a/a/a/v0/e/q;

    move-result-object v7

    iput-object v7, p0, Ls1/a/a/a/v0/e/i;->g:Ls1/a/a/a/v0/e/q;

    .line 73
    :cond_d
    iget v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    or-int/2addr v7, v9

    iput v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    goto/16 :goto_0

    .line 74
    :sswitch_b
    iget v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    .line 75
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v7

    .line 76
    iput v7, p0, Ls1/a/a/a/v0/e/i;->f:I

    goto/16 :goto_0

    .line 77
    :sswitch_c
    iget v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Ls1/a/a/a/v0/e/i;->c:I

    .line 78
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v7

    .line 79
    iput v7, p0, Ls1/a/a/a/v0/e/i;->e:I
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    if-nez v4, :cond_0

    :sswitch_d
    move v2, v0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 80
    :try_start_1
    new-instance p2, Ls1/a/a/a/v0/h/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 81
    iput-object p0, p2, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 82
    throw p2

    :catch_1
    move-exception p1

    .line 83
    iput-object p0, p1, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 84
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v3, 0x20

    if-ne p2, v4, :cond_e

    .line 85
    iget-object p2, p0, Ls1/a/a/a/v0/e/i;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/i;->i:Ljava/util/List;

    :cond_e
    and-int/lit16 p2, v3, 0x100

    if-ne p2, v5, :cond_f

    .line 86
    iget-object p2, p0, Ls1/a/a/a/v0/e/i;->l:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/i;->l:Ljava/util/List;

    :cond_f
    and-int/lit16 p2, v3, 0x400

    if-ne p2, v6, :cond_10

    .line 87
    iget-object p2, p0, Ls1/a/a/a/v0/e/i;->n:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/i;->n:Ljava/util/List;

    .line 88
    :cond_10
    :try_start_2
    invoke-virtual {v1}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 89
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/i;->b:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_2
    :goto_4
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/i;->b:Ls1/a/a/a/v0/h/c;

    .line 90
    iget-object p2, p0, Ls1/a/a/a/v0/h/h$d;->a:Ls1/a/a/a/v0/h/g;

    invoke-virtual {p2}, Ls1/a/a/a/v0/h/g;->i()V

    .line 91
    throw p1

    :cond_11
    and-int/lit8 p1, v3, 0x20

    if-ne p1, v4, :cond_12

    .line 92
    iget-object p1, p0, Ls1/a/a/a/v0/e/i;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/i;->i:Ljava/util/List;

    :cond_12
    and-int/lit16 p1, v3, 0x100

    if-ne p1, v5, :cond_13

    .line 93
    iget-object p1, p0, Ls1/a/a/a/v0/e/i;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/i;->l:Ljava/util/List;

    :cond_13
    and-int/lit16 p1, v3, 0x400

    if-ne p1, v6, :cond_14

    .line 94
    iget-object p1, p0, Ls1/a/a/a/v0/e/i;->n:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/i;->n:Ljava/util/List;

    .line 95
    :cond_14
    :try_start_3
    invoke-virtual {v1}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    .line 96
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/i;->b:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_3
    :goto_5
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/i;->b:Ls1/a/a/a/v0/h/c;

    .line 97
    iget-object p1, p0, Ls1/a/a/a/v0/h/h$d;->a:Ls1/a/a/a/v0/h/g;

    invoke-virtual {p1}, Ls1/a/a/a/v0/h/g;->i()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x10 -> :sswitch_b
        0x1a -> :sswitch_a
        0x22 -> :sswitch_9
        0x2a -> :sswitch_8
        0x32 -> :sswitch_7
        0x38 -> :sswitch_6
        0x40 -> :sswitch_5
        0x48 -> :sswitch_4
        0xf2 -> :sswitch_3
        0xf8 -> :sswitch_2
        0xfa -> :sswitch_1
        0x102 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/h$c;Ls1/a/a/a/v0/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/h/h$d;-><init>(Ls1/a/a/a/v0/h/h$c;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Ls1/a/a/a/v0/e/i;->p:B

    .line 3
    iput p2, p0, Ls1/a/a/a/v0/e/i;->q:I

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 5
    iput-object p1, p0, Ls1/a/a/a/v0/e/i;->b:Ls1/a/a/a/v0/h/c;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/h/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/i;->getSerializedSize()I

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->i()Ls1/a/a/a/v0/h/h$d$a;

    move-result-object v0

    .line 3
    iget v1, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, p0, Ls1/a/a/a/v0/e/i;->e:I

    invoke-virtual {p1, v3, v1}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 5
    :cond_0
    iget v1, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 6
    iget v1, p0, Ls1/a/a/a/v0/e/i;->f:I

    invoke-virtual {p1, v2, v1}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 7
    :cond_1
    iget v1, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 8
    iget-object v5, p0, Ls1/a/a/a/v0/e/i;->g:Ls1/a/a/a/v0/e/q;

    invoke-virtual {p1, v1, v5}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    :cond_2
    const/4 v1, 0x0

    move v5, v1

    .line 9
    :goto_0
    iget-object v6, p0, Ls1/a/a/a/v0/e/i;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 10
    iget-object v6, p0, Ls1/a/a/a/v0/e/i;->i:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/h/p;

    invoke-virtual {p1, v4, v6}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_3
    iget v4, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_4

    const/4 v4, 0x5

    .line 12
    iget-object v6, p0, Ls1/a/a/a/v0/e/i;->j:Ls1/a/a/a/v0/e/q;

    invoke-virtual {p1, v4, v6}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    :cond_4
    move v4, v1

    .line 13
    :goto_1
    iget-object v6, p0, Ls1/a/a/a/v0/e/i;->l:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    const/4 v6, 0x6

    .line 14
    iget-object v7, p0, Ls1/a/a/a/v0/e/i;->l:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls1/a/a/a/v0/h/p;

    invoke-virtual {p1, v6, v7}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 15
    :cond_5
    iget v4, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/16 v6, 0x10

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_6

    const/4 v4, 0x7

    .line 16
    iget v6, p0, Ls1/a/a/a/v0/e/i;->h:I

    invoke-virtual {p1, v4, v6}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 17
    :cond_6
    iget v4, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/16 v6, 0x40

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_7

    .line 18
    iget v4, p0, Ls1/a/a/a/v0/e/i;->k:I

    invoke-virtual {p1, v2, v4}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 19
    :cond_7
    iget v2, p0, Ls1/a/a/a/v0/e/i;->c:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_8

    const/16 v2, 0x9

    .line 20
    iget v3, p0, Ls1/a/a/a/v0/e/i;->d:I

    invoke-virtual {p1, v2, v3}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 21
    :cond_8
    iget v2, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_9

    const/16 v2, 0x1e

    .line 22
    iget-object v3, p0, Ls1/a/a/a/v0/e/i;->m:Ls1/a/a/a/v0/e/t;

    invoke-virtual {p1, v2, v3}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    .line 23
    :cond_9
    :goto_2
    iget-object v2, p0, Ls1/a/a/a/v0/e/i;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    const/16 v2, 0x1f

    .line 24
    iget-object v3, p0, Ls1/a/a/a/v0/e/i;->n:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ls1/a/a/a/v0/h/e;->p(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 25
    :cond_a
    iget v1, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    .line 26
    iget-object v1, p0, Ls1/a/a/a/v0/e/i;->o:Ls1/a/a/a/v0/e/e;

    invoke-virtual {p1, v5, v1}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    :cond_b
    const/16 v1, 0x4a38

    .line 27
    invoke-virtual {v0, v1, p1}, Ls1/a/a/a/v0/h/h$d$a;->a(ILs1/a/a/a/v0/h/e;)V

    .line 28
    iget-object v0, p0, Ls1/a/a/a/v0/e/i;->b:Ls1/a/a/a/v0/h/c;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/e;->u(Ls1/a/a/a/v0/h/c;)V

    return-void
.end method

.method public getDefaultInstanceForType()Ls1/a/a/a/v0/h/p;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/i;->r:Ls1/a/a/a/v0/e/i;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 9

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/i;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Ls1/a/a/a/v0/e/i;->e:I

    invoke-static {v3, v0}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4
    :goto_0
    iget v4, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    .line 5
    iget v4, p0, Ls1/a/a/a/v0/e/i;->f:I

    invoke-static {v1, v4}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 6
    :cond_2
    iget v4, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/16 v6, 0x8

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_3

    const/4 v4, 0x3

    .line 7
    iget-object v7, p0, Ls1/a/a/a/v0/e/i;->g:Ls1/a/a/a/v0/e/q;

    invoke-static {v4, v7}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_3
    move v4, v2

    .line 8
    :goto_1
    iget-object v7, p0, Ls1/a/a/a/v0/e/i;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 9
    iget-object v7, p0, Ls1/a/a/a/v0/e/i;->i:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls1/a/a/a/v0/h/p;

    invoke-static {v5, v7}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10
    :cond_4
    iget v4, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x5

    .line 11
    iget-object v7, p0, Ls1/a/a/a/v0/e/i;->j:Ls1/a/a/a/v0/e/q;

    invoke-static {v4, v7}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_5
    move v4, v2

    .line 12
    :goto_2
    iget-object v7, p0, Ls1/a/a/a/v0/e/i;->l:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_6

    const/4 v7, 0x6

    .line 13
    iget-object v8, p0, Ls1/a/a/a/v0/e/i;->l:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls1/a/a/a/v0/h/p;

    invoke-static {v7, v8}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 14
    :cond_6
    iget v4, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/16 v7, 0x10

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_7

    const/4 v4, 0x7

    .line 15
    iget v7, p0, Ls1/a/a/a/v0/e/i;->h:I

    invoke-static {v4, v7}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 16
    :cond_7
    iget v4, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/16 v7, 0x40

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_8

    .line 17
    iget v4, p0, Ls1/a/a/a/v0/e/i;->k:I

    invoke-static {v6, v4}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 18
    :cond_8
    iget v4, p0, Ls1/a/a/a/v0/e/i;->c:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_9

    const/16 v3, 0x9

    .line 19
    iget v4, p0, Ls1/a/a/a/v0/e/i;->d:I

    invoke-static {v3, v4}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 20
    :cond_9
    iget v3, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_a

    const/16 v3, 0x1e

    .line 21
    iget-object v4, p0, Ls1/a/a/a/v0/e/i;->m:Ls1/a/a/a/v0/e/t;

    invoke-static {v3, v4}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_a
    move v3, v2

    .line 22
    :goto_3
    iget-object v4, p0, Ls1/a/a/a/v0/e/i;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    .line 23
    iget-object v4, p0, Ls1/a/a/a/v0/e/i;->n:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ls1/a/a/a/v0/h/e;->d(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    add-int/2addr v0, v3

    .line 24
    iget-object v2, p0, Ls1/a/a/a/v0/e/i;->n:Ljava/util/List;

    .line 25
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    .line 26
    iget v0, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    .line 27
    iget-object v0, p0, Ls1/a/a/a/v0/e/i;->o:Ls1/a/a/a/v0/e/e;

    invoke-static {v5, v0}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v0

    add-int/2addr v2, v0

    .line 28
    :cond_c
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->e()I

    move-result v0

    add-int/2addr v0, v2

    .line 29
    iget-object v1, p0, Ls1/a/a/a/v0/e/i;->b:Ls1/a/a/a/v0/h/c;

    invoke-virtual {v1}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 30
    iput v1, p0, Ls1/a/a/a/v0/e/i;->q:I

    return v1
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Ls1/a/a/a/v0/e/i;->p:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2
    :cond_1
    iget v0, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 3
    iput-byte v2, p0, Ls1/a/a/a/v0/e/i;->p:B

    return v2

    .line 4
    :cond_3
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/i;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Ls1/a/a/a/v0/e/i;->g:Ls1/a/a/a/v0/e/q;

    .line 6
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    iput-byte v2, p0, Ls1/a/a/a/v0/e/i;->p:B

    return v2

    :cond_4
    move v0, v2

    .line 8
    :goto_1
    iget-object v3, p0, Ls1/a/a/a/v0/e/i;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 9
    iget-object v3, p0, Ls1/a/a/a/v0/e/i;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/s;

    .line 10
    invoke-virtual {v3}, Ls1/a/a/a/v0/e/s;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    .line 11
    iput-byte v2, p0, Ls1/a/a/a/v0/e/i;->p:B

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_6
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/i;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13
    iget-object v0, p0, Ls1/a/a/a/v0/e/i;->j:Ls1/a/a/a/v0/e/q;

    .line 14
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    .line 15
    iput-byte v2, p0, Ls1/a/a/a/v0/e/i;->p:B

    return v2

    :cond_7
    move v0, v2

    .line 16
    :goto_2
    iget-object v3, p0, Ls1/a/a/a/v0/e/i;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 17
    iget-object v3, p0, Ls1/a/a/a/v0/e/i;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/u;

    .line 18
    invoke-virtual {v3}, Ls1/a/a/a/v0/e/u;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_8

    .line 19
    iput-byte v2, p0, Ls1/a/a/a/v0/e/i;->p:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 20
    :cond_9
    iget v0, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_a

    move v0, v1

    goto :goto_3

    :cond_a
    move v0, v2

    :goto_3
    if-eqz v0, :cond_b

    .line 21
    iget-object v0, p0, Ls1/a/a/a/v0/e/i;->m:Ls1/a/a/a/v0/e/t;

    .line 22
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/t;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_b

    .line 23
    iput-byte v2, p0, Ls1/a/a/a/v0/e/i;->p:B

    return v2

    .line 24
    :cond_b
    iget v0, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/16 v3, 0x100

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_c

    move v0, v1

    goto :goto_4

    :cond_c
    move v0, v2

    :goto_4
    if-eqz v0, :cond_d

    .line 25
    iget-object v0, p0, Ls1/a/a/a/v0/e/i;->o:Ls1/a/a/a/v0/e/e;

    .line 26
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/e;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_d

    .line 27
    iput-byte v2, p0, Ls1/a/a/a/v0/e/i;->p:B

    return v2

    .line 28
    :cond_d
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->d()Z

    move-result v0

    if-nez v0, :cond_e

    .line 29
    iput-byte v2, p0, Ls1/a/a/a/v0/e/i;->p:B

    return v2

    .line 30
    :cond_e
    iput-byte v1, p0, Ls1/a/a/a/v0/e/i;->p:B

    return v1
.end method

.method public l()Z
    .locals 2

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/16 v1, 0x20

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
    iget v0, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/16 v1, 0x40

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
    iget v0, p0, Ls1/a/a/a/v0/e/i;->c:I

    const/16 v1, 0x8

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
    new-instance v0, Ls1/a/a/a/v0/e/i$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/i$b;-><init>()V

    return-object v0
.end method

.method public final o()V
    .locals 3

    const/4 v0, 0x6

    .line 1
    iput v0, p0, Ls1/a/a/a/v0/e/i;->d:I

    .line 2
    iput v0, p0, Ls1/a/a/a/v0/e/i;->e:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ls1/a/a/a/v0/e/i;->f:I

    .line 4
    sget-object v1, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    .line 5
    iput-object v1, p0, Ls1/a/a/a/v0/e/i;->g:Ls1/a/a/a/v0/e/q;

    .line 6
    iput v0, p0, Ls1/a/a/a/v0/e/i;->h:I

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ls1/a/a/a/v0/e/i;->i:Ljava/util/List;

    .line 8
    iput-object v1, p0, Ls1/a/a/a/v0/e/i;->j:Ls1/a/a/a/v0/e/q;

    .line 9
    iput v0, p0, Ls1/a/a/a/v0/e/i;->k:I

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/i;->l:Ljava/util/List;

    .line 11
    sget-object v0, Ls1/a/a/a/v0/e/t;->g:Ls1/a/a/a/v0/e/t;

    .line 12
    iput-object v0, p0, Ls1/a/a/a/v0/e/i;->m:Ls1/a/a/a/v0/e/t;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/i;->n:Ljava/util/List;

    .line 14
    sget-object v0, Ls1/a/a/a/v0/e/e;->e:Ls1/a/a/a/v0/e/e;

    .line 15
    iput-object v0, p0, Ls1/a/a/a/v0/e/i;->o:Ls1/a/a/a/v0/e/e;

    return-void
.end method

.method public toBuilder()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/i$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/i$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ls1/a/a/a/v0/e/i$b;->h(Ls1/a/a/a/v0/e/i;)Ls1/a/a/a/v0/e/i$b;

    return-object v0
.end method

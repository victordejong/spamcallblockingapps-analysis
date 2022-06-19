.class public final Ls1/a/a/a/v0/k/b/g0/d;
.super Ls1/a/a/a/v0/b/h1/b;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/k/b/g0/d$b;,
        Ls1/a/a/a/v0/k/b/g0/d$a;,
        Ls1/a/a/a/v0/k/b/g0/d$c;
    }
.end annotation


# instance fields
.field public final e:Ls1/a/a/a/v0/f/a;

.field public final f:Ls1/a/a/a/v0/b/y;

.field public final g:Ls1/a/a/a/v0/b/r;

.field public final h:Ls1/a/a/a/v0/b/f;

.field public final i:Ls1/a/a/a/v0/k/b/l;

.field public final j:Ls1/a/a/a/v0/j/y/j;

.field public final k:Ls1/a/a/a/v0/k/b/g0/d$b;

.field public final l:Ls1/a/a/a/v0/b/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/b/o0<",
            "Ls1/a/a/a/v0/k/b/g0/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ls1/a/a/a/v0/k/b/g0/d$c;

.field public final n:Ls1/a/a/a/v0/b/k;

.field public final o:Ls1/a/a/a/v0/l/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/j<",
            "Ls1/a/a/a/v0/b/d;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/d;",
            ">;>;"
        }
    .end annotation
.end field

.field public final q:Ls1/a/a/a/v0/l/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/j<",
            "Ls1/a/a/a/v0/b/e;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/e;",
            ">;>;"
        }
    .end annotation
.end field

.field public final s:Ls1/a/a/a/v0/k/b/y$a;

.field public final t:Ls1/a/a/a/v0/b/f1/h;

.field public final u:Ls1/a/a/a/v0/e/c;

.field public final v:Ls1/a/a/a/v0/e/z/a;

.field public final w:Ls1/a/a/a/v0/b/r0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/l;Ls1/a/a/a/v0/e/c;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/b/r0;)V
    .locals 10

    sget-object v0, Ls1/a/a/a/v0/b/f;->c:Ls1/a/a/a/v0/b/f;

    const-string v1, "outerContext"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "classProto"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadataVersion"

    invoke-static {p4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sourceElement"

    invoke-static {p5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 2
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 3
    iget v2, p2, Ls1/a/a/a/v0/e/c;->e:I

    .line 4
    invoke-static {p3, v2}, Ls1/a/a/a/v0/f/d;->k1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/a;

    move-result-object v2

    invoke-virtual {v2}, Ls1/a/a/a/v0/f/a;->j()Ls1/a/a/a/v0/f/e;

    move-result-object v2

    .line 5
    invoke-direct {p0, v1, v2}, Ls1/a/a/a/v0/b/h1/b;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/f/e;)V

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    iput-object p4, p0, Ls1/a/a/a/v0/k/b/g0/d;->v:Ls1/a/a/a/v0/e/z/a;

    iput-object p5, p0, Ls1/a/a/a/v0/k/b/g0/d;->w:Ls1/a/a/a/v0/b/r0;

    .line 6
    iget v1, p2, Ls1/a/a/a/v0/e/c;->e:I

    .line 7
    invoke-static {p3, v1}, Ls1/a/a/a/v0/f/d;->k1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    iput-object v1, p0, Ls1/a/a/a/v0/k/b/g0/d;->e:Ls1/a/a/a/v0/f/a;

    .line 8
    sget-object v1, Ls1/a/a/a/v0/e/z/b;->d:Ls1/a/a/a/v0/e/z/b$d;

    .line 9
    iget v2, p2, Ls1/a/a/a/v0/e/c;->d:I

    .line 10
    invoke-virtual {v1, v2}, Ls1/a/a/a/v0/e/z/b$d;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/e/k;

    .line 11
    sget-object v2, Ls1/a/a/a/v0/b/y;->a:Ls1/a/a/a/v0/b/y;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    sget-object v2, Ls1/a/a/a/v0/b/y;->b:Ls1/a/a/a/v0/b/y;

    goto :goto_0

    .line 13
    :cond_2
    sget-object v2, Ls1/a/a/a/v0/b/y;->d:Ls1/a/a/a/v0/b/y;

    goto :goto_0

    .line 14
    :cond_3
    sget-object v2, Ls1/a/a/a/v0/b/y;->c:Ls1/a/a/a/v0/b/y;

    .line 15
    :cond_4
    :goto_0
    iput-object v2, p0, Ls1/a/a/a/v0/k/b/g0/d;->f:Ls1/a/a/a/v0/b/y;

    .line 16
    sget-object v1, Ls1/a/a/a/v0/e/z/b;->c:Ls1/a/a/a/v0/e/z/b$d;

    .line 17
    iget v2, p2, Ls1/a/a/a/v0/e/c;->d:I

    .line 18
    invoke-virtual {v1, v2}, Ls1/a/a/a/v0/e/z/b$d;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/e/x;

    if-nez v1, :cond_5

    goto :goto_1

    .line 19
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_b

    if-eq v1, v5, :cond_a

    if-eq v1, v4, :cond_9

    if-eq v1, v3, :cond_8

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    const/4 v2, 0x5

    if-eq v1, v2, :cond_6

    .line 20
    :goto_1
    sget-object v1, Ls1/a/a/a/v0/b/q;->a:Ls1/a/a/a/v0/b/r;

    goto :goto_2

    .line 21
    :cond_6
    sget-object v1, Ls1/a/a/a/v0/b/q;->f:Ls1/a/a/a/v0/b/r;

    goto :goto_2

    .line 22
    :cond_7
    sget-object v1, Ls1/a/a/a/v0/b/q;->b:Ls1/a/a/a/v0/b/r;

    goto :goto_2

    .line 23
    :cond_8
    sget-object v1, Ls1/a/a/a/v0/b/q;->e:Ls1/a/a/a/v0/b/r;

    goto :goto_2

    .line 24
    :cond_9
    sget-object v1, Ls1/a/a/a/v0/b/q;->c:Ls1/a/a/a/v0/b/r;

    goto :goto_2

    .line 25
    :cond_a
    sget-object v1, Ls1/a/a/a/v0/b/q;->a:Ls1/a/a/a/v0/b/r;

    goto :goto_2

    .line 26
    :cond_b
    sget-object v1, Ls1/a/a/a/v0/b/q;->d:Ls1/a/a/a/v0/b/r;

    :goto_2
    const-string v2, "when (visibility) {\n    \u2026isibilities.PRIVATE\n    }"

    .line 27
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object v1, p0, Ls1/a/a/a/v0/k/b/g0/d;->g:Ls1/a/a/a/v0/b/r;

    .line 29
    sget-object v1, Ls1/a/a/a/v0/e/z/b;->e:Ls1/a/a/a/v0/e/z/b$d;

    .line 30
    iget v2, p2, Ls1/a/a/a/v0/e/c;->d:I

    .line 31
    invoke-virtual {v1, v2}, Ls1/a/a/a/v0/e/z/b$d;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/e/c$c;

    .line 32
    sget-object v2, Ls1/a/a/a/v0/b/f;->a:Ls1/a/a/a/v0/b/f;

    if-nez v1, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 33
    :pswitch_0
    sget-object v2, Ls1/a/a/a/v0/b/f;->f:Ls1/a/a/a/v0/b/f;

    goto :goto_3

    .line 34
    :pswitch_1
    sget-object v2, Ls1/a/a/a/v0/b/f;->e:Ls1/a/a/a/v0/b/f;

    goto :goto_3

    .line 35
    :pswitch_2
    sget-object v2, Ls1/a/a/a/v0/b/f;->d:Ls1/a/a/a/v0/b/f;

    goto :goto_3

    :pswitch_3
    move-object v2, v0

    goto :goto_3

    .line 36
    :pswitch_4
    sget-object v2, Ls1/a/a/a/v0/b/f;->b:Ls1/a/a/a/v0/b/f;

    .line 37
    :goto_3
    iput-object v2, p0, Ls1/a/a/a/v0/k/b/g0/d;->h:Ls1/a/a/a/v0/b/f;

    .line 38
    iget-object v5, p2, Ls1/a/a/a/v0/e/c;->g:Ljava/util/List;

    const-string v1, "classProto.typeParameterList"

    .line 39
    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ls1/a/a/a/v0/e/z/e;

    .line 40
    iget-object v1, p2, Ls1/a/a/a/v0/e/c;->t:Ls1/a/a/a/v0/e/t;

    const-string v3, "classProto.typeTable"

    .line 41
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v1}, Ls1/a/a/a/v0/e/z/e;-><init>(Ls1/a/a/a/v0/e/t;)V

    .line 42
    sget-object v1, Ls1/a/a/a/v0/e/z/g;->c:Ls1/a/a/a/v0/e/z/g$a;

    .line 43
    iget-object v3, p2, Ls1/a/a/a/v0/e/c;->v:Ls1/a/a/a/v0/e/w;

    const-string v4, "classProto.versionRequirementTable"

    .line 44
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ls1/a/a/a/v0/e/z/g$a;->a(Ls1/a/a/a/v0/e/w;)Ls1/a/a/a/v0/e/z/g;

    move-result-object v8

    move-object v3, p1

    move-object v4, p0

    move-object v6, p3

    move-object v9, p4

    .line 45
    invoke-virtual/range {v3 .. v9}, Ls1/a/a/a/v0/k/b/l;->a(Ls1/a/a/a/v0/b/k;Ljava/util/List;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/e/z/a;)Ls1/a/a/a/v0/k/b/l;

    move-result-object p3

    iput-object p3, p0, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    if-ne v2, v0, :cond_d

    .line 46
    new-instance p4, Ls1/a/a/a/v0/j/y/l;

    .line 47
    iget-object v1, p3, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 48
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 49
    invoke-direct {p4, v1, p0}, Ls1/a/a/a/v0/j/y/l;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/e;)V

    goto :goto_4

    :cond_d
    sget-object p4, Ls1/a/a/a/v0/j/y/i$b;->b:Ls1/a/a/a/v0/j/y/i$b;

    :goto_4
    iput-object p4, p0, Ls1/a/a/a/v0/k/b/g0/d;->j:Ls1/a/a/a/v0/j/y/j;

    .line 50
    new-instance p4, Ls1/a/a/a/v0/k/b/g0/d$b;

    invoke-direct {p4, p0}, Ls1/a/a/a/v0/k/b/g0/d$b;-><init>(Ls1/a/a/a/v0/k/b/g0/d;)V

    iput-object p4, p0, Ls1/a/a/a/v0/k/b/g0/d;->k:Ls1/a/a/a/v0/k/b/g0/d$b;

    .line 51
    sget-object p4, Ls1/a/a/a/v0/b/o0;->f:Ls1/a/a/a/v0/b/o0$a;

    .line 52
    iget-object v1, p3, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 53
    iget-object v3, v1, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 54
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/j;->r:Ls1/a/a/a/v0/m/l1/k;

    .line 55
    invoke-interface {v1}, Ls1/a/a/a/v0/m/l1/k;->c()Ls1/a/a/a/v0/m/l1/e;

    move-result-object v1

    new-instance v4, Ls1/a/a/a/v0/k/b/g0/d$g;

    invoke-direct {v4, p0}, Ls1/a/a/a/v0/k/b/g0/d$g;-><init>(Ls1/a/a/a/v0/k/b/g0/d;)V

    invoke-virtual {p4, p0, v3, v1, v4}, Ls1/a/a/a/v0/b/o0$a;->a(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/m/l1/e;Ls1/z/b/l;)Ls1/a/a/a/v0/b/o0;

    move-result-object p4

    iput-object p4, p0, Ls1/a/a/a/v0/k/b/g0/d;->l:Ls1/a/a/a/v0/b/o0;

    const/4 p4, 0x0

    if-ne v2, v0, :cond_e

    .line 56
    new-instance v0, Ls1/a/a/a/v0/k/b/g0/d$c;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/k/b/g0/d$c;-><init>(Ls1/a/a/a/v0/k/b/g0/d;)V

    goto :goto_5

    :cond_e
    move-object v0, p4

    :goto_5
    iput-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d;->m:Ls1/a/a/a/v0/k/b/g0/d$c;

    .line 57
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/l;->e:Ls1/a/a/a/v0/b/k;

    .line 58
    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d;->n:Ls1/a/a/a/v0/b/k;

    .line 59
    iget-object v0, p3, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 60
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 61
    new-instance v1, Ls1/a/a/a/v0/k/b/g0/d$h;

    invoke-direct {v1, p0}, Ls1/a/a/a/v0/k/b/g0/d$h;-><init>(Ls1/a/a/a/v0/k/b/g0/d;)V

    invoke-interface {v0, v1}, Ls1/a/a/a/v0/l/m;->g(Ls1/z/b/a;)Ls1/a/a/a/v0/l/j;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d;->o:Ls1/a/a/a/v0/l/j;

    .line 62
    iget-object v0, p3, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 63
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 64
    new-instance v1, Ls1/a/a/a/v0/k/b/g0/d$f;

    invoke-direct {v1, p0}, Ls1/a/a/a/v0/k/b/g0/d$f;-><init>(Ls1/a/a/a/v0/k/b/g0/d;)V

    invoke-interface {v0, v1}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d;->p:Ls1/a/a/a/v0/l/i;

    .line 65
    iget-object v0, p3, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 66
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 67
    new-instance v1, Ls1/a/a/a/v0/k/b/g0/d$e;

    invoke-direct {v1, p0}, Ls1/a/a/a/v0/k/b/g0/d$e;-><init>(Ls1/a/a/a/v0/k/b/g0/d;)V

    invoke-interface {v0, v1}, Ls1/a/a/a/v0/l/m;->g(Ls1/z/b/a;)Ls1/a/a/a/v0/l/j;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d;->q:Ls1/a/a/a/v0/l/j;

    .line 68
    iget-object v0, p3, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 69
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 70
    new-instance v1, Ls1/a/a/a/v0/k/b/g0/d$i;

    invoke-direct {v1, p0}, Ls1/a/a/a/v0/k/b/g0/d$i;-><init>(Ls1/a/a/a/v0/k/b/g0/d;)V

    invoke-interface {v0, v1}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d;->r:Ls1/a/a/a/v0/l/i;

    .line 71
    new-instance v0, Ls1/a/a/a/v0/k/b/y$a;

    .line 72
    iget-object v3, p3, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 73
    iget-object v4, p3, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    .line 74
    instance-of v1, p1, Ls1/a/a/a/v0/k/b/g0/d;

    if-nez v1, :cond_f

    move-object p1, p4

    :cond_f
    check-cast p1, Ls1/a/a/a/v0/k/b/g0/d;

    if-eqz p1, :cond_10

    iget-object p4, p1, Ls1/a/a/a/v0/k/b/g0/d;->s:Ls1/a/a/a/v0/k/b/y$a;

    :cond_10
    move-object v6, p4

    move-object v1, v0

    move-object v2, p2

    move-object v5, p5

    .line 75
    invoke-direct/range {v1 .. v6}, Ls1/a/a/a/v0/k/b/y$a;-><init>(Ls1/a/a/a/v0/e/c;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/b/r0;Ls1/a/a/a/v0/k/b/y$a;)V

    iput-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d;->s:Ls1/a/a/a/v0/k/b/y$a;

    .line 76
    sget-object p1, Ls1/a/a/a/v0/e/z/b;->b:Ls1/a/a/a/v0/e/z/b$b;

    .line 77
    iget p2, p2, Ls1/a/a/a/v0/e/c;->d:I

    .line 78
    invoke-virtual {p1, p2}, Ls1/a/a/a/v0/e/z/b$b;->f(I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_11

    .line 79
    sget-object p1, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 80
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object p1, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    goto :goto_6

    .line 82
    :cond_11
    new-instance p1, Ls1/a/a/a/v0/k/b/g0/n;

    .line 83
    iget-object p2, p3, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 84
    iget-object p2, p2, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 85
    new-instance p3, Ls1/a/a/a/v0/k/b/g0/d$d;

    invoke-direct {p3, p0}, Ls1/a/a/a/v0/k/b/g0/d$d;-><init>(Ls1/a/a/a/v0/k/b/g0/d;)V

    invoke-direct {p1, p2, p3}, Ls1/a/a/a/v0/k/b/g0/n;-><init>(Ls1/a/a/a/v0/l/m;Ls1/z/b/a;)V

    .line 86
    :goto_6
    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d;->t:Ls1/a/a/a/v0/b/f1/h;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public A0()Ls1/a/a/a/v0/b/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d;->q:Ls1/a/a/a/v0/l/j;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/e;

    return-object v0
.end method

.method public L()Z
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->h:Ls1/a/a/a/v0/e/z/b$b;

    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 2
    iget v1, v1, Ls1/a/a/a/v0/e/c;->d:I

    const-string v2, "Flags.IS_EXTERNAL_CLASS.get(classProto.flags)"

    .line 3
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public L0()Z
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->g:Ls1/a/a/a/v0/e/z/b$b;

    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 2
    iget v1, v1, Ls1/a/a/a/v0/e/c;->d:I

    const-string v2, "Flags.IS_DATA.get(classProto.flags)"

    .line 3
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Ls1/a/a/a/v0/b/k;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d;->n:Ls1/a/a/a/v0/b/k;

    return-object v0
.end method

.method public b0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d;->l:Ls1/a/a/a/v0/b/o0;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/b/o0;->a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;

    move-result-object p1

    return-object p1
.end method

.method public c0()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d;->r:Ls1/a/a/a/v0/l/i;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public f()Ls1/a/a/a/v0/b/r;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d;->g:Ls1/a/a/a/v0/b/r;

    return-object v0
.end method

.method public getAnnotations()Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d;->t:Ls1/a/a/a/v0/b/f1/h;

    return-object v0
.end method

.method public getKind()Ls1/a/a/a/v0/b/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d;->h:Ls1/a/a/a/v0/b/f;

    return-object v0
.end method

.method public getSource()Ls1/a/a/a/v0/b/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d;->w:Ls1/a/a/a/v0/b/r0;

    return-object v0
.end method

.method public h()Z
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->j:Ls1/a/a/a/v0/e/z/b$b;

    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 2
    iget v1, v1, Ls1/a/a/a/v0/e/c;->d:I

    const-string v2, "Flags.IS_INLINE_CLASS.get(classProto.flags)"

    .line 3
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public l()Ls1/a/a/a/v0/b/y;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d;->f:Ls1/a/a/a/v0/b/y;

    return-object v0
.end method

.method public o()Ls1/a/a/a/v0/m/v0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d;->k:Ls1/a/a/a/v0/k/b/g0/d$b;

    return-object v0
.end method

.method public p()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d;->p:Ls1/a/a/a/v0/l/i;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public p0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r0()Z
    .locals 2

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->e:Ls1/a/a/a/v0/e/z/b$d;

    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 2
    iget v1, v1, Ls1/a/a/a/v0/e/c;->d:I

    .line 3
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/z/b$d;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/e/c$c;

    sget-object v1, Ls1/a/a/a/v0/e/c$c;->h:Ls1/a/a/a/v0/e/c$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t0()Z
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->k:Ls1/a/a/a/v0/e/z/b$b;

    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 2
    iget v1, v1, Ls1/a/a/a/v0/e/c;->d:I

    const-string v2, "Flags.IS_FUN_INTERFACE.get(classProto.flags)"

    .line 3
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "deserialized "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ls1/a/a/a/v0/k/b/g0/d;->x0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "expect"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/b;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->a:Ls1/a/a/a/v0/k/b/c0;

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/v0/k/b/c0;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public x()Z
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->f:Ls1/a/a/a/v0/e/z/b$b;

    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 2
    iget v1, v1, Ls1/a/a/a/v0/e/c;->d:I

    const-string v2, "Flags.IS_INNER.get(classProto.flags)"

    .line 3
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public x0()Z
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->i:Ls1/a/a/a/v0/e/z/b$b;

    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 2
    iget v1, v1, Ls1/a/a/a/v0/e/c;->d:I

    const-string v2, "Flags.IS_EXPECT_CLASS.get(classProto.flags)"

    .line 3
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public z()Ls1/a/a/a/v0/b/d;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d;->o:Ls1/a/a/a/v0/l/j;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/d;

    return-object v0
.end method

.method public z0()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d;->j:Ls1/a/a/a/v0/j/y/j;

    return-object v0
.end method

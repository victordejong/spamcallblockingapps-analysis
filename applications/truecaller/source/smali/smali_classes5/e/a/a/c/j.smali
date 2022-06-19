.class public final Le/a/a/c/j;
.super Le/a/a/h0;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/l5;


# instance fields
.field public final A:Z

.field public final B:Le/a/a/i1/b;

.field public final g:Lw3/b/a/i0/b;

.field public final h:Lw3/b/a/i0/b;

.field public final i:Lw3/b/a/i0/b;

.field public final j:Lw3/b/a/i0/b;

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:Le/a/o5/b0;

.field public final z:Le/a/e4/b0;


# direct methods
.method public constructor <init>(Le/a/p5/h0;Le/a/o5/b0;Le/a/e4/b0;ZLe/a/a/i1/b;Landroid/content/Context;)V
    .locals 1

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simInfoCache"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p6}, Le/a/a/h0;-><init>(Le/a/p5/h0;Landroid/content/Context;)V

    iput-object p2, p0, Le/a/a/c/j;->y:Le/a/o5/b0;

    iput-object p3, p0, Le/a/a/c/j;->z:Le/a/e4/b0;

    iput-boolean p4, p0, Le/a/a/c/j;->A:Z

    iput-object p5, p0, Le/a/a/c/j;->B:Le/a/a/i1/b;

    const-string p2, "EEEE, dd MMM YYYY"

    .line 2
    invoke-static {p2}, Lw3/b/a/i0/a;->a(Ljava/lang/String;)Lw3/b/a/i0/b;

    move-result-object p2

    iput-object p2, p0, Le/a/a/c/j;->g:Lw3/b/a/i0/b;

    const-string p2, "EEEE, dd MMM"

    .line 3
    invoke-static {p2}, Lw3/b/a/i0/a;->a(Ljava/lang/String;)Lw3/b/a/i0/b;

    move-result-object p2

    iput-object p2, p0, Le/a/a/c/j;->h:Lw3/b/a/i0/b;

    const-string p2, "dd MMM YYYY"

    .line 4
    invoke-static {p2}, Lw3/b/a/i0/a;->a(Ljava/lang/String;)Lw3/b/a/i0/b;

    move-result-object p2

    iput-object p2, p0, Le/a/a/c/j;->i:Lw3/b/a/i0/b;

    const-string p2, "dd MMM"

    .line 5
    invoke-static {p2}, Lw3/b/a/i0/a;->a(Ljava/lang/String;)Lw3/b/a/i0/b;

    move-result-object p2

    iput-object p2, p0, Le/a/a/c/j;->j:Lw3/b/a/i0/b;

    const/4 p2, 0x7

    new-array p2, p2, [Ljava/lang/Integer;

    const p3, 0x7f040643

    .line 6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const p3, 0x7f040644

    .line 7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x7f040647

    .line 8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x7f040645

    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p3, 0x7f040648

    .line 10
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    const p3, 0x7f040642

    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    const p3, 0x7f040646

    .line 12
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    .line 13
    invoke-static {p2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Le/a/a/c/j;->k:Ljava/util/List;

    const/4 p2, -0x1

    .line 14
    iput p2, p0, Le/a/a/c/j;->l:I

    const p3, 0x7f04060d

    .line 15
    invoke-interface {p1, p3}, Le/a/p5/h0;->l(I)I

    move-result p3

    iput p3, p0, Le/a/a/c/j;->m:I

    const p3, 0x7f040610

    .line 16
    invoke-interface {p1, p3}, Le/a/p5/h0;->l(I)I

    move-result p3

    iput p3, p0, Le/a/a/c/j;->n:I

    const p3, 0x7f040612

    .line 17
    invoke-interface {p1, p3}, Le/a/p5/h0;->l(I)I

    move-result p3

    iput p3, p0, Le/a/a/c/j;->o:I

    const p3, 0x7f040611

    .line 18
    invoke-interface {p1, p3}, Le/a/p5/h0;->l(I)I

    move-result p3

    iput p3, p0, Le/a/a/c/j;->p:I

    const p3, 0x7f040614

    .line 19
    invoke-interface {p1, p3}, Le/a/p5/h0;->l(I)I

    move-result p3

    iput p3, p0, Le/a/a/c/j;->q:I

    const p3, 0x7f040629

    .line 20
    invoke-interface {p1, p3}, Le/a/p5/h0;->l(I)I

    move-result p3

    iput p3, p0, Le/a/a/c/j;->r:I

    const p3, 0x7f04062a

    .line 21
    invoke-interface {p1, p3}, Le/a/p5/h0;->l(I)I

    move-result p3

    iput p3, p0, Le/a/a/c/j;->s:I

    const p3, 0x7f040627

    .line 22
    invoke-interface {p1, p3}, Le/a/p5/h0;->l(I)I

    move-result p3

    iput p3, p0, Le/a/a/c/j;->t:I

    const p3, 0x7f04061f

    .line 23
    invoke-interface {p1, p3}, Le/a/p5/h0;->l(I)I

    move-result p3

    iput p3, p0, Le/a/a/c/j;->u:I

    const p3, 0x7f040628

    .line 24
    invoke-interface {p1, p3}, Le/a/p5/h0;->l(I)I

    move-result p3

    iput p3, p0, Le/a/a/c/j;->v:I

    const p3, 0x7f040677

    .line 25
    invoke-interface {p1, p3}, Le/a/p5/h0;->l(I)I

    const p1, 0x7f08083f

    .line 26
    iput p1, p0, Le/a/a/c/j;->w:I

    .line 27
    iput p2, p0, Le/a/a/c/j;->x:I

    return-void
.end method


# virtual methods
.method public A(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h0;->a:Ljava/util/Map;

    .line 2
    sget-object v1, Le/a/a/c/j$b;->b:Le/a/a/c/j$b;

    invoke-virtual {p0, v0, p1, v1}, Le/a/a/c/j;->R(Ljava/util/Map;ILs1/z/b/l;)I

    move-result p1

    return p1
.end method

.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/c/j;->s:I

    return v0
.end method

.method public D()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/c/j;->p:I

    return v0
.end method

.method public E()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/c/j;->u:I

    return v0
.end method

.method public F(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3ff

    int-to-long v1, v1

    add-long/2addr p1, v1

    const/16 v1, 0x400

    int-to-long v1, v1

    .line 2
    div-long/2addr p1, v1

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object p1, p0, Le/a/a/h0;->e:Le/a/p5/h0;

    const p2, 0x7f120383

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-interface {p1, p2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public G(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;
    .locals 5

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/c/p/a;->s1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Le/a/a/h0;->e:Le/a/p5/h0;

    const v0, 0x7f1203b3

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/a/c/j;->B:Le/a/a/i1/b;

    .line 5
    iget v2, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    iget-object v3, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    const-string v4, "message.transportInfo"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/truecaller/messaging/data/types/TransportInfo;->E()I

    move-result v3

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/truecaller/messaging/data/types/TransportInfo;->L1()I

    move-result p1

    const/4 v4, 0x1

    .line 6
    invoke-interface {v0, v2, v3, p1, v4}, Le/a/a/i1/b;->F(IIII)Ls1/k;

    move-result-object p1

    .line 7
    iget-object v0, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 8
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 9
    iget-object v0, p0, Le/a/a/h0;->e:Le/a/p5/h0;

    .line 10
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 11
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public I(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h0;->a:Ljava/util/Map;

    .line 2
    sget-object v1, Le/a/a/c/j$d;->b:Le/a/a/c/j$d;

    invoke-virtual {p0, v0, p1, v1}, Le/a/a/c/j;->R(Ljava/util/Map;ILs1/z/b/l;)I

    move-result p1

    return p1
.end method

.method public J()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/c/j;->x:I

    return v0
.end method

.method public K(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h0;->a:Ljava/util/Map;

    .line 2
    sget-object v1, Le/a/a/c/j$g;->b:Le/a/a/c/j$g;

    invoke-virtual {p0, v0, p1, v1}, Le/a/a/c/j;->R(Ljava/util/Map;ILs1/z/b/l;)I

    move-result p1

    return p1
.end method

.method public L()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/c/j;->l:I

    return v0
.end method

.method public M(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/c/j;->S(Lcom/truecaller/messaging/data/types/Message;)Ls1/k;

    move-result-object p1

    .line 2
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 3
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public N(Lcom/truecaller/messaging/data/types/Message;)I
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/c/j;->S(Lcom/truecaller/messaging/data/types/Message;)Ls1/k;

    move-result-object p1

    .line 2
    iget-object p1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public O(Lcom/truecaller/messaging/data/types/Entity;)Ljava/lang/String;
    .locals 2

    const-string v0, "entity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Entity;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Le/a/a/h0;->e:Le/a/p5/h0;

    const v0, 0x7f12001c

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026ring.AttachmentTypeVCard)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public P()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/c/j;->q:I

    return v0
.end method

.method public Q(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h0;->a:Ljava/util/Map;

    .line 2
    sget-object v1, Le/a/a/c/j$f;->b:Le/a/a/c/j$f;

    invoke-virtual {p0, v0, p1, v1}, Le/a/a/c/j;->R(Ljava/util/Map;ILs1/z/b/l;)I

    move-result p1

    return p1
.end method

.method public final R(Ljava/util/Map;ILs1/z/b/l;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Le/a/a/h0$a;",
            ">;I",
            "Ls1/z/b/l<",
            "-",
            "Le/a/a/h0$a;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-string v0, "$this$get"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/h0;->e:Le/a/p5/h0;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/h0$a;

    if-eqz p1, :cond_0

    invoke-interface {p3, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object p1, Le/a/a/h0$a$a;->a:Le/a/a/h0$a$a;

    invoke-interface {p3, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    :goto_0
    invoke-interface {v0, p1}, Le/a/p5/h0;->l(I)I

    move-result p1

    return p1
.end method

.method public final S(Lcom/truecaller/messaging/data/types/Message;)Ls1/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            ")",
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/a/a/c/j;->A:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 3
    invoke-interface {v0}, Lcom/truecaller/messaging/data/types/TransportInfo;->J0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Le/a/c/p/a;->A1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/truecaller/messaging/data/types/Message;->l:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/a/c/j;->z:Le/a/e4/b0;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    invoke-interface {v0, p1}, Le/a/e4/b0;->get(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    iget p1, p1, Lcom/truecaller/multisim/SimInfo;->a:I

    if-nez p1, :cond_1

    .line 7
    new-instance p1, Ls1/k;

    const v0, 0x7f080648

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 8
    iget-object v2, p0, Le/a/a/h0;->e:Le/a/p5/h0;

    const v3, 0x7f120677

    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    invoke-interface {v2, v3, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 10
    new-instance p1, Ls1/k;

    const v0, 0x7f08064b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 11
    iget-object v2, p0, Le/a/a/h0;->e:Le/a/p5/h0;

    const v3, 0x7f120678

    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-interface {v2, v3, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 13
    :cond_2
    new-instance p1, Ls1/k;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public a(ZZZZZZZZZZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZZZZZ)",
            "Ljava/util/List<",
            "Le/a/a/c/a6;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    new-instance v7, Le/a/a/c/a6;

    const v2, 0x7f1201d7

    const v3, 0x7f0806a7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Le/a/a/c/a6;-><init>(IIIII)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    new-instance v7, Le/a/a/c/a6;

    const v2, 0x7f1201d3

    const v3, 0x7f0806a7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Le/a/a/c/a6;-><init>(IIIII)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 4
    new-instance v7, Le/a/a/c/a6;

    const v2, 0x7f1201d6

    const v3, 0x7f08078f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Le/a/a/c/a6;-><init>(IIIII)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 5
    new-instance v7, Le/a/a/c/a6;

    const v2, 0x7f1201d5

    const v3, 0x7f080748

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Le/a/a/c/a6;-><init>(IIIII)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz p5, :cond_4

    .line 6
    new-instance v7, Le/a/a/c/a6;

    const v2, 0x7f1201d4

    const v3, 0x7f0806a3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Le/a/a/c/a6;-><init>(IIIII)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    if-eqz p6, :cond_5

    .line 7
    new-instance v1, Le/a/a/c/a6;

    const v2, 0x7f1201d2

    const v3, 0x7f08069b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object p1, v1

    move p2, v2

    move p3, v3

    move p4, v4

    move p5, v5

    move p6, v6

    invoke-direct/range {p1 .. p6}, Le/a/a/c/a6;-><init>(IIIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz p7, :cond_6

    .line 8
    new-instance v1, Le/a/a/c/a6;

    const v2, 0x7f120d2b

    const v3, 0x7f080698

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object p1, v1

    move p2, v2

    move p3, v3

    move p4, v4

    move p5, v5

    move p6, v6

    invoke-direct/range {p1 .. p6}, Le/a/a/c/a6;-><init>(IIIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz p9, :cond_7

    .line 9
    new-instance v1, Le/a/a/c/a6;

    const v2, 0x7f1201fc

    const v3, 0x7f0807a3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object p1, v1

    move p2, v2

    move p3, v3

    move p4, v4

    move p5, v5

    move p6, v6

    invoke-direct/range {p1 .. p6}, Le/a/a/c/a6;-><init>(IIIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    if-eqz p10, :cond_8

    .line 10
    new-instance v1, Le/a/a/c/a6;

    const v2, 0x7f120207

    const v3, 0x7f0807a2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object p1, v1

    move p2, v2

    move p3, v3

    move p4, v4

    move p5, v5

    move p6, v6

    invoke-direct/range {p1 .. p6}, Le/a/a/c/a6;-><init>(IIIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_1
    if-eqz p8, :cond_9

    .line 11
    new-instance v1, Le/a/a/c/a6;

    const v2, 0x7f120206

    const v3, 0x7f0806a0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object p1, v1

    move p2, v2

    move p3, v3

    move p4, v4

    move p5, v5

    move p6, v6

    invoke-direct/range {p1 .. p6}, Le/a/a/c/a6;-><init>(IIIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_9
    new-instance v1, Le/a/a/c/a6;

    const v2, 0x7f1201bd

    const v3, 0x7f0806a4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object p1, v1

    move p2, v2

    move p3, v3

    move p4, v4

    move p5, v5

    move p6, v6

    invoke-direct/range {p1 .. p6}, Le/a/a/c/a6;-><init>(IIIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Le/a/a/c/a6;

    const v2, 0x7f1201d1

    const v3, 0x7f080699

    const v4, 0x7f04056e

    invoke-direct {v1, v2, v3, v4, v4}, Le/a/a/c/a6;-><init>(IIII)V

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public c(IJ)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x3e8

    int-to-long v2, v0

    div-long/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object p2, p0, Le/a/a/h0;->e:Le/a/p5/h0;

    const p3, 0x7f120383

    new-array v0, v1, [Ljava/lang/Object;

    .line 3
    invoke-interface {p2, p3, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/a/h0;->e:Le/a/p5/h0;

    const p2, 0x7f120396

    new-array p3, v1, [Ljava/lang/Object;

    .line 5
    invoke-interface {p1, p2, p3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Le/a/a/h0;->e:Le/a/p5/h0;

    const p2, 0x7f120397

    new-array p3, v1, [Ljava/lang/Object;

    .line 7
    invoke-interface {p1, p2, p3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Le/a/a/h0;->e:Le/a/p5/h0;

    const p2, 0x7f120395

    new-array p3, v1, [Ljava/lang/Object;

    .line 9
    invoke-interface {p1, p2, p3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public e(Lcom/truecaller/messaging/data/types/Message;)I
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/j;->B:Le/a/a/i1/b;

    invoke-interface {v0, p1}, Le/a/a/i1/b;->g(Lcom/truecaller/messaging/data/types/Message;)I

    move-result p1

    return p1
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/c/j;->w:I

    return v0
.end method

.method public g(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/a/c/j;->B:Le/a/a/i1/b;

    invoke-interface {v0, p1}, Le/a/a/i1/b;->g(Lcom/truecaller/messaging/data/types/Message;)I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/a/h0;->e:Le/a/p5/h0;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    invoke-interface {v0, p1, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/h0;->f:Landroid/content/Context;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(resId)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public h(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/h0;->e:Le/a/p5/h0;

    .line 2
    iget-object v1, p0, Le/a/a/c/j;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v2, p0, Le/a/a/c/j;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr p1, v2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Le/a/p5/h0;->l(I)I

    move-result p1

    return p1
.end method

.method public i(Lw3/b/a/b;)Ljava/lang/String;
    .locals 5

    const-string v0, "expiry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/h0;->e:Le/a/p5/h0;

    const v1, 0x7f030007

    .line 2
    invoke-interface {v0, v1}, Le/a/p5/c0;->i(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026array.MmsExpirationMonth)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/a/h0;->e:Le/a/p5/h0;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lw3/b/a/e0/a;->t()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v0, v0, v3

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1}, Lw3/b/a/e0/a;->q()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    const p1, 0x7f1203cc

    invoke-interface {v1, p1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026 - 1], expiry.dayOfMonth)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/c/j;->r:I

    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/c/j;->n:I

    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/c/j;->m:I

    return v0
.end method

.method public m(Lcom/truecaller/messaging/data/types/Message;)Ls1/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            ")",
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/j;->B:Le/a/a/i1/b;

    iget v1, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    iget-object v2, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    const-string v3, "message.transportInfo"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/truecaller/messaging/data/types/TransportInfo;->E()I

    move-result v2

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/truecaller/messaging/data/types/TransportInfo;->L1()I

    move-result p1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, p1, v3}, Le/a/a/i1/b;->F(IIII)Ls1/k;

    move-result-object p1

    return-object p1
.end method

.method public n(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h0;->a:Ljava/util/Map;

    .line 2
    sget-object v1, Le/a/a/c/j$e;->b:Le/a/a/c/j$e;

    invoke-virtual {p0, v0, p1, v1}, Le/a/a/c/j;->R(Ljava/util/Map;ILs1/z/b/l;)I

    move-result p1

    return p1
.end method

.method public o(Lcom/truecaller/messaging/data/types/Message;)I
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/c/p/a;->A1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/c/j;->B:Le/a/a/i1/b;

    iget v1, p1, Lcom/truecaller/messaging/data/types/Message;->l:I

    invoke-static {p1}, Le/a/c/p/a;->D1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result p1

    invoke-interface {v0, v1, p1}, Le/a/a/i1/b;->A(IZ)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/a/c/j;->B:Le/a/a/i1/b;

    iget v1, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    invoke-static {p1}, Le/a/c/p/a;->D1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result p1

    invoke-interface {v0, v1, p1}, Le/a/a/i1/b;->A(IZ)I

    move-result p1

    :goto_0
    return p1
.end method

.method public p()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/c/j;->v:I

    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/c/j;->o:I

    return v0
.end method

.method public s(Lw3/b/a/b;)Ljava/lang/String;
    .locals 5

    const-string v0, "messageDate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/h0;->e:Le/a/p5/h0;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Le/a/a/c/j;->y:Le/a/o5/b0;

    .line 3
    iget-wide v3, p1, Lw3/b/a/e0/e;->a:J

    .line 4
    invoke-interface {v2, v3, v4}, Le/a/o5/b0;->w(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Le/a/a/c/j;->j:Lw3/b/a/i0/b;

    .line 5
    iget-wide v3, p1, Lw3/b/a/e0/e;->a:J

    .line 6
    invoke-virtual {v2, v3, v4}, Lw3/b/a/i0/b;->e(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Le/a/a/c/j;->i:Lw3/b/a/i0/b;

    .line 8
    iget-wide v3, p1, Lw3/b/a/e0/e;->a:J

    .line 9
    invoke-virtual {v2, v3, v4}, Lw3/b/a/i0/b;->e(J)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f12021a

    .line 10
    invoke-interface {v0, p1, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026)\n            }\n        )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/c/j;->t:I

    return v0
.end method

.method public v(IZ)I
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Le/a/a/h0;->a:Ljava/util/Map;

    .line 2
    sget-object v0, Le/a/a/c/j$a;->c:Le/a/a/c/j$a;

    invoke-virtual {p0, p2, p1, v0}, Le/a/a/c/j;->R(Ljava/util/Map;ILs1/z/b/l;)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/a/h0;->a:Ljava/util/Map;

    const/4 p2, 0x2

    .line 4
    sget-object v0, Le/a/a/c/j$a;->d:Le/a/a/c/j$a;

    invoke-virtual {p0, p1, p2, v0}, Le/a/a/c/j;->R(Ljava/util/Map;ILs1/z/b/l;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public w(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h0;->a:Ljava/util/Map;

    .line 2
    sget-object v1, Le/a/a/c/j$h;->b:Le/a/a/c/j$h;

    invoke-virtual {p0, v0, p1, v1}, Le/a/a/c/j;->R(Ljava/util/Map;ILs1/z/b/l;)I

    move-result p1

    return p1
.end method

.method public x(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h0;->a:Ljava/util/Map;

    .line 2
    sget-object v1, Le/a/a/c/j$c;->b:Le/a/a/c/j$c;

    invoke-virtual {p0, v0, p1, v1}, Le/a/a/c/j;->R(Ljava/util/Map;ILs1/z/b/l;)I

    move-result p1

    return p1
.end method

.method public y(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/c/j;->o(Lcom/truecaller/messaging/data/types/Message;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/h0;->e:Le/a/p5/h0;

    .line 3
    invoke-virtual {p0, p1}, Le/a/a/c/j;->o(Lcom/truecaller/messaging/data/types/Message;)I

    move-result p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public z(Lw3/b/a/b;)Ljava/lang/String;
    .locals 5

    const-string v0, "messageDate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    .line 2
    iget-object v1, p0, Le/a/a/c/j;->y:Le/a/o5/b0;

    .line 3
    iget-wide v2, p1, Lw3/b/a/e0/e;->a:J

    .line 4
    invoke-interface {v1, v2, v3}, Le/a/o5/b0;->d(J)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    iget-object p1, p0, Le/a/a/h0;->e:Le/a/p5/h0;

    const v0, 0x7f1201e5

    new-array v1, v2, [Ljava/lang/Object;

    .line 6
    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026.ConversationHeaderToday)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Le/a/a/c/j;->y:Le/a/o5/b0;

    .line 8
    iget-wide v3, p1, Lw3/b/a/e0/e;->a:J

    .line 9
    invoke-interface {v1, v3, v4}, Le/a/o5/b0;->e(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object p1, p0, Le/a/a/h0;->e:Le/a/p5/h0;

    const v0, 0x7f1201e6

    new-array v1, v2, [Ljava/lang/Object;

    .line 11
    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026versationHeaderYesterday)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lw3/b/a/e0/a;->u()I

    move-result v1

    invoke-virtual {v0}, Lw3/b/a/e0/a;->u()I

    move-result v0

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Le/a/a/c/j;->g:Lw3/b/a/i0/b;

    invoke-virtual {v0, p1}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DATE_WITH_YEAR.print(messageDate)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Le/a/a/c/j;->h:Lw3/b/a/i0/b;

    .line 14
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    .line 15
    invoke-virtual {v0, v1, v2}, Lw3/b/a/i0/b;->e(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DATE_WITHOUT_YEAR.print(messageDate.millis)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

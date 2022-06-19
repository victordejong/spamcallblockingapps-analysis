.class public Le/a/a/k/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/t;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/k/u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/a/k/t;",
        "Ljava/lang/Iterable<",
        "Le/a/a/k/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final w:J

.field public static final x:[I


# instance fields
.field public final a:Le/a/a/i0;

.field public final b:Le/a/a/r0/a;

.field public final c:Le/a/p5/g;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/i;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/a/k/q;

.field public final g:Le/a/a/k/q;

.field public final h:Le/a/a/k/q;

.field public final i:Le/a/a/k/q;

.field public final j:Le/a/a/k/q;

.field public final k:Le/a/a/k/q;

.field public final l:Le/a/a/k/q;

.field public final m:Le/a/a/k/q;

.field public final n:Le/a/a/k/q;

.field public final o:Le/a/a/k/q;

.field public final p:Le/a/b0/e/l;

.field public final q:Le/a/p5/a0;

.field public final r:Le/a/a/p;

.field public final s:Le/a/a/w0/a;

.field public final t:Le/a/b0/o/a;

.field public final u:Le/a/a/c/o/h;

.field public final v:Le/a/a/k/a/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Le/a/a/k/u;->w:J

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Le/a/a/k/u;->x:[I

    return-void

    :array_0
    .array-data 4
        0x3
        0x0
        0x1
        0x2
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>(Le/a/a/i0;Le/a/a/r0/a;Le/a/p5/g;Lo3/a;Le/a/r2/f;Le/a/a/k/q;Le/a/a/k/q;Le/a/a/k/q;Le/a/a/k/q;Le/a/a/k/q;Le/a/a/k/q;Le/a/a/k/q;Le/a/a/k/q;Le/a/a/k/q;Le/a/b0/e/l;Le/a/p5/a0;Le/a/a/p;Le/a/a/w0/a;Le/a/b0/o/a;Le/a/a/k/q;Le/a/a/c/o/h;Le/a/a/k/a/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/i0;",
            "Le/a/a/r0/a;",
            "Le/a/p5/g;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;",
            "Le/a/r2/f<",
            "Le/a/a/k/i;",
            ">;",
            "Le/a/a/k/q;",
            "Le/a/a/k/q;",
            "Le/a/a/k/q;",
            "Le/a/a/k/q;",
            "Le/a/a/k/q;",
            "Le/a/a/k/q;",
            "Le/a/a/k/q;",
            "Le/a/a/k/q;",
            "Le/a/a/k/q;",
            "Le/a/b0/e/l;",
            "Le/a/p5/a0;",
            "Le/a/a/p;",
            "Le/a/a/w0/a;",
            "Le/a/b0/o/a;",
            "Le/a/a/k/q;",
            "Le/a/a/c/o/h;",
            "Le/a/a/k/a/n;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Le/a/a/k/u;->a:Le/a/a/i0;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Le/a/a/k/u;->b:Le/a/a/r0/a;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Le/a/a/k/u;->c:Le/a/p5/g;

    move-object v1, p6

    .line 5
    iput-object v1, v0, Le/a/a/k/u;->f:Le/a/a/k/q;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Le/a/a/k/u;->e:Le/a/r2/f;

    move-object v1, p7

    .line 7
    iput-object v1, v0, Le/a/a/k/u;->g:Le/a/a/k/q;

    move-object v1, p8

    .line 8
    iput-object v1, v0, Le/a/a/k/u;->h:Le/a/a/k/q;

    move-object v1, p9

    .line 9
    iput-object v1, v0, Le/a/a/k/u;->i:Le/a/a/k/q;

    move-object v1, p10

    .line 10
    iput-object v1, v0, Le/a/a/k/u;->j:Le/a/a/k/q;

    move-object v1, p11

    .line 11
    iput-object v1, v0, Le/a/a/k/u;->l:Le/a/a/k/q;

    move-object v1, p12

    .line 12
    iput-object v1, v0, Le/a/a/k/u;->m:Le/a/a/k/q;

    move-object v1, p13

    .line 13
    iput-object v1, v0, Le/a/a/k/u;->n:Le/a/a/k/q;

    move-object/from16 v1, p14

    .line 14
    iput-object v1, v0, Le/a/a/k/u;->o:Le/a/a/k/q;

    move-object v1, p4

    .line 15
    iput-object v1, v0, Le/a/a/k/u;->d:Lo3/a;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Le/a/a/k/u;->p:Le/a/b0/e/l;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Le/a/a/k/u;->q:Le/a/p5/a0;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Le/a/a/k/u;->r:Le/a/a/p;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Le/a/a/k/u;->s:Le/a/a/w0/a;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Le/a/a/k/u;->t:Le/a/b0/o/a;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Le/a/a/k/u;->k:Le/a/a/k/q;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Le/a/a/k/u;->u:Le/a/a/c/o/h;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Le/a/a/k/u;->v:Le/a/a/k/a/n;

    return-void
.end method


# virtual methods
.method public A(ILandroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Le/a/a/k/u;->w(ILe/a/a/k/q;)Le/a/a/k/q;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/k/u;->e:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/i;

    invoke-interface {v0, p1, p2, p3}, Le/a/a/k/i;->i(Le/a/a/k/q;Landroid/content/Intent;I)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->g()V

    return-void
.end method

.method public B(Lcom/truecaller/messaging/data/types/Message;)Le/a/r2/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/Message;->S:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 4
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, v0}, Le/a/a/k/u;->x(I)Le/a/a/k/q;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/m0;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 6
    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Le/a/a/k/a/m0;->v(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    iget-object v0, p0, Le/a/a/k/u;->v:Le/a/a/k/a/n;

    invoke-interface {v0, p1}, Le/a/a/k/a/n;->c(Lcom/truecaller/messaging/data/types/Message;)Lcom/truecaller/messaging/data/types/Message;

    move-result-object p1

    .line 10
    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public final C()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/k/u;->t:Le/a/b0/o/a;

    const-string v1, "deleteBackupDuplicates"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Le/a/a/k/u;->d:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/m;

    invoke-interface {v1, v2, v0}, Le/a/a/g/m;->V(ZLjava/util/Set;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            "[",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "Le/a/r2/j;",
            "Le/a/r2/d0<",
            "Lcom/truecaller/messaging/data/types/Draft;",
            ">;)",
            "Le/a/r2/a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->g()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/Message;->b:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v3, v1, [Ljava/lang/String;

    .line 3
    invoke-static {v0, v3}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 5
    invoke-interface {v0}, Lcom/truecaller/messaging/data/types/TransportInfo;->u()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    new-array v0, v1, [Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/truecaller/messaging/data/types/Draft$b;

    invoke-direct {v0}, Lcom/truecaller/messaging/data/types/Draft$b;-><init>()V

    .line 7
    iget-object v2, v0, Lcom/truecaller/messaging/data/types/Draft$b;->c:Ljava/util/Set;

    invoke-static {v2, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object p2

    .line 9
    iput-object p2, v0, Lcom/truecaller/messaging/data/types/Draft$b;->e:Ljava/lang/String;

    .line 10
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    array-length v2, p2

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, p2, v1

    .line 11
    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Entity;->r()Z

    move-result v4

    if-nez v4, :cond_2

    .line 12
    check-cast v3, Lcom/truecaller/messaging/data/types/BinaryEntity;

    invoke-virtual {v0, v3}, Lcom/truecaller/messaging/data/types/Draft$b;->b(Lcom/truecaller/messaging/data/types/BinaryEntity;)Lcom/truecaller/messaging/data/types/Draft$b;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 13
    :cond_3
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->r:Ljava/lang/String;

    if-nez p2, :cond_4

    const-string p2, "unknown"

    .line 14
    :cond_4
    iget-object v1, p0, Le/a/a/k/u;->d:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/m;

    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Le/a/a/g/m;->B(Lcom/truecaller/messaging/data/types/Draft;Ljava/lang/String;)Le/a/r2/x;

    move-result-object p2

    new-instance v0, Le/a/a/k/c;

    invoke-direct {v0, p0, p1, p4}, Le/a/a/k/c;-><init>(Le/a/a/k/u;Lcom/truecaller/messaging/data/types/Message;Le/a/r2/d0;)V

    invoke-virtual {p2, p3, v0}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;ZZ)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            "[",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "ZZ)",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->h()Z

    move-result v0

    invoke-virtual {p0, v0, p2, p4}, Le/a/a/k/u;->n(Z[Lcom/truecaller/data/entity/messaging/Participant;Z)I

    move-result p4

    .line 4
    invoke-virtual {p0, p4}, Le/a/a/k/u;->x(I)Le/a/a/k/q;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 5
    invoke-static {v0, v3}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, p1}, Le/a/a/k/q;->v(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p3, :cond_2

    const/4 p3, 0x2

    if-eq p4, p3, :cond_2

    const/4 v2, 0x1

    .line 8
    :cond_2
    iget-object p3, p0, Le/a/a/k/u;->e:Le/a/r2/f;

    invoke-interface {p3}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/a/k/i;

    if-eqz v2, :cond_3

    sget-wide v0, Le/a/a/k/u;->w:J

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    :goto_0
    long-to-int v0, v0

    invoke-interface {p3, p1, p2, p4, v0}, Le/a/a/k/i;->k(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;II)Le/a/r2/x;

    move-result-object p2

    .line 9
    iget-object p3, p0, Le/a/a/k/u;->s:Le/a/a/w0/a;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->q:Ljava/lang/String;

    invoke-interface {p3, p1, p4}, Le/a/a/w0/a;->e(Ljava/lang/String;I)V

    return-object p2
.end method

.method public c(Lcom/truecaller/messaging/data/types/Message;)I
    .locals 2

    .line 1
    iget v0, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Le/a/a/k/u;->w(ILe/a/a/k/q;)Le/a/a/k/q;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 3
    invoke-interface {v0, p1}, Le/a/a/k/q;->c(Lcom/truecaller/messaging/data/types/Message;)I

    move-result p1

    return p1
.end method

.method public d(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;Z)Z
    .locals 4

    .line 1
    iget-wide v0, p2, Lcom/truecaller/messaging/data/types/Entity;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 3
    iget v0, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    invoke-virtual {p0, v0}, Le/a/a/k/u;->x(I)Le/a/a/k/q;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1, p2, p3}, Le/a/a/k/q;->d(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;Z)Z

    move-result p1

    return p1
.end method

.method public e(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Le/a/a/k/u;->w(ILe/a/a/k/q;)Le/a/a/k/q;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 3
    invoke-interface {v0, p1}, Le/a/a/k/q;->e(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)Z
    .locals 4

    .line 1
    iget-wide v0, p2, Lcom/truecaller/messaging/data/types/Entity;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 3
    iget v0, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    invoke-virtual {p0, v0}, Le/a/a/k/u;->x(I)Le/a/a/k/q;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1, p2}, Le/a/a/k/q;->f(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)Z

    move-result p1

    return p1
.end method

.method public g(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    const/16 v1, 0x9

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/k/u;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    .line 3
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1}, Lw3/b/a/b;-><init>()V

    .line 4
    iget-wide v1, v1, Lw3/b/a/e0/e;->a:J

    .line 5
    invoke-interface {v0, p1, v1, v2}, Le/a/a/g/m;->D(Lcom/truecaller/messaging/data/types/Message;J)Le/a/r2/x;

    move-result-object v0

    new-instance v1, Le/a/a/k/b;

    invoke-direct {v1, p0, p1}, Le/a/a/k/b;-><init>(Le/a/a/k/u;Lcom/truecaller/messaging/data/types/Message;)V

    .line 6
    invoke-virtual {v0, v1}, Le/a/r2/x;->f(Le/a/r2/d0;)Le/a/r2/a;

    const/4 p1, 0x1

    return p1
.end method

.method public h(Lcom/truecaller/messaging/data/types/Message;Z)Le/a/r2/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            "Z)",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/truecaller/data/entity/messaging/Participant;

    .line 1
    iget-object v1, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0, p2, v2}, Le/a/a/k/u;->b(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;ZZ)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public i()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Le/a/a/k/u;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/k/q;

    .line 3
    invoke-interface {v2}, Le/a/a/k/q;->A()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Le/a/a/k/q;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Le/a/a/k/q;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/a/k/u$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/a/k/u$b;-><init>(Le/a/a/k/u;Le/a/a/k/u$a;)V

    return-object v0
.end method

.method public j()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Le/a/a/k/q;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public k(IZLe/a/a/k/q;)Le/a/a/k/q;
    .locals 0

    packed-switch p1, :pswitch_data_0

    return-object p3

    .line 1
    :pswitch_0
    iget-object p1, p0, Le/a/a/k/u;->k:Le/a/a/k/q;

    return-object p1

    .line 2
    :pswitch_1
    iget-object p1, p0, Le/a/a/k/u;->o:Le/a/a/k/q;

    return-object p1

    .line 3
    :pswitch_2
    iget-object p1, p0, Le/a/a/k/u;->n:Le/a/a/k/q;

    return-object p1

    .line 4
    :pswitch_3
    iget-object p1, p0, Le/a/a/k/u;->j:Le/a/a/k/q;

    return-object p1

    .line 5
    :pswitch_4
    iget-object p1, p0, Le/a/a/k/u;->f:Le/a/a/k/q;

    return-object p1

    .line 6
    :pswitch_5
    iget-object p1, p0, Le/a/a/k/u;->i:Le/a/a/k/q;

    return-object p1

    :pswitch_6
    if-eqz p2, :cond_0

    .line 7
    iget-object p1, p0, Le/a/a/k/u;->h:Le/a/a/k/q;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/a/a/k/u;->m:Le/a/a/k/q;

    :goto_0
    return-object p1

    :pswitch_7
    if-eqz p2, :cond_1

    .line 8
    iget-object p1, p0, Le/a/a/k/u;->g:Le/a/a/k/q;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Le/a/a/k/u;->l:Le/a/a/k/q;

    :goto_1
    return-object p1

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

.method public l(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            "[",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->h()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Le/a/a/k/u;->n(Z[Lcom/truecaller/data/entity/messaging/Participant;Z)I

    move-result v1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v3, Le/a/a/k/u;->x:[I

    if-nez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 5
    :cond_0
    array-length v4, v3

    if-nez v4, :cond_1

    .line 6
    sget-object v2, Lw3/c/a/a/a/a;->d:[Ljava/lang/Integer;

    goto :goto_1

    .line 7
    :cond_1
    array-length v4, v3

    new-array v4, v4, [Ljava/lang/Integer;

    .line 8
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_2

    .line 9
    aget v5, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v2, v4

    .line 10
    :goto_1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Le/a/a/k/d;

    invoke-direct {v3, p0, v1, p1, p2}, Le/a/a/k/d;-><init>(Le/a/a/k/u;ILcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;)V

    .line 11
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance p1, Lcom/google/common/collect/Iterables$4;

    invoke-direct {p1, v2, v3}, Lcom/google/common/collect/Iterables$4;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)V

    .line 13
    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_3

    .line 14
    check-cast p1, Ljava/util/Collection;

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/google/common/collect/Iterables$4;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {v0, p1}, Ln3/g0/y;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    :goto_2
    return-object v0
.end method

.method public m(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;Lcom/truecaller/messaging/data/types/Conversation;)Lcom/truecaller/messaging/data/types/Draft;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->g()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/Message;->b:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v3, v1, [Ljava/lang/String;

    .line 3
    invoke-static {v0, v3}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 5
    invoke-interface {v0}, Lcom/truecaller/messaging/data/types/TransportInfo;->u()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    new-array v0, v1, [Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/truecaller/messaging/data/types/Draft$b;

    invoke-direct {v0}, Lcom/truecaller/messaging/data/types/Draft$b;-><init>()V

    .line 7
    iget-object v2, v0, Lcom/truecaller/messaging/data/types/Draft$b;->c:Ljava/util/Set;

    invoke-static {v2, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object p2

    .line 9
    iput-object p2, v0, Lcom/truecaller/messaging/data/types/Draft$b;->e:Ljava/lang/String;

    .line 10
    iput-object p3, v0, Lcom/truecaller/messaging/data/types/Draft$b;->b:Lcom/truecaller/messaging/data/types/Conversation;

    .line 11
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    array-length p3, p2

    :goto_2
    if-ge v1, p3, :cond_3

    aget-object v2, p2, v1

    .line 12
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Entity;->r()Z

    move-result v3

    if-nez v3, :cond_2

    .line 13
    check-cast v2, Lcom/truecaller/messaging/data/types/BinaryEntity;

    invoke-virtual {v0, v2}, Lcom/truecaller/messaging/data/types/Draft$b;->b(Lcom/truecaller/messaging/data/types/BinaryEntity;)Lcom/truecaller/messaging/data/types/Draft$b;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 14
    :cond_3
    iget-wide p2, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 15
    iput-wide p2, v0, Lcom/truecaller/messaging/data/types/Draft$b;->p:J

    .line 16
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    .line 17
    iput p2, v0, Lcom/truecaller/messaging/data/types/Draft$b;->q:I

    .line 18
    iget p1, p1, Lcom/truecaller/messaging/data/types/Message;->l:I

    .line 19
    iput p1, v0, Lcom/truecaller/messaging/data/types/Draft$b;->m:I

    .line 20
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object p1

    return-object p1
.end method

.method public n(Z[Lcom/truecaller/data/entity/messaging/Participant;Z)I
    .locals 4

    if-nez p3, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Le/a/a/k/u;->p([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p3, 0x1

    if-eqz p1, :cond_1

    return p3

    .line 2
    :cond_1
    array-length p1, p2

    const/4 v0, 0x0

    if-le p1, p3, :cond_5

    iget-object p1, p0, Le/a/a/k/u;->a:Le/a/a/i0;

    .line 3
    invoke-interface {p1}, Le/a/a/i0;->Q2()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {p0, v0}, Le/a/a/k/u;->x(I)Le/a/a/k/q;

    move-result-object p1

    .line 5
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    .line 6
    invoke-interface {p1, v3}, Le/a/a/k/q;->x(Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v3

    if-nez v3, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move p1, p3

    :goto_1
    if-nez p1, :cond_5

    :cond_4
    return p3

    :cond_5
    return v0
.end method

.method public o(Lcom/truecaller/messaging/data/types/Message;)Le/a/r2/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/Message;->S:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 4
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, v0}, Le/a/a/k/u;->x(I)Le/a/a/k/q;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/m0;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 6
    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Le/a/a/k/a/m0;->v(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    iget-object v0, p0, Le/a/a/k/u;->v:Le/a/a/k/a/n;

    invoke-interface {v0, p1}, Le/a/a/k/a/n;->b(Lcom/truecaller/messaging/data/types/Message;)Lcom/truecaller/messaging/data/types/Message;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    iget-object v0, p0, Le/a/a/k/u;->e:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/i;

    invoke-interface {v0, p1}, Le/a/a/k/i;->h(Lcom/truecaller/messaging/data/types/Message;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 11
    :cond_3
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public p([Lcom/truecaller/data/entity/messaging/Participant;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/k/u;->p:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v0, p1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/a/k/u;->i:Le/a/a/k/q;

    aget-object p1, p1, v2

    invoke-interface {v0, p1}, Le/a/a/k/q;->x(Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public q(Ljava/lang/String;Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;JJI)Le/a/r2/x;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/messaging/data/types/Message;",
            "[",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "JJI)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-wide v8, p4

    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    new-array v4, v3, [Ljava/lang/String;

    .line 1
    invoke-static {v1, v4}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isFalse(Z[Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/messaging/data/types/Message;->f()Z

    move-result v1

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/messaging/data/types/Message;->h()Z

    move-result v1

    const/4 v4, 0x2

    move/from16 v5, p8

    if-eq v5, v4, :cond_1

    move-object v5, p3

    goto :goto_1

    :cond_1
    move-object v5, p3

    move v2, v3

    :goto_1
    invoke-virtual {p0, v1, p3, v2}, Le/a/a/k/u;->n(Z[Lcom/truecaller/data/entity/messaging/Participant;Z)I

    move-result v10

    .line 4
    iget-object v1, v0, Le/a/a/k/u;->e:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/i;

    .line 5
    invoke-virtual {p2}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object v2

    .line 6
    iput v10, v2, Lcom/truecaller/messaging/data/types/Message$b;->l:I

    .line 7
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v2

    move-wide v3, p4

    move-object v5, p3

    move-wide/from16 v6, p6

    .line 8
    invoke-interface/range {v1 .. v7}, Le/a/a/k/i;->j(Lcom/truecaller/messaging/data/types/Message;J[Lcom/truecaller/data/entity/messaging/Participant;J)Le/a/r2/x;

    move-result-object v1

    .line 9
    iget-object v2, v0, Le/a/a/k/u;->s:Le/a/a/w0/a;

    move-object v3, p1

    invoke-interface {v2, p1, v8, v9, v10}, Le/a/a/w0/a;->h(Ljava/lang/String;JI)V

    return-object v1
.end method

.method public r(Ljava/lang/String;Z[Lcom/truecaller/data/entity/messaging/Participant;ZLe/a/a/k/e;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3, p4}, Le/a/a/k/u;->n(Z[Lcom/truecaller/data/entity/messaging/Participant;Z)I

    move-result p2

    .line 2
    invoke-virtual {p0, p2}, Le/a/a/k/u;->x(I)Le/a/a/k/q;

    move-result-object p2

    .line 3
    invoke-interface {p2, p1, p5}, Le/a/a/k/q;->z(Ljava/lang/String;Le/a/a/k/e;)Z

    move-result p1

    return p1
.end method

.method public t(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;)I
    .locals 7

    .line 1
    iget v0, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->h()Z

    move-result v3

    invoke-virtual {p0, v3, p2, v0}, Le/a/a/k/u;->n(Z[Lcom/truecaller/data/entity/messaging/Participant;Z)I

    move-result v0

    .line 3
    invoke-virtual {p0, v0}, Le/a/a/k/u;->x(I)Le/a/a/k/q;

    move-result-object v3

    .line 4
    array-length v4, p2

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, p2, v5

    .line 5
    invoke-interface {v3, v6}, Le/a/a/k/q;->x(Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 6
    :cond_2
    invoke-interface {v3}, Le/a/a/k/q;->getType()I

    move-result p2

    iget v4, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-eq p2, v4, :cond_3

    invoke-interface {v3, p1}, Le/a/a/k/q;->i(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v2

    :goto_3
    if-eqz v1, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x3

    return p1
.end method

.method public u(ILandroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Le/a/a/k/u;->w(ILe/a/a/k/q;)Le/a/a/k/q;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/a/a/k/u;->e:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/i;

    invoke-interface {v0, p1, p2, p3}, Le/a/a/k/i;->i(Le/a/a/k/q;Landroid/content/Intent;I)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->c()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public v(Lcom/truecaller/messaging/data/types/Message;Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            "Le/a/r2/j;",
            "Le/a/r2/d0<",
            "Lcom/truecaller/messaging/data/types/Draft;",
            ">;)",
            "Le/a/r2/a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->g()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 3
    invoke-interface {v0}, Lcom/truecaller/messaging/data/types/TransportInfo;->u()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object p1

    const/16 v0, 0x11

    .line 5
    iput v0, p1, Lcom/truecaller/messaging/data/types/Message$b;->g:I

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object p1

    .line 7
    iget-object v0, p0, Le/a/a/k/u;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    invoke-interface {v0, p1}, Le/a/a/g/m;->X(Lcom/truecaller/messaging/data/types/Message;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object p1

    return-object p1
.end method

.method public w(ILe/a/a/k/q;)Le/a/a/k/q;
    .locals 1

    .line 1
    iget-object p2, p0, Le/a/a/k/u;->c:Le/a/p5/g;

    iget-object v0, p0, Le/a/a/k/u;->r:Le/a/a/p;

    invoke-interface {v0}, Le/a/a/p;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Le/a/p5/g;->o(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Le/a/a/k/u;->k(IZLe/a/a/k/q;)Le/a/a/k/q;

    move-result-object p1

    return-object p1
.end method

.method public x(I)Le/a/a/k/q;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Le/a/a/k/u;->w(ILe/a/a/k/q;)Le/a/a/k/q;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported transport type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/k/u;->c:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->c()Z

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/a/k/u;->a:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->z3()Z

    move-result v1

    .line 3
    iget-object v2, p0, Le/a/a/k/u;->q:Le/a/p5/a0;

    const-string v3, "android.permission.READ_SMS"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v2

    .line 4
    iget-object v3, p0, Le/a/a/k/u;->a:Le/a/a/i0;

    invoke-interface {v3}, Le/a/a/i0;->G0()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v1, v0, :cond_0

    .line 5
    iget-object v1, p0, Le/a/a/k/u;->a:Le/a/a/i0;

    invoke-interface {v1, v0}, Le/a/a/i0;->P2(Z)V

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Le/a/a/k/u;->d:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/m;

    invoke-interface {v1}, Le/a/a/g/m;->e0()V

    move v1, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eq v2, v3, :cond_2

    .line 7
    iget-object v1, p0, Le/a/a/k/u;->a:Le/a/a/i0;

    invoke-interface {v1, v2}, Le/a/a/i0;->m4(Z)V

    .line 8
    iget-object v1, p0, Le/a/a/k/u;->t:Le/a/b0/o/a;

    const-string v3, "deleteBackupDuplicates"

    invoke-interface {v1, v3, v4}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v2, :cond_1

    .line 9
    iget-object v1, p0, Le/a/a/k/u;->b:Le/a/a/r0/a;

    invoke-interface {v1}, Le/a/a/r0/a;->a()V

    :cond_1
    move v1, v4

    .line 10
    :cond_2
    iget-object v3, p0, Le/a/a/k/u;->u:Le/a/a/c/o/h;

    invoke-interface {v3}, Le/a/a/c/o/h;->c()V

    if-nez v2, :cond_3

    .line 11
    invoke-virtual {p0}, Le/a/a/k/u;->C()V

    return-void

    :cond_3
    if-eqz v1, :cond_4

    .line 12
    iget-object v0, p0, Le/a/a/k/u;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    invoke-interface {v0, v4}, Le/a/a/g/m;->b(Z)V

    return-void

    .line 13
    :cond_4
    iget-object v1, p0, Le/a/a/k/u;->d:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/m;

    invoke-interface {v1, v0}, Le/a/a/g/m;->T(Z)V

    .line 14
    invoke-virtual {p0}, Le/a/a/k/u;->C()V

    return-void
.end method

.method public z(Ljava/lang/String;JJI)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJI)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/u;->e:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/i;

    invoke-interface {v0, p2, p3, p4, p5}, Le/a/a/k/i;->l(JJ)Le/a/r2/x;

    move-result-object p2

    .line 2
    iget-object p3, p0, Le/a/a/k/u;->s:Le/a/a/w0/a;

    invoke-interface {p3, p1, p4, p5, p6}, Le/a/a/w0/a;->d(Ljava/lang/String;JI)V

    return-object p2
.end method

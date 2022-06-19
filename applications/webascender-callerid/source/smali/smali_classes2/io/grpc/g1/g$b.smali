.class Lio/grpc/g1/g$b;
.super Lio/grpc/f1/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/g1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private final B:I

.field private final C:Ljava/lang/Object;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/g1/r/j/d;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ln/f;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:I

.field private J:I

.field private final K:Lio/grpc/g1/b;

.field private final L:Lio/grpc/g1/p;

.field private final M:Lio/grpc/g1/h;

.field private N:Z

.field private final O:Li/b/d;

.field final synthetic P:Lio/grpc/g1/g;


# direct methods
.method public constructor <init>(Lio/grpc/g1/g;ILio/grpc/f1/e2;Ljava/lang/Object;Lio/grpc/g1/b;Lio/grpc/g1/p;Lio/grpc/g1/h;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    .line 2
    invoke-static {p1}, Lio/grpc/g1/g;->B(Lio/grpc/g1/g;)Lio/grpc/f1/k2;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lio/grpc/f1/r0;-><init>(ILio/grpc/f1/e2;Lio/grpc/f1/k2;)V

    .line 3
    new-instance p1, Ln/f;

    invoke-direct {p1}, Ln/f;-><init>()V

    iput-object p1, p0, Lio/grpc/g1/g$b;->E:Ln/f;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lio/grpc/g1/g$b;->F:Z

    .line 5
    iput-boolean p1, p0, Lio/grpc/g1/g$b;->G:Z

    .line 6
    iput-boolean p1, p0, Lio/grpc/g1/g$b;->H:Z

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lio/grpc/g1/g$b;->N:Z

    const-string p1, "lock"

    .line 8
    invoke-static {p4, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lio/grpc/g1/g$b;->C:Ljava/lang/Object;

    .line 9
    iput-object p5, p0, Lio/grpc/g1/g$b;->K:Lio/grpc/g1/b;

    .line 10
    iput-object p6, p0, Lio/grpc/g1/g$b;->L:Lio/grpc/g1/p;

    .line 11
    iput-object p7, p0, Lio/grpc/g1/g$b;->M:Lio/grpc/g1/h;

    .line 12
    iput p8, p0, Lio/grpc/g1/g$b;->I:I

    .line 13
    iput p8, p0, Lio/grpc/g1/g$b;->J:I

    .line 14
    iput p8, p0, Lio/grpc/g1/g$b;->B:I

    .line 15
    invoke-static {p9}, Li/b/c;->a(Ljava/lang/String;)Li/b/d;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/g1/g$b;->O:Li/b/d;

    return-void
.end method

.method static synthetic S(Lio/grpc/g1/g$b;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/g1/g$b;->C:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic T(Lio/grpc/g1/g$b;Lio/grpc/q0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/g1/g$b;->a0(Lio/grpc/q0;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic U(Lio/grpc/g1/g$b;Ln/f;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/g1/g$b;->Y(Ln/f;ZZ)V

    return-void
.end method

.method static synthetic V(Lio/grpc/g1/g$b;Lio/grpc/b1;ZLio/grpc/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/g1/g$b;->W(Lio/grpc/b1;ZLio/grpc/q0;)V

    return-void
.end method

.method private W(Lio/grpc/b1;ZLio/grpc/q0;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lio/grpc/g1/g$b;->H:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/grpc/g1/g$b;->H:Z

    .line 3
    iget-boolean v1, p0, Lio/grpc/g1/g$b;->N:Z

    if-eqz v1, :cond_2

    .line 4
    iget-object p2, p0, Lio/grpc/g1/g$b;->M:Lio/grpc/g1/h;

    iget-object v1, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    invoke-virtual {p2, v1}, Lio/grpc/g1/h;->i0(Lio/grpc/g1/g;)V

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lio/grpc/g1/g$b;->D:Ljava/util/List;

    .line 6
    iget-object p2, p0, Lio/grpc/g1/g$b;->E:Ln/f;

    invoke-virtual {p2}, Ln/f;->a()V

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lio/grpc/g1/g$b;->N:Z

    if-eqz p3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p3, Lio/grpc/q0;

    invoke-direct {p3}, Lio/grpc/q0;-><init>()V

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lio/grpc/f1/a$c;->J(Lio/grpc/b1;ZLio/grpc/q0;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, p0, Lio/grpc/g1/g$b;->M:Lio/grpc/g1/h;

    iget-object v0, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    .line 10
    invoke-virtual {v0}, Lio/grpc/g1/g;->O()I

    move-result v2

    sget-object v4, Lio/grpc/f1/r$a;->PROCESSED:Lio/grpc/f1/r$a;

    sget-object v6, Lio/grpc/g1/r/j/a;->CANCEL:Lio/grpc/g1/r/j/a;

    move-object v3, p1

    move v5, p2

    move-object v7, p3

    .line 11
    invoke-virtual/range {v1 .. v7}, Lio/grpc/g1/h;->T(ILio/grpc/b1;Lio/grpc/f1/r$a;ZLio/grpc/g1/r/j/a;Lio/grpc/q0;)V

    :goto_1
    return-void
.end method

.method private X()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/a$c;->C()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lio/grpc/g1/g$b;->M:Lio/grpc/g1/h;

    iget-object v0, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    invoke-virtual {v0}, Lio/grpc/g1/g;->O()I

    move-result v2

    const/4 v3, 0x0

    sget-object v4, Lio/grpc/f1/r$a;->PROCESSED:Lio/grpc/f1/r$a;

    const/4 v5, 0x0

    sget-object v6, Lio/grpc/g1/r/j/a;->CANCEL:Lio/grpc/g1/r/j/a;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lio/grpc/g1/h;->T(ILio/grpc/b1;Lio/grpc/f1/r$a;ZLio/grpc/g1/r/j/a;Lio/grpc/q0;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v8, p0, Lio/grpc/g1/g$b;->M:Lio/grpc/g1/h;

    iget-object v0, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    invoke-virtual {v0}, Lio/grpc/g1/g;->O()I

    move-result v9

    const/4 v10, 0x0

    sget-object v11, Lio/grpc/f1/r$a;->PROCESSED:Lio/grpc/f1/r$a;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Lio/grpc/g1/h;->T(ILio/grpc/b1;Lio/grpc/f1/r$a;ZLio/grpc/g1/r/j/a;Lio/grpc/q0;)V

    :goto_0
    return-void
.end method

.method private Y(Ln/f;ZZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/grpc/g1/g$b;->H:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lio/grpc/g1/g$b;->N:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ln/f;->p0()J

    move-result-wide v0

    long-to-int v1, v0

    .line 4
    iget-object v0, p0, Lio/grpc/g1/g$b;->E:Ln/f;

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Ln/f;->B0(Ln/f;J)V

    .line 5
    iget-boolean p1, p0, Lio/grpc/g1/g$b;->F:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lio/grpc/g1/g$b;->F:Z

    .line 6
    iget-boolean p1, p0, Lio/grpc/g1/g$b;->G:Z

    or-int/2addr p1, p3

    iput-boolean p1, p0, Lio/grpc/g1/g$b;->G:Z

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    invoke-virtual {v0}, Lio/grpc/g1/g;->O()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "streamId should be set"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lio/grpc/g1/g$b;->L:Lio/grpc/g1/p;

    iget-object v1, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    invoke-virtual {v1}, Lio/grpc/g1/g;->O()I

    move-result v1

    invoke-virtual {v0, p2, v1, p1, p3}, Lio/grpc/g1/p;->c(ZILn/f;Z)V

    :goto_1
    return-void
.end method

.method private a0(Lio/grpc/q0;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    .line 2
    invoke-static {v0}, Lio/grpc/g1/g;->G(Lio/grpc/g1/g;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    .line 3
    invoke-static {v0}, Lio/grpc/g1/g;->H(Lio/grpc/g1/g;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    .line 4
    invoke-static {v0}, Lio/grpc/g1/g;->A(Lio/grpc/g1/g;)Z

    move-result v5

    iget-object v0, p0, Lio/grpc/g1/g$b;->M:Lio/grpc/g1/h;

    .line 5
    invoke-virtual {v0}, Lio/grpc/g1/h;->c0()Z

    move-result v6

    move-object v1, p1

    move-object v2, p2

    .line 6
    invoke-static/range {v1 .. v6}, Lio/grpc/g1/c;->a(Lio/grpc/q0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/g1/g$b;->D:Ljava/util/List;

    .line 7
    iget-object p1, p0, Lio/grpc/g1/g$b;->M:Lio/grpc/g1/h;

    iget-object p2, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    invoke-virtual {p1, p2}, Lio/grpc/g1/h;->p0(Lio/grpc/g1/g;)V

    return-void
.end method


# virtual methods
.method protected L(Lio/grpc/b1;ZLio/grpc/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/g1/g$b;->W(Lio/grpc/b1;ZLio/grpc/q0;)V

    return-void
.end method

.method public Z(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    invoke-static {v0}, Lio/grpc/g1/g;->D(Lio/grpc/g1/g;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "the stream has been started with id %s"

    invoke-static {v0, v2, p1}, Lcom/google/common/base/m;->w(ZLjava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    invoke-static {v0, p1}, Lio/grpc/g1/g;->E(Lio/grpc/g1/g;I)I

    .line 3
    iget-object p1, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    invoke-static {p1}, Lio/grpc/g1/g;->I(Lio/grpc/g1/g;)Lio/grpc/g1/g$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/g1/g$b;->o()V

    .line 4
    iget-boolean p1, p0, Lio/grpc/g1/g$b;->N:Z

    if-eqz p1, :cond_2

    .line 5
    iget-object v2, p0, Lio/grpc/g1/g$b;->K:Lio/grpc/g1/b;

    iget-object p1, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    invoke-static {p1}, Lio/grpc/g1/g;->A(Lio/grpc/g1/g;)Z

    move-result v3

    const/4 v4, 0x0

    iget-object p1, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    invoke-static {p1}, Lio/grpc/g1/g;->D(Lio/grpc/g1/g;)I

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Lio/grpc/g1/g$b;->D:Ljava/util/List;

    invoke-virtual/range {v2 .. v7}, Lio/grpc/g1/b;->m1(ZZIILjava/util/List;)V

    .line 6
    iget-object p1, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    invoke-static {p1}, Lio/grpc/g1/g;->F(Lio/grpc/g1/g;)Lio/grpc/f1/e2;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/f1/e2;->c()V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lio/grpc/g1/g$b;->D:Ljava/util/List;

    .line 8
    iget-object p1, p0, Lio/grpc/g1/g$b;->E:Ln/f;

    invoke-virtual {p1}, Ln/f;->p0()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 9
    iget-object p1, p0, Lio/grpc/g1/g$b;->L:Lio/grpc/g1/p;

    iget-boolean v0, p0, Lio/grpc/g1/g$b;->F:Z

    iget-object v2, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    invoke-static {v2}, Lio/grpc/g1/g;->D(Lio/grpc/g1/g;)I

    move-result v2

    iget-object v3, p0, Lio/grpc/g1/g$b;->E:Ln/f;

    iget-boolean v4, p0, Lio/grpc/g1/g$b;->G:Z

    invoke-virtual {p1, v0, v2, v3, v4}, Lio/grpc/g1/p;->c(ZILn/f;Z)V

    .line 10
    :cond_1
    iput-boolean v1, p0, Lio/grpc/g1/g$b;->N:Z

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/g1/g$b;->C:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method b0()Li/b/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/g1/g$b;->O:Li/b/d;

    return-object v0
.end method

.method public c0(Ln/f;Z)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ln/f;->p0()J

    move-result-wide v0

    long-to-int v1, v0

    .line 2
    iget v0, p0, Lio/grpc/g1/g$b;->I:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/grpc/g1/g$b;->I:I

    if-gez v0, :cond_0

    .line 3
    iget-object p1, p0, Lio/grpc/g1/g$b;->K:Lio/grpc/g1/b;

    iget-object p2, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    invoke-virtual {p2}, Lio/grpc/g1/g;->O()I

    move-result p2

    sget-object v0, Lio/grpc/g1/r/j/a;->FLOW_CONTROL_ERROR:Lio/grpc/g1/r/j/a;

    invoke-virtual {p1, p2, v0}, Lio/grpc/g1/b;->p(ILio/grpc/g1/r/j/a;)V

    .line 4
    iget-object v1, p0, Lio/grpc/g1/g$b;->M:Lio/grpc/g1/h;

    iget-object p1, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    .line 5
    invoke-virtual {p1}, Lio/grpc/g1/g;->O()I

    move-result v2

    sget-object p1, Lio/grpc/b1;->m:Lio/grpc/b1;

    const-string p2, "Received data size exceeded our receiving window size"

    .line 6
    invoke-virtual {p1, p2}, Lio/grpc/b1;->r(Ljava/lang/String;)Lio/grpc/b1;

    move-result-object v3

    sget-object v4, Lio/grpc/f1/r$a;->PROCESSED:Lio/grpc/f1/r$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 7
    invoke-virtual/range {v1 .. v7}, Lio/grpc/g1/h;->T(ILio/grpc/b1;Lio/grpc/f1/r$a;ZLio/grpc/g1/r/j/a;Lio/grpc/q0;)V

    return-void

    .line 8
    :cond_0
    new-instance v0, Lio/grpc/g1/k;

    invoke-direct {v0, p1}, Lio/grpc/g1/k;-><init>(Ln/f;)V

    invoke-super {p0, v0, p2}, Lio/grpc/f1/r0;->O(Lio/grpc/f1/s1;Z)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/g1/g$b;->X()V

    .line 2
    invoke-super {p0, p1}, Lio/grpc/f1/r0;->d(Z)V

    return-void
.end method

.method public d0(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/g1/r/j/d;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p1}, Lio/grpc/g1/q;->c(Ljava/util/List;)Lio/grpc/q0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/f1/r0;->Q(Lio/grpc/q0;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lio/grpc/g1/q;->a(Ljava/util/List;)Lio/grpc/q0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/f1/r0;->P(Lio/grpc/q0;)V

    :goto_0
    return-void
.end method

.method public g(I)V
    .locals 4

    .line 1
    iget v0, p0, Lio/grpc/g1/g$b;->J:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/grpc/g1/g$b;->J:I

    int-to-float p1, v0

    .line 2
    iget v1, p0, Lio/grpc/g1/g$b;->B:I

    int-to-float v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    sub-int/2addr v1, v0

    .line 3
    iget p1, p0, Lio/grpc/g1/g$b;->I:I

    add-int/2addr p1, v1

    iput p1, p0, Lio/grpc/g1/g$b;->I:I

    add-int/2addr v0, v1

    .line 4
    iput v0, p0, Lio/grpc/g1/g$b;->J:I

    .line 5
    iget-object p1, p0, Lio/grpc/g1/g$b;->K:Lio/grpc/g1/b;

    iget-object v0, p0, Lio/grpc/g1/g$b;->P:Lio/grpc/g1/g;

    invoke-virtual {v0}, Lio/grpc/g1/g;->O()I

    move-result v0

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lio/grpc/g1/b;->d(IJ)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lio/grpc/b1;->l(Ljava/lang/Throwable;)Lio/grpc/b1;

    move-result-object p1

    new-instance v0, Lio/grpc/q0;

    invoke-direct {v0}, Lio/grpc/q0;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lio/grpc/g1/g$b;->L(Lio/grpc/b1;ZLio/grpc/q0;)V

    return-void
.end method

.method protected o()V
    .locals 1

    .line 1
    invoke-super {p0}, Lio/grpc/f1/d$a;->o()V

    .line 2
    invoke-virtual {p0}, Lio/grpc/f1/d$a;->i()Lio/grpc/f1/k2;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/f1/k2;->c()V

    return-void
.end method

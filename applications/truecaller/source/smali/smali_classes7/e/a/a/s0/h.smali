.class public Le/a/a/s0/h;
.super Le/a/a/s0/f;
.source "SourceFile"


# instance fields
.field public final b:Le/a/a/r0/a;

.field public final c:Le/a/p5/g;

.field public final d:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/q2/i0;

.field public final f:Le/a/a/i0;

.field public final g:Ljava/lang/String;

.field public final h:Le/a/p5/a0;

.field public final i:Le/a/a/p;

.field public final j:Le/a/a/s0/d;

.field public k:Z

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/a/r0/a;Le/a/p5/g;Ljava/lang/String;Le/a/r2/f;Le/a/a/i0;Le/a/p5/a0;Le/a/a/p;Le/a/a/s0/d;Le/a/q2/i0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/r0/a;",
            "Le/a/p5/g;",
            "Ljava/lang/String;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/a/i0;",
            "Le/a/p5/a0;",
            "Le/a/a/p;",
            "Le/a/a/s0/d;",
            "Le/a/q2/i0;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/a/s0/f;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/a/a/s0/h;->k:Z

    .line 3
    iput-object p1, p0, Le/a/a/s0/h;->b:Le/a/a/r0/a;

    .line 4
    iput-object p2, p0, Le/a/a/s0/h;->c:Le/a/p5/g;

    .line 5
    iput-object p3, p0, Le/a/a/s0/h;->g:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Le/a/a/s0/h;->d:Le/a/r2/f;

    .line 7
    iput-object p5, p0, Le/a/a/s0/h;->f:Le/a/a/i0;

    .line 8
    iput-object p6, p0, Le/a/a/s0/h;->h:Le/a/p5/a0;

    .line 9
    iput-object p7, p0, Le/a/a/s0/h;->i:Le/a/a/p;

    .line 10
    iput-object p8, p0, Le/a/a/s0/h;->j:Le/a/a/s0/d;

    .line 11
    iput-object p9, p0, Le/a/a/s0/h;->e:Le/a/q2/i0;

    .line 12
    iput-object p10, p0, Le/a/a/s0/h;->l:Ljava/lang/String;

    .line 13
    iput-object p11, p0, Le/a/a/s0/h;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Hj()V
    .locals 0

    return-void
.end method

.method public Ij()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/s0/i;

    invoke-interface {v0}, Le/a/a/s0/i;->b2()V

    return-void
.end method

.method public Jj()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/a/s0/h;->Oj()V

    return-void
.end method

.method public Kj()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Le/a/a/s0/i;

    invoke-interface {v0}, Le/a/a/s0/i;->I8()V

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/s0/i;

    invoke-interface {v0}, Le/a/a/s0/i;->b2()V

    :cond_0
    return-void
.end method

.method public Lj([Ljava/lang/String;[I)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 3
    aget-object v2, p1, v1

    const-string v3, "android.permission.SEND_SMS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    aget p1, p2, v1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    move v0, p1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0}, Le/a/a/s0/h;->Nj()V

    goto :goto_2

    .line 6
    :cond_3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/s0/i;

    invoke-interface {p1}, Le/a/a/s0/i;->b2()V

    :goto_2
    return-void
.end method

.method public Mj(Le/a/a/s0/i;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/a/a/s0/h;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/a/s0/h;->Oj()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v0}, Le/a/a/s0/i;->d2(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public Nj()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/a/s0/h;->k:Z

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/a/s0/h;->c:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->q()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Le/a/a/s0/h;->i:Le/a/a/p;

    invoke-interface {v0}, Le/a/a/p;->a()V

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/s0/i;

    invoke-interface {v0}, Le/a/a/s0/i;->z8()V

    .line 6
    iget-object v0, p0, Le/a/a/s0/h;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "default_sms_promo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Le/a/a/s0/h;->e:Le/a/q2/i0;

    const-string v1, "Dsan5-ChangedToDefault"

    invoke-interface {v0, v1}, Le/a/q2/i0;->l(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final Oj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/s0/h;->c:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Le/a/a/s0/h;->h:Le/a/p5/a0;

    const-string v1, "android.permission.SEND_SMS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Le/a/a/s0/h;->k:Z

    .line 5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/s0/i;

    invoke-interface {v0}, Le/a/a/s0/i;->z8()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/s0/i;

    invoke-interface {v0, v1}, Le/a/a/s0/i;->S9(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Le/a/a/s0/h;->c:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->q()I

    move-result v0

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/s0/i;

    invoke-interface {v0}, Le/a/a/s0/i;->b9()V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/s0/i;

    invoke-interface {v0}, Le/a/a/s0/i;->w2()V

    :goto_0
    return-void
.end method

.method public bridge synthetic Y0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Le/a/a/s0/i;

    invoke-virtual {p0, p1}, Le/a/a/s0/h;->Mj(Le/a/a/s0/i;)V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/a/a/s0/h;->j:Le/a/a/s0/d;

    iget-boolean v1, p0, Le/a/a/s0/h;->k:Z

    invoke-interface {v0, v1}, Le/a/a/s0/d;->b(Z)V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public q(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 2
    iget-object p1, p0, Le/a/a/s0/h;->c:Le/a/p5/g;

    invoke-interface {p1}, Le/a/p5/g;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Le/a/a/s0/h;->c:Le/a/p5/g;

    invoke-interface {p1}, Le/a/p5/g;->E()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/a/a/s0/h;->d:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    iget-object v1, p0, Le/a/a/s0/h;->g:Ljava/lang/String;

    .line 5
    invoke-static {}, Le/a/l5/a/z1;->a()Le/a/l5/a/z1$b;

    move-result-object v2

    const-string v3, "defaultMessagingApp"

    .line 6
    invoke-virtual {v2, v3}, Le/a/l5/a/z1$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/z1$b;

    .line 7
    invoke-virtual {v2, p1}, Le/a/l5/a/z1$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/z1$b;

    .line 8
    invoke-virtual {v2, v1}, Le/a/l5/a/z1$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/z1$b;

    .line 9
    invoke-virtual {v2}, Le/a/l5/a/z1$b;->a()Le/a/l5/a/z1;

    move-result-object p1

    .line 10
    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V
    :try_end_0
    .catch Lorg/apache/avro/AvroRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 12
    :goto_0
    iget-object p1, p0, Le/a/a/s0/h;->f:Le/a/a/i0;

    new-instance v0, Lw3/b/a/b;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    invoke-interface {p1, v0}, Le/a/a/i0;->B3(Lw3/b/a/b;)V

    .line 13
    iget-object p1, p0, Le/a/a/s0/h;->f:Le/a/a/i0;

    .line 14
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    .line 15
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 16
    invoke-interface {p1, v0, v1}, Le/a/a/i0;->I1(J)V

    .line 17
    iget-object p1, p0, Le/a/a/s0/h;->b:Le/a/a/r0/a;

    invoke-interface {p1}, Le/a/a/r0/a;->a()V

    .line 18
    iget-object p1, p0, Le/a/a/s0/h;->h:Le/a/p5/a0;

    const-string v0, "android.permission.SEND_SMS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p0}, Le/a/a/s0/h;->Nj()V

    goto :goto_1

    .line 20
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/s0/i;

    invoke-interface {p1, v0}, Le/a/a/s0/i;->S9(Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/s0/i;

    invoke-interface {p1}, Le/a/a/s0/i;->b2()V

    .line 22
    iget-object p1, p0, Le/a/a/s0/h;->c:Le/a/p5/g;

    invoke-interface {p1}, Le/a/p5/g;->q()I

    move-result p1

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_3

    .line 23
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/s0/i;

    invoke-interface {p1}, Le/a/a/s0/i;->n2()V

    :cond_3
    :goto_1
    return-void
.end method

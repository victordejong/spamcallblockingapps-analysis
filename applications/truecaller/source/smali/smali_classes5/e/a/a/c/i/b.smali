.class public final Le/a/a/c/i/b;
.super Le/a/a/c/i/g;
.source "SourceFile"


# instance fields
.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public final f:Ls1/g;

.field public final g:Ls1/g;

.field public final h:Le/a/a/c/i/d;

.field public final i:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Le/a/p5/h0;

.field public final k:Le/a/o5/b0;

.field public final l:Le/a/a/c/j6;

.field public final m:Z


# direct methods
.method public constructor <init>(Le/a/a/c/i/d;Le/a/r2/f;Le/a/p5/h0;Le/a/o5/b0;Le/a/a/c/j6;Z)V
    .locals 1
    .param p6    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "IsFlash"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/c/i/d;",
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;",
            "Le/a/p5/h0;",
            "Le/a/o5/b0;",
            "Le/a/a/c/j6;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "dataSource"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callHistoryManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "historyMessagesResourceProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/a/c/i/g;-><init>()V

    iput-object p1, p0, Le/a/a/c/i/b;->h:Le/a/a/c/i/d;

    iput-object p2, p0, Le/a/a/c/i/b;->i:Le/a/r2/f;

    iput-object p3, p0, Le/a/a/c/i/b;->j:Le/a/p5/h0;

    iput-object p4, p0, Le/a/a/c/i/b;->k:Le/a/o5/b0;

    iput-object p5, p0, Le/a/a/c/i/b;->l:Le/a/a/c/j6;

    iput-boolean p6, p0, Le/a/a/c/i/b;->m:Z

    .line 2
    new-instance p1, Le/a/a/c/i/b$a;

    const/4 p2, 0x5

    invoke-direct {p1, p2, p0}, Le/a/a/c/i/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/i/b;->b:Ls1/g;

    .line 3
    new-instance p1, Le/a/a/c/i/b$a;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p0}, Le/a/a/c/i/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/i/b;->c:Ls1/g;

    .line 4
    new-instance p1, Le/a/a/c/i/b$a;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p0}, Le/a/a/c/i/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/i/b;->d:Ls1/g;

    .line 5
    new-instance p1, Le/a/a/c/i/b$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Le/a/a/c/i/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/i/b;->e:Ls1/g;

    .line 6
    new-instance p1, Le/a/a/c/i/b$a;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0}, Le/a/a/c/i/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/i/b;->f:Ls1/g;

    .line 7
    new-instance p1, Le/a/a/c/i/b$a;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Le/a/a/c/i/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/i/b;->g:Ls1/g;

    return-void
.end method


# virtual methods
.method public final A()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Le/a/a/c/i/b;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 9

    .line 1
    check-cast p1, Le/a/a/c/i/i;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/c/i/b;->h:Le/a/a/c/i/d;

    invoke-interface {v0, p2}, Le/a/a/c/i/d;->getItem(I)Le/a/a/c/i/f;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 4
    iget-boolean v0, p2, Le/a/a/c/i/f;->g:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Le/a/a/c/i/b;->j:Le/a/p5/h0;

    const v5, 0x7f120b2e

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v0, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "resourceProvider.getString(R.string.flash_text)"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6
    :cond_0
    iget v0, p2, Le/a/a/c/i/f;->c:I

    const v5, 0x7f1210ca

    if-eq v0, v1, :cond_5

    if-eq v0, v3, :cond_2

    .line 7
    iget-boolean v0, p2, Le/a/a/c/i/f;->f:Z

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Le/a/a/c/i/b;->j:Le/a/p5/h0;

    const v6, 0x7f1201eb

    new-array v7, v4, [Ljava/lang/Object;

    new-array v8, v2, [Ljava/lang/Object;

    invoke-interface {v0, v5, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-interface {v0, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Le/a/a/c/i/b;->j:Le/a/p5/h0;

    const v5, 0x7f1201ec

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v0, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_2
    iget-boolean v0, p2, Le/a/a/c/i/f;->f:Z

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Le/a/a/c/i/b;->j:Le/a/p5/h0;

    const v6, 0x7f1201ed

    new-array v7, v4, [Ljava/lang/Object;

    new-array v8, v2, [Ljava/lang/Object;

    invoke-interface {v0, v5, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-interface {v0, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_3
    iget v0, p2, Le/a/a/c/i/f;->i:I

    if-eq v0, v4, :cond_4

    .line 13
    iget-object v0, p0, Le/a/a/c/i/b;->j:Le/a/p5/h0;

    const v5, 0x7f1201ee

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v0, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_4
    iget-object v0, p0, Le/a/a/c/i/b;->j:Le/a/p5/h0;

    const v5, 0x7f1201ac

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v0, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_5
    iget-boolean v0, p2, Le/a/a/c/i/f;->f:Z

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Le/a/a/c/i/b;->j:Le/a/p5/h0;

    const v6, 0x7f1201ef

    new-array v7, v4, [Ljava/lang/Object;

    new-array v8, v2, [Ljava/lang/Object;

    invoke-interface {v0, v5, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-interface {v0, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 17
    :cond_6
    iget-object v0, p0, Le/a/a/c/i/b;->j:Le/a/p5/h0;

    const v5, 0x7f1201f0

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v0, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v5, "when (type) {\n        Hi\u2026mingCall)\n        }\n    }"

    .line 18
    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    :goto_1
    invoke-interface {p1, v0}, Le/a/a/c/i/i;->V1(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Le/a/a/c/i/b;->k:Le/a/o5/b0;

    .line 21
    iget-wide v5, p2, Le/a/a/c/i/f;->d:J

    .line 22
    invoke-interface {v0, v5, v6}, Le/a/o5/b0;->l(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/a/c/i/i;->o0(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Le/a/a/c/i/b;->k:Le/a/o5/b0;

    .line 24
    iget-wide v5, p2, Le/a/a/c/i/f;->e:J

    .line 25
    invoke-interface {v0, v5, v6}, Le/a/o5/b0;->i(J)Ljava/lang/String;

    move-result-object v0

    .line 26
    iget-boolean v5, p2, Le/a/a/c/i/f;->g:Z

    if-nez v5, :cond_7

    .line 27
    iget v5, p2, Le/a/a/c/i/f;->c:I

    if-eq v5, v3, :cond_7

    move v2, v4

    :cond_7
    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    const-string v0, "---"

    .line 28
    :goto_3
    invoke-interface {p1, v0}, Le/a/a/c/i/i;->W(Ljava/lang/String;)V

    .line 29
    iget-boolean v0, p2, Le/a/a/c/i/f;->g:Z

    if-eqz v0, :cond_a

    .line 30
    iget-object v0, p0, Le/a/a/c/i/b;->g:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    const-string v1, "flashIcon"

    .line 31
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 32
    :cond_a
    iget v0, p2, Le/a/a/c/i/f;->c:I

    if-eq v0, v1, :cond_f

    if-eq v0, v3, :cond_c

    .line 33
    iget-boolean v0, p2, Le/a/a/c/i/f;->f:Z

    if-eqz v0, :cond_b

    .line 34
    invoke-virtual {p0}, Le/a/a/c/i/b;->A()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4

    .line 35
    :cond_b
    iget-object v0, p0, Le/a/a/c/i/b;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 36
    :cond_c
    iget-boolean v0, p2, Le/a/a/c/i/f;->f:Z

    if-eqz v0, :cond_d

    .line 37
    invoke-virtual {p0}, Le/a/a/c/i/b;->A()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4

    .line 38
    :cond_d
    iget v0, p2, Le/a/a/c/i/f;->i:I

    if-eq v0, v4, :cond_e

    .line 39
    iget-object v0, p0, Le/a/a/c/i/b;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 40
    :cond_e
    iget-object v0, p0, Le/a/a/c/i/b;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 41
    :cond_f
    iget-boolean v0, p2, Le/a/a/c/i/f;->f:Z

    if-eqz v0, :cond_10

    .line 42
    invoke-virtual {p0}, Le/a/a/c/i/b;->A()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4

    .line 43
    :cond_10
    iget-object v0, p0, Le/a/a/c/i/b;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :goto_4
    const-string v1, "when (type) {\n        Hi\u2026se incomingCallIcon\n    }"

    .line 44
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    :goto_5
    invoke-interface {p1, v0}, Le/a/a/c/i/i;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v0, p0, Le/a/a/c/i/b;->l:Le/a/a/c/j6;

    invoke-interface {v0, p2}, Le/a/a/c/j6;->i(Le/a/a/c/i/f;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/a/c/i/i;->O3(Landroid/graphics/drawable/Drawable;)V

    .line 47
    new-instance p2, Le/a/a/c/i/h;

    invoke-direct {p2, p0}, Le/a/a/c/i/h;-><init>(Le/a/a/c/i/b;)V

    invoke-interface {p1, p2}, Le/a/a/c/i/i;->v0(Ls1/z/b/l;)V

    :cond_11
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/i/b;->h:Le/a/a/c/i/d;

    invoke-interface {v0}, Le/a/a/c/i/d;->b()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/i/b;->h:Le/a/a/c/i/d;

    invoke-interface {v0, p1}, Le/a/a/c/i/d;->getItem(I)Le/a/a/c/i/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-wide v0, p1, Le/a/a/c/i/f;->a:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.class public final Le/a/s/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/s/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/s/i$b;
    }
.end annotation


# static fields
.field public static final synthetic q:I


# instance fields
.field public final d:Le/a/s/e$a;

.field public final e:Le/a/s/i;

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/s/r/d;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/s/r/c;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/s/r/b;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/s/r/a;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/s/o/e;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/s/s/b;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/s/s/a;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/s/s/j;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/s/s/i;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/s/s/f;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/s/s/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/s/e$a;Le/a/s/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/s/i;->e:Le/a/s/i;

    .line 3
    iput-object p1, p0, Le/a/s/i;->d:Le/a/s/e$a;

    .line 4
    new-instance p1, Le/a/s/i$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/s/i$b;-><init>(Le/a/s/i;I)V

    iput-object p1, p0, Le/a/s/i;->f:Ljavax/inject/Provider;

    .line 5
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/s/i;->g:Ljavax/inject/Provider;

    .line 6
    new-instance p1, Le/a/s/i$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/s/i$b;-><init>(Le/a/s/i;I)V

    iput-object p1, p0, Le/a/s/i;->h:Ljavax/inject/Provider;

    .line 7
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/s/i;->i:Ljavax/inject/Provider;

    .line 8
    new-instance p1, Le/a/s/i$b;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Le/a/s/i$b;-><init>(Le/a/s/i;I)V

    iput-object p1, p0, Le/a/s/i;->j:Ljavax/inject/Provider;

    .line 9
    new-instance p1, Le/a/s/i$b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Le/a/s/i$b;-><init>(Le/a/s/i;I)V

    iput-object p1, p0, Le/a/s/i;->k:Ljavax/inject/Provider;

    .line 10
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/s/i;->l:Ljavax/inject/Provider;

    .line 11
    new-instance p1, Le/a/s/i$b;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Le/a/s/i$b;-><init>(Le/a/s/i;I)V

    iput-object p1, p0, Le/a/s/i;->m:Ljavax/inject/Provider;

    .line 12
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/s/i;->n:Ljavax/inject/Provider;

    .line 13
    new-instance p1, Le/a/s/i$b;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Le/a/s/i$b;-><init>(Le/a/s/i;I)V

    iput-object p1, p0, Le/a/s/i;->o:Ljavax/inject/Provider;

    .line 14
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/s/i;->p:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public A()Le/a/s/s/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s/i;->l:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s/s/a;

    return-object v0
.end method

.method public D()Ln3/m0/y;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->D()Ln3/m0/y;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public K1()Le/a/s/r/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s/i;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s/r/c;

    return-object v0
.end method

.method public L()Le/a/b0/e/l;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->L()Le/a/b0/e/l;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public O2()Le/a/o4/g;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->O2()Le/a/o4/g;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public T()Le/a/h0/m;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->T()Le/a/h0/m;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public T0()Le/a/s/o/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/s/i;->i()Le/a/s/o/e;

    move-result-object v0

    return-object v0
.end method

.method public Y0()Le/a/s/s/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s/i;->n:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s/s/i;

    return-object v0
.end method

.method public Z()Landroid/content/ContentResolver;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->Z()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public a()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->a()Ls1/w/f;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public a0()Le/a/b0/q/e;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->a0()Le/a/b0/q/e;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public a4()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->a4()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public b()Le/a/u3/g;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->b()Le/a/u3/g;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public c()Le/a/p5/a0;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->c()Le/a/p5/a0;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public d()Le/a/s/p/b;
    .locals 8

    .line 1
    new-instance v7, Le/a/s/p/c;

    iget-object v0, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->Z()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v2}, Le/a/s/e$a;->b()Le/a/u3/g;

    move-result-object v2

    .line 4
    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Le/a/s/i;->j()Le/a/s/s/d;

    move-result-object v3

    iget-object v4, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v4}, Le/a/s/e$a;->c()Le/a/p5/a0;

    move-result-object v4

    .line 6
    invoke-static {v4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Le/a/s/i;->i()Le/a/s/o/e;

    move-result-object v5

    iget-object v6, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v6}, Le/a/s/e$a;->L()Le/a/b0/e/l;

    move-result-object v6

    .line 8
    invoke-static {v6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, v7

    .line 9
    invoke-direct/range {v0 .. v6}, Le/a/s/p/c;-><init>(Landroid/content/ContentResolver;Le/a/u3/g;Le/a/s/s/c;Le/a/p5/a0;Le/a/s/o/d;Le/a/b0/e/l;)V

    return-object v7
.end method

.method public d2()Landroid/content/Context;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->d2()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public e()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->e()Ls1/w/f;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public f()Le/a/l/p2/v0;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->f()Le/a/l/p2/v0;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public g()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    new-instance v0, Le/a/s/n/a/a;

    invoke-direct {v0}, Le/a/s/n/a/a;-><init>()V

    return-object v0
.end method

.method public g3()Le/a/s/s/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/s/i;->j()Le/a/s/s/d;

    move-result-object v0

    return-object v0
.end method

.method public h()Le/a/s/r/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s/i;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s/r/a;

    return-object v0
.end method

.method public final i()Le/a/s/o/e;
    .locals 4

    .line 1
    new-instance v0, Le/a/s/o/e;

    iget-object v1, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v1}, Le/a/s/e$a;->d2()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v2, Le/a/s/o/b;

    iget-object v3, p0, Le/a/s/i;->l:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/s/s/a;

    invoke-direct {v2, v3}, Le/a/s/o/b;-><init>(Le/a/s/s/a;)V

    .line 4
    invoke-direct {v0, v1, v2}, Le/a/s/o/e;-><init>(Landroid/content/Context;Le/a/s/o/a;)V

    return-object v0
.end method

.method public final j()Le/a/s/s/d;
    .locals 3

    .line 1
    new-instance v0, Le/a/s/s/d;

    iget-object v1, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v1}, Le/a/s/e$a;->d2()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-direct {v0, v1}, Le/a/s/s/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public k()Le/a/p5/c;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->k()Le/a/p5/c;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public l()Le/a/e4/p;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->l()Le/a/e4/p;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public p()Le/a/p5/j0;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->p()Le/a/p5/j0;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public q()Le/a/y2/q/a;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->q()Le/a/y2/q/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public r5()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->r5()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public r6()Le/a/s/s/e;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s/i;->p:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s/s/e;

    return-object v0
.end method

.method public z()Le/a/d/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->z()Le/a/d/f;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

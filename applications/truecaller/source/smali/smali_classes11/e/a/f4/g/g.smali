.class public final Le/a/f4/g/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f4/g/f;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lq3/a/p1;

.field public final e:Ljava/lang/String;

.field public final f:Landroid/content/Context;

.field public final g:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/a/h0/j;

.field public final i:Le/a/q2/a;

.field public final j:Le/a/p5/u;

.field public final k:Le/a/p5/c;

.field public final l:Le/a/g5/p;

.field public final m:Le/m/f/a/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Le/a/r2/f;Le/a/h0/j;Le/a/q2/a;Le/a/p5/u;Le/a/p5/c;Le/a/g5/p;Le/m/f/a/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/h0/j;",
            "Le/a/q2/a;",
            "Le/a/p5/u;",
            "Le/a/p5/c;",
            "Le/a/g5/p;",
            "Le/m/f/a/j;",
            ")V"
        }
    .end annotation

    const-string v0, "searchSource"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagDisplayUtil"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberUtil"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f4/g/g;->e:Ljava/lang/String;

    iput-object p2, p0, Le/a/f4/g/g;->f:Landroid/content/Context;

    iput-object p3, p0, Le/a/f4/g/g;->g:Le/a/r2/f;

    iput-object p4, p0, Le/a/f4/g/g;->h:Le/a/h0/j;

    iput-object p5, p0, Le/a/f4/g/g;->i:Le/a/q2/a;

    iput-object p6, p0, Le/a/f4/g/g;->j:Le/a/p5/u;

    iput-object p7, p0, Le/a/f4/g/g;->k:Le/a/p5/c;

    iput-object p8, p0, Le/a/f4/g/g;->l:Le/a/g5/p;

    iput-object p9, p0, Le/a/f4/g/g;->m:Le/m/f/a/j;

    .line 2
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/f4/g/g;->a:Ljava/util/Set;

    .line 3
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/f4/g/g;->b:Ljava/util/Set;

    .line 4
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/f4/g/g;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "imId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/f4/g/g;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Le/a/f4/g/g;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Le/a/f4/g/g;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/f4/g/g;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Le/a/f4/g/g;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Le/a/f4/g/g;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 7
    :cond_1
    invoke-virtual {p0}, Le/a/f4/g/g;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/f4/g/g;->d:Lq3/a/p1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    sget-object v3, Lq3/a/h1;->a:Lq3/a/h1;

    .line 3
    sget-object v0, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object v4, Lq3/a/y2/q;->c:Lq3/a/y1;

    const/4 v5, 0x0

    .line 4
    new-instance v6, Le/a/f4/g/g$a;

    invoke-direct {v6, p0, v1}, Le/a/f4/g/g$a;-><init>(Le/a/f4/g/g;Ls1/w/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    iput-object v0, p0, Le/a/f4/g/g;->d:Lq3/a/p1;

    return-void
.end method

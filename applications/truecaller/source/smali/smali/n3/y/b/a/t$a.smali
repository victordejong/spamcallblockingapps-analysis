.class public final Ln3/y/b/a/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/d0;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ln3/y/b/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/y/b/a/v0/g;

.field public final d:Z

.field public final e:I

.field public final f:I

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Z


# direct methods
.method public constructor <init>(Ln3/y/b/a/d0;Ln3/y/b/a/d0;Ljava/util/concurrent/CopyOnWriteArrayList;Ln3/y/b/a/v0/g;ZIIZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/b/a/d0;",
            "Ln3/y/b/a/d0;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ln3/y/b/a/a$a;",
            ">;",
            "Ln3/y/b/a/v0/g;",
            "ZIIZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/t$a;->a:Ln3/y/b/a/d0;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln3/y/b/a/t$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    iput-object p4, p0, Ln3/y/b/a/t$a;->c:Ln3/y/b/a/v0/g;

    .line 5
    iput-boolean p5, p0, Ln3/y/b/a/t$a;->d:Z

    .line 6
    iput p6, p0, Ln3/y/b/a/t$a;->e:I

    .line 7
    iput p7, p0, Ln3/y/b/a/t$a;->f:I

    .line 8
    iput-boolean p8, p0, Ln3/y/b/a/t$a;->g:Z

    .line 9
    iput-boolean p9, p0, Ln3/y/b/a/t$a;->m:Z

    .line 10
    iget p3, p2, Ln3/y/b/a/d0;->e:I

    iget p4, p1, Ln3/y/b/a/d0;->e:I

    const/4 p5, 0x1

    const/4 p6, 0x0

    if-eq p3, p4, :cond_0

    move p3, p5

    goto :goto_0

    :cond_0
    move p3, p6

    :goto_0
    iput-boolean p3, p0, Ln3/y/b/a/t$a;->h:Z

    .line 11
    iget-object p3, p2, Ln3/y/b/a/d0;->f:Ln3/y/b/a/f;

    iget-object p4, p1, Ln3/y/b/a/d0;->f:Ln3/y/b/a/f;

    if-eq p3, p4, :cond_1

    if-eqz p4, :cond_1

    move p3, p5

    goto :goto_1

    :cond_1
    move p3, p6

    :goto_1
    iput-boolean p3, p0, Ln3/y/b/a/t$a;->i:Z

    .line 12
    iget-object p3, p2, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    iget-object p4, p1, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    if-eq p3, p4, :cond_2

    move p3, p5

    goto :goto_2

    :cond_2
    move p3, p6

    :goto_2
    iput-boolean p3, p0, Ln3/y/b/a/t$a;->j:Z

    .line 13
    iget-boolean p3, p2, Ln3/y/b/a/d0;->g:Z

    iget-boolean p4, p1, Ln3/y/b/a/d0;->g:Z

    if-eq p3, p4, :cond_3

    move p3, p5

    goto :goto_3

    :cond_3
    move p3, p6

    :goto_3
    iput-boolean p3, p0, Ln3/y/b/a/t$a;->k:Z

    .line 14
    iget-object p2, p2, Ln3/y/b/a/d0;->i:Ln3/y/b/a/v0/h;

    iget-object p1, p1, Ln3/y/b/a/d0;->i:Ln3/y/b/a/v0/h;

    if-eq p2, p1, :cond_4

    goto :goto_4

    :cond_4
    move p5, p6

    :goto_4
    iput-boolean p5, p0, Ln3/y/b/a/t$a;->l:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/t$a;->j:Z

    if-nez v0, :cond_0

    iget v0, p0, Ln3/y/b/a/t$a;->f:I

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/t$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ln3/y/b/a/m;

    invoke-direct {v1, p0}, Ln3/y/b/a/m;-><init>(Ln3/y/b/a/t$a;)V

    .line 3
    invoke-static {v0, v1}, Ln3/y/b/a/t;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Ln3/y/b/a/a$b;)V

    .line 4
    :cond_1
    iget-boolean v0, p0, Ln3/y/b/a/t$a;->d:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Ln3/y/b/a/t$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ln3/y/b/a/n;

    invoke-direct {v1, p0}, Ln3/y/b/a/n;-><init>(Ln3/y/b/a/t$a;)V

    .line 6
    invoke-static {v0, v1}, Ln3/y/b/a/t;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Ln3/y/b/a/a$b;)V

    .line 7
    :cond_2
    iget-boolean v0, p0, Ln3/y/b/a/t$a;->i:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Ln3/y/b/a/t$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ln3/y/b/a/o;

    invoke-direct {v1, p0}, Ln3/y/b/a/o;-><init>(Ln3/y/b/a/t$a;)V

    .line 9
    invoke-static {v0, v1}, Ln3/y/b/a/t;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Ln3/y/b/a/a$b;)V

    .line 10
    :cond_3
    iget-boolean v0, p0, Ln3/y/b/a/t$a;->l:Z

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Ln3/y/b/a/t$a;->c:Ln3/y/b/a/v0/g;

    iget-object v1, p0, Ln3/y/b/a/t$a;->a:Ln3/y/b/a/d0;

    iget-object v1, v1, Ln3/y/b/a/d0;->i:Ln3/y/b/a/v0/h;

    iget-object v1, v1, Ln3/y/b/a/v0/h;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ln3/y/b/a/v0/g;->a(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Ln3/y/b/a/t$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ln3/y/b/a/p;

    invoke-direct {v1, p0}, Ln3/y/b/a/p;-><init>(Ln3/y/b/a/t$a;)V

    .line 13
    invoke-static {v0, v1}, Ln3/y/b/a/t;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Ln3/y/b/a/a$b;)V

    .line 14
    :cond_4
    iget-boolean v0, p0, Ln3/y/b/a/t$a;->k:Z

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Ln3/y/b/a/t$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ln3/y/b/a/q;

    invoke-direct {v1, p0}, Ln3/y/b/a/q;-><init>(Ln3/y/b/a/t$a;)V

    .line 16
    invoke-static {v0, v1}, Ln3/y/b/a/t;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Ln3/y/b/a/a$b;)V

    .line 17
    :cond_5
    iget-boolean v0, p0, Ln3/y/b/a/t$a;->h:Z

    if-eqz v0, :cond_6

    .line 18
    iget-object v0, p0, Ln3/y/b/a/t$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ln3/y/b/a/r;

    invoke-direct {v1, p0}, Ln3/y/b/a/r;-><init>(Ln3/y/b/a/t$a;)V

    .line 19
    invoke-static {v0, v1}, Ln3/y/b/a/t;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Ln3/y/b/a/a$b;)V

    .line 20
    :cond_6
    iget-boolean v0, p0, Ln3/y/b/a/t$a;->g:Z

    if-eqz v0, :cond_7

    .line 21
    iget-object v0, p0, Ln3/y/b/a/t$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v1, Ln3/y/b/a/s;->a:Ln3/y/b/a/a$b;

    .line 22
    invoke-static {v0, v1}, Ln3/y/b/a/t;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Ln3/y/b/a/a$b;)V

    :cond_7
    return-void
.end method

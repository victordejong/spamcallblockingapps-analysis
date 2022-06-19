.class public final Le/a/t1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k0/k/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/t1$e$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/t1;

.field public final b:Le/a/t1$e;

.field public c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/b/r;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/l0/u/e/c;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/l0/u/e/b;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/r2/f<",
            "Le/a/l0/u/e/b;",
            ">;>;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/b/d/b/l;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/b/d/b/j;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/l4/c;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/g/o;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/g/c;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/g/b;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/f4/g/j;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/k0/n/e/e;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/k0/n/d/c;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/k0/n/d/a;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/g/k;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/g/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/t1$e;->b:Le/a/t1$e;

    .line 3
    iput-object p1, p0, Le/a/t1$e;->a:Le/a/t1;

    .line 4
    new-instance p2, Le/a/t1$e$a;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$e$a;-><init>(Le/a/t1;Le/a/t1$e;I)V

    .line 5
    sget-object v0, Lo3/c/b;->c:Ljava/lang/Object;

    .line 6
    instance-of v0, p2, Lo3/c/b;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lo3/c/b;

    invoke-direct {v0, p2}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p2, v0

    .line 8
    :goto_0
    iput-object p2, p0, Le/a/t1$e;->c:Ljavax/inject/Provider;

    .line 9
    new-instance p2, Le/a/t1$e$a;

    const/4 v0, 0x3

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$e$a;-><init>(Le/a/t1;Le/a/t1$e;I)V

    iput-object p2, p0, Le/a/t1$e;->d:Ljavax/inject/Provider;

    .line 10
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/t1$e;->e:Ljavax/inject/Provider;

    .line 11
    new-instance p2, Le/a/t1$e$a;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$e$a;-><init>(Le/a/t1;Le/a/t1$e;I)V

    .line 12
    instance-of v0, p2, Lo3/c/b;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    new-instance v0, Lo3/c/b;

    invoke-direct {v0, p2}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p2, v0

    .line 14
    :goto_1
    iput-object p2, p0, Le/a/t1$e;->f:Ljavax/inject/Provider;

    .line 15
    new-instance p2, Le/a/t1$e$a;

    const/4 v0, 0x4

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$e$a;-><init>(Le/a/t1;Le/a/t1$e;I)V

    iput-object p2, p0, Le/a/t1$e;->g:Ljavax/inject/Provider;

    .line 16
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/t1$e;->h:Ljavax/inject/Provider;

    .line 17
    iget-object p2, p1, Le/a/t1;->v:Ljavax/inject/Provider;

    .line 18
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/t1$e;->i:Ljavax/inject/Provider;

    .line 19
    new-instance p2, Le/a/t1$e$a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$e$a;-><init>(Le/a/t1;Le/a/t1$e;I)V

    iput-object p2, p0, Le/a/t1$e;->j:Ljavax/inject/Provider;

    .line 20
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/t1$e;->k:Ljavax/inject/Provider;

    .line 21
    new-instance p2, Le/a/t1$e$a;

    const/4 v0, 0x5

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$e$a;-><init>(Le/a/t1;Le/a/t1$e;I)V

    iput-object p2, p0, Le/a/t1$e;->l:Ljavax/inject/Provider;

    .line 22
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/t1$e;->m:Ljavax/inject/Provider;

    .line 23
    new-instance p2, Le/a/t1$e$a;

    const/4 v0, 0x6

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$e$a;-><init>(Le/a/t1;Le/a/t1$e;I)V

    .line 24
    instance-of v0, p2, Lo3/c/b;

    if-eqz v0, :cond_2

    goto :goto_2

    .line 25
    :cond_2
    new-instance v0, Lo3/c/b;

    invoke-direct {v0, p2}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p2, v0

    .line 26
    :goto_2
    iput-object p2, p0, Le/a/t1$e;->n:Ljavax/inject/Provider;

    .line 27
    iget-object p2, p1, Le/a/t1;->w:Ljavax/inject/Provider;

    .line 28
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/t1$e;->o:Ljavax/inject/Provider;

    .line 29
    new-instance p2, Le/a/t1$e$a;

    const/4 v0, 0x7

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$e$a;-><init>(Le/a/t1;Le/a/t1$e;I)V

    iput-object p2, p0, Le/a/t1$e;->p:Ljavax/inject/Provider;

    .line 30
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/t1$e;->q:Ljavax/inject/Provider;

    .line 31
    new-instance p2, Le/a/t1$e$a;

    const/16 v0, 0x8

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$e$a;-><init>(Le/a/t1;Le/a/t1$e;I)V

    iput-object p2, p0, Le/a/t1$e;->r:Ljavax/inject/Provider;

    .line 32
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/t1$e;->s:Ljavax/inject/Provider;

    return-void
.end method

.class public final Le/a/t1$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/f/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/t1$k$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/t1;

.field public final b:Le/a/t1$k;

.field public c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/f/n;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/f/d0;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/b/n;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/b/n;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/f/n0/a;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/f/n0/b;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/l4/c;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/f/a0;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/f/x;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/n/m;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/f/h0;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/f/g0;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/f/j0;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/f/i0;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/p0/b;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/p0/a;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/p0/d;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/p0/c;",
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
    iput-object p0, p0, Le/a/t1$k;->b:Le/a/t1$k;

    .line 3
    iput-object p1, p0, Le/a/t1$k;->a:Le/a/t1;

    .line 4
    new-instance p2, Le/a/t1$k$a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$k$a;-><init>(Le/a/t1;Le/a/t1$k;I)V

    iput-object p2, p0, Le/a/t1$k;->c:Ljavax/inject/Provider;

    .line 5
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/t1$k;->d:Ljavax/inject/Provider;

    .line 6
    new-instance p2, Le/a/t1$k$a;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$k$a;-><init>(Le/a/t1;Le/a/t1$k;I)V

    .line 7
    instance-of v0, p2, Lo3/c/b;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lo3/c/b;

    invoke-direct {v0, p2}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p2, v0

    .line 9
    :goto_0
    iput-object p2, p0, Le/a/t1$k;->e:Ljavax/inject/Provider;

    .line 10
    new-instance p2, Le/a/t1$k$a;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$k$a;-><init>(Le/a/t1;Le/a/t1$k;I)V

    .line 11
    instance-of v0, p2, Lo3/c/b;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    new-instance v0, Lo3/c/b;

    invoke-direct {v0, p2}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p2, v0

    .line 13
    :goto_1
    iput-object p2, p0, Le/a/t1$k;->f:Ljavax/inject/Provider;

    .line 14
    new-instance p2, Le/a/t1$k$a;

    const/4 v0, 0x5

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$k$a;-><init>(Le/a/t1;Le/a/t1$k;I)V

    iput-object p2, p0, Le/a/t1$k;->g:Ljavax/inject/Provider;

    .line 15
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/t1$k;->h:Ljavax/inject/Provider;

    .line 16
    new-instance p2, Le/a/t1$k$a;

    const/4 v0, 0x4

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$k$a;-><init>(Le/a/t1;Le/a/t1$k;I)V

    iput-object p2, p0, Le/a/t1$k;->i:Ljavax/inject/Provider;

    .line 17
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/t1$k;->j:Ljavax/inject/Provider;

    .line 18
    iget-object p2, p1, Le/a/t1;->v:Ljavax/inject/Provider;

    .line 19
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/t1$k;->k:Ljavax/inject/Provider;

    .line 20
    new-instance p2, Le/a/t1$k$a;

    const/4 v0, 0x3

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$k$a;-><init>(Le/a/t1;Le/a/t1$k;I)V

    iput-object p2, p0, Le/a/t1$k;->l:Ljavax/inject/Provider;

    .line 21
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/t1$k;->m:Ljavax/inject/Provider;

    .line 22
    new-instance p2, Le/a/t1$k$a;

    const/4 v0, 0x6

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$k$a;-><init>(Le/a/t1;Le/a/t1$k;I)V

    .line 23
    instance-of v0, p2, Lo3/c/b;

    if-eqz v0, :cond_2

    goto :goto_2

    .line 24
    :cond_2
    new-instance v0, Lo3/c/b;

    invoke-direct {v0, p2}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p2, v0

    .line 25
    :goto_2
    iput-object p2, p0, Le/a/t1$k;->n:Ljavax/inject/Provider;

    .line 26
    new-instance p2, Le/a/t1$k$a;

    const/4 v0, 0x7

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$k$a;-><init>(Le/a/t1;Le/a/t1$k;I)V

    iput-object p2, p0, Le/a/t1$k;->o:Ljavax/inject/Provider;

    .line 27
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/t1$k;->p:Ljavax/inject/Provider;

    .line 28
    new-instance p2, Le/a/t1$k$a;

    const/16 v0, 0x8

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$k$a;-><init>(Le/a/t1;Le/a/t1$k;I)V

    iput-object p2, p0, Le/a/t1$k;->q:Ljavax/inject/Provider;

    .line 29
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/t1$k;->r:Ljavax/inject/Provider;

    .line 30
    new-instance p2, Le/a/t1$k$a;

    const/16 v0, 0xa

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$k$a;-><init>(Le/a/t1;Le/a/t1$k;I)V

    iput-object p2, p0, Le/a/t1$k;->s:Ljavax/inject/Provider;

    .line 31
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/t1$k;->t:Ljavax/inject/Provider;

    .line 32
    new-instance p2, Le/a/t1$k$a;

    const/16 v0, 0x9

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$k$a;-><init>(Le/a/t1;Le/a/t1$k;I)V

    iput-object p2, p0, Le/a/t1$k;->u:Ljavax/inject/Provider;

    .line 33
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/t1$k;->v:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public a()Le/a/h/p0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t1$k;->v:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h/p0/c;

    return-object v0
.end method

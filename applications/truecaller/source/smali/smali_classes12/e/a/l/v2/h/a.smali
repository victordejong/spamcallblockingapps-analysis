.class public final Le/a/l/v2/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l/v2/h/a$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/j2;

.field public final b:Le/a/l/v2/h/b;

.field public final c:Le/a/l/v2/h/a;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/l/p2/g1;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/l/p2/f1;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/l/p2/e1;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/l/p2/d1;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/l/p2/q1;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/l/p2/q0;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/p5/h0;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/l/o2/e;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/l/v2/i/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/l/v2/i/a/f;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/l/v2/h/g;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/l/v2/h/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/l/v2/h/b;Le/a/j2;Le/a/l/v2/h/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/l/v2/h/a;->c:Le/a/l/v2/h/a;

    .line 3
    iput-object p2, p0, Le/a/l/v2/h/a;->a:Le/a/j2;

    .line 4
    iput-object p1, p0, Le/a/l/v2/h/a;->b:Le/a/l/v2/h/b;

    .line 5
    new-instance p1, Le/a/l/v2/h/a$b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Le/a/l/v2/h/a$b;-><init>(Le/a/l/v2/h/a;I)V

    iput-object p1, p0, Le/a/l/v2/h/a;->d:Ljavax/inject/Provider;

    .line 6
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/l/v2/h/a;->e:Ljavax/inject/Provider;

    .line 7
    new-instance p1, Le/a/l/v2/h/a$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/l/v2/h/a$b;-><init>(Le/a/l/v2/h/a;I)V

    iput-object p1, p0, Le/a/l/v2/h/a;->f:Ljavax/inject/Provider;

    .line 8
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/l/v2/h/a;->g:Ljavax/inject/Provider;

    .line 9
    new-instance p1, Le/a/l/v2/h/a$b;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Le/a/l/v2/h/a$b;-><init>(Le/a/l/v2/h/a;I)V

    iput-object p1, p0, Le/a/l/v2/h/a;->h:Ljavax/inject/Provider;

    .line 10
    new-instance p1, Le/a/l/v2/h/a$b;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Le/a/l/v2/h/a$b;-><init>(Le/a/l/v2/h/a;I)V

    .line 11
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 13
    :goto_0
    iput-object p1, p0, Le/a/l/v2/h/a;->i:Ljavax/inject/Provider;

    .line 14
    new-instance p1, Le/a/l/v2/h/a$b;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Le/a/l/v2/h/a$b;-><init>(Le/a/l/v2/h/a;I)V

    .line 15
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 17
    :goto_1
    iput-object p1, p0, Le/a/l/v2/h/a;->j:Ljavax/inject/Provider;

    .line 18
    new-instance p1, Le/a/l/v2/h/a$b;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Le/a/l/v2/h/a$b;-><init>(Le/a/l/v2/h/a;I)V

    .line 19
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_2

    goto :goto_2

    .line 20
    :cond_2
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 21
    :goto_2
    iput-object p1, p0, Le/a/l/v2/h/a;->k:Ljavax/inject/Provider;

    .line 22
    new-instance p1, Le/a/l/v2/h/a$b;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Le/a/l/v2/h/a$b;-><init>(Le/a/l/v2/h/a;I)V

    .line 23
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_3

    goto :goto_3

    .line 24
    :cond_3
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 25
    :goto_3
    iput-object p1, p0, Le/a/l/v2/h/a;->l:Ljavax/inject/Provider;

    .line 26
    new-instance p1, Le/a/l/v2/h/a$b;

    const/16 p2, 0x8

    invoke-direct {p1, p0, p2}, Le/a/l/v2/h/a$b;-><init>(Le/a/l/v2/h/a;I)V

    .line 27
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_4

    goto :goto_4

    .line 28
    :cond_4
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 29
    :goto_4
    iput-object p1, p0, Le/a/l/v2/h/a;->m:Ljavax/inject/Provider;

    .line 30
    new-instance p1, Le/a/l/v2/h/a$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/l/v2/h/a$b;-><init>(Le/a/l/v2/h/a;I)V

    iput-object p1, p0, Le/a/l/v2/h/a;->n:Ljavax/inject/Provider;

    .line 31
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/l/v2/h/a;->o:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final a()Le/a/l/a/g;
    .locals 6

    .line 1
    new-instance v0, Le/a/l/a/g;

    iget-object v1, p0, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v3, p0, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->K6()Le/a/p4/b;

    move-result-object v3

    .line 4
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v4, Le/a/l/a/f;

    iget-object v5, p0, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->K6()Le/a/p4/b;

    move-result-object v5

    .line 6
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-direct {v4, v5}, Le/a/l/a/f;-><init>(Le/a/p4/b;)V

    .line 8
    invoke-direct {v0, v1, v3, v4}, Le/a/l/a/g;-><init>(Le/a/p5/g;Le/a/p4/b;Le/a/l/a/f;)V

    return-object v0
.end method

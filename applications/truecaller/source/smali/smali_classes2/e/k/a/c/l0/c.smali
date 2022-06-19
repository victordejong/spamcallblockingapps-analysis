.class public Le/k/a/c/l0/c;
.super Le/k/a/c/l0/m;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final synthetic t:I


# instance fields
.field public final c:Le/k/a/b/w/i;

.field public final d:Le/k/a/c/v;

.field public final e:Le/k/a/c/i;

.field public final f:Le/k/a/c/i;

.field public g:Le/k/a/c/i;

.field public final transient h:Le/k/a/c/n0/b;

.field public final i:Le/k/a/c/g0/i;

.field public transient j:Ljava/lang/reflect/Method;

.field public transient k:Ljava/lang/reflect/Field;

.field public l:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public m:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public n:Le/k/a/c/j0/h;

.field public transient o:Le/k/a/c/l0/s/l;

.field public final p:Z

.field public final q:Ljava/lang/Object;

.field public final r:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public transient s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    sget-object v0, Le/k/a/c/u;->j:Le/k/a/c/u;

    invoke-direct {p0, v0}, Le/k/a/c/l0/m;-><init>(Le/k/a/c/u;)V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Le/k/a/c/l0/c;->i:Le/k/a/c/g0/i;

    .line 25
    iput-object v0, p0, Le/k/a/c/l0/c;->h:Le/k/a/c/n0/b;

    .line 26
    iput-object v0, p0, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    .line 27
    iput-object v0, p0, Le/k/a/c/l0/c;->d:Le/k/a/c/v;

    .line 28
    iput-object v0, p0, Le/k/a/c/l0/c;->r:[Ljava/lang/Class;

    .line 29
    iput-object v0, p0, Le/k/a/c/l0/c;->e:Le/k/a/c/i;

    .line 30
    iput-object v0, p0, Le/k/a/c/l0/c;->l:Le/k/a/c/n;

    .line 31
    iput-object v0, p0, Le/k/a/c/l0/c;->o:Le/k/a/c/l0/s/l;

    .line 32
    iput-object v0, p0, Le/k/a/c/l0/c;->n:Le/k/a/c/j0/h;

    .line 33
    iput-object v0, p0, Le/k/a/c/l0/c;->f:Le/k/a/c/i;

    .line 34
    iput-object v0, p0, Le/k/a/c/l0/c;->j:Ljava/lang/reflect/Method;

    .line 35
    iput-object v0, p0, Le/k/a/c/l0/c;->k:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Le/k/a/c/l0/c;->p:Z

    .line 37
    iput-object v0, p0, Le/k/a/c/l0/c;->q:Ljava/lang/Object;

    .line 38
    iput-object v0, p0, Le/k/a/c/l0/c;->m:Le/k/a/c/n;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/g0/s;Le/k/a/c/g0/i;Le/k/a/c/n0/b;Le/k/a/c/i;Le/k/a/c/n;Le/k/a/c/j0/h;Le/k/a/c/i;ZLjava/lang/Object;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/s;",
            "Le/k/a/c/g0/i;",
            "Le/k/a/c/n0/b;",
            "Le/k/a/c/i;",
            "Le/k/a/c/n<",
            "*>;",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/i;",
            "Z",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/l0/m;-><init>(Le/k/a/c/g0/s;)V

    .line 2
    iput-object p2, p0, Le/k/a/c/l0/c;->i:Le/k/a/c/g0/i;

    .line 3
    iput-object p3, p0, Le/k/a/c/l0/c;->h:Le/k/a/c/n0/b;

    .line 4
    new-instance p3, Le/k/a/b/w/i;

    invoke-virtual {p1}, Le/k/a/c/g0/s;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Le/k/a/b/w/i;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    .line 5
    invoke-virtual {p1}, Le/k/a/c/g0/s;->w()Le/k/a/c/v;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/l0/c;->d:Le/k/a/c/v;

    .line 6
    iput-object p4, p0, Le/k/a/c/l0/c;->e:Le/k/a/c/i;

    .line 7
    iput-object p5, p0, Le/k/a/c/l0/c;->l:Le/k/a/c/n;

    const/4 p1, 0x0

    if-nez p5, :cond_0

    .line 8
    sget-object p3, Le/k/a/c/l0/s/l$b;->b:Le/k/a/c/l0/s/l$b;

    goto :goto_0

    :cond_0
    move-object p3, p1

    :goto_0
    iput-object p3, p0, Le/k/a/c/l0/c;->o:Le/k/a/c/l0/s/l;

    .line 9
    iput-object p6, p0, Le/k/a/c/l0/c;->n:Le/k/a/c/j0/h;

    .line 10
    iput-object p7, p0, Le/k/a/c/l0/c;->f:Le/k/a/c/i;

    .line 11
    instance-of p3, p2, Le/k/a/c/g0/g;

    if-eqz p3, :cond_1

    .line 12
    iput-object p1, p0, Le/k/a/c/l0/c;->j:Ljava/lang/reflect/Method;

    .line 13
    invoke-virtual {p2}, Le/k/a/c/g0/i;->i()Ljava/lang/reflect/Member;

    move-result-object p2

    check-cast p2, Ljava/lang/reflect/Field;

    iput-object p2, p0, Le/k/a/c/l0/c;->k:Ljava/lang/reflect/Field;

    goto :goto_1

    .line 14
    :cond_1
    instance-of p3, p2, Le/k/a/c/g0/j;

    if-eqz p3, :cond_2

    .line 15
    invoke-virtual {p2}, Le/k/a/c/g0/i;->i()Ljava/lang/reflect/Member;

    move-result-object p2

    check-cast p2, Ljava/lang/reflect/Method;

    iput-object p2, p0, Le/k/a/c/l0/c;->j:Ljava/lang/reflect/Method;

    .line 16
    iput-object p1, p0, Le/k/a/c/l0/c;->k:Ljava/lang/reflect/Field;

    goto :goto_1

    .line 17
    :cond_2
    iput-object p1, p0, Le/k/a/c/l0/c;->j:Ljava/lang/reflect/Method;

    .line 18
    iput-object p1, p0, Le/k/a/c/l0/c;->k:Ljava/lang/reflect/Field;

    .line 19
    :goto_1
    iput-boolean p8, p0, Le/k/a/c/l0/c;->p:Z

    .line 20
    iput-object p9, p0, Le/k/a/c/l0/c;->q:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Le/k/a/c/l0/c;->m:Le/k/a/c/n;

    .line 22
    iput-object p10, p0, Le/k/a/c/l0/c;->r:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/c;Le/k/a/b/w/i;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Le/k/a/c/l0/m;-><init>(Le/k/a/c/l0/m;)V

    .line 61
    iput-object p2, p0, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    .line 62
    iget-object p2, p1, Le/k/a/c/l0/c;->d:Le/k/a/c/v;

    iput-object p2, p0, Le/k/a/c/l0/c;->d:Le/k/a/c/v;

    .line 63
    iget-object p2, p1, Le/k/a/c/l0/c;->i:Le/k/a/c/g0/i;

    iput-object p2, p0, Le/k/a/c/l0/c;->i:Le/k/a/c/g0/i;

    .line 64
    iget-object p2, p1, Le/k/a/c/l0/c;->h:Le/k/a/c/n0/b;

    iput-object p2, p0, Le/k/a/c/l0/c;->h:Le/k/a/c/n0/b;

    .line 65
    iget-object p2, p1, Le/k/a/c/l0/c;->e:Le/k/a/c/i;

    iput-object p2, p0, Le/k/a/c/l0/c;->e:Le/k/a/c/i;

    .line 66
    iget-object p2, p1, Le/k/a/c/l0/c;->j:Ljava/lang/reflect/Method;

    iput-object p2, p0, Le/k/a/c/l0/c;->j:Ljava/lang/reflect/Method;

    .line 67
    iget-object p2, p1, Le/k/a/c/l0/c;->k:Ljava/lang/reflect/Field;

    iput-object p2, p0, Le/k/a/c/l0/c;->k:Ljava/lang/reflect/Field;

    .line 68
    iget-object p2, p1, Le/k/a/c/l0/c;->l:Le/k/a/c/n;

    iput-object p2, p0, Le/k/a/c/l0/c;->l:Le/k/a/c/n;

    .line 69
    iget-object p2, p1, Le/k/a/c/l0/c;->m:Le/k/a/c/n;

    iput-object p2, p0, Le/k/a/c/l0/c;->m:Le/k/a/c/n;

    .line 70
    iget-object p2, p1, Le/k/a/c/l0/c;->s:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    .line 71
    new-instance p2, Ljava/util/HashMap;

    iget-object v0, p1, Le/k/a/c/l0/c;->s:Ljava/util/HashMap;

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Le/k/a/c/l0/c;->s:Ljava/util/HashMap;

    .line 72
    :cond_0
    iget-object p2, p1, Le/k/a/c/l0/c;->f:Le/k/a/c/i;

    iput-object p2, p0, Le/k/a/c/l0/c;->f:Le/k/a/c/i;

    .line 73
    iget-object p2, p1, Le/k/a/c/l0/c;->o:Le/k/a/c/l0/s/l;

    iput-object p2, p0, Le/k/a/c/l0/c;->o:Le/k/a/c/l0/s/l;

    .line 74
    iget-boolean p2, p1, Le/k/a/c/l0/c;->p:Z

    iput-boolean p2, p0, Le/k/a/c/l0/c;->p:Z

    .line 75
    iget-object p2, p1, Le/k/a/c/l0/c;->q:Ljava/lang/Object;

    iput-object p2, p0, Le/k/a/c/l0/c;->q:Ljava/lang/Object;

    .line 76
    iget-object p2, p1, Le/k/a/c/l0/c;->r:[Ljava/lang/Class;

    iput-object p2, p0, Le/k/a/c/l0/c;->r:[Ljava/lang/Class;

    .line 77
    iget-object p2, p1, Le/k/a/c/l0/c;->n:Le/k/a/c/j0/h;

    iput-object p2, p0, Le/k/a/c/l0/c;->n:Le/k/a/c/j0/h;

    .line 78
    iget-object p1, p1, Le/k/a/c/l0/c;->g:Le/k/a/c/i;

    iput-object p1, p0, Le/k/a/c/l0/c;->g:Le/k/a/c/i;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/c;Le/k/a/c/v;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Le/k/a/c/l0/m;-><init>(Le/k/a/c/l0/m;)V

    .line 40
    new-instance v0, Le/k/a/b/w/i;

    .line 41
    iget-object p2, p2, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 42
    invoke-direct {v0, p2}, Le/k/a/b/w/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    .line 43
    iget-object p2, p1, Le/k/a/c/l0/c;->d:Le/k/a/c/v;

    iput-object p2, p0, Le/k/a/c/l0/c;->d:Le/k/a/c/v;

    .line 44
    iget-object p2, p1, Le/k/a/c/l0/c;->h:Le/k/a/c/n0/b;

    iput-object p2, p0, Le/k/a/c/l0/c;->h:Le/k/a/c/n0/b;

    .line 45
    iget-object p2, p1, Le/k/a/c/l0/c;->e:Le/k/a/c/i;

    iput-object p2, p0, Le/k/a/c/l0/c;->e:Le/k/a/c/i;

    .line 46
    iget-object p2, p1, Le/k/a/c/l0/c;->i:Le/k/a/c/g0/i;

    iput-object p2, p0, Le/k/a/c/l0/c;->i:Le/k/a/c/g0/i;

    .line 47
    iget-object p2, p1, Le/k/a/c/l0/c;->j:Ljava/lang/reflect/Method;

    iput-object p2, p0, Le/k/a/c/l0/c;->j:Ljava/lang/reflect/Method;

    .line 48
    iget-object p2, p1, Le/k/a/c/l0/c;->k:Ljava/lang/reflect/Field;

    iput-object p2, p0, Le/k/a/c/l0/c;->k:Ljava/lang/reflect/Field;

    .line 49
    iget-object p2, p1, Le/k/a/c/l0/c;->l:Le/k/a/c/n;

    iput-object p2, p0, Le/k/a/c/l0/c;->l:Le/k/a/c/n;

    .line 50
    iget-object p2, p1, Le/k/a/c/l0/c;->m:Le/k/a/c/n;

    iput-object p2, p0, Le/k/a/c/l0/c;->m:Le/k/a/c/n;

    .line 51
    iget-object p2, p1, Le/k/a/c/l0/c;->s:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    .line 52
    new-instance p2, Ljava/util/HashMap;

    iget-object v0, p1, Le/k/a/c/l0/c;->s:Ljava/util/HashMap;

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Le/k/a/c/l0/c;->s:Ljava/util/HashMap;

    .line 53
    :cond_0
    iget-object p2, p1, Le/k/a/c/l0/c;->f:Le/k/a/c/i;

    iput-object p2, p0, Le/k/a/c/l0/c;->f:Le/k/a/c/i;

    .line 54
    iget-object p2, p1, Le/k/a/c/l0/c;->o:Le/k/a/c/l0/s/l;

    iput-object p2, p0, Le/k/a/c/l0/c;->o:Le/k/a/c/l0/s/l;

    .line 55
    iget-boolean p2, p1, Le/k/a/c/l0/c;->p:Z

    iput-boolean p2, p0, Le/k/a/c/l0/c;->p:Z

    .line 56
    iget-object p2, p1, Le/k/a/c/l0/c;->q:Ljava/lang/Object;

    iput-object p2, p0, Le/k/a/c/l0/c;->q:Ljava/lang/Object;

    .line 57
    iget-object p2, p1, Le/k/a/c/l0/c;->r:[Ljava/lang/Class;

    iput-object p2, p0, Le/k/a/c/l0/c;->r:[Ljava/lang/Class;

    .line 58
    iget-object p2, p1, Le/k/a/c/l0/c;->n:Le/k/a/c/j0/h;

    iput-object p2, p0, Le/k/a/c/l0/c;->n:Le/k/a/c/j0/h;

    .line 59
    iget-object p1, p1, Le/k/a/c/l0/c;->g:Le/k/a/c/i;

    iput-object p1, p0, Le/k/a/c/l0/c;->g:Le/k/a/c/i;

    return-void
.end method


# virtual methods
.method public b(Le/k/a/c/l0/s/l;Ljava/lang/Class;Le/k/a/c/a0;)Le/k/a/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/s/l;",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/a0;",
            ")",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/c;->g:Le/k/a/c/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p3, v0, p2}, Le/k/a/c/a0;->s(Le/k/a/c/i;Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object p2

    .line 3
    invoke-virtual {p3, p2, p0}, Le/k/a/c/a0;->y(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p3

    .line 4
    new-instance v0, Le/k/a/c/l0/s/l$d;

    .line 5
    iget-object p2, p2, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 6
    invoke-virtual {p1, p2, p3}, Le/k/a/c/l0/s/l;->b(Ljava/lang/Class;Le/k/a/c/n;)Le/k/a/c/l0/s/l;

    move-result-object p2

    invoke-direct {v0, p3, p2}, Le/k/a/c/l0/s/l$d;-><init>(Le/k/a/c/n;Le/k/a/c/l0/s/l;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p3, p2, p0}, Le/k/a/c/a0;->z(Ljava/lang/Class;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p3

    .line 8
    new-instance v0, Le/k/a/c/l0/s/l$d;

    invoke-virtual {p1, p2, p3}, Le/k/a/c/l0/s/l;->b(Ljava/lang/Class;Le/k/a/c/n;)Le/k/a/c/l0/s/l;

    move-result-object p2

    invoke-direct {v0, p3, p2}, Le/k/a/c/l0/s/l$d;-><init>(Le/k/a/c/n;Le/k/a/c/l0/s/l;)V

    .line 9
    :goto_0
    iget-object p2, v0, Le/k/a/c/l0/s/l$d;->b:Le/k/a/c/l0/s/l;

    if-eq p1, p2, :cond_1

    .line 10
    iput-object p2, p0, Le/k/a/c/l0/c;->o:Le/k/a/c/l0/s/l;

    .line 11
    :cond_1
    iget-object p1, v0, Le/k/a/c/l0/s/l$d;->a:Le/k/a/c/n;

    return-object p1
.end method

.method public c()Le/k/a/c/g0/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/c;->i:Le/k/a/c/g0/i;

    return-object v0
.end method

.method public d()Le/k/a/c/v;
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/v;

    iget-object v1, p0, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    .line 2
    iget-object v1, v1, Le/k/a/b/w/i;->a:Ljava/lang/String;

    .line 3
    invoke-direct {v0, v1}, Le/k/a/c/v;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public g(Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/n;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le/k/a/b/g;",
            "Le/k/a/c/a0;",
            "Le/k/a/c/n<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Le/k/a/c/n;->i()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    sget-object v0, Le/k/a/c/z;->f:Le/k/a/c/z;

    invoke-virtual {p2, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    instance-of p1, p3, Le/k/a/c/l0/t/d;

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Le/k/a/c/l0/c;->e:Le/k/a/c/i;

    const-string p3, "Direct self-reference leading to cycle"

    .line 5
    invoke-virtual {p2, p1, p3}, Le/k/a/c/a0;->m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;

    throw v1

    .line 6
    :cond_1
    sget-object p3, Le/k/a/c/z;->i:Le/k/a/c/z;

    invoke-virtual {p2, p3}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 7
    iget-object p3, p0, Le/k/a/c/l0/c;->m:Le/k/a/c/n;

    if-eqz p3, :cond_3

    .line 8
    invoke-virtual {p1}, Le/k/a/b/g;->s()Le/k/a/b/l;

    move-result-object p3

    invoke-virtual {p3}, Le/k/a/b/l;->d()Z

    move-result p3

    if-nez p3, :cond_2

    .line 9
    iget-object p3, p0, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    invoke-virtual {p1, p3}, Le/k/a/b/g;->z0(Le/k/a/b/p;)V

    .line 10
    :cond_2
    iget-object p3, p0, Le/k/a/c/l0/c;->m:Le/k/a/c/n;

    invoke-virtual {p3, v1, p1, p2}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    .line 2
    iget-object v0, v0, Le/k/a/b/w/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Le/k/a/c/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/c;->e:Le/k/a/c/i;

    return-object v0
.end method

.method public h(Le/k/a/c/n;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/c;->m:Le/k/a/c/n;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Le/k/a/c/l0/c;->m:Le/k/a/c/n;

    .line 3
    invoke-static {v3}, Le/k/a/c/n0/g;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Le/k/a/c/n0/g;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Cannot override _nullSerializer: had a %s, trying to set to %s"

    .line 4
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Le/k/a/c/l0/c;->m:Le/k/a/c/n;

    return-void
.end method

.method public i(Le/k/a/c/n;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/c;->l:Le/k/a/c/n;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Le/k/a/c/l0/c;->l:Le/k/a/c/n;

    .line 3
    invoke-static {v3}, Le/k/a/c/n0/g;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Le/k/a/c/n0/g;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Cannot override _serializer: had a %s, trying to set to %s"

    .line 4
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Le/k/a/c/l0/c;->l:Le/k/a/c/n;

    return-void
.end method

.method public j(Le/k/a/c/n0/s;)Le/k/a/c/l0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    .line 2
    iget-object v0, v0, Le/k/a/b/w/i;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Le/k/a/c/n0/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    invoke-virtual {v0}, Le/k/a/b/w/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-static {p1}, Le/k/a/c/v;->a(Ljava/lang/String;)Le/k/a/c/v;

    move-result-object p1

    .line 6
    new-instance v0, Le/k/a/c/l0/c;

    invoke-direct {v0, p0, p1}, Le/k/a/c/l0/c;-><init>(Le/k/a/c/l0/c;Le/k/a/c/v;)V

    return-object v0
.end method

.method public k(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/c;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/k/a/c/l0/c;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Le/k/a/c/l0/c;->m:Le/k/a/c/n;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, v1, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p2}, Le/k/a/b/g;->D0()V

    :goto_1
    return-void

    .line 6
    :cond_2
    iget-object v1, p0, Le/k/a/c/l0/c;->l:Le/k/a/c/n;

    if-nez v1, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 8
    iget-object v2, p0, Le/k/a/c/l0/c;->o:Le/k/a/c/l0/s/l;

    .line 9
    invoke-virtual {v2, v1}, Le/k/a/c/l0/s/l;->c(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v3

    if-nez v3, :cond_3

    .line 10
    invoke-virtual {p0, v2, v1, p3}, Le/k/a/c/l0/c;->b(Le/k/a/c/l0/s/l;Ljava/lang/Class;Le/k/a/c/a0;)Le/k/a/c/n;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v3

    .line 11
    :cond_4
    :goto_2
    iget-object v2, p0, Le/k/a/c/l0/c;->q:Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 12
    sget-object v3, Le/k/a/a/r$a;->d:Le/k/a/a/r$a;

    if-ne v3, v2, :cond_5

    .line 13
    invoke-virtual {v1, p3, v0}, Le/k/a/c/n;->d(Le/k/a/c/a0;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 14
    invoke-virtual {p0, p2, p3}, Le/k/a/c/l0/c;->n(Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void

    .line 15
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 16
    invoke-virtual {p0, p2, p3}, Le/k/a/c/l0/c;->n(Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void

    :cond_6
    if-ne v0, p1, :cond_7

    .line 17
    invoke-virtual {p0, p2, p3, v1}, Le/k/a/c/l0/c;->g(Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/n;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 18
    :cond_7
    iget-object p1, p0, Le/k/a/c/l0/c;->n:Le/k/a/c/j0/h;

    if-nez p1, :cond_8

    .line 19
    invoke-virtual {v1, v0, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_3

    .line 20
    :cond_8
    invoke-virtual {v1, v0, p2, p3, p1}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V

    :goto_3
    return-void
.end method

.method public l(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/c;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/k/a/c/l0/c;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Le/k/a/c/l0/c;->m:Le/k/a/c/n;

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    invoke-virtual {p2, p1}, Le/k/a/b/g;->z0(Le/k/a/b/p;)V

    .line 5
    iget-object p1, p0, Le/k/a/c/l0/c;->m:Le/k/a/c/n;

    invoke-virtual {p1, v1, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    :cond_1
    return-void

    .line 6
    :cond_2
    iget-object v1, p0, Le/k/a/c/l0/c;->l:Le/k/a/c/n;

    if-nez v1, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 8
    iget-object v2, p0, Le/k/a/c/l0/c;->o:Le/k/a/c/l0/s/l;

    .line 9
    invoke-virtual {v2, v1}, Le/k/a/c/l0/s/l;->c(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v3

    if-nez v3, :cond_3

    .line 10
    invoke-virtual {p0, v2, v1, p3}, Le/k/a/c/l0/c;->b(Le/k/a/c/l0/s/l;Ljava/lang/Class;Le/k/a/c/a0;)Le/k/a/c/n;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v3

    .line 11
    :cond_4
    :goto_1
    iget-object v2, p0, Le/k/a/c/l0/c;->q:Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 12
    sget-object v3, Le/k/a/a/r$a;->d:Le/k/a/a/r$a;

    if-ne v3, v2, :cond_5

    .line 13
    invoke-virtual {v1, p3, v0}, Le/k/a/c/n;->d(Le/k/a/c/a0;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-void

    .line 14
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-void

    :cond_6
    if-ne v0, p1, :cond_7

    .line 15
    invoke-virtual {p0, p2, p3, v1}, Le/k/a/c/l0/c;->g(Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/n;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 16
    :cond_7
    iget-object p1, p0, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    invoke-virtual {p2, p1}, Le/k/a/b/g;->z0(Le/k/a/b/p;)V

    .line 17
    iget-object p1, p0, Le/k/a/c/l0/c;->n:Le/k/a/c/j0/h;

    if-nez p1, :cond_8

    .line 18
    invoke-virtual {v1, v0, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_2

    .line 19
    :cond_8
    invoke-virtual {v1, v0, p2, p3, p1}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V

    :goto_2
    return-void
.end method

.method public m(Le/k/a/b/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public n(Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/c;->m:Le/k/a/c/n;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/k/a/b/g;->D0()V

    :goto_0
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/c;->i:Le/k/a/c/g0/i;

    instance-of v1, v0, Le/k/a/c/g0/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    iput-object v2, p0, Le/k/a/c/l0/c;->j:Ljava/lang/reflect/Method;

    .line 3
    invoke-virtual {v0}, Le/k/a/c/g0/i;->i()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    iput-object v0, p0, Le/k/a/c/l0/c;->k:Ljava/lang/reflect/Field;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Le/k/a/c/g0/j;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Le/k/a/c/g0/i;->i()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iput-object v0, p0, Le/k/a/c/l0/c;->j:Ljava/lang/reflect/Method;

    .line 6
    iput-object v2, p0, Le/k/a/c/l0/c;->k:Ljava/lang/reflect/Field;

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Le/k/a/c/l0/c;->l:Le/k/a/c/n;

    if-nez v0, :cond_2

    .line 8
    sget-object v0, Le/k/a/c/l0/s/l$b;->b:Le/k/a/c/l0/s/l$b;

    iput-object v0, p0, Le/k/a/c/l0/c;->o:Le/k/a/c/l0/s/l;

    :cond_2
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x28

    const-string v1, "property \'"

    .line 1
    invoke-static {v0, v1}, Le/d/c/a/a;->x(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    .line 3
    iget-object v1, v1, Le/k/a/b/w/i;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Le/k/a/c/l0/c;->j:Ljava/lang/reflect/Method;

    const-string v2, "#"

    if-eqz v1, :cond_0

    const-string v1, "via method "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/k/a/c/l0/c;->j:Ljava/lang/reflect/Method;

    .line 7
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/k/a/c/l0/c;->j:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Le/k/a/c/l0/c;->k:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    const-string v1, "field \""

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/k/a/c/l0/c;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/k/a/c/l0/c;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "virtual"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :goto_0
    iget-object v1, p0, Le/k/a/c/l0/c;->l:Le/k/a/c/n;

    if-nez v1, :cond_2

    const-string v1, ", no static serializer"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, ", static serializer of type "

    .line 15
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/k/a/c/l0/c;->l:Le/k/a/c/n;

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v1, 0x29

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

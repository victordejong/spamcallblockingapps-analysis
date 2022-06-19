.class public final Le/m/a/b/j/k;
.super Le/m/a/b/j/w;
.source "SourceFile"


# instance fields
.field public a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljavax/inject/Provider;

.field public d:Ljavax/inject/Provider;

.field public e:Ljavax/inject/Provider;

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/i/h0;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/h/s;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/h/x;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/c;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/h/t;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/h/v;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/m/a/b/j/k$a;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Le/m/a/b/j/w;-><init>()V

    .line 2
    sget-object v2, Le/m/a/b/j/o$a;->a:Le/m/a/b/j/o;

    .line 3
    sget-object v3, Le/m/a/b/j/z/b/a;->c:Ljava/lang/Object;

    .line 4
    instance-of v3, v2, Le/m/a/b/j/z/b/a;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v3, Le/m/a/b/j/z/b/a;

    invoke-direct {v3, v2}, Le/m/a/b/j/z/b/a;-><init>(Ljavax/inject/Provider;)V

    move-object v2, v3

    .line 6
    :goto_0
    iput-object v2, v0, Le/m/a/b/j/k;->a:Ljavax/inject/Provider;

    .line 7
    new-instance v2, Le/m/a/b/j/z/b/b;

    const-string v3, "instance cannot be null"

    .line 8
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-direct {v2, v1}, Le/m/a/b/j/z/b/b;-><init>(Ljava/lang/Object;)V

    .line 10
    iput-object v2, v0, Le/m/a/b/j/k;->b:Ljavax/inject/Provider;

    .line 11
    sget-object v1, Le/m/a/b/j/e0/b$a;->a:Le/m/a/b/j/e0/b;

    sget-object v3, Le/m/a/b/j/e0/c$a;->a:Le/m/a/b/j/e0/c;

    .line 12
    new-instance v4, Le/m/a/b/j/y/j;

    invoke-direct {v4, v2, v1, v3}, Le/m/a/b/j/y/j;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 13
    iput-object v4, v0, Le/m/a/b/j/k;->c:Ljavax/inject/Provider;

    .line 14
    new-instance v5, Le/m/a/b/j/y/l;

    invoke-direct {v5, v2, v4}, Le/m/a/b/j/y/l;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 15
    instance-of v2, v5, Le/m/a/b/j/z/b/a;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    new-instance v2, Le/m/a/b/j/z/b/a;

    invoke-direct {v2, v5}, Le/m/a/b/j/z/b/a;-><init>(Ljavax/inject/Provider;)V

    move-object v5, v2

    .line 17
    :goto_1
    iput-object v5, v0, Le/m/a/b/j/k;->d:Ljavax/inject/Provider;

    .line 18
    iget-object v2, v0, Le/m/a/b/j/k;->b:Ljavax/inject/Provider;

    sget-object v4, Le/m/a/b/j/c0/i/c0$a;->a:Le/m/a/b/j/c0/i/c0;

    sget-object v5, Le/m/a/b/j/c0/i/e0$a;->a:Le/m/a/b/j/c0/i/e0;

    .line 19
    new-instance v8, Le/m/a/b/j/c0/i/k0;

    invoke-direct {v8, v2, v4, v5}, Le/m/a/b/j/c0/i/k0;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 20
    iput-object v8, v0, Le/m/a/b/j/k;->e:Ljavax/inject/Provider;

    .line 21
    new-instance v9, Le/m/a/b/j/c0/i/d0;

    invoke-direct {v9, v2}, Le/m/a/b/j/c0/i/d0;-><init>(Ljavax/inject/Provider;)V

    .line 22
    iput-object v9, v0, Le/m/a/b/j/k;->f:Ljavax/inject/Provider;

    .line 23
    sget-object v7, Le/m/a/b/j/c0/i/f0$a;->a:Le/m/a/b/j/c0/i/f0;

    .line 24
    new-instance v2, Le/m/a/b/j/c0/i/i0;

    move-object v4, v2

    move-object v5, v1

    move-object v6, v3

    invoke-direct/range {v4 .. v9}, Le/m/a/b/j/c0/i/i0;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 25
    instance-of v4, v2, Le/m/a/b/j/z/b/a;

    if-eqz v4, :cond_2

    goto :goto_2

    .line 26
    :cond_2
    new-instance v4, Le/m/a/b/j/z/b/a;

    invoke-direct {v4, v2}, Le/m/a/b/j/z/b/a;-><init>(Ljavax/inject/Provider;)V

    move-object v2, v4

    .line 27
    :goto_2
    iput-object v2, v0, Le/m/a/b/j/k;->g:Ljavax/inject/Provider;

    .line 28
    new-instance v4, Le/m/a/b/j/c0/f;

    invoke-direct {v4, v1}, Le/m/a/b/j/c0/f;-><init>(Ljavax/inject/Provider;)V

    .line 29
    iput-object v4, v0, Le/m/a/b/j/k;->h:Ljavax/inject/Provider;

    .line 30
    iget-object v11, v0, Le/m/a/b/j/k;->b:Ljavax/inject/Provider;

    .line 31
    new-instance v14, Le/m/a/b/j/c0/g;

    invoke-direct {v14, v11, v2, v4, v3}, Le/m/a/b/j/c0/g;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 32
    iput-object v14, v0, Le/m/a/b/j/k;->i:Ljavax/inject/Provider;

    .line 33
    iget-object v15, v0, Le/m/a/b/j/k;->a:Ljavax/inject/Provider;

    iget-object v12, v0, Le/m/a/b/j/k;->d:Ljavax/inject/Provider;

    .line 34
    new-instance v13, Le/m/a/b/j/c0/d;

    move-object v5, v13

    move-object v6, v15

    move-object v7, v12

    move-object v8, v14

    move-object v9, v2

    move-object v10, v2

    invoke-direct/range {v5 .. v10}, Le/m/a/b/j/c0/d;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 35
    iput-object v13, v0, Le/m/a/b/j/k;->j:Ljavax/inject/Provider;

    .line 36
    new-instance v10, Le/m/a/b/j/c0/h/u;

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v2

    move-object v9, v15

    move-object v12, v10

    move-object v10, v2

    move-object v11, v1

    move-object/from16 p1, v1

    move-object v1, v12

    move-object v12, v3

    move-object/from16 v16, v13

    move-object v13, v2

    invoke-direct/range {v4 .. v13}, Le/m/a/b/j/c0/h/u;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 37
    iput-object v1, v0, Le/m/a/b/j/k;->k:Ljavax/inject/Provider;

    .line 38
    new-instance v9, Le/m/a/b/j/c0/h/w;

    invoke-direct {v9, v15, v2, v14, v2}, Le/m/a/b/j/c0/h/w;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 39
    iput-object v9, v0, Le/m/a/b/j/k;->l:Ljavax/inject/Provider;

    .line 40
    new-instance v2, Le/m/a/b/j/x;

    move-object v4, v2

    move-object/from16 v5, p1

    move-object v6, v3

    move-object/from16 v7, v16

    move-object v8, v1

    invoke-direct/range {v4 .. v9}, Le/m/a/b/j/x;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 41
    instance-of v1, v2, Le/m/a/b/j/z/b/a;

    if-eqz v1, :cond_3

    goto :goto_3

    .line 42
    :cond_3
    new-instance v1, Le/m/a/b/j/z/b/a;

    invoke-direct {v1, v2}, Le/m/a/b/j/z/b/a;-><init>(Ljavax/inject/Provider;)V

    move-object v2, v1

    .line 43
    :goto_3
    iput-object v2, v0, Le/m/a/b/j/k;->m:Ljavax/inject/Provider;

    return-void
.end method

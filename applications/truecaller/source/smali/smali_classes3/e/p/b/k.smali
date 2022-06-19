.class public Le/p/b/k;
.super Le/p/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/p/b/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final m:Ljava/lang/Object;

.field public n:Le/p/b/e;


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/Picasso;Le/p/b/x;IILjava/lang/Object;Ljava/lang/String;Le/p/b/e;)V
    .locals 12

    move-object v11, p0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v8, p6

    .line 1
    invoke-direct/range {v0 .. v10}, Le/p/b/a;-><init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Le/p/b/x;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v11, Le/p/b/k;->m:Ljava/lang/Object;

    move-object/from16 v0, p7

    .line 3
    iput-object v0, v11, Le/p/b/k;->n:Le/p/b/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/p/b/a;->l:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/p/b/k;->n:Le/p/b/e;

    return-void
.end method

.method public b(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$d;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/p/b/k;->n:Le/p/b/e;

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Le/i/b/r1/m;

    .line 3
    iget-object p1, p1, Le/i/b/r1/m;->a:Le/i/b/w1/a$a;

    invoke-virtual {p1}, Le/i/b/w1/a$a;->a()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/p/b/k;->n:Le/p/b/e;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Le/i/b/r1/m;

    const-string v1, "e"

    .line 3
    invoke-static {p1, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, v0, Le/i/b/r1/m;->a:Le/i/b/w1/a$a;

    invoke-virtual {p1}, Le/i/b/w1/a$a;->a()V

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/p/b/k;->m:Ljava/lang/Object;

    return-object v0
.end method

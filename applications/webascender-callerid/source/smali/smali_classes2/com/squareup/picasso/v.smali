.class abstract Lcom/squareup/picasso/v;
.super Lcom/squareup/picasso/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/v$a;,
        Lcom/squareup/picasso/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/picasso/a<",
        "Lcom/squareup/picasso/v$b;",
        ">;"
    }
.end annotation


# instance fields
.field final m:Landroid/widget/RemoteViews;

.field final n:I

.field o:Lcom/squareup/picasso/e;

.field private p:Lcom/squareup/picasso/v$b;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/w;Landroid/widget/RemoteViews;IIIILjava/lang/Object;Ljava/lang/String;Lcom/squareup/picasso/e;)V
    .locals 12

    move-object v11, p0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p5

    move-object/from16 v8, p9

    move-object/from16 v9, p8

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/squareup/picasso/a;-><init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Lcom/squareup/picasso/w;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object v0, p3

    .line 2
    iput-object v0, v11, Lcom/squareup/picasso/v;->m:Landroid/widget/RemoteViews;

    move/from16 v0, p4

    .line 3
    iput v0, v11, Lcom/squareup/picasso/v;->n:I

    move-object/from16 v0, p10

    .line 4
    iput-object v0, v11, Lcom/squareup/picasso/v;->o:Lcom/squareup/picasso/e;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/squareup/picasso/a;->a()V

    .line 2
    iget-object v0, p0, Lcom/squareup/picasso/v;->o:Lcom/squareup/picasso/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/squareup/picasso/v;->o:Lcom/squareup/picasso/e;

    :cond_0
    return-void
.end method

.method b(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$e;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/squareup/picasso/v;->m:Landroid/widget/RemoteViews;

    iget v0, p0, Lcom/squareup/picasso/v;->n:I

    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2
    invoke-virtual {p0}, Lcom/squareup/picasso/v;->p()V

    .line 3
    iget-object p1, p0, Lcom/squareup/picasso/v;->o:Lcom/squareup/picasso/e;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/squareup/picasso/e;->onSuccess()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/squareup/picasso/a;->g:I

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/squareup/picasso/v;->o(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/v;->o:Lcom/squareup/picasso/e;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lcom/squareup/picasso/e;->a(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method n()Lcom/squareup/picasso/v$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/v;->p:Lcom/squareup/picasso/v$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/squareup/picasso/v$b;

    iget-object v1, p0, Lcom/squareup/picasso/v;->m:Landroid/widget/RemoteViews;

    iget v2, p0, Lcom/squareup/picasso/v;->n:I

    invoke-direct {v0, v1, v2}, Lcom/squareup/picasso/v$b;-><init>(Landroid/widget/RemoteViews;I)V

    iput-object v0, p0, Lcom/squareup/picasso/v;->p:Lcom/squareup/picasso/v$b;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/v;->p:Lcom/squareup/picasso/v$b;

    return-object v0
.end method

.method o(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/v;->m:Landroid/widget/RemoteViews;

    iget v1, p0, Lcom/squareup/picasso/v;->n:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2
    invoke-virtual {p0}, Lcom/squareup/picasso/v;->p()V

    return-void
.end method

.method abstract p()V
.end method

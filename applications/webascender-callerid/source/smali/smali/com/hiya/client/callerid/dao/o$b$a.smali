.class final Lcom/hiya/client/callerid/dao/o$b$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/o$b;->a(Lretrofit2/Response;)Lg/g/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/dao/o$b;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/o$b;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/o$b$a;->f:Lcom/hiya/client/callerid/dao/o$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/o$b$a;->f:Lcom/hiya/client/callerid/dao/o$b;

    iget-object v1, v0, Lcom/hiya/client/callerid/dao/o$b;->i:Lg/g/b/c/d;

    sget-object v2, Lg/g/b/c/d;->BG_LOGO:Lg/g/b/c/d;

    if-ne v1, v2, :cond_0

    .line 2
    iget-object v0, v0, Lcom/hiya/client/callerid/dao/o$b;->f:Lcom/hiya/client/callerid/dao/o;

    invoke-static {v0}, Lcom/hiya/client/callerid/dao/o;->e(Lcom/hiya/client/callerid/dao/o;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/hiya/client/callerid/dao/o;->a(Lcom/hiya/client/callerid/dao/o;Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lcom/hiya/client/callerid/dao/o;->b(Lcom/hiya/client/callerid/dao/o;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/dao/o$b$a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

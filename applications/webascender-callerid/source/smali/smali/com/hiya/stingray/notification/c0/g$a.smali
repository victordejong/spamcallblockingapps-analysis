.class Lcom/hiya/stingray/notification/c0/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/notification/c0/g;->a(Lcom/hiya/stingray/t/s0;Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Landroid/content/Context;

.field final synthetic g:Lcom/hiya/stingray/t/s0;

.field final synthetic h:Lcom/hiya/stingray/notification/p;

.field final synthetic i:Lcom/hiya/stingray/ui/o;

.field final synthetic j:Lcom/hiya/stingray/notification/c0/g;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/notification/c0/g;Landroid/content/Context;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/notification/c0/g$a;->j:Lcom/hiya/stingray/notification/c0/g;

    iput-object p2, p0, Lcom/hiya/stingray/notification/c0/g$a;->f:Landroid/content/Context;

    iput-object p3, p0, Lcom/hiya/stingray/notification/c0/g$a;->g:Lcom/hiya/stingray/t/s0;

    iput-object p4, p0, Lcom/hiya/stingray/notification/c0/g$a;->h:Lcom/hiya/stingray/notification/p;

    iput-object p5, p0, Lcom/hiya/stingray/notification/c0/g$a;->i:Lcom/hiya/stingray/ui/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/notification/c0/g$a;->j:Lcom/hiya/stingray/notification/c0/g;

    iget-object v1, p0, Lcom/hiya/stingray/notification/c0/g$a;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/hiya/stingray/notification/c0/g$a;->g:Lcom/hiya/stingray/t/s0;

    iget-object v4, p0, Lcom/hiya/stingray/notification/c0/g$a;->h:Lcom/hiya/stingray/notification/p;

    iget-object v5, p0, Lcom/hiya/stingray/notification/c0/g$a;->i:Lcom/hiya/stingray/ui/o;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/g;->k(Lcom/hiya/stingray/notification/c0/g;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/notification/c0/g$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

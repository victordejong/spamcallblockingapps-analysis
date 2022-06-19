.class final Lcom/hiya/stingray/ui/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/q;->h(Landroid/content/res/Resources;I)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Landroid/content/res/Resources;

.field final synthetic g:I


# direct methods
.method constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/q$a;->f:Landroid/content/res/Resources;

    iput p2, p0, Lcom/hiya/stingray/ui/q$a;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/q$a;->f:Landroid/content/res/Resources;

    iget v1, p0, Lcom/hiya/stingray/ui/q$a;->g:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/q$a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

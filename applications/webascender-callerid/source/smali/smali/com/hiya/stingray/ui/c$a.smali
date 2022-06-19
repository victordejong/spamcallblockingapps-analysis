.class Lcom/hiya/stingray/ui/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/c;->i(Landroid/widget/ImageView;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/b;ZLcom/squareup/picasso/Picasso;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/c;Landroid/widget/ImageView;I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/hiya/stingray/ui/c$a;->a:Landroid/widget/ImageView;

    iput p3, p0, Lcom/hiya/stingray/ui/c$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/c$a;->a:Landroid/widget/ImageView;

    iget v0, p0, Lcom/hiya/stingray/ui/c$a;->b:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method

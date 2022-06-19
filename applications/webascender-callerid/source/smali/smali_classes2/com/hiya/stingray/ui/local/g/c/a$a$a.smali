.class final Lcom/hiya/stingray/ui/local/g/c/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/g/c/a$a;->n(Lcom/hiya/stingray/t/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/g/c/a$a;

.field final synthetic g:Lcom/hiya/stingray/t/i0;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/g/c/a$a;Lcom/hiya/stingray/t/i0;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/g/c/a$a$a;->f:Lcom/hiya/stingray/ui/local/g/c/a$a;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/g/c/a$a$a;->g:Lcom/hiya/stingray/t/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/g/c/a$a$a;->f:Lcom/hiya/stingray/ui/local/g/c/a$a;

    iget-object p1, p1, Lcom/hiya/stingray/ui/local/g/c/a$a;->a:Lcom/hiya/stingray/ui/local/g/c/a;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/g/c/a;->c()Lkotlin/w/b/l;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/c/a$a$a;->g:Lcom/hiya/stingray/t/i0;

    invoke-interface {p1, v0}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/r;

    :cond_0
    return-void
.end method

.class public final Lcom/hiya/stingray/util/e0$c;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/util/e0;->l(Landroid/widget/TextView;Lkotlin/z/c;Ljava/lang/String;ILkotlin/w/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic f:Lkotlin/w/b/l;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/w/b/l;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/util/e0$c;->f:Lkotlin/w/b/l;

    iput-object p2, p0, Lcom/hiya/stingray/util/e0$c;->g:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/util/e0$c;->f:Lkotlin/w/b/l;

    iget-object v0, p0, Lcom/hiya/stingray/util/e0$c;->g:Ljava/lang/String;

    invoke-interface {p1, v0}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

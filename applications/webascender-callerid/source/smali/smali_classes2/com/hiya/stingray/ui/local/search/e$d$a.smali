.class final Lcom/hiya/stingray/ui/local/search/e$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/search/e$d;->n(Lcom/hiya/stingray/t/h1/i;Lkotlin/w/b/a;Lcom/hiya/stingray/ui/login/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lkotlin/w/b/a;


# direct methods
.method constructor <init>(Lkotlin/w/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/e$d$a;->f:Lkotlin/w/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/search/e$d$a;->f:Lkotlin/w/b/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/w/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/r;

    :cond_0
    return-void
.end method

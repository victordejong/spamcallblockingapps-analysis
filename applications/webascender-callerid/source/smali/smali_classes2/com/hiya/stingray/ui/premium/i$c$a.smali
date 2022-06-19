.class final Lcom/hiya/stingray/ui/premium/i$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/i$c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/premium/i$c;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/i$c;I)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/i$c$a;->a:Lcom/hiya/stingray/ui/premium/i$c;

    iput p2, p0, Lcom/hiya/stingray/ui/premium/i$c$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/i$c$a;->a:Lcom/hiya/stingray/ui/premium/i$c;

    invoke-static {p1}, Lcom/hiya/stingray/ui/premium/i$c;->a(Lcom/hiya/stingray/ui/premium/i$c;)Lkotlin/w/b/p;

    move-result-object p1

    iget v0, p0, Lcom/hiya/stingray/ui/premium/i$c$a;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lkotlin/w/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

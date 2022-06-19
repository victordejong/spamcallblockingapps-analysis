.class final Lcom/hiya/stingray/ui/premium/b0$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/b0$g;->a(Lkotlin/w/b/a;)V
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/b0$g$a;->f:Lkotlin/w/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "dialogInterface"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/hiya/stingray/ui/premium/b0$g$a;->f:Lkotlin/w/b/a;

    invoke-interface {p2}, Lkotlin/w/b/a;->invoke()Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

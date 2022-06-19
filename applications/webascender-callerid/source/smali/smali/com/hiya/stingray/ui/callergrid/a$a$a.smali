.class final Lcom/hiya/stingray/ui/callergrid/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/callergrid/a$a;->p(Landroid/content/Context;ILcom/hiya/stingray/t/g0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/callergrid/a$a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/callergrid/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/a$a$a;->f:Lcom/hiya/stingray/ui/callergrid/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/callergrid/a$a$a;->f:Lcom/hiya/stingray/ui/callergrid/a$a;

    invoke-static {p1}, Lcom/hiya/stingray/ui/callergrid/a$a;->o(Lcom/hiya/stingray/ui/callergrid/a$a;)Lkotlin/w/b/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/w/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/r;

    :cond_0
    return-void
.end method

.class final Lcom/hiya/stingray/ui/contactdetails/section/o$b$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/contactdetails/section/o$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/contactdetails/section/o$b;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/contactdetails/section/o$b;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$b$a;->f:Lcom/hiya/stingray/ui/contactdetails/section/o$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/r;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$b$a;->f:Lcom/hiya/stingray/ui/contactdetails/section/o$b;

    iget-object v0, v0, Lcom/hiya/stingray/ui/contactdetails/section/o$b;->f:Lkotlin/w/b/a;

    invoke-interface {v0}, Lkotlin/w/b/a;->invoke()Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$b$a;->f:Lcom/hiya/stingray/ui/contactdetails/section/o$b;

    iget-object v0, v0, Lcom/hiya/stingray/ui/contactdetails/section/o$b;->g:Lcom/hiya/stingray/ui/contactdetails/section/o;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/contactdetails/section/o;->g()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$b$a;->f:Lcom/hiya/stingray/ui/contactdetails/section/o$b;

    iget-object v2, v2, Lcom/hiya/stingray/ui/contactdetails/section/o$b;->g:Lcom/hiya/stingray/ui/contactdetails/section/o;

    invoke-virtual {v2}, Lcom/hiya/stingray/ui/contactdetails/section/o;->g()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$b$a;->f:Lcom/hiya/stingray/ui/contactdetails/section/o$b;

    iget-object v1, v1, Lcom/hiya/stingray/ui/contactdetails/section/o$b;->h:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hiya/stingray/ui/submitreport/ReportActivity;->O(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x14000000

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v1, Lkotlin/r;->a:Lkotlin/r;

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/contactdetails/section/o$b$a;->a()Lkotlin/r;

    move-result-object v0

    return-object v0
.end method

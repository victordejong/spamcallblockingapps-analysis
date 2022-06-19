.class final Lcom/hiya/stingray/ui/local/g/c/b$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/g/c/b;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Lcom/hiya/stingray/t/i0;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/g/c/b;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/g/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/g/c/b$a;->f:Lcom/hiya/stingray/ui/local/g/c/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/i0;)V
    .locals 2

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/c/b$a;->f:Lcom/hiya/stingray/ui/local/g/c/b;

    sget-object v1, Lcom/hiya/stingray/ui/local/common/a;->p:Lcom/hiya/stingray/ui/local/common/a$a;

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/ui/local/common/a$a;->a(Lcom/hiya/stingray/t/i0;)Lcom/hiya/stingray/ui/local/common/a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hiya/stingray/ui/local/c;->a(Lcom/hiya/stingray/ui/common/i;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/i0;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/g/c/b$a;->a(Lcom/hiya/stingray/t/i0;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

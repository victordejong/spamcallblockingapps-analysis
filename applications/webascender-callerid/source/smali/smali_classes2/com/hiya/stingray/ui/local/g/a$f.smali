.class final Lcom/hiya/stingray/ui/local/g/a$f;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/g/a;->o1()V
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
.field final synthetic f:Lcom/hiya/stingray/ui/local/g/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/g/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/g/a$f;->f:Lcom/hiya/stingray/ui/local/g/a;

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
    invoke-virtual {p1}, Lcom/hiya/stingray/t/i0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/g/a$f;->f:Lcom/hiya/stingray/ui/local/g/a;

    new-instance v0, Lcom/hiya/stingray/ui/local/g/c/b;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/local/g/c/b;-><init>()V

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/local/c;->a(Lcom/hiya/stingray/ui/common/i;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/a$f;->f:Lcom/hiya/stingray/ui/local/g/a;

    sget-object v1, Lcom/hiya/stingray/ui/local/common/a;->p:Lcom/hiya/stingray/ui/local/common/a$a;

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/ui/local/common/a$a;->a(Lcom/hiya/stingray/t/i0;)Lcom/hiya/stingray/ui/local/common/a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hiya/stingray/ui/local/c;->a(Lcom/hiya/stingray/ui/common/i;Landroidx/fragment/app/Fragment;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/i0;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/g/a$f;->a(Lcom/hiya/stingray/t/i0;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

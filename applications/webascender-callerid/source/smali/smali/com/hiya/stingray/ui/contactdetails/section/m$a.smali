.class Lcom/hiya/stingray/ui/contactdetails/section/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/contactdetails/section/m;->r(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;Lcom/hiya/stingray/t/j0;Lcom/hiya/stingray/t/d0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/t/d0;

.field final synthetic g:Lcom/hiya/stingray/ui/contactdetails/section/m;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/contactdetails/section/m;Lcom/hiya/stingray/t/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/m$a;->g:Lcom/hiya/stingray/ui/contactdetails/section/m;

    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/m$a;->f:Lcom/hiya/stingray/t/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/m$a;->g:Lcom/hiya/stingray/ui/contactdetails/section/m;

    invoke-static {v0}, Lcom/hiya/stingray/ui/contactdetails/section/m;->c(Lcom/hiya/stingray/ui/contactdetails/section/m;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/u;->d(Ljava/lang/String;Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/m$a;->g:Lcom/hiya/stingray/ui/contactdetails/section/m;

    invoke-static {p1}, Lcom/hiya/stingray/ui/contactdetails/section/m;->d(Lcom/hiya/stingray/ui/contactdetails/section/m;)Lcom/hiya/stingray/ui/contactdetails/v;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/m$a;->f:Lcom/hiya/stingray/t/d0;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/contactdetails/v;->m(Lcom/hiya/stingray/t/d0;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/section/m$a;->a(Ljava/lang/String;)V

    return-void
.end method

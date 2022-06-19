.class final Lcom/hiya/stingray/ui/local/f/m/d$g;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/f/m/d;-><init>(Lcom/hiya/stingray/manager/o4/a;Li/c/b0/c/a;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/ui/local/f/m/a;Lcom/hiya/stingray/ui/local/f/m/g;Lcom/hiya/stingray/ui/local/f/m/i;Lcom/hiya/stingray/ui/local/f/m/b;Lcom/hiya/stingray/ui/local/f/m/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Lcom/hiya/stingray/ui/local/f/m/h<",
        "-",
        "Lcom/hiya/stingray/t/h1/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/f/m/d;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/f/m/d;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/d$g;->f:Lcom/hiya/stingray/ui/local/f/m/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/hiya/stingray/ui/local/f/m/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hiya/stingray/ui/local/f/m/h<",
            "Lcom/hiya/stingray/t/h1/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/d$g;->f:Lcom/hiya/stingray/ui/local/f/m/d;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/f/m/d;->y(Lcom/hiya/stingray/ui/local/f/m/d;)Lcom/hiya/stingray/ui/local/f/m/i;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/f/m/d$g;->f:Lcom/hiya/stingray/ui/local/f/m/d;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/f/a;->h(Lcom/hiya/stingray/ui/local/f/m/f;)V

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/local/f/m/h;

    invoke-direct {v1, v0}, Lcom/hiya/stingray/ui/local/f/m/h;-><init>(Lcom/hiya/stingray/ui/local/f/a;)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/f/m/d$g;->a()Lcom/hiya/stingray/ui/local/f/m/h;

    move-result-object v0

    return-object v0
.end method

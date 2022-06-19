.class final Lcom/hiya/stingray/ui/local/settings/i$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/settings/i;->setupRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/p<",
        "Lcom/hiya/stingray/t/a1;",
        "Ljava/lang/Boolean;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/settings/i;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/settings/i;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/i$a;->f:Lcom/hiya/stingray/ui/local/settings/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/a1;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "setting"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/i$a;->f:Lcom/hiya/stingray/ui/local/settings/i;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/ui/local/settings/i;->k1(Lcom/hiya/stingray/t/a1;Ljava/lang/Boolean;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/a1;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/local/settings/i$a;->a(Lcom/hiya/stingray/t/a1;Ljava/lang/Boolean;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

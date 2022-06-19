.class final Lcom/hiya/stingray/ui/local/location/SetLocationActivity$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Lcom/hiya/stingray/t/h1/i;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$a;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/h1/i;)V
    .locals 10

    const-string v0, "place"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$a;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    sget-object v7, Lcom/hiya/stingray/t/h1/i$a;->RECENT:Lcom/hiya/stingray/t/h1/i$a;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lcom/hiya/stingray/t/h1/i;->b(Lcom/hiya/stingray/t/h1/i;DDLjava/lang/String;Lcom/hiya/stingray/t/h1/i$a;ILjava/lang/Object;)Lcom/hiya/stingray/t/h1/i;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->l(Lcom/hiya/stingray/t/h1/i;Z)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/h1/i;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$a;->a(Lcom/hiya/stingray/t/h1/i;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

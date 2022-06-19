.class final Lcom/hiya/stingray/manager/g1$n;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/g1;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/b3$c;

.field final synthetic g:Lcom/hiya/stingray/manager/g1;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/b3$c;Lcom/hiya/stingray/manager/g1;Lkotlin/w/c/q;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/g1$n;->f:Lcom/hiya/stingray/manager/b3$c;

    iput-object p2, p0, Lcom/hiya/stingray/manager/g1$n;->g:Lcom/hiya/stingray/manager/g1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/g1$n;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/g1$n;->g:Lcom/hiya/stingray/manager/g1;

    invoke-static {v0}, Lcom/hiya/stingray/manager/g1;->d(Lcom/hiya/stingray/manager/g1;)Lcom/hiya/stingray/manager/b3;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/g1$n;->f:Lcom/hiya/stingray/manager/b3$c;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/b3;->e(Lcom/hiya/stingray/manager/b3$c;)Z

    move-result v0

    return v0
.end method

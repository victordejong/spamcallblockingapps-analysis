.class public abstract Lcom/hiya/stingray/ui/local/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/local/f/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/hiya/stingray/ui/local/f/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/hiya/stingray/ui/local/f/m/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/b;->a:Lcom/hiya/stingray/ui/local/f/m/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hiya/stingray/ui/local/f/m/f;->l()V

    return-void

    :cond_0
    const-string v0, "onChangeListener"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final f(Lcom/hiya/stingray/ui/local/f/m/f;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/b;->a:Lcom/hiya/stingray/ui/local/f/m/f;

    return-void
.end method

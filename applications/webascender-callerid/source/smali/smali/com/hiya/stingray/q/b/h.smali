.class public final synthetic Lcom/hiya/stingray/q/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/q/b/u;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/q/b/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/q/b/h;->f:Lcom/hiya/stingray/q/b/u;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/b/h;->f:Lcom/hiya/stingray/q/b/u;

    invoke-static {v0}, Lcom/hiya/stingray/q/b/u;->k(Lcom/hiya/stingray/q/b/u;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

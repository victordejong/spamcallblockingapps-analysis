.class public final synthetic Lcom/hiya/stingray/q/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/q/b/u;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/q/b/u;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/q/b/e;->f:Lcom/hiya/stingray/q/b/u;

    iput-object p2, p0, Lcom/hiya/stingray/q/b/e;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/q/b/e;->f:Lcom/hiya/stingray/q/b/u;

    iget-object v1, p0, Lcom/hiya/stingray/q/b/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/b/u;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

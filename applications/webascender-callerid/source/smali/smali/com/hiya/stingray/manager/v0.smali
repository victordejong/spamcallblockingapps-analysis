.class public final synthetic Lcom/hiya/stingray/manager/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/manager/z3;

.field public final synthetic g:Lcom/hiya/stingray/t/n0;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/manager/z3;Lcom/hiya/stingray/t/n0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/v0;->f:Lcom/hiya/stingray/manager/z3;

    iput-object p2, p0, Lcom/hiya/stingray/manager/v0;->g:Lcom/hiya/stingray/t/n0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/manager/v0;->f:Lcom/hiya/stingray/manager/z3;

    iget-object v1, p0, Lcom/hiya/stingray/manager/v0;->g:Lcom/hiya/stingray/t/n0;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/z3;->j(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/t/d0;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/hiya/stingray/manager/w2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/w2;->f()Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/w2;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/w2;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/w2$a;->f:Lcom/hiya/stingray/manager/w2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/w2$a;->f:Lcom/hiya/stingray/manager/w2;

    invoke-static {v0}, Lcom/hiya/stingray/manager/w2;->c(Lcom/hiya/stingray/manager/w2;)Lcom/hiya/stingray/util/a0;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/util/i0/d;

    sget-object v2, Lcom/hiya/stingray/util/i0/d$a;->FULL_REFRESH:Lcom/hiya/stingray/util/i0/d$a;

    invoke-direct {v1, v2}, Lcom/hiya/stingray/util/i0/d;-><init>(Lcom/hiya/stingray/util/i0/d$a;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->d(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/w2$a;->f:Lcom/hiya/stingray/manager/w2;

    invoke-static {v0}, Lcom/hiya/stingray/manager/w2;->c(Lcom/hiya/stingray/manager/w2;)Lcom/hiya/stingray/util/a0;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/util/i0/e;

    invoke-direct {v1}, Lcom/hiya/stingray/util/i0/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/w2$a;->a()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method

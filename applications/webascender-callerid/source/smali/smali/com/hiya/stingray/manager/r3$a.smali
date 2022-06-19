.class final Lcom/hiya/stingray/manager/r3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/r3;->b(Ljava/lang/String;Lcom/hiya/stingray/q/c/h/b;Z)Li/c/b0/b/e;
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
.field final synthetic f:Lcom/hiya/stingray/manager/r3;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/hiya/stingray/q/c/h/b;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/r3;Ljava/lang/String;Lcom/hiya/stingray/q/c/h/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/r3$a;->f:Lcom/hiya/stingray/manager/r3;

    iput-object p2, p0, Lcom/hiya/stingray/manager/r3$a;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/hiya/stingray/manager/r3$a;->h:Lcom/hiya/stingray/q/c/h/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/r3$a;->f:Lcom/hiya/stingray/manager/r3;

    invoke-static {v0}, Lcom/hiya/stingray/manager/r3;->a(Lcom/hiya/stingray/manager/r3;)Lcom/hiya/stingray/manager/h2;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/r3$a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/hiya/stingray/manager/r3$a;->h:Lcom/hiya/stingray/q/c/h/b;

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/manager/h2;->t(Ljava/lang/String;Lcom/hiya/stingray/q/c/h/b;)V

    return-void
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/r3$a;->a()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method

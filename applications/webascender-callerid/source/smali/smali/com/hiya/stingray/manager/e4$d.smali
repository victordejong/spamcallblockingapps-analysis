.class final Lcom/hiya/stingray/manager/e4$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/e4;->g(Lcom/hiya/stingray/t/c1;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Ljava/lang/Throwable;",
        "Li/c/b0/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/e4;

.field final synthetic g:Lcom/hiya/stingray/t/c1;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/e4;Lcom/hiya/stingray/t/c1;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/e4$d;->f:Lcom/hiya/stingray/manager/e4;

    iput-object p2, p0, Lcom/hiya/stingray/manager/e4$d;->g:Lcom/hiya/stingray/t/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Li/c/b0/b/e;
    .locals 2

    .line 1
    invoke-static {p1}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/manager/e4$d;->f:Lcom/hiya/stingray/manager/e4;

    iget-object v0, p0, Lcom/hiya/stingray/manager/e4$d;->g:Lcom/hiya/stingray/t/c1;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/hiya/stingray/manager/e4;->d(Lcom/hiya/stingray/manager/e4;Lcom/hiya/stingray/t/c1;Lcom/hiya/stingray/t/g1/a;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/e4$d;->a(Ljava/lang/Throwable;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.class final Lcom/hiya/stingray/q/b/l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/b/l;->d(I)Li/c/b0/b/v;
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
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/q/b/l;

.field final synthetic g:I


# direct methods
.method constructor <init>(Lcom/hiya/stingray/q/b/l;I)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/b/l$c;->f:Lcom/hiya/stingray/q/b/l;

    iput p2, p0, Lcom/hiya/stingray/q/b/l$c;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/base/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/j<",
            "Lcom/hiya/stingray/t/w0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/b/l$c;->f:Lcom/hiya/stingray/q/b/l;

    invoke-static {v0}, Lcom/hiya/stingray/q/b/l;->a(Lcom/hiya/stingray/q/b/l;)Lcom/hiya/stingray/q/b/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/v;->a()Lio/realm/y;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    const-class v1, Lcom/hiya/stingray/t/w0;

    invoke-virtual {v0, v1}, Lio/realm/y;->A1(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    .line 3
    iget v2, p0, Lcom/hiya/stingray/q/b/l$c;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "callLogId"

    invoke-virtual {v1, v3, v2}, Lio/realm/RealmQuery;->h(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    invoke-virtual {v1}, Lio/realm/RealmQuery;->o()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/hiya/stingray/t/w0;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Lio/realm/y;->q0(Lio/realm/e0;)Lio/realm/e0;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/t/w0;

    .line 6
    :cond_0
    invoke-virtual {v0}, Lio/realm/y;->close()V

    .line 7
    invoke-static {v1}, Lcom/google/common/base/j;->b(Ljava/lang/Object;)Lcom/google/common/base/j;

    move-result-object v0

    return-object v0

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/common/base/j;->a()Lcom/google/common/base/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/b/l$c;->a()Lcom/google/common/base/j;

    move-result-object v0

    return-object v0
.end method

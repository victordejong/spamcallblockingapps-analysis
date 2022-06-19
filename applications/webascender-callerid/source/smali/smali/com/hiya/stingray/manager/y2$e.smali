.class final Lcom/hiya/stingray/manager/y2$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/y2;->m(Ljava/lang/String;)Li/c/b0/b/v;
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
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/y2;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/y2;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/y2$e;->f:Lcom/hiya/stingray/manager/y2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/b/c/f;)Lcom/hiya/stingray/t/h0;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/y2$e;->f:Lcom/hiya/stingray/manager/y2;

    invoke-static {v0}, Lcom/hiya/stingray/manager/y2;->d(Lcom/hiya/stingray/manager/y2;)Lcom/hiya/stingray/t/i1/f0;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/hiya/stingray/t/i1/f0;->b(Lcom/hiya/stingray/t/i1/f0;Lg/g/b/c/f;ZILjava/lang/Object;)Lcom/hiya/stingray/t/h0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/b/c/f;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/y2$e;->a(Lg/g/b/c/f;)Lcom/hiya/stingray/t/h0;

    move-result-object p1

    return-object p1
.end method

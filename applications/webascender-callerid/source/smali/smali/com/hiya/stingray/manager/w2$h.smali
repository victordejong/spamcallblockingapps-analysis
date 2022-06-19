.class final Lcom/hiya/stingray/manager/w2$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/w2;->n(Lcom/hiya/stingray/t/u0;)Li/c/b0/b/e;
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
        "Lg/g/b/c/f;",
        "Li/c/b0/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/w2;

.field final synthetic g:Lcom/hiya/stingray/t/u0;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/w2;Lcom/hiya/stingray/t/u0;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/w2$h;->f:Lcom/hiya/stingray/manager/w2;

    iput-object p2, p0, Lcom/hiya/stingray/manager/w2$h;->g:Lcom/hiya/stingray/t/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/b/c/f;)Li/c/b0/b/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/w2$h;->f:Lcom/hiya/stingray/manager/w2;

    invoke-static {v0}, Lcom/hiya/stingray/manager/w2;->b(Lcom/hiya/stingray/manager/w2;)Lcom/hiya/stingray/manager/o1;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/w2$h;->g:Lcom/hiya/stingray/t/u0;

    invoke-virtual {v1}, Lcom/hiya/stingray/t/u0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/o1;->j0(Ljava/lang/String;Lg/g/b/c/f;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/b/c/f;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/w2$h;->a(Lg/g/b/c/f;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

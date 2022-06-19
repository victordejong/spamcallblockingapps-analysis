.class final Lcom/hiya/stingray/manager/w2$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/w2;->i()Li/c/b0/b/e;
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
        "Lg/g/b/c/m;",
        "Li/c/b0/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/w2;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/w2;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/w2$e;->f:Lcom/hiya/stingray/manager/w2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/b/c/m;)Li/c/b0/b/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/w2$e;->f:Lcom/hiya/stingray/manager/w2;

    invoke-virtual {p1}, Lg/g/b/c/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/w2;->k(Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/w2$e;->f:Lcom/hiya/stingray/manager/w2;

    invoke-virtual {p1}, Lg/g/b/c/m;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/hiya/stingray/manager/w2;->a(Lcom/hiya/stingray/manager/w2;Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/b0/b/e;->d(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/b/c/m;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/w2$e;->a(Lg/g/b/c/m;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

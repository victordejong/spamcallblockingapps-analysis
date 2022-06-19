.class final Lcom/hiya/stingray/manager/o4/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/o4/a;->k(DD)Li/c/b0/b/e0;
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
.field final synthetic f:Lcom/hiya/stingray/manager/o4/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/o4/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/o4/a$g;->f:Lcom/hiya/stingray/manager/o4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/a/a/i/p/h/c;)Lcom/hiya/stingray/t/h1/k;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o4/a$g;->f:Lcom/hiya/stingray/manager/o4/a;

    invoke-static {v0}, Lcom/hiya/stingray/manager/o4/a;->d(Lcom/hiya/stingray/manager/o4/a;)Lcom/hiya/stingray/t/i1/z0;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/i1/z0;->a(Lg/g/a/a/i/p/h/c;)Lcom/hiya/stingray/t/h1/k;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/a/a/i/p/h/c;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/o4/a$g;->a(Lg/g/a/a/i/p/h/c;)Lcom/hiya/stingray/t/h1/k;

    move-result-object p1

    return-object p1
.end method

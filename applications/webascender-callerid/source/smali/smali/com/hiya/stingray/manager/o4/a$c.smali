.class final Lcom/hiya/stingray/manager/o4/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/o4/a;->h(Ljava/lang/String;DD)Li/c/b0/b/e0;
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

    iput-object p1, p0, Lcom/hiya/stingray/manager/o4/a$c;->f:Lcom/hiya/stingray/manager/o4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/a/a/i/l/f;)Lcom/hiya/stingray/t/h1/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o4/a$c;->f:Lcom/hiya/stingray/manager/o4/a;

    invoke-static {v0}, Lcom/hiya/stingray/manager/o4/a;->b(Lcom/hiya/stingray/manager/o4/a;)Lcom/hiya/stingray/t/i1/q;

    move-result-object v0

    const-string v1, "directoryDTO"

    .line 2
    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/i1/q;->c(Lg/g/a/a/i/l/f;)Lcom/hiya/stingray/t/h1/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/a/a/i/l/f;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/o4/a$c;->a(Lg/g/a/a/i/l/f;)Lcom/hiya/stingray/t/h1/c;

    move-result-object p1

    return-object p1
.end method

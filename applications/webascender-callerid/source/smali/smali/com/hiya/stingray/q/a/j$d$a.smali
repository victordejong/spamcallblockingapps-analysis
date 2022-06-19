.class Lcom/hiya/stingray/q/a/j$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/a/j$d;->a(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/g<",
        "Lg/g/a/a/i/c;",
        "Lcom/hiya/stingray/q/c/i/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/q/a/j$d;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/q/a/j$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/q/a/j$d$a;->f:Lcom/hiya/stingray/q/a/j$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg/g/a/a/i/c;)Lcom/hiya/stingray/q/c/i/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/j$d$a;->f:Lcom/hiya/stingray/q/a/j$d;

    iget-object v0, v0, Lcom/hiya/stingray/q/a/j$d;->g:Lcom/hiya/stingray/q/a/j;

    invoke-static {v0}, Lcom/hiya/stingray/q/a/j;->m(Lcom/hiya/stingray/q/a/j;)Lcom/hiya/stingray/t/i1/a;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/q/a/j$d$a;->f:Lcom/hiya/stingray/q/a/j$d;

    iget-boolean v1, v1, Lcom/hiya/stingray/q/a/j$d;->f:Z

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/t/i1/a;->e(ZLg/g/a/a/i/c;)Lcom/hiya/stingray/q/c/i/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/a/a/i/c;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/a/j$d$a;->a(Lg/g/a/a/i/c;)Lcom/hiya/stingray/q/c/i/a;

    move-result-object p1

    return-object p1
.end method

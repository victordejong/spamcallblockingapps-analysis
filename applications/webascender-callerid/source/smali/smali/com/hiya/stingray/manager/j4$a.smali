.class final Lcom/hiya/stingray/manager/j4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/j4;->d(Lg/g/a/a/i/o/y;)Li/c/b0/b/v;
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
        "TT;",
        "Li/c/b0/b/a0<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/j4;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/j4;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/j4$a;->f:Lcom/hiya/stingray/manager/j4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/a/a/i/o/y;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/a/i/o/y;",
            ")",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/j4$a;->f:Lcom/hiya/stingray/manager/j4;

    invoke-static {v0}, Lcom/hiya/stingray/manager/j4;->a(Lcom/hiya/stingray/manager/j4;)Lcom/hiya/stingray/q/a/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hiya/stingray/q/a/o;->b(Lg/g/a/a/i/o/y;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/a/a/i/o/y;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/j4$a;->a(Lg/g/a/a/i/o/y;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

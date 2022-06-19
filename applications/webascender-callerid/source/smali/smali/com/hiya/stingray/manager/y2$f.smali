.class final Lcom/hiya/stingray/manager/y2$f;
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
        "TT;",
        "Li/c/b0/b/a0<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/y2;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/y2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/y2$f;->f:Lcom/hiya/stingray/manager/y2;

    iput-object p2, p0, Lcom/hiya/stingray/manager/y2$f;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/h0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/t/h0;",
            ")",
            "Li/c/b0/b/v<",
            "Lcom/hiya/stingray/t/h0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/y2$f;->f:Lcom/hiya/stingray/manager/y2;

    invoke-static {v0}, Lcom/hiya/stingray/manager/y2;->c(Lcom/hiya/stingray/manager/y2;)Lcom/hiya/stingray/manager/q2;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/y2$f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/q2;->b(Ljava/lang/String;Lcom/hiya/stingray/t/h0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/h0;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/y2$f;->a(Lcom/hiya/stingray/t/h0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

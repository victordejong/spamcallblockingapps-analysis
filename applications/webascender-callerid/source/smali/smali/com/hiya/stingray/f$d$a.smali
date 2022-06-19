.class final Lcom/hiya/stingray/f$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/f$d;->a(Lcom/hiya/stingray/f$b;)Li/c/b0/b/v;
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
.field final synthetic f:Lcom/hiya/stingray/f$b;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/f$b;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/f$d$a;->f:Lcom/hiya/stingray/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)Lcom/hiya/stingray/f$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/f$d$a;->f:Lcom/hiya/stingray/f$b;

    const-string v1, "it"

    .line 2
    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/f$b;->g(Z)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/f$d$a;->a(Ljava/lang/Boolean;)Lcom/hiya/stingray/f$b;

    move-result-object p1

    return-object p1
.end method

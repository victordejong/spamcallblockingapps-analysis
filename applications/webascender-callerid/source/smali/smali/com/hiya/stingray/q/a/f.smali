.class public final synthetic Lcom/hiya/stingray/q/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/q/a/p;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/q/a/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/q/a/f;->f:Lcom/hiya/stingray/q/a/p;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/a/f;->f:Lcom/hiya/stingray/q/a/p;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/a/p;->h(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

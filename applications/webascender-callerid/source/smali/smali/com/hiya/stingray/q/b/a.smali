.class public final synthetic Lcom/hiya/stingray/q/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/util/i$a;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/util/i$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/q/b/a;->f:Lcom/hiya/stingray/util/i$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/b/a;->f:Lcom/hiya/stingray/util/i$a;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/hiya/stingray/q/b/k;->f(Lcom/hiya/stingray/util/i$a;Ljava/util/List;)Lcom/hiya/stingray/q/c/a;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/hiya/stingray/manager/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/c;


# instance fields
.field public final synthetic a:Lcom/hiya/stingray/manager/z3;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/manager/z3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/u0;->a:Lcom/hiya/stingray/manager/z3;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/manager/u0;->a:Lcom/hiya/stingray/manager/z3;

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/manager/z3;->l(Ljava/util/List;Ljava/util/List;)Lcom/google/common/collect/g;

    move-result-object p1

    return-object p1
.end method

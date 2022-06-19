.class public final synthetic Lcom/hiya/stingray/manager/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/manager/o1;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/manager/o1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/m;->f:Lcom/hiya/stingray/manager/o1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/manager/m;->f:Lcom/hiya/stingray/manager/o1;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/o1;->e0(Ljava/util/ArrayList;)Li/c/b0/b/a0;

    move-result-object p1

    return-object p1
.end method

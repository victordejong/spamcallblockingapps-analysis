.class public final synthetic Lcom/hiya/stingray/manager/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/manager/g2;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/manager/g2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/p0;->f:Lcom/hiya/stingray/manager/g2;

    iput-object p2, p0, Lcom/hiya/stingray/manager/p0;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/manager/p0;->f:Lcom/hiya/stingray/manager/g2;

    iget-object v1, p0, Lcom/hiya/stingray/manager/p0;->g:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/g2;->c(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

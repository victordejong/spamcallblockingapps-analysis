.class public final synthetic Lcom/hiya/stingray/ui/calllog/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/ui/calllog/t;

.field public final synthetic g:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/ui/calllog/t;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/h;->f:Lcom/hiya/stingray/ui/calllog/t;

    iput-object p2, p0, Lcom/hiya/stingray/ui/calllog/h;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/h;->f:Lcom/hiya/stingray/ui/calllog/t;

    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/h;->g:Ljava/util/Map;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/ui/calllog/t;->M(Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.class public final synthetic Lcom/hiya/stingray/ui/calllog/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/ui/calllog/t;

.field public final synthetic g:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/ui/calllog/t;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/c;->f:Lcom/hiya/stingray/ui/calllog/t;

    iput-object p2, p0, Lcom/hiya/stingray/ui/calllog/c;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/c;->f:Lcom/hiya/stingray/ui/calllog/t;

    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/c;->g:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/calllog/t;->C(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

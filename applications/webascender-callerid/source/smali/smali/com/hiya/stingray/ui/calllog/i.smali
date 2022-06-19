.class public final synthetic Lcom/hiya/stingray/ui/calllog/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/ui/calllog/t;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/ui/calllog/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/i;->f:Lcom/hiya/stingray/ui/calllog/t;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/i;->f:Lcom/hiya/stingray/ui/calllog/t;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/calllog/t;->Q(Ljava/util/Map;)Li/c/b0/b/a0;

    move-result-object p1

    return-object p1
.end method

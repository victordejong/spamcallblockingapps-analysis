.class public final synthetic Lcom/hiya/stingray/ui/calllog/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/ui/calllog/t;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/ui/calllog/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/e;->f:Lcom/hiya/stingray/ui/calllog/t;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/e;->f:Lcom/hiya/stingray/ui/calllog/t;

    check-cast p1, Lcom/hiya/stingray/manager/u3$h;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/calllog/t;->S(Lcom/hiya/stingray/manager/u3$h;)V

    return-void
.end method

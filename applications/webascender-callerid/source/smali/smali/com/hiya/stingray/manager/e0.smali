.class public final synthetic Lcom/hiya/stingray/manager/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/c;


# instance fields
.field public final synthetic a:Lcom/hiya/stingray/manager/c2;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/manager/c2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/e0;->a:Lcom/hiya/stingray/manager/c2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/manager/e0;->a:Lcom/hiya/stingray/manager/c2;

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/manager/c2;->z(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

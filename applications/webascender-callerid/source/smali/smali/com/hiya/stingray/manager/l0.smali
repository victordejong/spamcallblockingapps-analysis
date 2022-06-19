.class public final synthetic Lcom/hiya/stingray/manager/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/manager/c2;

.field public final synthetic g:Ljava/util/Set;

.field public final synthetic h:Lcom/hiya/stingray/t/d0;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/manager/c2;Ljava/util/Set;Lcom/hiya/stingray/t/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/l0;->f:Lcom/hiya/stingray/manager/c2;

    iput-object p2, p0, Lcom/hiya/stingray/manager/l0;->g:Ljava/util/Set;

    iput-object p3, p0, Lcom/hiya/stingray/manager/l0;->h:Lcom/hiya/stingray/t/d0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/hiya/stingray/manager/l0;->f:Lcom/hiya/stingray/manager/c2;

    iget-object v1, p0, Lcom/hiya/stingray/manager/l0;->g:Ljava/util/Set;

    iget-object v2, p0, Lcom/hiya/stingray/manager/l0;->h:Lcom/hiya/stingray/t/d0;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1}, Lcom/hiya/stingray/manager/c2;->x(Ljava/util/Set;Lcom/hiya/stingray/t/d0;Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

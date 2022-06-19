.class public final synthetic Lcom/hiya/stingray/manager/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/g;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/manager/o1;

.field public final synthetic g:Ljava/util/Map;

.field public final synthetic h:Z

.field public final synthetic i:Z

.field public final synthetic j:Z


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/manager/o1;Ljava/util/Map;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/h;->f:Lcom/hiya/stingray/manager/o1;

    iput-object p2, p0, Lcom/hiya/stingray/manager/h;->g:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/hiya/stingray/manager/h;->h:Z

    iput-boolean p4, p0, Lcom/hiya/stingray/manager/h;->i:Z

    iput-boolean p5, p0, Lcom/hiya/stingray/manager/h;->j:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/hiya/stingray/manager/h;->f:Lcom/hiya/stingray/manager/o1;

    iget-object v1, p0, Lcom/hiya/stingray/manager/h;->g:Ljava/util/Map;

    iget-boolean v2, p0, Lcom/hiya/stingray/manager/h;->h:Z

    iget-boolean v3, p0, Lcom/hiya/stingray/manager/h;->i:Z

    iget-boolean v4, p0, Lcom/hiya/stingray/manager/h;->j:Z

    move-object v5, p1

    check-cast v5, Lcom/hiya/stingray/q/c/d;

    invoke-virtual/range {v0 .. v5}, Lcom/hiya/stingray/manager/o1;->V(Ljava/util/Map;ZZZLcom/hiya/stingray/q/c/d;)Lcom/hiya/stingray/t/d0;

    move-result-object p1

    return-object p1
.end method

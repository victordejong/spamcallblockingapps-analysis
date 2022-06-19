.class public final synthetic Lcom/hiya/stingray/manager/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/g;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/manager/o1;

.field public final synthetic g:Ljava/util/Map;

.field public final synthetic h:Ljava/util/Map;

.field public final synthetic i:Ljava/util/Map;

.field public final synthetic j:Ljava/util/Set;

.field public final synthetic k:Ljava/util/Set;

.field public final synthetic l:Z

.field public final synthetic m:Z

.field public final synthetic n:Z


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/manager/o1;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/s;->f:Lcom/hiya/stingray/manager/o1;

    iput-object p2, p0, Lcom/hiya/stingray/manager/s;->g:Ljava/util/Map;

    iput-object p3, p0, Lcom/hiya/stingray/manager/s;->h:Ljava/util/Map;

    iput-object p4, p0, Lcom/hiya/stingray/manager/s;->i:Ljava/util/Map;

    iput-object p5, p0, Lcom/hiya/stingray/manager/s;->j:Ljava/util/Set;

    iput-object p6, p0, Lcom/hiya/stingray/manager/s;->k:Ljava/util/Set;

    iput-boolean p7, p0, Lcom/hiya/stingray/manager/s;->l:Z

    iput-boolean p8, p0, Lcom/hiya/stingray/manager/s;->m:Z

    iput-boolean p9, p0, Lcom/hiya/stingray/manager/s;->n:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/hiya/stingray/manager/s;->f:Lcom/hiya/stingray/manager/o1;

    iget-object v1, p0, Lcom/hiya/stingray/manager/s;->g:Ljava/util/Map;

    iget-object v2, p0, Lcom/hiya/stingray/manager/s;->h:Ljava/util/Map;

    iget-object v3, p0, Lcom/hiya/stingray/manager/s;->i:Ljava/util/Map;

    iget-object v4, p0, Lcom/hiya/stingray/manager/s;->j:Ljava/util/Set;

    iget-object v5, p0, Lcom/hiya/stingray/manager/s;->k:Ljava/util/Set;

    iget-boolean v6, p0, Lcom/hiya/stingray/manager/s;->l:Z

    iget-boolean v7, p0, Lcom/hiya/stingray/manager/s;->m:Z

    iget-boolean v8, p0, Lcom/hiya/stingray/manager/s;->n:Z

    move-object v9, p1

    check-cast v9, Lcom/hiya/stingray/q/c/d;

    invoke-virtual/range {v0 .. v9}, Lcom/hiya/stingray/manager/o1;->R(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;ZZZLcom/hiya/stingray/q/c/d;)Lcom/hiya/stingray/t/d0;

    move-result-object p1

    return-object p1
.end method

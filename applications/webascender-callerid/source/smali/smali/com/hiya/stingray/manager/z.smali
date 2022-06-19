.class public final synthetic Lcom/hiya/stingray/manager/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/k;


# instance fields
.field public final synthetic a:Lcom/hiya/stingray/manager/o1;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/manager/o1;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/z;->a:Lcom/hiya/stingray/manager/o1;

    iput-boolean p2, p0, Lcom/hiya/stingray/manager/z;->b:Z

    iput-boolean p3, p0, Lcom/hiya/stingray/manager/z;->c:Z

    iput-boolean p4, p0, Lcom/hiya/stingray/manager/z;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/hiya/stingray/manager/z;->a:Lcom/hiya/stingray/manager/o1;

    iget-boolean v2, v0, Lcom/hiya/stingray/manager/z;->b:Z

    iget-boolean v3, v0, Lcom/hiya/stingray/manager/z;->c:Z

    iget-boolean v4, v0, Lcom/hiya/stingray/manager/z;->d:Z

    move-object v5, p1

    check-cast v5, Ljava/util/List;

    move-object v6, p2

    check-cast v6, Ljava/util/Map;

    move-object v7, p3

    check-cast v7, Ljava/util/Map;

    move-object v8, p4

    check-cast v8, Ljava/util/Set;

    move-object/from16 v9, p5

    check-cast v9, Ljava/util/Set;

    move-object/from16 v10, p6

    check-cast v10, Ljava/util/Map;

    invoke-virtual/range {v1 .. v10}, Lcom/hiya/stingray/manager/o1;->H(ZZZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

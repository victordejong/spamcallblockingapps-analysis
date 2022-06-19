.class public final synthetic Lcom/hiya/stingray/manager/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/i;


# instance fields
.field public final synthetic a:Lcom/hiya/stingray/manager/o1;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/manager/o1;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/o;->a:Lcom/hiya/stingray/manager/o1;

    iput-boolean p2, p0, Lcom/hiya/stingray/manager/o;->b:Z

    iput-boolean p3, p0, Lcom/hiya/stingray/manager/o;->c:Z

    iput-boolean p4, p0, Lcom/hiya/stingray/manager/o;->d:Z

    iput-boolean p5, p0, Lcom/hiya/stingray/manager/o;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/hiya/stingray/manager/o;->a:Lcom/hiya/stingray/manager/o1;

    iget-boolean v1, p0, Lcom/hiya/stingray/manager/o;->b:Z

    iget-boolean v2, p0, Lcom/hiya/stingray/manager/o;->c:Z

    iget-boolean v3, p0, Lcom/hiya/stingray/manager/o;->d:Z

    iget-boolean v4, p0, Lcom/hiya/stingray/manager/o;->e:Z

    move-object v5, p1

    check-cast v5, Ljava/util/LinkedHashMap;

    move-object v6, p2

    check-cast v6, Ljava/util/Set;

    move-object v7, p3

    check-cast v7, Ljava/util/Set;

    move-object v8, p4

    check-cast v8, Ljava/util/Map;

    invoke-virtual/range {v0 .. v8}, Lcom/hiya/stingray/manager/o1;->g0(ZZZZLjava/util/LinkedHashMap;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

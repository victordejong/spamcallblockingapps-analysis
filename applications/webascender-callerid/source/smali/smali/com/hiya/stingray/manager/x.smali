.class public final synthetic Lcom/hiya/stingray/manager/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/c;


# instance fields
.field public final synthetic a:Lcom/hiya/stingray/manager/o1;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/manager/o1;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/x;->a:Lcom/hiya/stingray/manager/o1;

    iput-boolean p2, p0, Lcom/hiya/stingray/manager/x;->b:Z

    iput-boolean p3, p0, Lcom/hiya/stingray/manager/x;->c:Z

    iput-boolean p4, p0, Lcom/hiya/stingray/manager/x;->d:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/hiya/stingray/manager/x;->a:Lcom/hiya/stingray/manager/o1;

    iget-boolean v1, p0, Lcom/hiya/stingray/manager/x;->b:Z

    iget-boolean v2, p0, Lcom/hiya/stingray/manager/x;->c:Z

    iget-boolean v3, p0, Lcom/hiya/stingray/manager/x;->d:Z

    move-object v4, p1

    check-cast v4, Ljava/util/List;

    move-object v5, p2

    check-cast v5, Ljava/util/Map;

    invoke-virtual/range {v0 .. v5}, Lcom/hiya/stingray/manager/o1;->P(ZZZLjava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

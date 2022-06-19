.class public final synthetic Lcom/hiya/stingray/manager/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/manager/o1;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/manager/o1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/g;->f:Lcom/hiya/stingray/manager/o1;

    iput-object p2, p0, Lcom/hiya/stingray/manager/g;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/manager/g;->f:Lcom/hiya/stingray/manager/o1;

    iget-object v1, p0, Lcom/hiya/stingray/manager/g;->g:Ljava/lang/String;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/o1;->B(Ljava/lang/String;Ljava/util/Map;)Li/c/b0/b/a0;

    move-result-object p1

    return-object p1
.end method

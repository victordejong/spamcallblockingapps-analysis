.class public final synthetic Lcom/hiya/stingray/manager/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/manager/c2;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/util/List;

.field public final synthetic i:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/manager/c2;Ljava/lang/String;Ljava/util/List;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/m0;->f:Lcom/hiya/stingray/manager/c2;

    iput-object p2, p0, Lcom/hiya/stingray/manager/m0;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/hiya/stingray/manager/m0;->h:Ljava/util/List;

    iput-object p4, p0, Lcom/hiya/stingray/manager/m0;->i:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/hiya/stingray/manager/m0;->f:Lcom/hiya/stingray/manager/c2;

    iget-object v1, p0, Lcom/hiya/stingray/manager/m0;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/hiya/stingray/manager/m0;->h:Ljava/util/List;

    iget-object v3, p0, Lcom/hiya/stingray/manager/m0;->i:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/hiya/stingray/manager/c2;->h(Ljava/lang/String;Ljava/util/List;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;Ljava/lang/Boolean;)Li/c/b0/b/a0;

    move-result-object p1

    return-object p1
.end method

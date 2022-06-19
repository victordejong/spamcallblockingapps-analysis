.class final Lcom/hiya/stingray/manager/u3$a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/u3;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Lcom/hiya/stingray/manager/u3$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/u3;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/u3;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3$a0;->f:Lcom/hiya/stingray/manager/u3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/manager/u3$a;)V
    .locals 2

    const-string p1, "PremiumManagerLog"

    .line 1
    invoke-static {p1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Client connected."

    invoke-virtual {p1, v1, v0}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3$a0;->f:Lcom/hiya/stingray/manager/u3;

    invoke-static {p1}, Lcom/hiya/stingray/manager/u3;->k(Lcom/hiya/stingray/manager/u3;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/manager/u3$a;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/u3$a0;->a(Lcom/hiya/stingray/manager/u3$a;)V

    return-void
.end method

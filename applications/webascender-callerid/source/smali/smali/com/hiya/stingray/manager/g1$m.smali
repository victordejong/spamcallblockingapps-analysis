.class final Lcom/hiya/stingray/manager/g1$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/g1;->i()V
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
        "Lcom/hiya/stingray/manager/g1$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/g1;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/g1;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/g1$m;->f:Lcom/hiya/stingray/manager/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/manager/g1$b;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/manager/g1$m;->f:Lcom/hiya/stingray/manager/g1;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/g1;->j()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/manager/g1$b;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/g1$m;->a(Lcom/hiya/stingray/manager/g1$b;)V

    return-void
.end method

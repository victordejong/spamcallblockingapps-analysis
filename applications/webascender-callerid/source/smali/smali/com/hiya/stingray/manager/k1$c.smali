.class final Lcom/hiya/stingray/manager/k1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/k1;->b(Landroid/app/Application;)V
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
        "Lcom/hiya/stingray/manager/e1$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/k1;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/k1;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/k1$c;->f:Lcom/hiya/stingray/manager/k1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/manager/e1$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/k1$c;->f:Lcom/hiya/stingray/manager/k1;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/e1$a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "it.eventName"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/e1$a;->b()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/k1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/manager/e1$a;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/k1$c;->a(Lcom/hiya/stingray/manager/e1$a;)V

    return-void
.end method

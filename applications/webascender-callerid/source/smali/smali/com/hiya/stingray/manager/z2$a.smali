.class final Lcom/hiya/stingray/manager/z2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/z2;-><init>(Landroid/content/Context;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/manager/x3;Lcom/hiya/stingray/manager/s2;)V
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
        "Lcom/hiya/stingray/manager/u3$g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/z2;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/z2;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/z2$a;->f:Lcom/hiya/stingray/manager/z2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/manager/u3$g;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/z2$a;->f:Lcom/hiya/stingray/manager/z2;

    invoke-static {v0}, Lcom/hiya/stingray/manager/z2;->a(Lcom/hiya/stingray/manager/z2;)Lcom/hiya/stingray/manager/s2;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/manager/s2$c;->NEWSLETTER:Lcom/hiya/stingray/manager/s2$c;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hiya/stingray/manager/s2;->r(Lcom/hiya/stingray/manager/s2;Lcom/hiya/stingray/manager/s2$c;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/manager/z2$a;->f:Lcom/hiya/stingray/manager/z2;

    invoke-static {v0}, Lcom/hiya/stingray/manager/z2;->b(Lcom/hiya/stingray/manager/z2;)Lcom/hiya/stingray/manager/u3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->K()Lcom/hiya/stingray/t/d1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/d1;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3$g;->a()Lcom/hiya/stingray/manager/u3$p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3$p;->isWithTrial()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/manager/z2$a;->f:Lcom/hiya/stingray/manager/z2;

    invoke-static {p1}, Lcom/hiya/stingray/manager/z2;->c(Lcom/hiya/stingray/manager/z2;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/manager/u3$g;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/z2$a;->a(Lcom/hiya/stingray/manager/u3$g;)V

    return-void
.end method

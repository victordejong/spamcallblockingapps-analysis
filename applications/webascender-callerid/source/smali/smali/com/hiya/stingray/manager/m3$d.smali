.class final Lcom/hiya/stingray/manager/m3$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/m3;->g(Ljava/lang/String;Lcom/hiya/stingray/manager/m3$a;)Li/c/b0/b/e0;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/m3;

.field final synthetic g:Lcom/hiya/stingray/manager/m3$a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/m3;Lcom/hiya/stingray/manager/m3$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/m3$d;->f:Lcom/hiya/stingray/manager/m3;

    iput-object p2, p0, Lcom/hiya/stingray/manager/m3$d;->g:Lcom/hiya/stingray/manager/m3$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/m3$d;->f:Lcom/hiya/stingray/manager/m3;

    invoke-static {v0}, Lcom/hiya/stingray/manager/m3;->b(Lcom/hiya/stingray/manager/m3;)Lcom/hiya/stingray/manager/l2;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/m3$d;->g:Lcom/hiya/stingray/manager/m3$a;

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/l2;->a(Lcom/hiya/stingray/manager/m3$a;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/m3$d;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.class final Lcom/hiya/stingray/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/e;->d(Lcom/hiya/client/callerid/ui/b0/j;ZLcom/hiya/client/callerid/ui/b0/e;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Ljava/lang/Throwable;",
        "Lcom/hiya/stingray/manager/n1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/n1;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/n1;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/e$a;->f:Lcom/hiya/stingray/manager/n1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lcom/hiya/stingray/manager/n1;
    .locals 0

    .line 1
    invoke-static {p1}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/e$a;->f:Lcom/hiya/stingray/manager/n1;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/e$a;->a(Ljava/lang/Throwable;)Lcom/hiya/stingray/manager/n1;

    move-result-object p1

    return-object p1
.end method

.class final Lcom/hiya/stingray/manager/e4$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/e4$a;->a(Lg/g/a/a/i/m/c;)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/g<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/e4$a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/e4$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/e4$a$a;->f:Lcom/hiya/stingray/manager/e4$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/a/a/i/m/g;)Lcom/hiya/stingray/t/c1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/e4$a$a;->f:Lcom/hiya/stingray/manager/e4$a;

    iget-object v0, v0, Lcom/hiya/stingray/manager/e4$a;->f:Lcom/hiya/stingray/manager/e4;

    invoke-static {v0}, Lcom/hiya/stingray/manager/e4;->c(Lcom/hiya/stingray/manager/e4;)Lcom/hiya/stingray/t/i1/x0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/i1/x0;->g(Lg/g/a/a/i/m/g;)Lcom/hiya/stingray/t/c1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/a/a/i/m/g;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/e4$a$a;->a(Lg/g/a/a/i/m/g;)Lcom/hiya/stingray/t/c1;

    move-result-object p1

    return-object p1
.end method

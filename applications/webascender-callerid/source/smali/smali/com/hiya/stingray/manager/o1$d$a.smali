.class Lcom/hiya/stingray/manager/o1$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/o1$d;->a(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/g<",
        "Lcom/hiya/stingray/q/c/d;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/o1$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/q/c/d;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/d;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/q/c/d;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/o1$d$a;->a(Lcom/hiya/stingray/q/c/d;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

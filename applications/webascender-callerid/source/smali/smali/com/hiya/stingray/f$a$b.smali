.class final Lcom/hiya/stingray/f$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/f$a;->a(Lcom/hiya/stingray/manager/o1;Ljava/lang/String;JLi/c/b0/b/d0;)Li/c/b0/b/p;
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
        "TT;TR;>;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/stingray/f$a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/f$a$b;

    invoke-direct {v0}, Lcom/hiya/stingray/f$a$b;-><init>()V

    sput-object v0, Lcom/hiya/stingray/f$a$b;->f:Lcom/hiya/stingray/f$a$b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/base/j;)Lcom/hiya/stingray/t/e0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/j<",
            "Lcom/hiya/stingray/t/e0;",
            ">;)",
            "Lcom/hiya/stingray/t/e0;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/t/e0;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/base/j;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/f$a$b;->a(Lcom/google/common/base/j;)Lcom/hiya/stingray/t/e0;

    move-result-object p1

    return-object p1
.end method

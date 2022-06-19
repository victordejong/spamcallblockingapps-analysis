.class final Lcom/hiya/stingray/ui/w/l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/w/l;->M()V
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
.field public static final f:Lcom/hiya/stingray/ui/w/l$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/ui/w/l$c;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/w/l$c;-><init>()V

    sput-object v0, Lcom/hiya/stingray/ui/w/l$c;->f:Lcom/hiya/stingray/ui/w/l$c;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/collect/g;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/g<",
            "Lcom/hiya/stingray/ui/calllog/x;",
            "Lcom/hiya/stingray/t/n0;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/calllog/x;->CALLLOG_AND_CONTACTS:Lcom/hiya/stingray/ui/calllog/x;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/g;->B(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/g;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/w/l$c;->a(Lcom/google/common/collect/g;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

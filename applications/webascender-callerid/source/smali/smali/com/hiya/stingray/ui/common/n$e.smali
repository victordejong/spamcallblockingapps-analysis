.class final Lcom/hiya/stingray/ui/common/n$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/common/n;->h(Ljava/util/List;)V
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
        "Ljava/util/Comparator<",
        "Lcom/hiya/stingray/ui/common/n$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/stingray/ui/common/n$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/ui/common/n$e;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/common/n$e;-><init>()V

    sput-object v0, Lcom/hiya/stingray/ui/common/n$e;->f:Lcom/hiya/stingray/ui/common/n$e;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/ui/common/n$c;Lcom/hiya/stingray/ui/common/n$c;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/ui/common/n$c;->a()I

    move-result p1

    invoke-virtual {p2}, Lcom/hiya/stingray/ui/common/n$c;->a()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/common/n$c;

    check-cast p2, Lcom/hiya/stingray/ui/common/n$c;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/common/n$e;->a(Lcom/hiya/stingray/ui/common/n$c;Lcom/hiya/stingray/ui/common/n$c;)I

    move-result p1

    return p1
.end method

.class final Lcom/hiya/stingray/ui/customblock/countrylist/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/customblock/countrylist/e$a;->a()Ljava/util/ArrayList;
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
        "Lcom/hiya/stingray/t/l0;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/stingray/ui/customblock/countrylist/e$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/ui/customblock/countrylist/e$a$a;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/customblock/countrylist/e$a$a;-><init>()V

    sput-object v0, Lcom/hiya/stingray/ui/customblock/countrylist/e$a$a;->f:Lcom/hiya/stingray/ui/customblock/countrylist/e$a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/l0;Lcom/hiya/stingray/t/l0;)I
    .locals 2

    const-string v0, "a"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/t/l0;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const-string v1, "b"

    invoke-static {p2, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/hiya/stingray/t/l0;->c()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    move-object v0, p2

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/l0;

    check-cast p2, Lcom/hiya/stingray/t/l0;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/customblock/countrylist/e$a$a;->a(Lcom/hiya/stingray/t/l0;Lcom/hiya/stingray/t/l0;)I

    move-result p1

    return p1
.end method

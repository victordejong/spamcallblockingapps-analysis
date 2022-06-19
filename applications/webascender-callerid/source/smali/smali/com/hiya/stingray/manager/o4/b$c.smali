.class final Lcom/hiya/stingray/manager/o4/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/o4/b;->f()Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/c<",
        "TT;TU;TR;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/hiya/stingray/manager/o4/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/manager/o4/b$c;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/o4/b$c;-><init>()V

    sput-object v0, Lcom/hiya/stingray/manager/o4/b$c;->a:Lcom/hiya/stingray/manager/o4/b$c;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;Ljava/util/List;)Lkotlin/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Ljava/util/List<",
            "+",
            "Landroid/location/Address;",
            ">;)",
            "Lkotlin/l<",
            "Landroid/location/Location;",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addresses"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/l;

    invoke-static {p2}, Lkotlin/s/k;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/location/Location;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/manager/o4/b$c;->a(Landroid/location/Location;Ljava/util/List;)Lkotlin/l;

    move-result-object p1

    return-object p1
.end method

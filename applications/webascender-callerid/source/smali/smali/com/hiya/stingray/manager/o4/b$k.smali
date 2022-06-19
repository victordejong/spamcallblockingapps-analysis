.class final Lcom/hiya/stingray/manager/o4/b$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/o4/b;->m()Li/c/b0/b/v;
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
.field public static final f:Lcom/hiya/stingray/manager/o4/b$k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/manager/o4/b$k;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/o4/b$k;-><init>()V

    sput-object v0, Lcom/hiya/stingray/manager/o4/b$k;->f:Lcom/hiya/stingray/manager/o4/b$k;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/l;)Lcom/hiya/stingray/t/h1/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/l<",
            "+",
            "Landroid/location/Location;",
            "+",
            "Landroid/location/Address;",
            ">;)",
            "Lcom/hiya/stingray/t/h1/i;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/hiya/stingray/t/h1/i;

    invoke-virtual {p1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/hiya/stingray/t/h1/j;->b(Landroid/location/Address;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v5, p1

    sget-object v6, Lcom/hiya/stingray/t/h1/i$a;->GPS:Lcom/hiya/stingray/t/h1/i$a;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/hiya/stingray/t/h1/i;-><init>(DDLjava/lang/String;Lcom/hiya/stingray/t/h1/i$a;)V

    return-object v7
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/l;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/o4/b$k;->a(Lkotlin/l;)Lcom/hiya/stingray/t/h1/i;

    move-result-object p1

    return-object p1
.end method

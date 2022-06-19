.class final Lcom/hiya/stingray/manager/o4/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/o4/b;->d(Ljava/lang/String;I)Li/c/b0/b/v;
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
        "Li/c/b0/d/q<",
        "Li/c/b0/b/a0<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/o4/b;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:I


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/o4/b;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/o4/b$e;->f:Lcom/hiya/stingray/manager/o4/b;

    iput-object p2, p0, Lcom/hiya/stingray/manager/o4/b$e;->g:Ljava/lang/String;

    iput p3, p0, Lcom/hiya/stingray/manager/o4/b$e;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o4/b$e;->f:Lcom/hiya/stingray/manager/o4/b;

    invoke-static {v0}, Lcom/hiya/stingray/manager/o4/b;->b(Lcom/hiya/stingray/manager/o4/b;)Landroid/location/Geocoder;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/o4/b$e;->g:Ljava/lang/String;

    iget v2, p0, Lcom/hiya/stingray/manager/o4/b$e;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/o4/b$e;->a()Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

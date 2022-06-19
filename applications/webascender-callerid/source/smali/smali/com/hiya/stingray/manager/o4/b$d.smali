.class final Lcom/hiya/stingray/manager/o4/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/o4/b;->c(DDI)Li/c/b0/b/v;
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

.field final synthetic g:D

.field final synthetic h:D

.field final synthetic i:I


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/o4/b;DDI)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/o4/b$d;->f:Lcom/hiya/stingray/manager/o4/b;

    iput-wide p2, p0, Lcom/hiya/stingray/manager/o4/b$d;->g:D

    iput-wide p4, p0, Lcom/hiya/stingray/manager/o4/b$d;->h:D

    iput p6, p0, Lcom/hiya/stingray/manager/o4/b$d;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Li/c/b0/b/v;
    .locals 7
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
    iget-object v0, p0, Lcom/hiya/stingray/manager/o4/b$d;->f:Lcom/hiya/stingray/manager/o4/b;

    invoke-static {v0}, Lcom/hiya/stingray/manager/o4/b;->b(Lcom/hiya/stingray/manager/o4/b;)Landroid/location/Geocoder;

    move-result-object v1

    iget-wide v2, p0, Lcom/hiya/stingray/manager/o4/b$d;->g:D

    iget-wide v4, p0, Lcom/hiya/stingray/manager/o4/b$d;->h:D

    iget v6, p0, Lcom/hiya/stingray/manager/o4/b$d;->i:I

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/o4/b$d;->a()Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method
